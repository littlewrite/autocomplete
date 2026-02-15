// Minimal spec group: cd, ls, git, tree. Loaded on demand via deferred import.
// Used by spec_loader.dart for lazy loading. Add more groups following this pattern.

import '../src/registry.dart';
import 'cd.dart';
import 'git.dart';
import 'ls.dart';
import 'tree.dart';

/// Registers specs in this group. Called once when this library is loaded via loadLibrary().
void registerSpecs() {
  registerSpec(cdSpec.name, () => cdSpec);
  registerSpec(gitSpec.name, () => gitSpec);
  registerSpec(lsSpec.name, () => lsSpec);
  registerSpec(treeSpec.name, () => treeSpec);
}
