# TypeScript → Dart 批量转换工具（tools）

把 `../src/**/*.ts`（Fig autocomplete specs）批量转换为 `../dart/lib/specs/**/*.dart`，并保留目录结构（含 `@capgo/` 这类特殊目录）。

## 文件与职责

| 文件                               | 职责                                                                                                       |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `converter-engine.cjs`             | 单文件转换引擎（规则/解析 + 类型识别 + 复杂度检测）                                                        |
| `ts-to-dart-converter.cjs`         | 批量扫描与转换（断点续传、多进程、进度统计、错误/needsManual 列表）                                        |
| `converter-worker.cjs`             | 多进程模式下的子进程 worker（从 stdin 读任务，向 stdout 写结果）                                           |
| `run-conversion.sh`                | 一键入口（环境检查 + 调用 `ts-to-dart-converter.cjs`）                                                     |
| `test-converter.cjs`               | 小样本自检（覆盖可自动转换与 needsManual）                                                                 |
| `generate-all-specs.cjs`           | 独立脚本：生成 `dart/lib/specs/all_specs.dart`（与 TS→Dart 转换解耦）                                      |
| `extract-and-convert-snippets.cjs` | 从大 TS 文件中提取 `Fig.Suggestion[]` / `Fig.Option[]` / `Fig.Spec` 等变量，转为 Dart 片段，便于拆分后拼回 |

## 快速开始

**重要：请在项目根目录执行命令**（不要 `cd tools` 后再写 `node tools/...`，否则会报 `tools/tools/...` 找不到）。

```bash
# 在项目根目录（autocomplete/）
cd /path/to/autocomplete

# 可选：先跑小样本自检
node tools/test-converter.cjs

# 只转换单个 TS 文件（可传相对或绝对路径）
node tools/ts-to-dart-converter.cjs src/git.ts

# 批量转换（单进程，适合调试）
node tools/ts-to-dart-converter.cjs

# 多进程加速（推荐，大文件如 az/2.53.0/network.ts 不会卡住其它任务）
node tools/ts-to-dart-converter.cjs -j4

# 带环境检查的一键脚本（需在 tools 目录下执行，单进程）
cd tools && ./run-conversion.sh
```

## 命令参数

| 参数                     | 说明                                                                                  |
| ------------------------ | ------------------------------------------------------------------------------------- |
| `<path/to/file.ts>`      | 只转换该 TS 文件（单文件模式，可与 `-j` 无关）                                        |
| 无参数                   | 批量扫描 `src/`，单进程顺序转换                                                       |
| `-j N` 或 `--jobs N`     | 批量时使用 N 个子进程并行转换（例如 `-j4`），每个文件只被一个进程处理，无重复、无冲突 |
| `--force`                | 强制转换复杂文件，不能转的用 `// TS_UNCONVERTED_*` 注释 + `null` 保留                  |
| `--emit-unconverted`     | 与 `--force` 同用：将无法转换处尽量写成 Dart 代码（如 `true`、`sharedOpts.selector`）而非注释+null，便于人工后续处理；**默认关闭** |

示例：

```bash
node tools/ts-to-dart-converter.cjs src/git.ts
node tools/ts-to-dart-converter.cjs -j4
node tools/ts-to-dart-converter.cjs -j8 --jobs 8
# 强制转换且尽量把未转换内容写成 Dart 代码（需人工检查）
node tools/ts-to-dart-converter.cjs --force --emit-unconverted src/git.ts
```

转换完建议做一次静态检查：

```bash
cd dart
dart analyze lib/specs/
```

## 多进程如何通信？

主进程在内存里维护**任务队列**，**spawn N 个子进程**（每个运行 `converter-worker.cjs`），通过 **stdin / stdout 管道**与每个子进程通信：主进程向子进程 stdin 写入一行 JSON（`{"tsFilePath": "绝对路径"}`），子进程转换完后向 stdout 写一行 JSON 结果；主进程收到后再派发下一个任务，直到队列空再发 `{"exit": true}`。每个文件只会被派给一个子进程，**不会重复、不会冲突**。

## 全量转换（记录日志）

在项目根目录执行，并把输出写到日志：

```bash
rm -f tools/conversion-progress.json && node tools/ts-to-dart-converter.cjs -j4 > tools/conversion-full-run.log 2>&1
```

如果需要只看错误/警告（避免大量 info 输出）：

```bash
grep -E '^(error|warning)|❌|🔧' tools/conversion-full-run.log
```

## 常见问题

### 报错：`Cannot find module '.../tools/tools/ts-to-dart-converter.cjs'`

路径里多了一个 `tools`，说明是在 **tools 目录下** 执行了 `node tools/ts-to-dart-converter.cjs`。  
**解决**：回到**项目根目录**再执行，例如：

```bash
cd /Users/th/Dart/autocomplete
node tools/ts-to-dart-converter.cjs -j4
```

### 转换大文件（如 az/2.53.0/network.ts）时卡住

使用多进程即可：大文件只占用其中一个子进程，其它进程继续处理小文件。例如：

```bash
node tools/ts-to-dart-converter.cjs -j4
```

## 输出与断点续传

- `conversion-progress.json`：已完成 / 失败 / needsManual 的记录
- `conversion-errors.log`：失败与 needsManual 的日志
- `../dart/lib/specs/**/*.dart`：生成的 Dart specs

重复运行会自动跳过已完成项（除非你删除 `conversion-progress.json` 或删除已生成的 `.dart` 文件）。

## 大文件拆分：提取并转换片段（如 git.ts）

当单个 TS 文件很大（如 `lib/src/git.ts` 或 `src/git.ts`），可先**提取**其中的数组和 spec，**单独转成 Dart 片段**，再手动拼回主文件。

支持的提取模式：

- `const name: Fig.Suggestion[] = [ ... ]`
- `const name: Fig.Option[] = [ ... ]`
- `const name: Fig.Subcommand[] = [ ... ]`
- `const name: Fig.Spec = { ... }`

**命令（在项目根目录执行）：**

```bash
# 列出当前可提取的变量名（不转换）
node tools/extract-and-convert-snippets.cjs src/git.ts --list

# 提取并转换所有上述变量，输出到 tools/snippet-output/*.dart
node tools/extract-and-convert-snippets.cjs src/git.ts

# 只处理指定变量（多个用逗号分隔）
node tools/extract-and-convert-snippets.cjs src/git.ts --only=configSuggestions,addOptions,daemonServices
```

输出在 `tools/snippet-output/<变量名>.dart`，把需要的内容复制到你的主 Dart 文件（如 `dart/lib/specs/git.dart`）中即可。若 TS 路径在别处（如 `lib/src/git.ts`），把第一个参数改成对应路径即可。

## 不覆盖 AI/人工编辑的 Dart 文件

- **`// Auto-generated`** 开头：由 ts→dart 脚本生成，重复运行时会**重新生成并覆盖**。
- **`// AI-generated`** 开头：表示该文件由 AI 或人工编辑过，脚本**不会覆盖**，只会跳过并标记为已完成。

转换结束后会自动执行 **`dart format dart/lib/specs/`** 对生成的 Dart 代码做批量格式化。

## Option / Suggestion / Subcommand 变量支持

- 顶层 `const name: Fig.Option[] = [ ... ]`、`const name: Fig.Suggestion[] = [ ... ]` 和 `const name: Fig.Subcommand[] = [ ... ]` 会被识别并转换为 Dart 的 `final List<Option> name = ...` / `final List<FigSuggestion> name = ...` / `final List<FigSubcommand> name = ...`，并写在 spec 前。
- 常见变量名（如 `configSuggestions`、`addOptions`、`daemonServices`、`completionSpec`）均按上述规则处理：`Fig.Suggestion[]` → `List<FigSuggestion>`，`Fig.Option[]` → `List<Option>`，`Fig.Spec` → 主 spec 对象。
- spec 内 `options: [...commonOptions, ...otherOptions]`、`options: installOptions`、`subcommands: subCommands` 或 `subcommands: [...subCommands]` 会正确输出为 Dart 的 spread / 变量引用。
- 仅支持**顶层**声明的 Option[] / Suggestion[] / Subcommand[] 变量；spec 内对其它变量（如 `args: folderPathArg`）的引用暂未自动解析，可能被标为复杂类型或需手动处理。

## Fig.Generator 块（注释形式保留）

- 顶层 `const name: Fig.Generator = { ... }` 与 `(export )?const name: Record<string, Fig.Generator> = { ... }` 的 **TS 源码**会被提取，并以**注释块**形式追加到生成的 Dart 文件末尾，便于后续人工或 AI 转换。
- 约定：`// TS_GENERATOR_BLOCK_START (变量名)` 与 `// TS_GENERATOR_BLOCK_END` 之间为原始 TS 代码（每行前加 `// `）。
- 查找方式：`grep -n 'TS_GENERATOR_BLOCK_START'` 可定位所有需转换的 Generator 块。
- 仅当该文件能成功完成整体转换时才会写入 Dart（含注释块）；若因 postProcess/script 等被标为 needsManual，则不会生成 Dart 文件。可用 `commentFallback: true` 仍生成 Dart 并在 spec 中复杂处写 `null`，同时保留 Generator 注释块。

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
- 多进程通过主进程内存队列 + 子进程 stdin/stdout 通信，任务不重复、不冲突。

---

# Type Naming Changes Summary

## 🎯 Overview

Successfully updated the TypeScript to Dart conversion to use `FigSpec` as the primary type name instead of `CompletionSpec`, better aligning with TypeScript's `Fig.Spec` naming.

## ✅ Changes Made

### 1. Updated `dart/lib/src/spec.dart`

**Before:**

```dart
typedef CompletionSpec = FigSpec;
typedef Subcommand = FigSubcommand;
typedef Option = FigOption;
typedef Arg = FigArg;
typedef Suggestion = FigSuggestion;  // ❌ Caused conflicts!
typedef Generator = FigGenerator;
```

**After:**

```dart
// Removed CompletionSpec typedef - use FigSpec directly
typedef Subcommand = FigSubcommand;
typedef Option = FigOption;
typedef Arg = FigArg;
// Removed Suggestion typedef to avoid conflict with model.dart
typedef Generator = FigGenerator;
```

**Rationale:**

- `FigSpec` better mirrors TypeScript's `Fig.Spec` structure
- Removed `Suggestion` typedef to fix naming conflict with runtime `Suggestion` class
- All internal classes already use `Fig*` prefix, so consistent to use `FigSpec`

### 2. Fixed `dart/lib/src/runtime.dart`

**Issue Fixed:**

- Resolved 8 linter errors caused by `Suggestion` type ambiguity
- The runtime now correctly uses `Suggestion` from `model.dart`
- Spec files use `FigSuggestion` when needed

**Result:** ✅ No linter errors

### 3. Updated Conversion Tool `tools/converter-engine.cjs`

**Before:**

```javascript
return `const CompletionSpec ${variableName} = CompletionSpec${dartSpec};\n`;
```

**After:**

```javascript
return `const FigSpec ${variableName} = FigSpec${dartSpec};\n`;
```

### 4. Updated Spec Files

All spec files now use `FigSpec`:

- ✅ `dart/lib/specs/astro.dart`
- ✅ `dart/lib/specs/brew.dart`
- ✅ `dart/lib/specs/cd.dart`
- ✅ `dart/lib/specs/git.dart`
- ✅ `dart/lib/specs/ls.dart`
- ✅ `dart/lib/specs/tree.dart`

**Example:**

```dart
const FigSpec astroSpec = FigSpec(
  name: 'astro',
  description: 'CLI provided by Astro...',
  // ...
);
```

### 5. Updated Test Output Files

Updated all test conversion outputs to use `FigSpec`:

- ✅ `tools/test-output/astro.dart`
- ✅ `tools/test-output/brew.dart`
- ✅ `tools/test-output/git.dart`
- ✅ `tools/test-output/cli.dart`

### 6. Updated Documentation

- ✅ `tools/README.md` - Updated conversion examples
- ✅ `tools/quick-start.md` - Updated type references
- ✅ Created `CONVERSION_GUIDE.md` - Comprehensive conversion guide

### 7. Updated Registry `dart/lib/specs/all_specs.dart`

Added missing spec registrations:

```dart
registerSpec('astro', () => astroSpec);
registerSpec('brew', () => brewSpec);
```

## 📊 Type Mapping Reference

| TypeScript | Dart Class      | Typedef         | Usage                            |
| ---------- | --------------- | --------------- | -------------------------------- |
| `Fig.Spec` | `FigSpec`       | ❌              | Use `FigSpec` directly           |
| Subcommand | `FigSubcommand` | `Subcommand` ✅ | Can use either                   |
| Option     | `FigOption`     | `Option` ✅     | Can use either                   |
| Arg        | `FigArg`        | `Arg` ✅        | Can use either                   |
| Generator  | `FigGenerator`  | `Generator` ✅  | Can use either                   |
| -          | `FigSuggestion` | ❌              | Spec-level suggestions           |
| -          | `Suggestion`    | ❌              | Runtime suggestions (model.dart) |

## 🔍 Key Design Decisions

### 1. Why `FigSpec` instead of `CompletionSpec`?

- **Alignment**: TypeScript uses `Fig.Spec` (namespace.type), Dart uses `FigSpec` (PrefixedType)
- **Consistency**: All other classes use `Fig*` prefix
- **Clarity**: Makes it obvious these are Fig-compatible specs

### 2. Why remove `Suggestion` typedef?

- **Conflict**: Runtime has `Suggestion` class in `model.dart`
- **Different types**: `FigSuggestion` (spec) vs `Suggestion` (runtime) serve different purposes
- **Import clarity**: Avoids ambiguous imports

### 3. Why keep other typedefs (`Subcommand`, `Option`, etc.)?

- **Convenience**: Shorter names for common types
- **No conflicts**: These don't clash with other types
- **TypeScript alignment**: Match the simple object names from TypeScript

## ✅ Verification

All changes verified:

```bash
cd dart
dart analyze lib/src/spec.dart lib/src/runtime.dart lib/specs/ --fatal-infos
# ✅ No issues found!
```

## 🚀 Usage Example

**TypeScript source (`src/astro.ts`):**

```typescript
const completionSpec: Fig.Spec = {
  name: "astro",
  description: "CLI provided by Astro",
  subcommands: [
    {
      name: "dev",
      options: [{ name: "--port", args: { name: "port" } }],
    },
  ],
};
export default completionSpec;
```

**Dart output (`dart/lib/specs/astro.dart`):**

```dart
import 'package:autocomplete/src/spec.dart';

const FigSpec astroSpec = FigSpec(
  name: 'astro',
  description: 'CLI provided by Astro',
  subcommands: [
    Subcommand(
      name: 'dev',
      options: [
        Option(
          name: '--port',
          args: Arg(name: 'port'),
        ),
      ],
    ),
  ],
);
```

## 📝 Migration Checklist

If you have existing code using `CompletionSpec`:

- [ ] Replace `CompletionSpec` with `FigSpec` in type annotations
- [ ] Keep using `Subcommand`, `Option`, `Arg` (these still work!)
- [ ] Don't use `Suggestion` typedef (use `FigSuggestion` in specs, `Suggestion` in runtime)
- [ ] Update your conversion tools if using custom converters
- [ ] Run `dart analyze` to verify no issues

## 🎉 Benefits

1. ✅ **No more naming conflicts** between `Suggestion` types
2. ✅ **Better TypeScript alignment** with `FigSpec` matching `Fig.Spec`
3. ✅ **Cleaner runtime code** with distinct `Suggestion` vs `FigSuggestion`
4. ✅ **All linter errors resolved** - clean codebase
5. ✅ **Consistent naming** across all Fig-related types
