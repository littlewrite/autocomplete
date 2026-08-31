# v3 JSON-First 架构总览

> 本文终结性总结 v3 的改动：整体思路、关键设计决策、解决了什么问题、如何扩展，以及兼容性说明。
> 配套的逐步工作日志见 [`migration-log.md`](./migration-log.md)。

## 1. 背景与目标

v1/v2 把 Fig 的 TypeScript 命令目录全部转成 Dart 的 `FigSpec` 对象（`dart/lib/specs/*.dart`，2000+ 文件），
启动时需要 import / 实例化整本 catalog。痛点：

- **启动慢、体积大**：所有命令的 spec 一次性进内存；每更新一次 catalog 就要重新生成 Dart 代码。
- **review 困难**：数据写在 Dart 代码里，diff 噪音大，人工审 handler 与数据混在一起。
- **命名冲突**：`aws/amplify`（AWS 服务）和 `amplify`（CLI）同名，多级目录源（aws/az/gcloud）展开后名字被魔改。

v3 的目标很朴素：**JSON 是唯一数据源，Dart 只承担动态行为（handler），静态数据用到了再加载。**

## 2. 总体架构

```
src/**/*.ts (Fig 目录: 扁平 + aws/ az/ gcloud/ deno/ 等多级)
   │  tools/ts-to-json.cjs                # 导出器：逐文件转 JSON，记录 handler ID 与冲突
   ▼
json/specs/                               # 暂存区（可重新生成、未发布，已 .gitignore）
   │  tools/materialize-json-assets.cjs   # 物化：命名空间重排 + 生成 index.json + 校验
   ▼
dart/assets/specs/                        # 发布的 JSON 资产（index.json + 命令文档）
   │  Dart 运行时（lib/src/）
   │    JsonSpecStore     —— index 加载 + 按命令懒加载文档
   │    JsonHandlerRegistry —— handler 注册/解析，支持缺失策略
   │    handler_index.dart —— 214 个 deferred import，命令→注册器
   ▼
AutocompleteEngine.getSuggestions(...)    # 对外 API 不变
```

## 3. 核心设计

### 3.1 数据模型

- **`assets/specs/index.json`**：逻辑命令名 → 物理文件。字段：`file`（相对路径）、`aliasOf`（指向另一命令）、`aliases`。
- **每个命令一个 JSON 文档**（`schemaVersion: 1`）。
- **动态行为统一用 `{handler, version}` 引用**，分布在 JSON 字段里：
  `generators` / `postProcess` / `custom` / `generateSpec` / `trigger` / `alias` /
  `generateSubcommand` / `script` / `filterTemplateSuggestions` / `suggestions` /
  `loadSpec` / `options` / `subcommands`。
  静态数据留在 JSON，Dart 只在这些引用处介入。

### 3.2 物理布局（Option B：首字母桶 + 命名空间子目录）

| 类型 | 路径 | 例子 |
|---|---|---|
| 扁平命令 | `<首字母>/<命令>.json` | `g/git.json` |
| 命名空间命令 | `<首字母>/<命名空间>/.../命令.json` | `a/aws/amplify.json`、`a/az/2.53.0/account.json`、`g/gcloud/artifacts.json` |

- **共享别名不重复**：`aws/accessanalyzer` 与 `accessanalyzer` 是同一份文档，index 里 `aliasOf` 指过去（全 catalog 约 1395 条别名）。因此命名空间目录只放**真·冲突**或**版本化**文档，不产生 70MB 重复。
- **冲突解析**：`resolveNamespacedAsset` **先找命名空间自己的文档，找不到再回退扁平**。这修复了一个潜伏 bug——此前 `aws/amplify` 会误载 Amplify **CLI** 的 spec，现在正确加载 **AWS Amplify 服务** spec（同样的错误波及约 20 个 gcloud 冲突）。
- 多级源的处理：`src/aws/*.ts` 每个服务是一个独立命令（`name: "accessanalyzer"`），aws 主命令用 `loadSpec: "aws/accessanalyzer"` 挂成子命令；`src/az/2.53.0/*.ts` 是版本化 spec，`az/2.53.0/<cmd>` 成为 index 里的命名空间别名；`@scoped` npm 包（`@capgo/cli`）天然带 `/`，一直走命名空间目录。

### 3.3 懒加载（用到了再加载）

- **`dart/lib/src/spec_handlers/handler_index.dart`**（由 `tools/build-handler-index.cjs` **生成**，勿手改）：
  214 个 `deferred import`，每条命令一个注册器（`_reg<File>`）。
- `registerJsonSpecs(..., lazyHandlers: true)` 时，`JsonSpecStore._readSpecDocument` 在**解析该命令 JSON 之前**先调用 `registerCommandHandlers(command)`——正好是「加载 JSON 时顺带加载它的动态函数」。
- 命令 → **注册器列表**（不是单个），一个命令的 handler 跨多个文件时全部注册，不会静默丢（生成器对多文件命令会告警）。
- 平台差异（诚实说明）：VM/CLI 上 deferred 代码仍链接进同一二进制，`loadLibrary()` 只是延迟初始化，实际收益是**跳过 637 次注册副作用**（启动更快）；**Flutter Web 上每个 deferred 库是独立 JS chunk，用到才下载**——那里才是真正的按需加载收益。

### 3.4 运行时容错

- 缺失/未实现 handler：解析不抛错；运行时该处返回**空建议**，只打日志，**用户无感知**（`getSuggestions` 出错返回 null、流式 `completeFinal(null)`）。
- 结构性槽位（整个 `options`/`subcommands`/`loadSpec`）在解析期接上；per-item 引用（`options[i] = {handler}`）子命令/选项在解析期拼接、suggestions 异步容忍未接线。

## 4. 解决了什么问题

| 痛点 | v3 的处理 |
|---|---|
| 启动慢 / 体积大 | JSON 资产按命令懒加载；handler 用 deferred import 按需 loadLibrary |
| 数据与逻辑混在 Dart 代码里 | 静态数据全进 JSON，Dart 只有 214 个 handler 文件 |
| 更新 catalog 要重新生成 Dart | 只重跑 `ts-to-json` + `materialize`，Dart 运行时零改动 |
| 命名空间同名冲突（aws/amplify vs amplify） | 各占命名空间文档 + namespaced-first 解析（修复误载 bug） |
| 多级目录源（aws/az/gcloud/@scoped） | 物理目录镜像逻辑路径，无魔改文件名 |
| 缺函数时用户看到奇怪报错 | 解析期容错 + 运行时降级为空建议，仅日志 |

## 5. 使用（接口没变）

**Dart CLI 与 Flutter 都能用**：`lib/` 无 `dart:io` import（只有注释提及），纯 Dart；Flutter 用 `rootBundle` 作 reader，CLI 用文件系统。

```dart
final registry = JsonHandlerRegistry();          // 可选：注册动态 handler
final store = await registerJsonSpecs(
  reader: (path) => File('assets/specs/$path').readAsString(),  // 或 rootBundle.loadString
  handlers: registry,        // 默认 eager：注册全部 handler，动态建议即可用
  // lazyHandlers: true,     // 可选：用到了再注册 handler（每个命令的 deferred 库按需 loadLibrary）
);
final engine = AutocompleteEngine(adapter: myAdapter);
final result = await engine.getSuggestions('git che', '', Shell.bash);
```

对外 API（`getSuggestions` / `AutocompleteEngine` / `figSpecFromJson` / `JsonSpecStore` / `JsonHandlerRegistry` / `registerCommandHandlers`）**保持不变**。
三个注意点（均向后兼容）：

- `registerJsonSpecs` 新增可选参数 `lazyHandlers`（默认 `false`）。`handlers` 提供时，默认 **eager 注册全部 handler**（由 `registerJsonSpecs` 内部 `await` 完成，无需单独调用）；`lazyHandlers: true` 则按命令懒注册。
- `registerMigratedJsonHandlers(registry)` 现在是 `Future<void>`（内部逐个 `loadLibrary()`）。**一般不用手动调用**——只有不需要 spec store、只想拿到完整注册集时（如 dump 工具）才直接调用，且必须 `await`。
- 旧的 `registerBuiltinSpecs()`（v1/v2 全量 Dart spec 注册）已弃用并直接抛 `UnsupportedError`，提示改用 `registerJsonSpecs`。

## 6. 扩展指南

**添加一个新命令**：

```bash
# 1. 在 src/ 加 <命令>.ts（或多级如 src/aws/<服务>.ts）
# 2. 重新导出并物化
node tools/ts-to-json.cjs            # -> json/specs/
node tools/materialize-json-assets.cjs # -> dart/assets/specs/（含命名空间重排 + 校验）
# 3. 若该命令有动态 handler：手写 dart/lib/src/spec_handlers/<命令>.dart 并注册
# 4. 重新生成 handler 索引
node tools/build-handler-index.cjs    # -> dart/lib/src/spec_handlers/handler_index.dart
```

**添加/修改一个 handler**：
- 在 `spec_handlers/<命令>.dart` 里写 `void register<X>Handlers(JsonHandlerRegistry r)`，**handler ID 保持稳定**（JSON 里引用的是它）。
- 改完后跑 `build-handler-index.cjs` 让懒加载映射跟上。

**校验**：

```bash
node tools/report-handler-todo.cjs   # 期望 todo=0（shipped JSON 引用的 handler 全部实现）
node tools/validate-json.cjs         # JSON 结构校验
cd dart && dart analyze && dart test # 0 error，测试全绿
```

**不要手改**：`handler_index.dart`（生成）、`dart/assets/specs/` 里的 JSON（由导出链生成）。
要改布局/解析规则，改 `tools/materialize-json-assets.cjs`（单一职责点）。

**已知的既有缺口（非本次引入）**：24 个 `loadSpec` 指向目录中不存在的子 spec
（`dotnet/dotnet-*`×20、`gcloud/{alpha,beta,compute}`、`flutter`、`az/2.53.0/network`），
这些源文件在当前 catalog 子集中缺失；运行时对它们降级为空建议。补齐对应 `src/` 源文件后重跑导出链即可。

## 7. 验证基线

- `dart analyze`：0 error / warning。
- `dart test`：1563 全绿（含懒加载、命名空间冲突回归测试）。
- 权威 diff：shipped JSON 引用的 handler 全部注册，**0 未注册（637 registered）**。
- `tools/report-handler-todo.cjs`：uniqueHandlers=700, implemented=637, todo=0, inlined=63。
- 资产布局：1455 个文档（1399 扁平 + 56 命名空间），0 个魔改 `--` 文件名。
