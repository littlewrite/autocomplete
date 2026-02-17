# TypeScript to Dart Conversion Guide

## 🧰 Tools Quick Start

The TS→Dart conversion tooling lives in `./tools/`.

| File | Purpose |
|------|---------|
| `tools/converter-engine.cjs` | Single-file converter (rules + type detection + complexity detection) |
| `tools/ts-to-dart-converter.cjs` | Batch runner (scan + progress + error logging + resume) |
| `tools/run-conversion.sh` | Convenience wrapper (env checks + runs the batch runner) |
| `tools/test-converter.cjs` | Small sanity test set (auto vs needsManual) |
| `tools/generate-all-specs.cjs` | Generate `dart/lib/specs/all_specs.dart` (independent from TS→Dart conversion) |

### Run (recommended)

```bash
cd tools
./run-conversion.sh
```

### Full run with log (from scratch)

```bash
cd tools && rm -f conversion-progress.json && node ts-to-dart-converter.cjs > conversion-full-run.log 2>&1
```

### Filter analyzer output (avoid huge info logs)

```bash
cd dart
dart analyze lib/specs/ 2>&1 | grep -E '^(error|warning) •'
```

If you are running Flutter tooling, the same idea applies:

```bash
flutter analyze 2>&1 | grep -E '^(error|warning) •'
```

## 📋 Type Naming Convention

### Overview

This guide documents the naming convention used when converting TypeScript `Fig.Spec` definitions to Dart.

### TypeScript → Dart Type Mapping

| TypeScript | Dart Class | Typedef Alias |
|------------|------------|---------------|
| `Fig.Spec` | `FigSpec` | ❌ (removed `CompletionSpec`) |
| Subcommand object | `FigSubcommand` | `Subcommand` ✅ |
| Option object | `FigOption` | `Option` ✅ |
| Argument object | `FigArg` | `Arg` ✅ |
| Suggestion object | `FigSuggestion` | ❌ (conflicts with runtime `Suggestion`) |
| Generator object | `FigGenerator` | `Generator` ✅ |

### Rationale

**Why `FigSpec` instead of `CompletionSpec`?**

1. **Better alignment with TypeScript**: TypeScript uses `Fig.Spec` (namespace-qualified), so `FigSpec` in Dart mirrors this structure better
2. **Consistency**: All the internal classes use `Fig*` prefix (`FigSubcommand`, `FigOption`, `FigArg`, etc.)
3. **Clarity**: Makes it clear these are Fig-compatible specifications

**Why remove the `Suggestion` typedef?**

- Runtime has its own `Suggestion` class in `model.dart` (different from `FigSuggestion`)
- Keeping the typedef caused naming conflicts when both files were imported
- `FigSuggestion` is only used in spec definitions, not in converted files

## 🔧 Conversion Rules

### Basic Spec Structure

**TypeScript:**
```typescript
const completionSpec: Fig.Spec = {
  name: "astro",
  description: "CLI provided by Astro...",
  subcommands: [...],
  options: [...],
};
export default completionSpec;
```

**Dart:**
```dart
/// Completion spec for `astro` CLI
const FigSpec astroSpec = FigSpec(
  name: 'astro',
  description: 'CLI provided by Astro...',
  subcommands: [...],
  options: [...],
);
```

### Subcommands

**TypeScript:**
```typescript
{
  name: "add",
  description: "Add an integration",
  args: { name: "integration" },
}
```

**Dart:**
```dart
Subcommand(
  name: 'add',
  description: 'Add an integration',
  args: Arg(name: 'integration'),
)
```

### Options

**TypeScript:**
```typescript
{
  name: ["--config", "-c"],
  description: "Config file path",
  args: { template: "filepaths" },
  isPersistent: true,
}
```

**Dart:**
```dart
Option(
  name: ['--config', '-c'],
  description: 'Config file path',
  args: Arg(template: 'filepaths'),
  isPersistent: true,
)
```

### Arguments

**TypeScript:**
```typescript
args: {
  name: "file",
  template: "filepaths",
  isOptional: true,
  isVariadic: false,
}
```

**Dart:**
```dart
args: Arg(
  name: 'file',
  template: 'filepaths',
  isOptional: true,
  isVariadic: false,
)
```

## 📁 File Structure

### Import Statement

All converted spec files should import the spec definitions:

```dart
import 'package:autocomplete/src/spec.dart';
```

### Variable Naming

Convention: `{commandName}Spec`

Examples:
- `astro` → `astroSpec`
- `git` → `gitSpec`
- `npm` → `npmSpec`

### Registration

All specs must be registered in `dart/lib/specs/all_specs.dart`:

```dart
import 'astro.dart';

void registerAllSpecs() {
  registerSpec('astro', () => astroSpec);
  // ... more specs
}
```

## 🎯 Type Reference

### Available Types in Dart

From `spec.dart`:

```dart
// Main classes (use these in runtime code)
class FigSpec { ... }
class FigSubcommand { ... }
class FigOption { ... }
class FigArg { ... }
class FigSuggestion { ... }
class FigGenerator { ... }

// Convenient typedefs (use these in spec files)
typedef Subcommand = FigSubcommand;
typedef Option = FigOption;
typedef Arg = FigArg;
typedef Generator = FigGenerator;
```

From `model.dart` (runtime only):

```dart
class Suggestion { ... }      // Runtime suggestion (different from FigSuggestion!)
class SuggestionBlob { ... }  // Result of getSuggestions()
```

### Enums

```dart
enum FilterStrategy { fuzzy, prefix, defaultStrategy }
enum SuggestionType { subcommand, option, arg, file, folder, mixin, shortcut, special }
```

## ✅ Common Patterns

### Simple Command

```dart
const FigSpec simpleSpec = FigSpec(
  name: 'hello',
  description: 'Hello world command',
);
```

### With Subcommands

```dart
const FigSpec gitSpec = FigSpec(
  name: 'git',
  subcommands: [
    Subcommand(name: 'add', description: 'Add files'),
    Subcommand(name: 'commit', description: 'Commit changes'),
  ],
);
```

### With Options and Args

```dart
const FigSpec complexSpec = FigSpec(
  name: 'deploy',
  options: [
    Option(
      name: '--env',
      args: Arg(
        name: 'environment',
        suggestions: [
          FigSuggestion(name: 'staging'),
          FigSuggestion(name: 'production'),
        ],
      ),
    ),
  ],
  args: Arg(
    name: 'target',
    template: 'filepaths',
  ),
);
```

## 🔍 Key Differences from TypeScript

### 1. String Quotes

- TypeScript: `"` (double quotes)
- Dart: `'` (single quotes preferred)

### 2. Object vs Constructor

- TypeScript: `{ name: "value" }`
- Dart: `ClassName(name: 'value')`

### 3. Arrays

- TypeScript: Arrays can be implicit
- Dart: Must use explicit list syntax `[...]`

### 4. Optional Properties

- TypeScript: Properties can be omitted
- Dart: Named parameters can be omitted (same behavior)

### 5. Type Annotations

- TypeScript: `const spec: Fig.Spec = ...`
- Dart: `const FigSpec spec = ...` (type on left side)

## 🔖 TS_UNCONVERTED: 未自动转换的 TS 块（供人工/AI 处理）

对含复杂类型（generators、函数、async）的文件，可使用 **注释回退**：能转的转成 Dart，不能转的保留为原 TS 并包在约定注释里，便于后续用 grep 或 AI 逐块处理。

### 约定注释

- **开始**: `// TS_UNCONVERTED_START` 或 `// TS_UNCONVERTED_START (label)`（如 `(generateSpec)`、`(gitGenerators)`）
- **内容**: 原 TypeScript 源码，每行前加 `// `
- **结束**: `// TS_UNCONVERTED_END`

### 查找未转换块

```bash
# 列出所有未转换块及其行号
grep -n "TS_UNCONVERTED_START\|TS_UNCONVERTED_END" dart/lib/specs/git.dart

# 仅列出带 label 的块
grep -n "TS_UNCONVERTED_START (" dart/lib/specs/git.dart
```

### 工作流建议

1. 批量/自动转换：使用 `commentFallback` 或专用脚本（如 `node tools/convert-git-to-dart.cjs`）生成带 `TS_UNCONVERTED_*` 的 Dart。
2. 后续由人工或 AI：用上述 grep 定位块，逐个把注释里的 TS 改成等效 Dart，删掉注释并补上真实实现。

### 使用 commentFallback 的转换

- 在调用转换引擎时传入 `{ commentFallback: true }`，则遇到函数/复杂类型不会抛错，而是输出 `// TS_UNCONVERTED_*` + Dart 占位（如 `null`）。
- 示例：`convertTsToDart(tsFilePath, tsCode, { commentFallback: true })`（见 `tools/convert-git-to-dart.cjs`）。

## 🚀 Next Steps

1. Use the converter tool: `cd tools && node ts-to-dart-converter.cjs`
2. Review generated files for correctness
3. Register new specs: `node tools/generate-all-specs.cjs` (picks up new specs under `dart/lib/specs/`)
4. Run `dart analyze` to check for errors (suggested: pipe through `grep` to avoid `info` noise)
5. Test with your Dart application

## 📚 References

- Original TypeScript specs: `./src/**/*.ts`
- Dart spec definitions: `./dart/lib/src/spec.dart`
- Conversion engine: `./tools/converter-engine.cjs`
- Example specs: `./dart/lib/specs/`
