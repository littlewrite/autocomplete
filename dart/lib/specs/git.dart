// git: Minimal spec for Phase 1 (subcommands only; generators in Phase 3). Mirrors src/git.ts structure.

import '../src/spec.dart';

const FigSpec gitSpec = FigSpec(
  name: 'git',
  description: 'The stupid content tracker',
  subcommands: [
    FigSubcommand(name: 'status', description: 'Show the working tree status'),
    FigSubcommand(name: 'add', description: 'Add file contents to the index', args: FigArg(name: 'path', template: 'filepaths')),
    FigSubcommand(
      name: 'commit',
      description: 'Record changes to the repository',
      options: [
        FigOption(name: '-m', description: 'Commit message', args: FigArg(name: 'message')),
      ],
    ),
    FigSubcommand(name: 'branch', description: 'List, create, or delete branches'),
    FigSubcommand(name: 'checkout', description: 'Switch branches or restore working tree files'),
    FigSubcommand(name: 'push', description: 'Update remote refs'),
    FigSubcommand(name: 'pull', description: 'Integrate with another repository'),
  ],
);
