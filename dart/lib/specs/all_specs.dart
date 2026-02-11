// Central import and registration for all specs.
// Dart does not support dynamic import, so every spec must be imported here.
// When adding a new spec: add the import and a registerSpec() call in registerAllSpecs().

import '../src/registry.dart';
import 'cd.dart';
import 'git.dart';
import 'ls.dart';
import 'tree.dart';

/// Register every spec. Called by [registerBuiltinSpecs] in autocomplete.dart.
void registerAllSpecs() {
  registerSpec('cd', () => cdSpec);
  registerSpec('ls', () => lsSpec);
  registerSpec('git', () => gitSpec);
  registerSpec('tree', () => treeSpec);
}
