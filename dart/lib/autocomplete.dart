// Fig-style autocomplete: specs + runtime (parse command, get suggestions).
// Call getSuggestions(cmd, cwd, shell, adapter: myAdapter). [adapter] is required.
// For a local (dart:io) implementation, copy example/local_adapter.dart into your project.
//
// Default: specs v2 (deferred load) — only the requested command's spec is loaded. For eager
// load of all specs, import package:autocomplete/specs/all_specs.dart and call registerAllSpecs().

import 'specs/all_specs_v2.dart';
import 'src/runtime.dart';

export 'src/adapter.dart';
export 'src/generators.dart';
export 'src/model.dart';
export 'src/parser.dart';
export 'src/registry.dart';
export 'src/runtime.dart';
export 'src/shell.dart';
export 'src/spec.dart';
export 'specs/all_specs_v2.dart';
export 'src/suggestion.dart';
export 'src/template.dart';

/// Register built-in specs (v2: deferred load). Call once when using the library.
/// Specs are loaded on demand when getSuggestions is called for a command.
void registerBuiltinSpecs() {
  registerBuiltinSpecsV2();
  setDefaultEnsureSpecLoaded(ensureSpecLoadedV2);
}
