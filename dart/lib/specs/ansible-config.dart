// Auto-generated from TypeScript source: ansible-config.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ansible-config` CLI
final FigSpec ansibleConfigSpec = FigSpec(
  name: 'ansible-config',
  description: 'View ansible configuration',
  subcommands: [
    Subcommand(
      name: 'list',
      description: 'List and output available configs',
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Show help and exit'
        ),
        Option(
          name: '--verbose',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['-v']
        ),
        Option(
          name: '-v',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['--verbose'],
          isRepeatable: 4
        ),
        Option(
          name: ['--config', '-c'],
          description: 'Path to configuration file, defaults to first file found in precedence',
          args: [
            Arg(
            name: 'CONFIG_FILE',
            description: 'Path to configuration file',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'Filter down to a specific plugin type',
          args: [
            Arg(
            name: 'TYPE',
            description: 'Plugin type',
            suggestions: [
              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'base'),
              FigSuggestion(name: 'become'),
              FigSuggestion(name: 'cache'),
              FigSuggestion(name: 'callback'),
              FigSuggestion(name: 'cliconf'),
              FigSuggestion(name: 'connection'),
              FigSuggestion(name: 'httpapi'),
              FigSuggestion(name: 'inventory'),
              FigSuggestion(name: 'lookup'),
              FigSuggestion(name: 'netconf'),
              FigSuggestion(name: 'shell'),
              FigSuggestion(name: 'vars')
            ],
            defaultValue: 'all'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'args',
        description: 'Specific plugin to target, requires type of plugin to be set',
        isOptional: true,
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'dump',
      description: 'Shows the current settings, merges ansible.cfg if specified',
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Show help and exit'
        ),
        Option(
          name: '--verbose',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['-v']
        ),
        Option(
          name: '-v',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['--verbose'],
          isRepeatable: 4
        ),
        Option(
          name: ['--only-changed', '--changed-only'],
          description: 'Only show configurations that have changed from the default'
        ),
        Option(
          name: ['--config', '-c'],
          description: 'Path to configuration file, defaults to first file found in precedence',
          args: [
            Arg(
            name: 'CONFIG_FILE',
            description: 'Path to configuration file',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'Filter down to a specific plugin type',
          args: [
            Arg(
            name: 'TYPE',
            description: 'Plugin type',
            suggestions: [
              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'base'),
              FigSuggestion(name: 'become'),
              FigSuggestion(name: 'cache'),
              FigSuggestion(name: 'callback'),
              FigSuggestion(name: 'cliconf'),
              FigSuggestion(name: 'connection'),
              FigSuggestion(name: 'httpapi'),
              FigSuggestion(name: 'inventory'),
              FigSuggestion(name: 'lookup'),
              FigSuggestion(name: 'netconf'),
              FigSuggestion(name: 'shell'),
              FigSuggestion(name: 'vars')
            ],
            defaultValue: 'all'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'args',
        description: 'Specific plugin to target, requires type of plugin to be set',
        isOptional: true,
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'view',
      description: 'Displays the current config file',
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Show help and exit'
        ),
        Option(
          name: '--verbose',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['-v']
        ),
        Option(
          name: '-v',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['--verbose'],
          isRepeatable: 4
        ),
        Option(
          name: ['--config', '-c'],
          description: 'Path to configuration file, defaults to first file found in precedence',
          args: [
            Arg(
            name: 'CONFIG_FILE',
            description: 'Path to configuration file',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'Filter down to a specific plugin type',
          args: [
            Arg(
            name: 'TYPE',
            description: 'Plugin type',
            suggestions: [
              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'base'),
              FigSuggestion(name: 'become'),
              FigSuggestion(name: 'cache'),
              FigSuggestion(name: 'callback'),
              FigSuggestion(name: 'cliconf'),
              FigSuggestion(name: 'connection'),
              FigSuggestion(name: 'httpapi'),
              FigSuggestion(name: 'inventory'),
              FigSuggestion(name: 'lookup'),
              FigSuggestion(name: 'netconf'),
              FigSuggestion(name: 'shell'),
              FigSuggestion(name: 'vars')
            ],
            defaultValue: 'all'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'args',
        description: 'Specific plugin to target, requires type of plugin to be set',
        isOptional: true,
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initializes a new config file (to stdout)',
      options: [
        Option(
          name: ['--help', '-h'],
          description: 'Show help and exit'
        ),
        Option(
          name: '--verbose',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['-v']
        ),
        Option(
          name: '-v',
          description: 'Verbose mode (-vvv for more, -vvvv to enable connection debugging)',
          exclusiveOn: ['--verbose'],
          isRepeatable: 4
        ),
        Option(
          name: '--disabled',
          description: 'Prefixes all entries with a comment character to disable them'
        ),
        Option(
          name: ['--format', '-f'],
          description: 'Output format for init',
          args: [
            Arg(
            name: 'FORMAT',
            description: 'Output format',
            isOptional: true,
            suggestions: [
              FigSuggestion(name: 'ini'),
              FigSuggestion(name: 'env'),
              FigSuggestion(name: 'vars')
            ],
            defaultValue: 'ini'
          )
          ]
        ),
        Option(
          name: ['--config', '-c'],
          description: 'Path to configuration file, defaults to first file found in precedence',
          args: [
            Arg(
            name: 'CONFIG_FILE',
            description: 'Path to configuration file',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'Filter down to a specific plugin type',
          args: [
            Arg(
            name: 'TYPE',
            description: 'Plugin type',
            suggestions: [
              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'base'),
              FigSuggestion(name: 'become'),
              FigSuggestion(name: 'cache'),
              FigSuggestion(name: 'callback'),
              FigSuggestion(name: 'cliconf'),
              FigSuggestion(name: 'connection'),
              FigSuggestion(name: 'httpapi'),
              FigSuggestion(name: 'inventory'),
              FigSuggestion(name: 'lookup'),
              FigSuggestion(name: 'netconf'),
              FigSuggestion(name: 'shell'),
              FigSuggestion(name: 'vars')
            ],
            defaultValue: 'all'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'args',
        description: 'Specific plugin to target, requires type of plugin to be set',
        isOptional: true,
        isVariadic: true
      )
      ]
    )
  ],
  options: [
    Option(
      name: '--version',
      description: 'Shows version number, config file location, module search path, module location, executable location and exit'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help and exit'
    )
  ]
);
