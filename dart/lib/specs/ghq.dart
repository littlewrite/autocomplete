// Auto-generated from TypeScript source: ghq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ghq` CLI
final FigSpec ghqSpec = FigSpec(
  name: 'ghq',
  description: '\'ghq\' provides a way to organize remote repository clones, like go get does. When you clone a remote repository by ghq get, ghq makes a directory under a specific root directory (by default ~/ghq) using the remote repository URL’s host and path',
  subcommands: [
    Subcommand(
      name: 'get',
      description: 'Clone/sync with a remote repository',
      options: [
        Option(
          name: ['-u', '--update'],
          description: 'Update local repository if cloned already (default: false)'
        ),
        Option(
          name: '-p',
          description: 'Clone with SSH (default: false)'
        ),
        Option(
          name: '--shallow',
          description: 'Do a shallow clone (default: false)'
        ),
        Option(
          name: ['-l', '--look'],
          description: 'Look after get (default: false)'
        ),
        Option(
          name: '--vcs',
          description: 'Specify vcs backend for cloning',
          args: [
            Arg(
            name: 'vc'
          )
          ]
        ),
        Option(
          name: ['-s', '--silent'],
          description: 'Clone or update silently (default: false)'
        ),
        Option(
          name: '--no-recursive',
          description: 'Prevent recursive fetching (default: false)'
        ),
        Option(
          name: ['-b', '--branch'],
          description: 'Specify branch name. This flag implies --single-branch on Git',
          args: [
            Arg(
            name: 'branc'
          )
          ]
        ),
        Option(
          name: ['-P', '--parallel'],
          description: 'Import parallelly (default: false)'
        ),
        Option(
          name: '--bare',
          description: 'Do a bare clone (default: false)'
        )
      ],
      args: [
        Arg(
        name: '<repository URL>|<project>|<user>/<project>|<host>/<user>/<project>'
      )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List local repositories',
      options: [
        Option(
          name: ['-e', '--exact'],
          description: 'Perform an exact match (default: false)'
        ),
        Option(
          name: '--vcs',
          description: 'Specify vcs backend for matching',
          args: [
            Arg(
            name: 'vc'
          )
          ]
        ),
        Option(
          name: ['-p', '--full-path'],
          description: 'Print full paths (default: false)',
          exclusiveOn: ['--unique']
        ),
        Option(
          name: '--unique',
          description: 'Print unique subpaths (default: false)',
          exclusiveOn: ['--full-path']
        )
      ],
      args: [
        Arg(
        name: 'query',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'root',
      description: 'Show repositories\' root',
      options: [
        Option(
          name: '--all',
          description: 'Show all roots (default: false)'
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a new repository',
      options: [
        Option(
          name: '--vcs',
          description: 'Specify vcs backend explicitly',
          args: [
            Arg(
            name: 'vc'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: '<project>|<user>/<project>|<host>/<user>/<project>'
      )
      ]
    )
  ],
  options: [
    Option(
      name: ['-h', '--help', 'h', 'help'],
      description: 'Show help',
      isPersistent: true,
      exclusiveOn: ['--version']
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print the version',
      exclusiveOn: ['--help']
    )
  ]
);
