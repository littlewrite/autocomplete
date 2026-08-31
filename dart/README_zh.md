# autocomplete (Dart)

**本项目是 JSON-first 的纯 Dart 命令补全运行时。**

所有的补全规范（Specs）数据结构、核心逻辑以及运行时（Runtime）均直接移植自 `withfig/autocomplete` 和 `microsoft/inshellisense` 仓库，旨在为 Dart 生态提供完全一致的命令行自动补全能力。

- **Dart SDK 要求**: `>=2.17.0 <4.0.0`
- **补全规范 (Specs)**: 以 JSON 文件保存，按命令懒加载；动态逻辑通过显式 handler ID 绑定到宿主语言函数。
- **运行时 (Runtime)**: 参考了 [microsoft/inshellisense](https://github.com/microsoft/inshellisense) 的实现（包括解析器、规范加载、子命令/参数/选项处理、模板等）。

## JSON-first 使用方法

核心库不依赖 Flutter，也不直接依赖 `dart:io`。宿主只需提供一个读取相对资源路径的函数：

```dart
import 'package:autocomplete/autocomplete.dart';

final handlers = JsonHandlerRegistry(
  missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
);
registerMigratedJsonHandlers(handlers);

await registerJsonSpecs(
  reader: (path) => loadTextFromYourApp(path),
  handlers: handlers,
);
final engine = AutocompleteEngine(adapter: myAdapter);
final result = await engine.getSuggestions('git st', cwd, Shell.bash);
```

`index.json` 只包含命令到文件的映射；第一次注册仅读取索引，真正请求 `git` 时才读取对应的命令 JSON。

### Flutter 资源

包已经声明 `assets/` 资源。Flutter 宿主通过 `rootBundle` 读取包资源（无需让库依赖 Flutter）：

```dart
import 'package:flutter/services.dart' show rootBundle;

final reader = (String path) =>
    rootBundle.loadString('packages/autocomplete/assets/specs/$path');
```

发布到 pub.dev 时，JSON 必须位于包目录内，并在 `pubspec.yaml` 的 `flutter.assets` 中声明。仓库当前的 `assets/specs/` 已包含完整 catalog，v3 入口可运行：

```bash
dart run example/example.dart --trace 'astro d'
```

## 使用方法 (Usage)

```dart
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

void main() async {
  // 1. 注册 JSON 规范；reader 由宿主实现。
  final handlers = JsonHandlerRegistry(
    missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
  );
  registerMigratedJsonHandlers(handlers);
  await registerJsonSpecs(
    reader: loadTextFromYourApp,
    handlers: handlers,
  );

  // 2. 提供你自己的 adapter 实现
  // 本地 dart:io 版本可参考 example/local_adapter.dart
  final adapter = MyCompleteAdapter();

  // 3. 获取补全建议
  // 参数: 输入的命令字符串, 当前工作目录, Shell 类型
  final blob = await getSuggestions(
    'git sta',
    Directory.current.path,
    Shell.bash,
    adapter,
  );

  // blob.suggestions 是一个列表，包含建议项 (Suggestion)
  // 例如: [Suggestion(name: 'status', ...)]
  if (blob != null) {
    for (final suggestion in blob.suggestions) {
      print('${suggestion.name} - ${suggestion.description}');
    }
  }
}
```

### 流式返回示例

上面的 `getSuggestions(...)` 适合一次性获取结果。
如果你的终端 UI 需要“先返回静态建议，再增量补充动态结果”，可以使用 `requestSuggestions(...)`：

```dart
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

void main() async {
  final handlers = JsonHandlerRegistry(
    missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
  );
  registerMigratedJsonHandlers(handlers);
  await registerJsonSpecs(
    reader: loadTextFromYourApp,
    handlers: handlers,
  );
  final adapter = MyCompleteAdapter();

  final engine = AutocompleteEngine(
    adapter: adapter,
  );

  final handle = engine.requestSuggestions(
    'git co ',
    Directory.current.path,
    Shell.zsh,
    timeout: const Duration(milliseconds: 1500),
    mode: SuggestionRequestMode.staticThenFinal,
  );

  await for (final event in handle.stream) {
    print('event: ${event.kind}');
    if (event.blob != null) {
      for (final suggestion in event.blob!.suggestions.take(5)) {
        print('  ${suggestion.name}');
      }
    }
  }

  final result = await handle.done;
  print('final suggestions: ${result?.suggestions.length ?? 0}');
  engine.dispose();
}
```

本地 `dart:io` adapter 可参考 [example/local_adapter.dart](example/local_adapter.dart)。
[example/example.dart](example/example.dart) 是 v3 的文件系统入口和推荐起点。

## 项目结构 (Layout)

- `lib/src/`: 核心逻辑，包括规范模型、生成器、注册表、解析器、运行时、模板和建议对象。
- `assets/specs/`: 可发布的 JSON 规范资源。`index.json` 把逻辑命令名映射到物理文件：扁平命令在 `<首字母>/<命令>.json`，命名空间命令镜像逻辑路径（`aws/amplify` → `a/aws/amplify.json`，`az/2.53.0/account` → `a/az/2.53.0/account.json`），按命令懒加载。
- `lib/src/spec_handlers/`: 仅存放已经手写完成的动态函数；纯静态命令没有 Dart 文件。
- `assets/icons/`: 规范引用的图标/Logo。
  - TypeScript 源通常使用 URL 或 Data URI，这里我们将它们存储为文件，以便 Flutter 应用可以打包使用。详见 `assets/icons/README.md`。
- `example/example.dart`: 完整 catalog 的 v3 JSON-first 命令行示例。

## 运行示例 (Run Example)

在 `dart/` 目录下运行：

```bash
dart run example/example.dart 'cut -'
```

或者指定 Shell：

```bash
dart run example/example.dart --trace "cd "
```

后续转换与审查规则见
[docs/json-spec-generation-rules.md](../docs/json-spec-generation-rules.md)。

## 如何参与贡献 (Contributing)

非常欢迎大家参与到这个项目中来！由于这是一个庞大的移植工程，我们非常需要社区的帮助。

### 1. 修正与改进 Spec (Fixing Specs)

Spec 从 `src/**/*.ts` 和 `src/**/*.js` 批量转换为 JSON。修正时应审查
生成的资源，而不是生成 Dart 命令文件。动态逻辑必须记录为 handler 引用，
仅在确有需要时再手写移植。

### 2. 辅助脚本 (Tools)

如果你在仓库中看到 `tools/` 目录（或根目录下的相关脚本），它们通常用于：

- **批量转换**: 将上游 TS/JS Spec 转换为 JSON。
- **索引生成**: 扫描并生成 JSON 命令索引。
- **校验**: 检查 Spec 文件的语法和结构正确性。
  详细的使用说明请参考各脚本文件头部的注释。

### 3. 添加新规范 (Adding a new spec)

1. 生成 `assets/specs/<首字母>/<命令>.json`（命名空间命令放入对应子目录，
   如 `a/aws/amplify.json`），并更新
   `assets/specs/index.json`。
2. 动态值在 JSON 保留稳定 handler ID，并加入人工处理清单。
3. 只有 handler 已真实实现时，才创建
   `lib/src/spec_handlers/<命令>.dart`，并在 `lib/autocomplete.dart` 的
   `registerMigratedJsonHandlers` 中注册。

## 致谢 (Acknowledgements)

本项目是开源社区协作的成果，特别感谢以下项目提供的灵感、规范数据和参考实现：

- **[withfig/autocomplete](https://github.com/withfig/autocomplete)** (MIT License): 本项目的补全规范数据 (Specs) 主要来源于此仓库。
- **[microsoft/inshellisense](https://github.com/microsoft/inshellisense)** (MIT License): 本项目的运行时逻辑 (Runtime)、解析器设计参考了该项目的 TypeScript 实现。
- **[withfig/autocomplete-tools](https://github.com/withfig/autocomplete-tools)**: 提供了关于 Spec 结构的工具和定义参考。

感谢所有为这些开源项目做出贡献的开发者！

## 常见问题 (Common Issues)

1. 为什么有些命令的补全不准确？
   - 这可能是由于自动化转换过程中出现的错误导致的。自动转换脚本不能覆盖所有复杂的 TypeScript 逻辑。
   - 应检查对应 JSON、源文件转换记录和 handler 清单；不能恢复生成的 Dart 命令文件。

2. 为什么某个动态补全可能没有结果？
   - 该 JSON 可能引用了尚未移植的 handler。示例默认采用 `returnEmpty`，因此静态补全仍会工作。
   - 使用 `--trace` 查看未实现的 handler ID；验证或生产环境可使用 `--strict`，让此类命令直接报错。

3. 为什么要把 `local adapter` 的实现放到 `./example` 目录下？
  - 因为 local adapter 的代码用了 `dart:io` ，为了能让本项目跨 `web `平台，就没引入。但我定义好接口，你可以按照需求自己实现，或者直接 copy example 中的代码。
