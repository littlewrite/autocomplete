// tree: Display directories as trees. Mirrors src/tree.ts (subset for Phase 1).

import '../src/spec.dart';

const FigSpec treeSpec = FigSpec(
  name: 'tree',
  description: 'Display directories as trees (with optional color/HTML output)',
  args: FigArg(name: 'directory', template: 'folders'),
  options: [
    FigOption(name: '-a', description: 'All files are listed'),
    FigOption(name: '-d', description: 'List directories only'),
    FigOption(name: '-l', description: 'Follow symbolic links like directories'),
    FigOption(name: '-f', description: 'Print the full path prefix for each file'),
    FigOption(name: '-L', description: 'Descend only level directories deep', args: FigArg(name: 'level')),
    FigOption(name: '-P', description: 'List only those files that match the pattern given', args: FigArg(name: 'pattern')),
    FigOption(name: '-I', description: 'Do not list files that match the given pattern', args: FigArg(name: 'pattern')),
  ],
);
