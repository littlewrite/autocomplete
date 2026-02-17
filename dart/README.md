# autocomplete (Dart)

[中文文档](README_zh.md)

**This project is a pure Dart translation and port of [withfig/autocomplete](https://github.com/withfig/autocomplete).**

All completion specifications (Specs) data structures, core logic, and the Runtime have been directly ported from the `withfig/autocomplete` and `microsoft/inshellisense` repositories, aiming to provide command-line autocomplete capabilities completely consistent with the original for the Dart ecosystem.

This is a pure Dart library that does not depend on Flutter and can be used in any Dart project. It contains:
1.  **Specs**: Completion specification data converted from TypeScript.
2.  **Runtime**: The core logic for parsing command-line input, loading specifications, and generating suggestions.

- **SDK Requirements**: `>=2.17.0 <4.0.0`
- **Specs**: Pure data definitions (e.g., `cd`, `ls`, `git`, `tree`). Currently contains some common commands; more specs will be added continuously.
- **Runtime**: Reference implementation based on [microsoft/inshellisense](https://github.com/microsoft/inshellisense) (including parser, spec loading, subcommand/argument/option handling, templates, etc.).

## Usage

```dart
import 'package:autocomplete/autocomplete.dart';
import 'dart:io';

void main() async {
  // 1. Register built-in completion specs (cd, ls, git, tree, etc.)
  registerBuiltinSpecs(); 
  
  // 2. Get completion suggestions
  // Arguments: input command string, current working directory, Shell type
  final blob = await getSuggestions('git sta', Directory.current.path, Shell.bash);
  
  // blob.suggestions is a list containing suggestion items (Suggestion)
  // e.g.: [Suggestion(name: 'status', ...)]
  if (blob != null) {
    for (final suggestion in blob.suggestions) {
      print('${suggestion.name} - ${suggestion.description}');
    }
  }
}
```

## Layout

- `lib/src/`: Core logic, including spec models, generators, registry, parser, runtime, templates, and suggestion objects.
- `lib/specs/`: Completion spec files, where each command corresponds to a Dart file (e.g., `cd.dart`, `ls.dart`).
  - **`all_specs.dart`**: Imports all specs and exposes the `registerAllSpecs()` method (since Dart does not support dynamic imports, all specs need to be registered here).
- `assets/icons/`: Icons/Logos referenced by specs.
  - TypeScript sources usually use URLs or Data URIs; here we store them as files so Flutter apps can bundle and use them. See `assets/icons/README.md`.
- `example/example.dart`: Example code calling `getSuggestions`.

## Run Example

Run from the `dart/` directory:

```bash
dart run example/example.dart "git sta"
```

Or specify a Shell:

```bash
dart run example/example.dart "cd " --shell zsh
```

## Contributing

We warmly welcome contributions to this project! As this is a massive porting effort, we greatly need help from the community.

### 1. Fixing Specs
Most current Dart Spec files (located in `lib/specs/`) are **batch converted** from TypeScript via scripts.
- **Existing Issues**: Due to limitations in automated conversion, some complex Spec logic, types, or parameters may contain errors or omissions.
- **How to Help**: If you find that completion for a command is inaccurate or causes errors during use, please feel free to modify the corresponding `lib/specs/<command>.dart` file directly and submit a PR. Manual proofreading and fixes are highly appreciated!

### 2. Tools
If you see a `tools/` directory in the repository (or related scripts in the root), they are typically used for:
- **Batch Conversion**: Converting upstream TS Specs to Dart code.
- **List Generation**: Scanning and generating index files like `all_specs.dart`.
- **Validation**: Checking the syntax and structural correctness of Spec files.
Detailed usage instructions can be found in the comments at the top of each script file.

### 3. Adding a new spec
1. Add a `<command>.dart` file under `lib/specs/` defining a `FigSpec` (e.g., `const FigSpec myCommandSpec = ...`).
2. In **`lib/specs/all_specs.dart`**:
   - Add `import '<command>.dart';`
   - Add `registerSpec('<command>', () => <command>Spec);` inside the `registerAllSpecs()` method.

## Publishing

This package lives under the `dart/` directory of the [autocomplete](https://github.com/withfig/autocomplete) repository. To publish to pub.dev from the repo root:

```bash
cd dart && dart pub publish
```

## Acknowledgements

This project is the result of open-source community collaboration. Special thanks to the following projects for providing inspiration, spec data, and reference implementations:

- **[withfig/autocomplete](https://github.com/withfig/autocomplete)** (MIT License): The primary source of completion spec data (Specs) for this project.
- **[microsoft/inshellisense](https://github.com/microsoft/inshellisense)** (MIT License): The reference for the runtime logic (Runtime) and parser design from its TypeScript implementation.
- **[withfig/autocomplete-tools](https://github.com/withfig/autocomplete-tools)**: Provided tools and definition references regarding Spec structure.
- **[@withfig/autocomplete-types](https://www.npmjs.com/package/@withfig/autocomplete-types)**: Provided reference for Spec type definitions.
- **[@typescript-eslint/parser](https://www.npmjs.com/package/@typescript-eslint/parser)**: Related parser tool reference.

Thanks to all developers who have contributed to these open-source projects!
