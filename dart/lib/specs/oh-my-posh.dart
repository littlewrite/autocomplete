// Auto-generated from TypeScript source: oh-my-posh.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `oh-my-posh` CLI
final FigSpec ohMyPoshSpec = FigSpec(
  name: 'oh-my-posh',
  description: '',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Initialize oh-my-posh for your shell',
      args: [
        Arg(
        name: 'SHELL',
        suggestions: [
          FigSuggestion(
            name: 'zsh'
          ),
          FigSuggestion(
            name: 'fish'
          ),
          FigSuggestion(
            name: 'pwsh'
          ),
          FigSuggestion(
            name: 'powershell'
          ),
          FigSuggestion(
            name: 'cmd'
          ),
          FigSuggestion(
            name: 'bash'
          ),
          FigSuggestion(
            name: 'shell'
          )
        ]
      )
      ],
      options: [
        Option(
          name: ['--print', '-p'],
          description: 'Print the init script'
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get oh-my-posh values',
      args: [
        Arg(
        name: 'VALUE',
        suggestions: [
          FigSuggestion(
            name: 'millis',
            description: 'Get the current timestamp in milliseconds, example usage: \'oh-my-posh get millis\''
          ),
          FigSuggestion(
            name: 'shell',
            description: 'Get the current shell, example usage: \'oh-my-posh get shell\''
          )
        ]
      )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Debug oh-my-posh, example usage: \'oh-my-posh debug\'',
      options: []
    ),
    Subcommand(
      name: 'config',
      description: 'Interact with the oh-my-posh configuration',
      subcommands: [
        Subcommand(
          name: 'edit',
          description: 'Edit the config file, example usage: \'oh-my-posh config edit\''
        ),
        Subcommand(
          name: 'migrate',
          description: 'Migrate the config file, example usage: \'oh-my-posh config migrate --config ~/.config.omp.json\'',
          options: [
            Option(
              name: ['--write', '-w'],
              description: 'Write the migrated config to the configuration file, example usage: \'oh-my-posh config migrate --write\''
            )
          ]
        ),
        Subcommand(
          name: 'export',
          description: 'Export the config file, example usage: \'oh-my-posh config export --config ~/.config.omp.toml\'',
          options: [
            Option(
              name: ['--output', '-o'],
              description: 'The file to output the migrated config to, example usage: \'oh-my-posh config export --output ~/.config.omp.json\'',
              args: [
                Arg(
                name: 'OUTPUT',
                description: 'The file to write to',
                template: ['filepaths']
              )
              ]
            )
          ]
        )
      ],
      options: []
    ),
    Subcommand(
      name: 'print',
      description: 'Print a prompt',
      args: [
        Arg(
        name: 'PROMPT',
        suggestions: [
          FigSuggestion(
            name: 'primary'
          ),
          FigSuggestion(
            name: 'secondary'
          ),
          FigSuggestion(
            name: 'right'
          ),
          FigSuggestion(
            name: 'transient'
          ),
          FigSuggestion(
            name: 'tooltip'
          ),
          FigSuggestion(
            name: 'valid'
          ),
          FigSuggestion(
            name: 'error'
          )
        ]
      )
      ],
      options: [
        Option(
          name: ['--terminal-width', '-w'],
          description: 'The terminal width, example usage: \'oh-my-posh print primary --terminal-width 200\'',
          args: [
            Arg(
            name: 'WIDTH',
            description: 'The terminal width',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--command',
          description: 'The current command for tooltips, example usage: \'oh-my-posh print tooltip --command az\'',
          args: [
            Arg(
            name: 'COMMAND',
            description: 'The tooltip command'
          )
          ]
        ),
        Option(
          name: ['--error', '-e'],
          description: 'The last exit code, example usage: \'oh-my-posh print primary --error 127\'',
          args: [
            Arg(
            name: 'ERROR CODE',
            description: 'The last error code',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: '--eval',
          description: 'Use eval to render the prompt, example usage: \'oh-my-posh print primary --eval\''
        ),
        Option(
          name: '--execution-time',
          description: 'Use last command execution time in millis, example usage: \'oh-my-posh print primary --execution-time 200\'',
          args: [
            Arg(
            name: 'EXECUTION TIME',
            description: 'The last command\'s execution time',
            defaultValue: '0'
          )
          ]
        ),
        Option(
          name: ['--plain', '-p'],
          description: 'Print a prompt without ASNI codes, example usage: \'oh-my-posh print primary --plain\''
        ),
        Option(
          name: '--pswd',
          description: 'The current working directory according to PowerShell, example usage: \'oh-my-posh print primary --pswd C:\\Users\\user\\Documents\'',
          args: [
            Arg(
            name: 'POWERSHELL WORKING DIRECTORY',
            description: 'The working directory according to PowerShell',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--pwd',
          description: 'The current working directory, example usage: \'oh-my-posh print primary --pwd /home/user/Documents\'',
          args: [
            Arg(
            name: 'WORKING DIRECTORY',
            description: 'The working directory',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--shell',
          description: 'The current shell, example usage: \'oh-my-posh print primary --shell fish\'',
          args: [
            Arg(
            name: 'SHELL',
            description: 'The shell used',
            suggestions: [
              FigSuggestion(name: 'zsh'),
              FigSuggestion(name: 'fish'),
              FigSuggestion(name: 'pwsh'),
              FigSuggestion(name: 'powershell'),
              FigSuggestion(name: 'cmd'),
              FigSuggestion(name: 'bash'),
              FigSuggestion(name: 'shell')
            ]
          )
          ]
        ),
        Option(
          name: '--stack-count',
          description: 'The directory stack count, example usage: \'oh-my-posh print primary --stack-count 1\'',
          args: [
            Arg(
            name: 'NUM',
            description: 'The number of stacks',
            defaultValue: '0'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Display the oh-my-posh version, example usage: \'oh-my-posh version\''
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for oh-my-posh',
      isPersistent: true
    )
  ]
);
