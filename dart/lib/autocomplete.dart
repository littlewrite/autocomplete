// Fig-style autocomplete: specs + runtime (parse command, get suggestions).
// Use getSuggestions(cmd, cwd, shell) for completion. Call registerBuiltinSpecs() first.
// Optional [CompleteAdapter] for remote/SSH: getSuggestions(cmd, cwd, shell, adapter: myAdapter).
// Optional specs v2 (deferred load): import specs/all_specs_v2.dart, call registerBuiltinSpecsV2(),
//   then getSuggestions(..., ensureSpecLoaded: ensureSpecLoadedV2) so only the requested command's spec is loaded.

import 'specs/all_specs.dart';

export 'src/adapter.dart';
export 'src/generators.dart';
export 'src/model.dart';
export 'src/parser.dart';
export 'src/registry.dart';
export 'src/runtime.dart';
export 'src/shell.dart';
export 'src/spec.dart';
export 'src/suggestion.dart';
export 'src/template.dart';

/// Register all specs (see specs/all_specs.dart). Call once when using the library.
void registerBuiltinSpecs() {
  registerAllSpecs();
}
