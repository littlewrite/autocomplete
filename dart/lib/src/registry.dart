// Registry: map command name -> spec. Lazy load specs by name.

import 'spec.dart';

/// Callback that returns the spec for a command (lazy load).
typedef SpecLoader = FigSpec Function();

/// Built-in spec names we provide. Add entries as we migrate specs.
const List<String> builtinSpecNames = ['cd', 'ls', 'git', 'tree'];

final Map<String, SpecLoader> _registry = {};

/// LRU order for loaded specs (oldest first). Used to evict when over [maxLoadedSpecs].
final List<String> _lruOrder = [];

int _maxLoadedSpecs = 5;

/// Set max number of loaded specs to keep; over this, oldest-used are unregistered (LRU eviction).
/// Call from app (e.g. FaTerm) to use app constant; default is 5.
void setMaxLoadedSpecs(int n) {
  _maxLoadedSpecs = n;
}

/// When using deferred specs (e.g. all_specs_v2), names listed here are included in [getSpecNames]
/// so command-name completion works before any spec is loaded. [ensureSpecLoaded] is responsible for loading and registering.
Set<String>? _v2SpecNames;

/// Register command names that are available for lazy load (v2). Included in [getSpecNames].
void registerV2SpecNames(Iterable<String> names) {
  _v2SpecNames ??= {};
  _v2SpecNames!.addAll(names);
}

/// Unregister the spec for [name] so it can be GC'd. Name may stay in _v2SpecNames for command-name completion.
void unregisterSpec(String name) {
  _registry.remove(name);
  _lruOrder.remove(name);
}

/// If we're at or over [maxLoadedSpecs], unregister the least recently used spec(s). Call before loading a new spec (e.g. in runtime getSuggestions).
void evictOldSpecsIfNeeded() {
  while (_registry.length >= _maxLoadedSpecs && _lruOrder.isNotEmpty) {
    final evictName = _lruOrder.first;
    unregisterSpec(evictName);
  }
}

/// Register a spec for command [name]. [loader] is called when the spec is first requested.
void registerSpec(String name, SpecLoader loader) {
  _lruOrder.remove(name);
  _lruOrder.add(name);
  _registry[name] = loader;
}

/// Get spec for command [name], or null if not registered. Updates LRU order.
FigSpec? getSpec(String name) {
  final loader = _registry[name];
  if (loader == null) return null;
  _lruOrder.remove(name);
  _lruOrder.add(name);
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
