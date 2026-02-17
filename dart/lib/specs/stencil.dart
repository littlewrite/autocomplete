// Auto-generated from TypeScript source: stencil.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `stencil` CLI
final FigSpec stencilSpec = FigSpec(
  name: 'stencil',
  description: 'CLI to build Stencil projects and generate components',
  icon: 'https://stenciljs.com/assets/icon/favicon.ico',
  subcommands: [

    Subcommand(
      name: 'build',
      description: 'Build components for development or production',
      options: [

        Option(
          name: '--ci',
          description: 'Run a build using recommended settings for a Continuous Integration (CI) environment'
        ),
        Option(
          name: ['--config', '-c'],
          description: 'Set stencil config file',
          args: [
            Arg(
            name: 'config file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--debug',
          description: 'Set the log level to debug'
        ),
        Option(
          name: '--dev',
          description: 'Development build'
        ),
        Option(
          name: '--docs-readme',
          description: 'Generate component readme.md docs'
        ),
        Option(
          name: '--es5',
          description: 'Creates an ES5 compatible build'
        ),
        Option(
          name: '--log',
          description: 'Write stencil-build.log file'
        ),
        Option(
          name: '--prerender',
          description: 'Prerender the application'
        ),
        Option(
          name: '--prod',
          description: 'Runs a production build'
        ),
        Option(
          name: '--max-workers',
          description: 'Max number of workers the compiler should use',
          args: [
            Arg(
            name: 'workers',
            description: 'Number of workers'
          )
          ]
        ),
        Option(
          name: '--next',
          description: 'Opt-in to test the \'next\' Stencil compiler features'
        ),
        Option(
          name: '--no-cache',
          description: 'Disables using the cache'
        ),
        Option(
          name: '--no-open',
          description: 'Do not automatically open the browser window'
        ),
        Option(
          name: ['--port', '--p'],
          description: 'Port for the Integrated Dev Server',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: '--serve',
          description: 'Start the dev-server'
        ),
        Option(
          name: '--stats',
          description: 'Write stencil-stats.json file'
        ),
        Option(
          name: '--verbose',
          description: 'Logs additional information about each step of the build'
        ),
        Option(
          name: '--watch',
          description: 'Rebuild when files update'
        )
      ]
    ),
    Subcommand(
      name: 'test',
      description: 'Run unit and end-to-end tests',
      options: [

        Option(
          name: '--spec',
          description: 'Run unit tests with Jest'
        ),
        Option(
          name: '--e2e',
          description: 'Run e2e tests with Puppeteer'
        ),
        Option(
          name: '--no-build',
          description: 'Skips build process before running the tests'
        )
      ]
    ),
    Subcommand(
      name: ['generate', 'g'],
      description: 'Bootstrap components',
      args: [
        Arg(
        isOptional: true,
        name: 'name',
        description: 'Name of new component (must contain dash (-))',
        isVariadic: true
      )
      ]
    ),
    Subcommand(
      name: 'telemetry',
      description: 'Opt in or out of telemetry',
      args: [
        Arg(
        name: 'state',
        suggestions: [

          FigSuggestion(
            name: 'off',
            description: 'Disable sharing anonymous usage data'
          ),
          FigSuggestion(
            name: 'on',
            description: 'Enable sharing anonymous usage data'
          )
        ]
      )
      ]
    )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Display the help output explaining the different flags'
    ),
    Option(
      name: '--version',
      description: 'Prints the current Stencil version'
    )
  ]
);
