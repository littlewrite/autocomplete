// Auto-generated from TypeScript source: space.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `space` CLI
final FigSpec spaceSpec = FigSpec(
  name: 'space',
  description: 'Deta Space CLI for mananging Deta Space projects',
  subcommands: [
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [
        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [
            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'link',
      description: 'Link code to project',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to link',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['--id', '-i'],
          description: 'Project id of project to link',
          args: [
            Arg(
            name: 'i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Login to space'
    ),
    Subcommand(
      name: 'new',
      description: 'Create new project',
      options: [
        Option(
          name: ['--blank', '-b'],
          description: 'Create blank project'
        ),
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to release',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Project name',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'open',
      description: 'Open current project in browser',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to open',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['--id', '-i'],
          description: 'Project id of project to open',
          args: [
            Arg(
            name: 'i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Push code for project',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to push',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['--id', '-i'],
          description: 'Project id of project to push',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--open', '-o'],
          description: 'Open builder instance/project in browser after push'
        ),
        Option(
          name: '--skip-logs',
          description: 'Skip following logs after push'
        ),
        Option(
          name: ['--tag', '-t'],
          description: 'Tag to identify this push',
          args: [
            Arg(
            name: 'ta'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'release',
      description: 'Create release for a project',
      options: [
        Option(
          name: ['--confirm', '-c'],
          description: 'Release latest revision'
        ),
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to release',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        ),
        Option(
          name: ['--id', '-i'],
          description: 'Project id of an existing project',
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--listed', '-l'],
          description: 'Listed on discovery'
        ),
        Option(
          name: ['--notes', '-n'],
          description: 'Release notes',
          args: [
            Arg(
            name: 'note'
          )
          ]
        ),
        Option(
          name: ['--rid', '-r'],
          description: 'Revision id for release',
          args: [
            Arg(
            name: 'ri'
          )
          ]
        ),
        Option(
          name: ['--version', '-v'],
          description: 'Version for the release',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'Validate spacefile in dir',
      options: [
        Option(
          name: ['--dir', '-d'],
          description: 'Src of project to validate',
          args: [
            Arg(
            name: 'dir',
            defaultValue: './',
            template: 'folder'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Space CLI version',
      subcommands: [
        Subcommand(
          name: 'upgrade',
          description: 'Upgrade Space CLI version',
          options: [
            Option(
              name: ['--version', '-v'],
              description: 'Version number',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [
            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: 'link',
          description: 'Link code to project'
        ),
        Subcommand(
          name: 'login',
          description: 'Login to space'
        ),
        Subcommand(
          name: 'new',
          description: 'Create new project'
        ),
        Subcommand(
          name: 'open',
          description: 'Open current project in browser'
        ),
        Subcommand(
          name: 'push',
          description: 'Push code for project'
        ),
        Subcommand(
          name: 'release',
          description: 'Create release for a project'
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate spacefile in dir'
        ),
        Subcommand(
          name: 'version',
          description: 'Space CLI version',
          subcommands: [
            Subcommand(
              name: 'upgrade',
              description: 'Upgrade Space CLI version'
            )
          ]
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
