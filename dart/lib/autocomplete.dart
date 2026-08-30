// Fig-style autocomplete: specs + runtime (parse command, get suggestions).
// Call getSuggestions(cmd, cwd, shell, myAdapter) or create
// AutocompleteEngine(adapter: myAdapter) and reuse engine.getSuggestions(cmd, cwd, shell).
// For a local (dart:io) implementation, copy example/local_adapter.dart into your project.
//
// JSON specs are registered explicitly with [registerJsonSpecs]. This library
// intentionally has no compile-time import of the generated command catalog.

import 'src/json_spec.dart';
import 'src/runtime.dart' show EnsureSpecLoaded;
import 'src/spec_handlers/aws.dart';
import 'src/spec_handlers/az.dart';
import 'src/spec_handlers/chown.dart';
import 'src/spec_handlers/echo.dart';
import 'src/spec_handlers/fig.dart';
import 'src/spec_handlers/git.dart';
import 'src/spec_handlers/heroku.dart';
import 'src/spec_handlers/npm.dart';

export 'src/adapter.dart';
export 'src/generators.dart';
export 'src/model.dart';
export 'src/json_spec.dart';
export 'src/parser.dart';
export 'src/registry.dart';
export 'src/runtime.dart';
export 'src/shell.dart';
export 'src/spec.dart';
export 'src/suggestion.dart';
export 'src/template.dart';
export 'src/versioned_spec.dart';

/// Legacy Dart-spec registration is unavailable in the JSON-first build.
///
/// Keep this API so callers receive a direct migration error instead of a
/// missing-command result. Register [registerJsonSpecs] with an asset reader.
@Deprecated('Use registerJsonSpecs with JSON command assets instead.')
void registerBuiltinSpecs() {
  throw UnsupportedError(
    'The generated Dart spec catalog is not included. '
    'Use registerJsonSpecs() instead.',
  );
}

/// Register JSON-backed specs as the default lazy source.
///
/// The caller supplies the platform-specific asset reader (filesystem,
/// Flutter asset bundle, HTTP, etc.). Supply [fallback] only when the host
/// application provides its own legacy loader.
Future<JsonSpecStore> registerJsonSpecs({
  required JsonAssetReader reader,
  JsonHandlerRegistry? handlers,
  EnsureSpecLoaded? fallback,
}) async {
  final store = JsonSpecStore(
    reader: reader,
    handlers: handlers,
    fallback: fallback,
  );
  await store.register();
  return store;
}

/// Register the reviewed host-language handlers referenced by shipped JSON.
///
/// This is intentionally opt-in: static-only callers can register JSON specs
/// without calling it, while applications that need dynamic suggestions and
/// version detection use the same public library entry point.
void registerMigratedJsonHandlers(JsonHandlerRegistry registry) {
  registerAwsHandlers(registry);
  registerAzHandlers(registry);
  registerChownHandlers(registry);
  registerEchoHandlers(registry);
  registerFigHandlers(registry);
  registerGitHandlers(registry);
  registerHerokuHandlers(registry);
  registerNpmHandlers(registry);
}
