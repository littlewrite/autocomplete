// Auto-generated from TypeScript source: qodana.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `qodana` CLI
final FigSpec qodanaSpec = FigSpec(
  name: 'qodana',
  description: 'Run Qodana as fast as possible, with minimum effort required',
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Show help page for command',
      isPersistent: true,
      priority: 1
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Version for Qodana'
    )
  ],
  subcommands: [

    Subcommand(
      name: 'init',
      description: 'Configure project for Qodana',
      priority: 100,
      options: [

        Option(
          name: ['-i', '--project-dir'],
          description: 'Root directory of the project to configure (default ".")',
          args: [
            Arg(
            name: 'string',
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scan',
      description: 'Scan a project with Qodana',
      priority: 99,
      options: [

        Option(
          name: ['-a', '--analysis-id'],
          description: 'Unique report identifier (GUID) to be used by Qodana Cloud',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-b', '--baseline'],
          description: 'Provide the path to an existing SARIF report to be used in the baseline state calculation',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--baseline-include-absent',
          description: 'Include in the output report the results from the baseline run that are absent in the current run'
        ),
        Option(
          name: '--cache-dir',
          description: 'Override cache directory (default <userCacheDir>/JetBrains/<linter>/cache)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-c', '--changes'],
          description: 'Override the docker image to be used for the analysis'
        ),
        Option(
          name: '--clear-cache',
          description: 'Clear the local Qodana cache before running the analysis'
        ),
        Option(
          name: '--disable-sanity',
          description: 'Skip running the inspections configured by the sanity profile'
        ),
        Option(
          name: ['-e', '--env'],
          description: 'Define additional environment variables for the Qodana container (you can use the flag multiple times). CLI is not reading full host environment variables and does not pass it to the Qodana container for security reasons',
          isRepeatable: true,
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: '--fail-threshold',
          description: 'Set the number of problems that will serve as a quality gate. If this number is reached, the inspection run is terminated with a non-zero exit code',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-l', '--linter'],
          description: 'Override linter to use',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'Port to serve the report on (default 8080)',
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: '--print-problems',
          description: 'Print all found problems by Qodana in the CLI output'
        ),
        Option(
          name: ['-n', '--profile-name'],
          description: 'Profile name defined in the project',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-p', '--profile-path'],
          description: 'Path to the profile file',
          args: [
            Arg(
            name: 'string',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-i', '--project-dir'],
          description: 'Root directory of the inspected project (default ".")',
          args: [
            Arg(
            name: 'string',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: '--property',
          description: 'Set a JVM property to be used while running Qodana using the --property property.name=value1,value2,...,valueN notation',
          insertValue: '--property {cursor}=',
          args: [
            Arg(
            name: 'stringArray'
          )
          ]
        ),
        Option(
          name: ['-o', '--results-dir'],
          description: 'Override directory to save Qodana inspection results to (default <userCacheDir>/JetBrains/<linter>/results)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--run-promo',
          description: 'Set to \'true\' to have the application run the inspections configured by the promo profile; set to \'false\' otherwise (default: \'true\' only if Qodana is executed with the default profile)',
          args: [
            Arg(
            name: 'string',
            suggestions: [

              FigSuggestion(name: 'true'),
              FigSuggestion(name: 'false')
            ]
          )
          ]
        ),
        Option(
          name: ['-s', '--save-report'],
          description: 'Generate HTML report (default true)',
          priority: 99
        ),
        Option(
          name: '--script',
          description: 'Override the run scenario (default "default")',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--send-report',
          description: 'Send the inspection report to Qodana Cloud, requires the \'--token\' option to be specified',
          dependsOn: ['--token']
        ),
        Option(
          name: ['-w', '--show-report'],
          description: 'Serve HTML report on port',
          priority: 100
        ),
        Option(
          name: '--skip-pull',
          description: 'Skip pulling the latest Qodana container'
        ),
        Option(
          name: ['-d', '--source-directory'],
          description: 'Directory inside the project-dir directory must be inspected. If not specified, the whole project is inspected',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: '--stub-profile',
          description: 'Absolute path to the fallback profile file. This option is applied in case the profile was not specified using any available options',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-u', '--user'],
          description: 'User to run Qodana container as. Please specify user id – \'\$UID\' or user id and group id \$(id -u):\$(id -g). Use \'root\' to run as the root user (default: the current user)',
          args: [
            Arg(
            name: 'string'
          )
          ]
        ),
        Option(
          name: ['-v', '--volume'],
          description: 'Define additional volumes for the Qodana container (you can use the flag multiple times)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'string'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show Qodana report',
      priority: 98,
      options: [

        Option(
          name: ['-d', '--dir-only'],
          description: 'Open report directory only, don\'t serve it'
        ),
        Option(
          name: ['-p', '--port'],
          description: 'Specify port to serve report at (default 8080)',
          priority: 100,
          args: [
            Arg(
            name: 'int'
          )
          ]
        ),
        Option(
          name: ['-i', '--project-dir'],
          description: 'Root directory of the inspected project (default ".")',
          args: [
            Arg(
            name: 'string',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-r', '--report-dir'],
          description: 'Specify HTML report path (the one with index.html inside) (default <userCacheDir>/JetBrains/<linter>/results/report)',
          args: [
            Arg(
            name: 'string',
            template: 'folders'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'view',
      description: 'View SARIF files in CLI',
      priority: 97,
      options: [

        Option(
          name: ['-f', '--sarif-file'],
          description: 'Path to the SARIF file (default "./qodana.sarif.json")',
          args: [
            Arg(
            name: 'string',
            template: 'filepaths'
          )
          ]
        )
      ]
    )
  ]
);
