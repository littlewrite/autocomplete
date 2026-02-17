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

/// When using deferred specs (e.g. all_specs_v2), a getter returns the list for a given first char (switch over const lists).
List<String> Function(String firstChar)? _v2SpecNamesGetter;

/// Register the v2 spec-names getter (e.g. [getV2SpecNamesForFirstChar]). Used by [getSpecNamesWithPrefix].
void registerV2SpecNamesGetter(List<String> Function(String firstChar) getter) {
  _v2SpecNamesGetter = getter;
}

/// Unregister the spec for [name] so it can be GC'd. Name may stay in v2 first-char lists for command-name completion.
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

/// Command names that start with [prefix] (case-insensitive). Empty [prefix] returns [] (no suggestion).
/// Merges already-loaded specs and the v2 bucket for [prefix]'s first character (lowercase).
List<String> getSpecNamesWithPrefix(String prefix) {
  if (prefix.isEmpty) return [];
  final prefixLower = prefix.toLowerCase();
  final fromRegistry = _registry.keys
      .where((k) => !k.startsWith('@') && k != '-')
      .where((s) => s.toLowerCase().startsWith(prefixLower))
      .toList();
  final fromV2 = (_v2SpecNamesGetter?.call(prefixLower[0]) ?? <String>[])
      .where((s) => s.toLowerCase().startsWith(prefixLower))
      .toList();
  return <String>{...fromRegistry, ...fromV2}.toList()..sort();
}

/// All registered command names (excluding @scoped and reserved). When v2 is used, builds by calling the getter for each first char.
List<String> getSpecNames() {
  final fromRegistry = _registry.keys.where((k) => !k.startsWith('@') && k != '-');
  Set<String> fromV2 = {};
  if (_v2SpecNamesGetter != null) {
    const firstChars = ['-', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    for (final c in firstChars) {
      fromV2.addAll(_v2SpecNamesGetter!(c));
    }
  }
  return <String>{...fromRegistry, ...fromV2}.toList()..sort();
}

/// Check if we have a spec for [name].
bool hasSpec(String name) => _registry.containsKey(name);
