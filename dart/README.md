# autocomplete (Dart)

[中文文档](README_zh.md)

**This project is a JSON-first pure Dart command-completion runtime.**

All completion specifications (Specs) data structures, core logic, and the Runtime have been directly ported from the `withfig/autocomplete` and `microsoft/inshellisense` repositories, aiming to provide command-line autocomplete capabilities completely consistent with the original for the Dart ecosystem.

This is a pure Dart library that does not depend on Flutter and can be used in any Dart project. It contains:

1.  **Specs**: Completion specification data converted from TypeScript.
2.  **Runtime**: The core logic for parsing command-line input, loading specifications, and generating suggestions.

- **SDK Requirements**: `>=2.17.0 <4.0.0`
- **Specs**: JSON resources loaded lazily per command. Dynamic behavior is referenced by stable handler IDs and implemented by the host language.
- **Runtime**: Reference implementation based on [microsoft/inshellisense](https://github.com/microsoft/inshellisense) (including parser, spec loading, subcommand/argument/option handling, templates, etc.).

## JSON-first usage

The library is Flutter-independent and does not assume `dart:io`. Provide a reader for relative asset paths, register any handlers, then create an engine:

```dart
import 'package:autocomplete/autocomplete.dart';

final handlers = JsonHandlerRegistry(
  missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
);
registerMigratedJsonHandlers(handlers);
await registerJsonSpecs(reader: loadTextFromYourApp, handlers: handlers);
final engine = AutocompleteEngine(adapter: myAdapter);
final result = await engine.getSuggestions('git st', cwd, Shell.bash);
```

Registration reads only `index.json`; the command JSON is read when that command is first requested.

For Flutter, use `rootBundle.loadString('packages/autocomplete/assets/specs/$path')` as the reader. JSON lives inside the package and is listed under `flutter.assets`; the v3 example uses the complete catalog in `assets/specs/`:

```bash
dart run example/example.dart --trace 'astro d'
```

## Basic usage

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

  // 2. Provide your own adapter implementation.
  // See example/local_adapter.dart for a local dart:io version.
  final adapter = MyCompleteAdapter();

  // 3. Get completion suggestions
  // Arguments: input command string, current working directory, Shell type
  final blob = await getSuggestions(
    'git sta',
    Directory.current.path,
    Shell.bash,
    adapter,
  );

  // blob.suggestions is a list containing suggestion items (Suggestion)
  // e.g.: [Suggestion(name: 'status', ...)]
  if (blob != null) {
    for (final suggestion in blob.suggestions) {
      print('${suggestion.name} - ${suggestion.description}');
    }
  }
}
```

### Streamed suggestions

Keep the simple `getSuggestions(...)` usage above for one-shot completion.
If you want incremental updates for terminal-style UIs, use `requestSuggestions(...)`:

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

See [example/local_adapter.dart](example/local_adapter.dart) for a local
`dart:io` adapter. [example/example.dart](example/example.dart) is the v3
filesystem example and the supported starting point.

## Layout

- `lib/src/`: Core logic, including spec models, generators, registry, parser, runtime, templates, and suggestion objects.
- `assets/specs/`: publishable JSON resources. `index.json` maps a logical command name to a physical file. Flat commands live at `<first-character>/<command>.json`; namespaced specs mirror their logical path (`aws/amplify` → `a/aws/amplify.json`, `az/2.53.0/account` → `a/az/2.53.0/account.json`); documents are loaded lazily.
- `lib/src/spec_handlers/`: only hand-written, implemented dynamic handlers. Static commands have no Dart file.
- `assets/icons/`: Icons/Logos referenced by specs.
  - TypeScript sources usually use URLs or Data URIs; here we store them as files so Flutter apps can bundle and use them. See `assets/icons/README.md`.
- `example/example.dart`: v3 JSON-first command-line example for the complete catalog.

## Run Example

Run from the `dart/` directory:

```bash
dart run example/example.dart "cut -"
```

Or specify a Shell:

```bash
dart run example/example.dart --trace "cd "
```

See [docs/json-spec-generation-rules.md](../docs/json-spec-generation-rules.md)
for the required conversion and review rules.
For a current migration handoff and task selection, see
[docs/model-handoff.md](../docs/model-handoff.md).

## Contributing

We warmly welcome contributions to this project! As this is a massive porting effort, we greatly need help from the community.

### 1. Fixing Specs

Specs are converted from `src/**/*.ts` and `src/**/*.js` into JSON. Review and
fix the generated asset, not a generated Dart command file. Dynamic behavior
must be recorded as a handler reference and manually ported only when needed.

### 2. Tools

If you see a `tools/` directory in the repository (or related scripts in the root), they are typically used for:

- **Batch Conversion**: Converting upstream TS/JS specs to JSON.
- **Index Generation**: Creating the JSON command index.
- **Validation**: Checking the syntax and structural correctness of Spec files.
  Detailed usage instructions can be found in the comments at the top of each script file.

### 3. Adding a new spec

1. Generate `assets/specs/<first-character>/<command>.json` (namespaced commands
   use a matching subdirectory, e.g. `a/aws/amplify.json`) and add its entry
   to `assets/specs/index.json`.
2. For a dynamic value, retain its stable handler ID in JSON and add it to the
   manual-handler manifest.
3. Create `lib/src/spec_handlers/<command>.dart` only after its handler has a
   real implementation, then register it through `registerMigratedJsonHandlers`
   in `lib/autocomplete.dart`.

## Acknowledgements

This project is the result of open-source community collaboration. Special thanks to the following projects for providing inspiration, spec data, and reference implementations:

- **[withfig/autocomplete](https://github.com/withfig/autocomplete)** (MIT License): The primary source of completion spec data (Specs) for this project.
- **[microsoft/inshellisense](https://github.com/microsoft/inshellisense)** (MIT License): The reference for the runtime logic (Runtime) and parser design from its TypeScript implementation.
- **[withfig/autocomplete-tools](https://github.com/withfig/autocomplete-tools)**: Provided tools and definition references regarding Spec structure.

Thanks to all developers who have contributed to these open-source projects!

## F&Q (Common Issues)

1. Why is some command completion inaccurate?

- This may be due to errors during the automated conversion process. The automated conversion script cannot cover all complex TypeScript logic.

- Review the command JSON and its source conversion record. Dynamic behavior
  is corrected by implementing its registered handler, not by restoring a
  generated Dart command file.

2. Why does a dynamic suggestion sometimes return no result?

- The JSON document may reference a handler that has not been ported yet. The
  migration-mode example uses `returnEmpty`, so static completion keeps working.
  Use `--trace` to see the unresolved handler ID; use `--strict` in validation
  or production to reject such a command instead.

3. Why is the implementation of the `local adapter` placed in the `./example` directory?

- Because the local adapter uses `dart:io`, which is not included to allow this project to be cross-platform (web). But I've defined the interface, and you can implement it yourself according to your needs, or you can directly copy the code from the example.
