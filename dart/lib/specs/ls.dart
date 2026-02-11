// ls: List directory contents. Mirrors src/ls.ts (subset of options for Phase 0).

import '../src/spec.dart';

const FigSpec lsSpec = FigSpec(
  name: 'ls',
  description: 'List directory contents',
  args: FigArg(
    name: 'path',
    isVariadic: true,
    template: ['filepaths', 'folders'],
    filterStrategy: FilterStrategy.fuzzy,
  ),
  options: [
    FigOption(name: '-@', description: 'Display extended attribute keys and sizes in long (-l) output'),
    FigOption(name: '-1', description: 'Force output to be one entry per line'),
    FigOption(name: '-A', description: 'List all entries except for . and ..'),
    FigOption(name: '-a', description: 'Include directory entries whose names begin with a dot (.)'),
    FigOption(name: '-l', description: 'List in long format'),
    FigOption(name: '-R', description: 'Recursively list subdirectories encountered'),
    FigOption(name: '-t', description: 'Sort by time modified (most recently modified first)'),
    FigOption(
      name: '--color',
      description: 'Output colored escape sequences',
      args: FigArg(
        name: 'when',
        suggestions: [
          FigSuggestion(name: ['always', 'yes', 'force'], description: 'Always output color'),
          FigSuggestion(name: 'auto', description: 'Output color based on terminal'),
          FigSuggestion(name: ['never', 'no', 'none'], description: 'Disable color'),
        ],
      ),
    ),
  ],
);
