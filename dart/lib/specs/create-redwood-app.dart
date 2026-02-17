// Auto-generated from TypeScript source: create-redwood-app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-redwood-app` CLI
final FigSpec createRedwoodAppSpec = FigSpec(
  name: 'create-redwood-app',
  icon: 'https://avatars.githubusercontent.com/u/45050444?s=48&v=4',
  args: [
    Arg(
    name: 'projectName',
    description: 'Name of your Redwood project'
  )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help'
    ),
    Option(
      name: ['--typescript', '--ts'],
      description: 'Generate a TypeScript project'
    ),
    Option(
      name: '--overwrite',
      description: 'Create even if target directory isn\'t empty'
    ),
    Option(
      name: '--telemetry',
      description: 'Enables sending telemetry events for this create'
    ),
    Option(
      name: ['--git-init', '--git'],
      description: 'Initialize a git repository'
    ),
    Option(
      name: ['--commit-message', '-m'],
      description: 'Commit message for the initial commit'
    ),
    Option(
      name: ['--yes', '-y'],
      description: 'Skip prompts and use defaults'
    ),
    Option(
      name: '--version',
      description: 'Show version number'
    ),
    Option(
      name: '--yarn-install',
      description: 'Install node modules. Skip via --no-yarn-install'
    )
  ]
);
