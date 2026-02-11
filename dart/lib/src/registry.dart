// Registry: map command name -> spec. Lazy load specs by name.

import 'spec.dart';

/// Callback that returns the spec for a command (lazy load).
typedef SpecLoader = FigSpec Function();

/// Built-in spec names we provide. Add entries as we migrate specs.
const List<String> builtinSpecNames = ['cd', 'ls', 'git', 'tree'];

final Map<String, SpecLoader> _registry = {};

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

/// All registered command names (excluding @scoped and reserved).
List<String> getSpecNames() {
  return _registry.keys.where((k) => !k.startsWith('@') && k != '-').toList()..sort();
}

/// Check if we have a spec for [name].
bool hasSpec(String name) => _registry.containsKey(name);
