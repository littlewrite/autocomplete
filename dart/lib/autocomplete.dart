// Fig-style autocomplete: specs + runtime (parse command, get suggestions).
// Call getSuggestions(cmd, cwd, shell, myAdapter) or create
// AutocompleteEngine(adapter: myAdapter) and reuse engine.getSuggestions(cmd, cwd, shell).
// For a local (dart:io) implementation, copy example/local_adapter.dart into your project.
//
// JSON specs are registered explicitly with [registerJsonSpecs]. This library
// intentionally has no compile-time import of the generated command catalog.

import 'src/json_spec.dart';
import 'src/spec_handlers/handler_index.dart' as handler_index;
import 'src/runtime.dart' show EnsureSpecLoaded;

export 'src/adapter.dart';
export 'src/generators.dart';
export 'src/model.dart';
export 'src/json_spec.dart';
export 'src/spec_handlers/handler_index.dart' show registerCommandHandlers;
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
///
/// When [handlers] is provided, a command's dynamic handlers are registered
/// **on demand** — right when that command's JSON spec is first loaded (its
/// deferred handler library is `loadLibrary()`ed at that moment). This keeps
/// the load-on-use discipline for both data (JSON) and code (handlers), the
/// same contract the old v2 `ensureSpecLoadedV2` had.
///
/// Pass `eagerHandlers: true` only if you want every handler registered up
/// front (for example a tool that dumps the full registered-ID set without
/// loading specs); in that case the registration is awaited internally.
Future<JsonSpecStore> registerJsonSpecs({
  required JsonAssetReader reader,
  JsonHandlerRegistry? handlers,
  EnsureSpecLoaded? fallback,
  bool eagerHandlers = false,
}) async {
  final store = JsonSpecStore(
    reader: reader,
    handlers: handlers,
    fallback: fallback,
    lazyHandlerRegistrar: !eagerHandlers && handlers != null
        ? (command, registry) =>
            handler_index.registerCommandHandlers(registry, command)
        : null,
  );
  if (eagerHandlers && handlers != null) {
    await registerMigratedJsonHandlers(handlers);
  }
  await store.register();
  return store;
}

/// Register the reviewed host-language handlers referenced by shipped JSON.
///
/// Normally you don't call this yourself: [registerJsonSpecs] registers each
/// command's handlers lazily on use. Call this directly only when you need the
/// full handler set without a spec store (for example the dump tool), or with
/// `eagerHandlers: true` to have [registerJsonSpecs] do it for you. It is
/// `Future<void>` — always await.
Future<void> registerMigratedJsonHandlers(JsonHandlerRegistry registry) async {
  // Deferred: loadLibrary() each command's handler library, then register.
  await handler_index.registerMigratedJsonHandlers(registry);
}
