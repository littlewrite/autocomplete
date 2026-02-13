// Auto-generated from TypeScript source: autocomplete-tools.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `@withfig/autocomplete-tools` CLI
final FigSpec withfigAutocompleteToolsSpec = FigSpec(
  name: '@withfig/autocomplete-tools',
  description: 'Dev tools for fig\'s autocomplete',
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Initialize fig custom spec boilerplate in current directory',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'create-spec',
      description: 'Create spec with given name',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Subcommand(
      name: 'compile',
      description: 'Compile specs in the current directory',
      options: [

        Option(
          name: ['-w', '--watch'],
          description: 'Watch files and re-compile on change'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'dev',
      description: 'Watch for changes and compile specs',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'merge',
      description: 'Deep merge new spec into old spec',
      options: [

        Option(
          name: ['-n', '--new-file'],
          description: 'Create a new spec file instead of updating the old one',
          args: [
            Arg(
            name: 'path',
            template: 'filepath'
          )
          ]
        ),
        Option(
          name: ['-i', '--ignore-props'],
          description: 'The props that should always be overridden',
          args: [
            Arg(
            name: 'prop'
          )
          ],
          exclusiveOn: ['--preset']
        ),
        Option(
          name: '--ignore-command-props',
          description: 'The command props that should always be overridden',
          args: [
            Arg(
            name: 'prop'
          )
          ],
          exclusiveOn: ['--preset']
        ),
        Option(
          name: '--ignore-option-props',
          description: 'The option props that should always be overridden',
          args: [
            Arg(
            name: 'prop'
          )
          ],
          exclusiveOn: ['--preset']
        ),
        Option(
          name: '--ignore-arg-props',
          description: 'The arg props that should always be overridden',
          args: [
            Arg(
            name: 'prop'
          )
          ],
          exclusiveOn: ['--preset']
        ),
        Option(
          name: ['-p', '--preset'],
          description: 'Use a preset',
          args: [
            Arg(
            name: 'name',
            suggestions: [

              FigSuggestion(name: 'commander'),
              FigSuggestion(name: 'oclif'),
              FigSuggestion(name: 'cobra'),
              FigSuggestion(name: 'clap'),
              FigSuggestion(name: 'swift-argument-parser'),
              FigSuggestion(name: 'click'),
              FigSuggestion(name: 'argparse'),
              FigSuggestion(name: 'cement')
            ]
          )
          ],
          priority: 76,
          exclusiveOn: [
            '--ignore-props',
            '--ignore-command-props',
            '--ignore-option-props',
            '--ignore-arg-props',
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'oldspec',
          template: 'filepaths'
        ),
        Arg(
          name: 'newspec',
          template: 'filepaths'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      subcommands: [

        Subcommand(
          name: 'add-diff',
          description: 'Generate version diff from new spec and add into old spec',
          options: [

            Option(
              name: ['-n', '--new-path'],
              description: 'The root folder where the updated spec will be saved. Note: this must NOT include the folder spec name',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--cwd',
              description: 'Resolve the spec name relative to this directory',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: '--use-minor-base',
              description: 'Create a new version file per minor version'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [

            Arg(
              name: 'specName'
            ),
            Arg(
              name: 'newSpecFilePath'
            ),
            Arg(
              name: 'diffVersion'
            )
          ]
        ),
        Subcommand(
          name: 'init-spec',
          description: 'Generate versioned spec in folder specified by path',
          options: [

            Option(
              name: '--cwd',
              description: 'Generate the spec relative to this directory',
              args: [
                Arg(
                name: 'path',
                template: 'folder'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Subcommand(
          name: 'precompute-specs',
          description: '[Unimplemented] Precompute versioned specs before publishing the specs repo (unimplemented)',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'files'
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command',
            isOptional: true,
            template: 'hel'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for command',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        isOptional: true,
        template: 'hel'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ],
  icon: 'https://fig.io/icons/fig-light.png'
);
