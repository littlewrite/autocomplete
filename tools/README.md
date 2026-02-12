# TypeScript → Dart 批量转换工具（tools）

把 `../src/**/*.ts`（Fig autocomplete specs）批量转换为 `../dart/lib/specs/**/*.dart`，并保留目录结构（含 `@capgo/` 这类特殊目录）。

## 文件与职责

| 文件 | 职责 |
|------|------|
| `converter-engine.cjs` | 单文件转换引擎（规则/解析 + 类型识别 + 复杂度检测） |
| `ts-to-dart-converter.cjs` | 批量扫描与转换（断点续传、进度统计、错误/needsManual 列表） |
| `run-conversion.sh` | 一键入口（环境检查 + 调用 `ts-to-dart-converter.cjs`） |
| `test-converter.cjs` | 小样本自检（覆盖可自动转换与 needsManual） |
| `generate-all-specs.cjs` | 独立脚本：生成 `dart/lib/specs/all_specs.dart`（与 TS→Dart 转换解耦） |

## 快速开始

```bash
cd tools

# 可选：先跑小样本自检
node test-converter.cjs

# 批量转换（推荐：带环境检查）
./run-conversion.sh

# 或直接跑 Node 主程序
node ts-to-dart-converter.cjs
```

转换完建议做一次静态检查：

```bash
cd ../dart
dart analyze lib/specs/
```

## 全量转换（记录日志）

从零开始跑一遍转换并把输出写到日志里：

```bash
cd tools && rm -f conversion-progress.json && node ts-to-dart-converter.cjs > conversion-full-run.log 2>&1
```

如果需要只看错误/警告（避免大量 info 输出）：

```bash
grep -E '^(error|warning) •' conversion-full-run.log
```

## 输出与断点续传

- `conversion-progress.json`：已完成 / 失败 / needsManual 的记录
- `conversion-errors.log`：失败与 needsManual 的日志
- `../dart/lib/specs/**/*.dart`：生成的 Dart specs

重复运行会自动跳过已完成项（除非你删除 `conversion-progress.json` 或删除已生成的 `.dart` 文件）。

## 复杂文件（needsManual）

包含 generators（`script` / `postProcess`）、函数、箭头函数等“不能放进 const spec”的内容时，引擎会标记为复杂文件并写入 `conversion-progress.json.needsManual`，不自动生成 Dart 版本。

## 生成 all_specs.dart（总入口）

当 `dart/lib/specs/` 下新增/删除 spec 文件后，需要重新生成总入口：

```bash
# 在项目根目录
node tools/generate-all-specs.cjs

# 或在 tools 目录
cd tools
node generate-all-specs.cjs
```

## 备注

- 当前 `ts-to-dart-converter.cjs` 的 `USE_AI_API=true` 分支未实现，会直接报错；默认使用离线规则转换即可。
- 生成代码以 `FigSpec` 为主；`generate-all-specs.cjs` 同时兼容 `FigSpec` 与 `CompletionSpec` 两种声明方式。
