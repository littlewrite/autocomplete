# autocomplete (Dart)

**本项目是 [withfig/autocomplete](https://github.com/withfig/autocomplete) 的纯 Dart 翻译移植版。**

所有的补全规范（Specs）数据结构、核心逻辑以及运行时（Runtime）均直接移植自 `withfig/autocomplete` 和 `microsoft/inshellisense` 仓库，旨在为 Dart 生态提供完全一致的命令行自动补全能力。

- **Dart SDK 要求**: `>=2.17.0 <4.0.0`
- **补全规范 (Specs)**: 纯数据定义（例如 `cd`, `ls`, `git`, `tree`）。目前包含部分常用命令，更多规范将持续添加。
- **运行时 (Runtime)**: 参考了 [microsoft/inshellisense](https://github.com/microsoft/inshellisense) 的实现（包括解析器、规范加载、子命令/参数/选项处理、模板等）。

## 使用方法 (Usage)

```dart
import 'package:autocomplete/autocomplete.dart';
import 'dart:io';

void main() async {
  // 1. 注册内置的补全规范 (cd, ls, git, tree 等)
  registerBuiltinSpecs();

  // 2. 获取补全建议
  // 参数: 输入的命令字符串, 当前工作目录, Shell 类型
  final blob = await getSuggestions('git sta', Directory.current.path, Shell.bash);

  // blob.suggestions 是一个列表，包含建议项 (Suggestion)
  // 例如: [Suggestion(name: 'status', ...)]
  if (blob != null) {
    for (final suggestion in blob.suggestions) {
      print('${suggestion.name} - ${suggestion.description}');
    }
  }
}
```

## 项目结构 (Layout)

- `lib/src/`: 核心逻辑，包括规范模型、生成器、注册表、解析器、运行时、模板和建议对象。
- `lib/specs/`: 补全规范文件，每个命令对应一个 Dart 文件（例如 `cd.dart`, `ls.dart`）。
  - **`all_specs.dart`**: 导入所有规范并暴露 `registerAllSpecs()` 方法（由于 Dart 不支持动态导入，所有规范都需要在这里注册）。
- `assets/icons/`: 规范引用的图标/Logo。
  - TypeScript 源通常使用 URL 或 Data URI，这里我们将它们存储为文件，以便 Flutter 应用可以打包使用。详见 `assets/icons/README.md`。
- `example/example.dart`: 调用 `getSuggestions` 的示例代码。

## 运行示例 (Run Example)

在 `dart/` 目录下运行：

```bash
dart run example/example.dart "git sta"
```

或者指定 Shell：

```bash
dart run example/example.dart "cd " --shell zsh
```

## 如何参与贡献 (Contributing)

非常欢迎大家参与到这个项目中来！由于这是一个庞大的移植工程，我们非常需要社区的帮助。

### 1. 修正与改进 Spec (Fixing Specs)

目前的 Dart Spec 文件（位于 `lib/specs/`）大多是通过脚本从 TypeScript **批量转换**而来的。

- **存在的问题**: 由于自动化转换的局限性，某些复杂的 Spec 逻辑、类型或参数可能存在错误或遗漏。
- **如何帮助**: 如果你在使用中发现某个命令的补全不准确，或者报错，欢迎直接修改对应的 `lib/specs/<command>.dart` 文件并提交 PR。我们非常欢迎人工校对和修复！

### 2. 辅助脚本 (Tools)

如果你在仓库中看到 `tools/` 目录（或根目录下的相关脚本），它们通常用于：

- **批量转换**: 将上游的 TS Spec 转换为 Dart 代码。
- **列表生成**: 扫描并生成 `all_specs.dart` 等索引文件。
- **校验**: 检查 Spec 文件的语法和结构正确性。
  详细的使用说明请参考各脚本文件头部的注释。

### 3. 添加新规范 (Adding a new spec)

1. 在 `lib/specs/` 下添加 `<command>.dart` 文件，定义一个 `FigSpec` (例如 `const FigSpec myCommandSpec = ...`)。
2. 在 **`lib/specs/all_specs_v2.dart`** 中：
   - 添加 `import '<command>.dart';`
   - 在 `registerAllSpecs()` 方法中添加 `registerSpec('<command>', () => <command>Spec);`。

## 致谢 (Acknowledgements)

本项目是开源社区协作的成果，特别感谢以下项目提供的灵感、规范数据和参考实现：

- **[withfig/autocomplete](https://github.com/withfig/autocomplete)** (MIT License): 本项目的补全规范数据 (Specs) 主要来源于此仓库。
- **[microsoft/inshellisense](https://github.com/microsoft/inshellisense)** (MIT License): 本项目的运行时逻辑 (Runtime)、解析器设计参考了该项目的 TypeScript 实现。
- **[withfig/autocomplete-tools](https://github.com/withfig/autocomplete-tools)**: 提供了关于 Spec 结构的工具和定义参考。

感谢所有为这些开源项目做出贡献的开发者！

## 常见问题 (Common Issues)

1. 为什么有些命令的补全不准确？
   - 这可能是由于自动化转换过程中出现的错误导致的。自动转换脚本不能覆盖所有复杂的 TypeScript 逻辑。
   - 你可以直接修改对应的 Dart 文件来修正错误。

2. 为什么部分补全建议的代码放在了 `dart_aws/`, `dart_az/`, `dart_gcloud/`, `dart_xxx/` 等目录下？
   - 因为 pub.dev 的限制，这些命令的补全内容太多，导致整个项目的体积庞大，超过了100MB（未压缩）的限制。
   - 所以这些代码确实没有引入项目，当前你无法访问他，后续会推出分包。

3. 为什么要把 `local adapter` 的实现放到 `./example` 目录下？
  - 因为 local adapter 的代码用了 `dart:io` ，为了能让本项目跨 `web `平台，就没引入。但我定义好接口，你可以按照需求自己实现，或者直接 copy example 中的代码。