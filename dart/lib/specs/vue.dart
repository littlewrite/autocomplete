// Auto-generated from TypeScript source: vue.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vue` CLI
final FigSpec vueSpec = FigSpec(
  name: 'vue',
  description: 'Vue cli tools',
  subcommands: [
    Subcommand(
      name: 'create',
      description: 'Create a new project powered by vue-cli-service',
      args: [
        Arg(
        name: 'app-name'
      )
      ],
      options: [
        Option(
          name: ['-p', '--preset'],
          description: 'Skip prompts and use saved or remote preset',
          args: [
            Arg(
            name: 'presetName'
          )
          ]
        ),
        Option(
          name: ['-d', '--default'],
          description: 'Skip prompts and use default preset'
        ),
        Option(
          name: ['-i', '--inlinePreset'],
          description: 'Skip prompts and use inline JSON string as preset',
          args: [
            Arg(
            name: 'json'
          )
          ]
        ),
        Option(
          name: ['-m', '--packageManager'],
          description: 'Use specified npm client when installing dependencies',
          args: [
            Arg(
            name: 'command'
          )
          ]
        ),
        Option(
          name: ['-r', '--registry'],
          description: 'Use specified npm registry when installing dependencies (only for npm)',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: ['-g', '--git'],
          description: 'Force git initialization with initial commit message',
          args: [
            Arg(
            name: 'message'
          )
          ]
        ),
        Option(
          name: ['-n', '--no-git'],
          description: 'Skip git initialization'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Overwrite target directory if it exists'
        ),
        Option(
          name: '--merge',
          description: 'Merge target directory if it exists'
        ),
        Option(
          name: ['-c', '--clone'],
          description: 'Use git clone when fetching remote preset'
        ),
        Option(
          name: ['-X', '--proxy'],
          description: 'Use specified proxy when creating project',
          args: [
            Arg(
            name: 'proxyUrl'
          )
          ]
        ),
        Option(
          name: ['-b', '--bar'],
          description: 'Scaffold project without beginner instructions'
        ),
        Option(
          name: '--skipGetStarted',
          description: 'Skip displaying "Get started" instructions'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Install a plugin and invoke its generator in an already created project',
      args: [
        Arg(
        name: 'plugin'
      )
      ],
      options: [
        Option(
          name: '--registry',
          description: 'Use specified npm registry when installing dependencies (only for npm)',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'invoke',
      description: 'Invoke the generator of a plugin in an already created project',
      args: [
        Arg(
        name: 'plugin'
      )
      ],
      options: [
        Option(
          name: '--registry',
          description: 'Use specified npm registry when installing dependencies (only for npm)',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'inspect',
      description: 'Inspect the webpack config in a project with vue-cli-service',
      args: [
        Arg(
      )
      ],
      options: [
        Option(
          name: '--mode',
          args: [
            Arg(
            name: 'mode'
          )
          ]
        ),
        Option(
          name: '--rule',
          description: 'Inspect a specific module rule',
          args: [
            Arg(
            name: 'ruleName'
          )
          ]
        ),
        Option(
          name: '--plugin',
          description: 'Inspect a specific plugin',
          args: [
            Arg(
            name: 'pluginName'
          )
          ]
        ),
        Option(
          name: '--rules',
          description: 'List all module rule names'
        ),
        Option(
          name: '--plugins',
          description: 'List all plugin names'
        ),
        Option(
          name: ['-v', '--verbose'],
          description: 'Show full function definitions in output'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Serve a .js or .vue file in development mode with zero config',
      args: [
        Arg(
        template: 'filepaths'
      )
      ],
      options: [
        Option(
          name: ['-o', '--open'],
          description: 'Open browser'
        ),
        Option(
          name: ['-c', '--copy'],
          description: 'Copy local url to clipboard'
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Port used by the server (default: 8080 or next available port)',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build a .js or .vue file in production mode with zero config',
      args: [
        Arg(
        template: 'filepaths'
      )
      ],
      options: [
        Option(
          name: ['-t', '--target'],
          description: 'Build target (app | lib | wc | wc-async, default: app)',
          args: [
            Arg(
            name: 'target'
          )
          ]
        ),
        Option(
          name: ['-n', '--name'],
          description: 'Name for lib or web-component mode (default: entry filename)',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: ['-d', '--destination'],
          description: 'Output directory (default: dist)',
          args: [
            Arg(
            name: 'dir'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'ui',
      description: 'Start and open the vue-cli ui',
      options: [
        Option(
          name: ['-H', '--host'],
          description: 'Host used for the UI server (default: localhost)',
          args: [
            Arg(
            name: 'host'
          )
          ]
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Port used for the UI server (by default search for available port)',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: ['-D', '--dev'],
          description: 'Run in dev mode'
        ),
        Option(
          name: '--quiet',
          description: 'Don\'t output starting messages'
        ),
        Option(
          name: '--headless',
          description: 'Don\'t open browser on start and output port'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Generate a project from a remote template (legacy API, requires @vue/cli-init)',
      args: [
        Arg(
          name: 'template'
        ),
        Arg(
          name: 'app-name'
        )
      ],
      options: [
        Option(
          name: ['-c', '--clone'],
          description: 'Use git clone when fetching remote template'
        ),
        Option(
          name: '--offline',
          description: 'Use cached template'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Inspect and modify the config',
      args: [
        Arg(
        name: 'value'
      )
      ],
      options: [
        Option(
          name: ['-g', '--get'],
          description: 'Get value from option',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: ['-s', '--set'],
          description: 'Set option value',
          args: [
            Arg(
            name: 'value'
          )
          ]
        ),
        Option(
          name: ['-d', '--delete'],
          description: 'Delete option from config',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Option(
          name: ['-e', '--edit'],
          description: 'Open config with default editor'
        ),
        Option(
          name: '--json',
          description: 'Outputs JSON result only'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'outdated',
      description: '(experimental) check for outdated vue cli service / plugins',
      options: [
        Option(
          name: '--next',
          description: 'Also check for alpha / beta / rc versions when upgrading'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: '(experimental) upgrade vue cli service / plugins',
      args: [
        Arg(
        name: 'plugin-name'
      )
      ],
      options: [
        Option(
          name: ['-t', '--to'],
          description: 'Upgrade <package-name> to a version that is not latest',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: ['-f', '--from'],
          description: 'Skip probing installed plugin, assuming it is upgraded from the designated version',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: ['-r', '--registry'],
          description: 'Use specified npm registry when installing dependencies',
          args: [
            Arg(
            name: 'url'
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Upgrade all plugins'
        ),
        Option(
          name: '--next',
          description: 'Also check for alpha / beta /rc versions when upgrading'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: '(experimental) run migrator for an already-installed cli plugin',
      args: [
        Arg(
        name: 'plugin-name'
      )
      ],
      options: [
        Option(
          name: ['-f', '--from'],
          description: 'The base version for the migrator to migrate from',
          args: [
            Arg(
            name: 'version'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Print debugging information about your environment',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
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
      description: 'Output usage information'
    )
  ]
);
