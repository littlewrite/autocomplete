// Auto-generated from TypeScript source: ansible-galaxy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ansible-galaxy` CLI
final FigSpec ansibleGalaxySpec = FigSpec(
  name: 'ansible-galaxy',
  description: 'Perform various Role and Collection related operations',
  subcommands: [
    Subcommand(
      name: 'collection',
      description: 'Operate on collections',
      subcommands: [
        Subcommand(
          name: 'download',
          description: 'Download collections',
          options: []
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize collections',
          options: [],
          args: [
            Arg(
            name: 'collection_name',
            description: 'Name of the collection'
          )
          ]
        ),
        Subcommand(
          name: 'build',
          description: 'Build collections',
          options: [],
          args: [
            Arg(
            name: 'collection',
            description: 'Path(s) to the collection to be built',
            template: ['folders'],
            defaultValue: '.'
          )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Publish collections',
          options: [],
          args: [
            Arg(
            name: 'collection_path',
            description: 'The path to the collection tarball to publish',
            template: ['folders'],
            defaultValue: '.'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List collections',
          options: [],
          args: [
            Arg(
            name: 'collection',
            description: 'The collections to list',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify collections',
          options: [],
          args: [
            Arg(
            name: 'collection_name',
            description: 'The collections to verify',
            isOptional: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role',
      description: 'Operate on roles',
      subcommands: [
        Subcommand(
          name: 'init',
          description: 'Initialize roles',
          options: [],
          args: [
            Arg(
            name: 'role_name',
            description: 'Name of the role'
          )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove roles',
          options: [],
          args: [
            Arg(
            name: 'role_name',
            description: 'The role to remove'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List roles',
          options: [],
          args: [
            Arg(
            name: 'role',
            description: 'The role to list',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Search roles',
          options: [],
          args: [
            Arg(
            name: 'searchterm',
            description: 'Search terms',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import roles',
          options: [],
          args: [
            Arg(
              name: 'github_user',
              description: 'GitHub username',
              isOptional: true
            ),
            Arg(
              name: 'github_repo',
              description: 'GitHub repository'
            )
          ]
        ),
        Subcommand(
          name: 'setup',
          description: 'Set up roles',
          options: []
        ),
        Subcommand(
          name: 'info',
          description: 'Role information',
          options: []
        ),
        Subcommand(
          name: 'install',
          description: 'Install roles',
          options: []
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help and exit',
      isPersistent: true
    ),
    Option(
      name: '--verbose',
      description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
      exclusiveOn: ['-v'],
      isPersistent: true
    ),
    Option(
      name: '-v',
      description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
      isRepeatable: 4,
      exclusiveOn: ['--verbose'],
      isPersistent: true
    ),
    Option(
      name: '--version',
      description: 'Shows version number, config file location, module search path, module location, executable location and exit',
      isPersistent: true
    )
  ]
);
