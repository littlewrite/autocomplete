# autocomplete (Dart)

Fig-style CLI completion specs and runtime in pure Dart: parse command, load spec, get suggestions. No Flutter.

- **SDK**: `>=2.17.0 <4.0.0`
- **Specs**: Data only (e.g. `cd`, `ls`, `git`, `tree`). More specs are added over time; start with a few common commands and expand.
- **Runtime**: Reference implementation based on [microsoft/inshellisense](https://github.com/microsoft/inshellisense) (parser, loadSpec, runSubcommand/Arg/Option, templates).

## Usage

```dart
import 'package:autocomplete/autocomplete.dart';

void main() async {
  registerBuiltinSpecs(); // cd, ls, git, tree
  final blob = await getSuggestions('git sta', Directory.current.path, Shell.bash);
  // blob.suggestions -> e.g. [Suggestion(name: 'status', ...)]
}
```

## Layout

- `lib/src/`: spec model, generators, registry, parser, runtime, template, suggestion.
- `lib/specs/`: one Dart file per command (e.g. `cd.dart`, `ls.dart`). **`all_specs.dart`** imports every spec and exposes `registerAllSpecs()` (Dart has no dynamic import, so all specs are wired there).
- `assets/icons/`: icons/logos for specs. TS sources often use URLs or data URIs; here they are stored as files so Flutter can bundle them. See `assets/icons/README.md`.
- `tool/list_specs.dart`: list TS spec files under repo `src/` for migration tracking.
- `example/example.dart`: example that calls `getSuggestions` for a few commands.

## Run example

From this directory (`dart/`):

```bash
dart run example/example.dart
```

## Adding a new spec

1. Add `lib/specs/<command>.dart` that defines a `FigSpec` (e.g. `const FigSpec myCommandSpec = ...`).
2. In **`lib/specs/all_specs.dart`**: add `import '<command>.dart';` and in `registerAllSpecs()` add `registerSpec('<command>', () => <command>Spec);`.

## Publishing

This package lives under `dart/` in the [autocomplete](https://github.com/withfig/autocomplete) repo. To publish to pub.dev from the repo root:

```bash
cd dart && dart pub publish
```
