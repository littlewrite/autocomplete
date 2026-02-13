// Auto-generated from TypeScript source: quasar.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `quasar` CLI
final FigSpec quasarSpec = FigSpec(
  name: 'quasar',
  description: 'Quasar Framework CLI',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ],
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a new Quasar project',
      args: [
        Arg(
        name: 'project-name',
        description: 'Name of the project'
      )
      ],
      options: [

        Option(
          name: ['--kit', '-k'],
          description: 'Use specific starter kit',
          args: [
            Arg(
            name: 'kit'
          )
          ]
        ),
        Option(
          name: ['--branch', '-b'],
          description: 'Use specific branch of the starter kit',
          args: [
            Arg(
            name: 'branch'
          )
          ]
        ),
        Option(
          name: ['--clone', '-c'],
          description: 'Use git clone'
        ),
        Option(
          name: ['--offline', '-o'],
          description: 'Use a cached starter kit'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'info',
      description: 'Gather environment information for issue reporting',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Upgrade Quasar Framework packages',
      options: [

        Option(
          name: ['--install', '-i'],
          description: 'Also perform package upgrades'
        ),
        Option(
          name: ['--prerelease', '-p'],
          description: 'Allow pre-release versions (alpha/beta)'
        ),
        Option(
          name: ['--major', '-m'],
          description: 'Allow newer major versions (breaking changes)'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Start development server',
      args: [
        Arg(
        name: 'path',
        template: 'folders',
        description: 'Path to serve'
      )
      ],
      options: [

        Option(
          name: ['--port', '-p'],
          description: 'Port to use',
          args: [
            Arg(
            name: 'port'
          )
          ]
        ),
        Option(
          name: ['--hostname', '-H'],
          description: 'Address to use',
          args: [
            Arg(
            name: 'hostname'
          )
          ]
        ),
        Option(
          name: ['--gzip', '-g'],
          description: 'Compress content'
        ),
        Option(
          name: ['--silent', '-s'],
          description: 'Suppress log message'
        ),
        Option(
          name: '--colors',
          description: 'Log messages with colors'
        ),
        Option(
          name: ['--open', '-o'],
          description: 'Open browser window after starting'
        ),
        Option(
          name: ['--cache', '-c'],
          description: 'Cache time (max-age) in seconds',
          args: [
            Arg(
            name: 'cache'
          )
          ]
        ),
        Option(
          name: ['--micro', '-m'],
          description: 'Use micro-cache',
          args: [
            Arg(
            name: 'micro'
          )
          ]
        ),
        Option(
          name: '--history',
          description: 'Use history api fallback'
        ),
        Option(
          name: ['--index', '-i'],
          description: 'History mode (only!) index url path',
          args: [
            Arg(
            name: 'index'
          )
          ]
        ),
        Option(
          name: '--https',
          description: 'Enable HTTPS'
        ),
        Option(
          name: ['--cert', '-C'],
          description: 'Path to SSL cert file (Optional)',
          args: [
            Arg(
            name: 'cert'
          )
          ]
        ),
        Option(
          name: ['--key', '-K'],
          description: 'Path to SSL key file (Optional)',
          args: [
            Arg(
            name: 'key'
          )
          ]
        ),
        Option(
          name: '--proxy',
          description: 'Proxy specific requests defined in file',
          args: [
            Arg(
            name: 'proxy'
          )
          ]
        ),
        Option(
          name: '--cors',
          description: 'Enable CORS for all requests'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Output usage information'
        )
      ]
    )
  ]
);
