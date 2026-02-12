// Auto-generated from TypeScript source: jupyter.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `jupyter` CLI
final FigSpec jupyterSpec = FigSpec(
  name: 'jupyter',
  description: 'An interactive computing environment for notebook programming',
  subcommands: [
    Subcommand(
      name: 'bundlerextension',
      description: 'Work with Jupyter bundler extensions',
      subcommands: [
        Subcommand(
          name: 'enable',
          description: 'Enable a bundler extension'
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable a bundler extension'
        ),
        Subcommand(
          name: 'list',
          description: 'List bundler extensions'
        )
      ],
      options: [
        Option(
          name: '--user',
          description: 'Apply the operation only for the given user',
          args: [
            Arg(
            name: 'user'
          )
          ]
        ),
        Option(
          name: '--system',
          description: 'Apply the operation system-wide'
        ),
        Option(
          name: '--sys-prefix',
          description: 'Use sys.prefix as the prefix for installing nbextensions (for environments, packaging)'
        ),
        Option(
          name: ['--py', '--python'],
          description: 'Install from a Python package'
        )
      ]
    ),
    Subcommand(
      name: 'kernel',
      description: 'Run a kernel locally in a subprocess',
      options: [
        Option(
          name: '--kernel',
          args: [
            Arg(
            name: 'KernelApp.kernel_nam'
          )
          ]
        ),
        Option(
          name: '--ip',
          args: [
            Arg(
            name: 'KernelManager.i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'kernelspec',
      description: 'Manage Jupyter kernel specifications',
      subcommands: [
        Subcommand(
          name: 'list',
          options: [
            Option(
              name: '--json',
              description: 'Output spec name and location as json'
            )
          ]
        ),
        Subcommand(
          name: 'install',
          description: 'Install a kernel specification directory',
          options: [],
          args: [
            Arg(
            name: 'kernel'
          )
          ]
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Alias for remove',
          args: [
            Arg(
            name: 'kernel'
          )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove one or more Jupyter kernelspecs by name',
          args: [
            Arg(
            name: 'kernel'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'migrate',
      description: 'Migrate configuration and data from .ipython prior to 4.0 to Jupyter locations',
      options: [
        Option(
          name: '--generate-config',
          description: 'Generate default config file'
        ),
        Option(
          name: '-y',
          description: 'Answer yes to any questions instead of prompting'
        )
      ]
    ),
    Subcommand(
      name: 'nbconvert',
      description: 'This application is used to convert notebook files (*.ipynb) to various other formats',
      options: [],
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'nbextension',
      description: '',
      options: [],
      subcommands: [
        Subcommand(
          name: 'install',
          description: 'Install an nbextension',
          args: [
            Arg(
            name: 'extension'
          )
          ]
        ),
        Subcommand(
          name: 'uninstall',
          description: 'Uninstall an nbextension',
          args: [
            Arg(
            name: 'extension'
          )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable an nbextension',
          args: [
            Arg(
            name: 'extension'
          )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Disable an nbextension',
          args: [
            Arg(
            name: 'extension'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List nbextensions'
        )
      ]
    ),
    Subcommand(
      name: 'notebook',
      description: 'Run the Jupyter notebook server',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'List currently running notebook servers'
        ),
        Subcommand(
          name: 'stop',
          description: 'Stop currently running notebook server'
        ),
        Subcommand(
          name: 'password',
          description: 'Set a password for the notebook server'
        )
      ],
      options: []
    ),
    Subcommand(
      name: 'run',
      description: 'Run a notebook',
      options: []
    ),
    Subcommand(
      name: 'serverextension',
      description: 'Manage server extensions',
      options: []
    ),
    Subcommand(
      name: 'troubleshoot',
      description: 'Log for troubleshooting'
    ),
    Subcommand(
      name: 'trust',
      description: 'Manage trust',
      options: []
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for jupyter'
    ),
    Option(
      name: '--version',
      description: 'Show the jupyter command\'s version and exit'
    ),
    Option(
      name: '--config-dir',
      description: 'Show Jupyter config dir'
    ),
    Option(
      name: '--data-dir',
      description: 'Show Jupyter data dir'
    ),
    Option(
      name: '--runtime-dir',
      description: 'Show Jupyter runtime dir'
    ),
    Option(
      name: '--paths',
      description: 'Show all Jupyter paths. Add --json for machine-readable format'
    ),
    Option(
      name: '--json',
      description: 'Output paths as machine-readable json'
    ),
    Option(
      name: '--debug',
      description: 'Output debug information about paths'
    )
  ]
);
