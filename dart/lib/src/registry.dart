// Registry: map command name -> spec. Lazy load specs by name.

import 'spec.dart';

/// Callback that returns the spec for a command (lazy load).
typedef SpecLoader = FigSpec Function();

/// Built-in spec names we provide. Add entries as we migrate specs.
const List<String> builtinSpecNames = ['cd', 'ls', 'git', 'tree'];

final Map<String, SpecLoader> _registry = {};

/// When using deferred specs (e.g. all_specs_v2), names listed here are included in [getSpecNames]
/// so command-name completion works before any spec is loaded. [ensureSpecLoaded] is responsible for loading and registering.
Set<String>? _v2SpecNames;

/// Register command names that are available for lazy load (v2). Included in [getSpecNames].
void registerV2SpecNames(Iterable<String> names) {
  _v2SpecNames ??= {};
  _v2SpecNames!.addAll(names);
}

/// Register a spec for command [name]. [loader] is called when the spec is first requested.
void registerSpec(String name, SpecLoader loader) {
  _registry[name] = loader;
}

/// Get spec for command [name], or null if not registered.
FigSpec? getSpec(String name) {
  final loader = _registry[name];
  if (loader == null) return null;
  return loader();
}

/// All registered command names (excluding @scoped and reserved). When v2 is used, includes [registerV2SpecNames] names.
List<String> getSpecNames() {
  final fromRegistry = _registry.keys.where((k) => !k.startsWith('@') && k != '-');
  final fromV2 = _v2SpecNames ?? <String>{};
  return <String>{...fromRegistry, ...fromV2}.toList()..sort();
}

/// Check if we have a spec for [name].
bool hasSpec(String name) => _registry.containsKey(name);
