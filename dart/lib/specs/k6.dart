// Auto-generated from TypeScript source: k6.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `k6` CLI
final FigSpec k6Spec = FigSpec(
  name: 'k6',
  description: 'Grafana k6 is an open-source load testing tool that makes performance testing easy',
  subcommands: [
    Subcommand(
      name: 'archive',
      description: 'Create an archive',
      args: [
        Arg(
        name: 'archive',
        description: 'Name of a file to archive'
      )
      ]
    ),
    Subcommand(
      name: 'cloud',
      description: 'Run a test on the cloud',
      args: [
        Arg(
        name: 'cloud',
        description: 'Name of a script to run'
      )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      args: [
        Arg(
        name: 'completion',
        description: 'Generate the autocompletion script for the specified shell'
      )
      ],
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
      name: 'convert',
      description: 'Convert a HAR file to a k6 script',
      args: [
        Arg(
        name: 'convert',
        description: 'HAR file to convert'
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      args: [
        Arg(
        name: 'help',
        description: 'Help about any command'
      )
      ]
    ),
    Subcommand(
      name: 'inspect',
      description: 'Inspect a script or archive',
      args: [
        Arg(
        name: 'inspect',
        description: 'K6 script to inspect or archive'
      )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Inspect a script or archive',
      args: [
        Arg(
        name: 'login',
        description: 'K6 script to inspect or archive'
      )
      ],
      subcommands: [
        Subcommand(
          name: 'cloud',
          description: 'Authenticate with Load Impact'
        ),
        Subcommand(
          name: 'influxdb',
          description: 'Authenticate with InfluxDB'
        )
      ]
    ),
    Subcommand(
      name: 'pause',
      description: 'Pause a running test'
    ),
    Subcommand(
      name: 'resume',
      description: 'Resume a running test'
    ),
    Subcommand(
      name: 'run',
      description: 'Start a load test',
      args: [
        Arg(
        name: 'run',
        description: 'K6 script to run'
      )
      ],
      options: [
        Option(
          name: '--address',
          description: 'Address of the API server',
          args: [
            Arg(
            name: 'address',
            description: 'Address of the API server'
          )
          ]
        ),
        Option(
          name: '--batch',
          description: 'Max parallel batch reqs (default 20)',
          args: [
            Arg(
            name: 'batch',
            description: 'Max parallel batch reqs (default 20)'
          )
          ]
        ),
        Option(
          name: '--batch-per-host',
          description: 'Max parallel batch reqs per host (default 6)',
          args: [
            Arg(
            name: 'batch-per-host',
            description: 'Max parallel batch reqs per host (default 6)'
          )
          ]
        ),
        Option(
          name: ['--vus', '-u'],
          description: 'Number of virtual users (default 1)',
          args: [
            Arg(
            name: 'vus',
            description: 'Number of virtual users (default 1)'
          )
          ]
        ),
        Option(
          name: ['--duration', '-d'],
          description: 'Test duration limit',
          args: [
            Arg(
            name: 'duration',
            description: 'Test duration limit'
          )
          ]
        ),
        Option(
          name: ['--iterations', '-i'],
          description: 'Script total iteration limit (among all VUs)',
          args: [
            Arg(
            name: 'iterations',
            description: 'Script total iteration limit (among all VUs)'
          )
          ]
        ),
        Option(
          name: ['--stage', '-s'],
          description: 'Add a stage, as `[duration]:[target]`',
          args: [
            Arg(
            name: 'stage',
            description: 'Add a stage, as `[duration]:[target]`'
          )
          ]
        ),
        Option(
          name: '--execution-segment',
          description: 'Add a stage, as `[duration]:[target]`',
          args: [
            Arg(
            name: 'execution-segment',
            description: 'Limit execution to the specified segment, e.g. 10%, 1/3, 0.2:2/3'
          )
          ]
        ),
        Option(
          name: '--execution-segment-sequence',
          description: 'The execution segment sequence',
          args: [
            Arg(
            name: 'execution-segment-sequence',
            description: 'The execution segment sequence'
          )
          ]
        ),
        Option(
          name: ['--paused', '-p'],
          description: 'Start the test in a paused state',
          args: [
            Arg(
            name: 'paused',
            description: 'Start the test in a paused state'
          )
          ]
        ),
        Option(
          name: '--no-setup',
          description: 'Don\'t run setup()',
          args: [
            Arg(
            name: 'no-setup',
            description: 'Don\'t run setup()'
          )
          ]
        ),
        Option(
          name: '--no-teardown',
          description: 'Don\'t run teardown()',
          args: [
            Arg(
            name: 'no-teardown',
            description: 'Don\'t run teardown()'
          )
          ]
        ),
        Option(
          name: '--max-redirects',
          description: 'Follow at most n redirects (default 10)',
          args: [
            Arg(
            name: 'max-redirects',
            description: 'Follow at most n redirects (default 10)'
          )
          ]
        ),
        Option(
          name: '--rps',
          description: 'Limit requests per second',
          args: [
            Arg(
            name: 'rps',
            description: 'Limit requests per second'
          )
          ]
        ),
        Option(
          name: '--user-agent',
          description: 'User agent for http requests (default "k6/0.39.0 (https://k6.io/)")',
          args: [
            Arg(
            name: 'user-agent',
            description: 'User agent for http requests (default "k6/0.39.0 (https://k6.io/)")'
          )
          ]
        ),
        Option(
          name: '--http-debug',
          description: 'Log all HTTP requests and responses. Excludes body by default. To include body use \'--http-debug=full\'',
          args: [
            Arg(
            name: 'http-debug',
            description: 'Log all HTTP requests and responses. Excludes body by default. To include body use \'--http-debug=full\''
          )
          ]
        ),
        Option(
          name: '--insecure-skip-tls-verify',
          description: 'Skip verification of TLS certificates',
          args: [
            Arg(
            name: 'insecure-skip-tls-verify',
            description: 'Skip verification of TLS certificates'
          )
          ]
        ),
        Option(
          name: '--no-connection-reuse',
          description: 'Disable keep-alive connections',
          args: [
            Arg(
            name: 'no-connection-reuse',
            description: 'Disable keep-alive connections'
          )
          ]
        ),
        Option(
          name: '--no-vu-connection-reuse',
          description: 'Don\'t reuse connections between iterations',
          args: [
            Arg(
            name: 'no-vu-connection-reuse',
            description: 'Don\'t reuse connections between iterations'
          )
          ]
        ),
        Option(
          name: '--min-iteration-duration',
          description: 'Minimum amount of time k6 will take executing a single iteration',
          args: [
            Arg(
            name: 'min-iteration-duration',
            description: 'Minimum amount of time k6 will take executing a single iteration'
          )
          ]
        ),
        Option(
          name: '--throw',
          description: 'Throw warnings (like failed http requests) as errors',
          args: [
            Arg(
            name: 'throw',
            description: 'Throw warnings (like failed http requests) as errors'
          )
          ]
        ),
        Option(
          name: '--blacklist-ip',
          description: 'Blacklist an ip range from being called',
          args: [
            Arg(
            name: 'blacklist-ip',
            description: 'Blacklist an ip range from being calledd'
          )
          ]
        ),
        Option(
          name: '--block-hostnames',
          description: 'Block a case-insensitive hostname pattern, with optional leading wildcard, from being called',
          args: [
            Arg(
            name: 'block-hostnames',
            description: 'Block a case-insensitive hostname pattern, with optional leading wildcard, from being called'
          )
          ]
        ),
        Option(
          name: '--summary-trend-stats',
          description: 'Define stats for trend metrics (response times), one or more as \'avg,p(95),...\' (default \'avg,min,med,max,p(90),p(95)\')',
          args: [
            Arg(
            name: 'summary-trend-stats',
            description: 'Define stats for trend metrics (response times), one or more as \'avg,p(95),...\' (default \'avg,min,med,max,p(90),p(95)\')'
          )
          ]
        ),
        Option(
          name: '--summary-time-unit',
          description: 'Define the time unit used to display the trend stats. Possible units are: \'s\', \'ms\' and \'us\'',
          args: [
            Arg(
            name: 'summary-time-unit',
            description: 'Define the time unit used to display the trend stats. Possible units are: \'s\', \'ms\' and \'us\''
          )
          ]
        ),
        Option(
          name: '--system-tags',
          description: 'Only include these system tags in metrics (default "proto,subproto,status,method,url,name,group,check,error,error_code,tls_version,scenario,service,expected_response")',
          args: [
            Arg(
            name: 'system-tags',
            description: 'Only include these system tags in metrics (default "proto,subproto,status,method,url,name,group,check,error,error_code,tls_version,scenario,service,expected_response")'
          )
          ]
        ),
        Option(
          name: '--tag',
          description: 'Add a tag to be applied to all samples, as `[name]=[value]`',
          args: [
            Arg(
            name: 'tag',
            description: 'Add a tag to be applied to all samples, as `[name]=[value]`'
          )
          ]
        ),
        Option(
          name: '--console-output',
          description: 'Redirects the console logging to the provided output file',
          args: [
            Arg(
            name: 'console-output',
            description: 'Redirects the console logging to the provided output file'
          )
          ]
        ),
        Option(
          name: '--discard-response-bodies',
          description: 'Read but don\'t process or save HTTP response bodies',
          args: [
            Arg(
            name: 'discard-response-bodies',
            description: 'Read but don\'t process or save HTTP response bodies'
          )
          ]
        ),
        Option(
          name: '--local-ips',
          description: 'Client IP Ranges and/or CIDRs from which each VU will be making requests, e.g. \'192.168.220.1,192.168.0.10-192.168.0.25\', \'fd:1::0/120\', etc',
          args: [
            Arg(
            name: 'local-ips',
            description: 'Client IP Ranges and/or CIDRs from which each VU will be making requests, e.g. \'192.168.220.1,192.168.0.10-192.168.0.25\', \'fd:1::0/120\', etc'
          )
          ]
        ),
        Option(
          name: '--dns',
          description: 'DNS resolver configuration',
          args: [
            Arg(
            name: 'dns',
            description: 'DNS resolver configuration'
          )
          ]
        ),
        Option(
          name: '--include-system-env-vars',
          description: 'Pass the real system environment variables to the runtime (default true)',
          args: [
            Arg(
            name: 'include-system-env-vars',
            description: 'Pass the real system environment variables to the runtime (default true)'
          )
          ]
        ),
        Option(
          name: '--compatibility-mode',
          description: 'JavaScript compiler compatibility mode, "extended" or "base"',
          args: [
            Arg(
            name: 'compatibility-mode',
            description: 'JavaScript compiler compatibility mode, "extended" or "base"'
          )
          ]
        ),
        Option(
          name: ['--type', '-t'],
          description: 'Override test type, "js" or "archive"',
          args: [
            Arg(
            name: 'type',
            description: 'Override test type, "js" or "archive"'
          )
          ]
        ),
        Option(
          name: ['--env', '-e'],
          description: 'Add/override environment variable with VAR=value',
          args: [
            Arg(
            name: 'env',
            description: 'Add/override environment variable with VAR=value'
          )
          ]
        ),
        Option(
          name: '--no-thresholds',
          description: 'Don\'t run thresholds',
          args: [
            Arg(
            name: 'no-thresholds',
            description: 'Don\'t run thresholds'
          )
          ]
        ),
        Option(
          name: '--no-summary',
          description: 'Don\'t show the summary at the end of the test',
          args: [
            Arg(
            name: 'no-summary',
            description: 'Don\'t show the summary at the end of the test'
          )
          ]
        ),
        Option(
          name: '--summary-export',
          description: 'Output the end-of-test summary report to JSON file',
          args: [
            Arg(
            name: 'summary-export',
            description: 'Output the end-of-test summary report to JSON file'
          )
          ]
        ),
        Option(
          name: ['--out', '-o'],
          description: 'Uri for an external metrics database',
          args: [
            Arg(
            name: 'out',
            description: 'Uri for an external metrics database'
          )
          ]
        ),
        Option(
          name: ['--linger', '-l'],
          description: 'Keep the API server alive past test end',
          args: [
            Arg(
            name: 'linger',
            description: 'Keep the API server alive past test end'
          )
          ]
        ),
        Option(
          name: '--no-usage-report',
          description: 'Don\'t send anonymous stats to the developers',
          args: [
            Arg(
            name: 'no-usage-report',
            description: 'Don\'t send anonymous stats to the developers'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'scale',
      description: 'Scale a running test',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for scale'
        ),
        Option(
          name: ['-m', '--max'],
          description: 'Max available virtual users',
          args: [
            Arg(
            name: 'max',
            description: 'Max available virtual users'
          )
          ]
        ),
        Option(
          name: ['-u', '--vus'],
          description: 'Number of virtual users (default 1)',
          args: [
            Arg(
            name: 'vus',
            description: 'Number of virtual users (default 1)'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stats',
      description: 'Show test metrics',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for stats'
        )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Show test status',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for status'
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Show the application version and exit',
      options: [
        Option(
          name: ['-h', '--help'],
          description: 'Help for version'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['-v', '--verbose'],
      description: 'Enable verbose logging'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Disable progress updates'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Help for k6'
    ),
    Option(
      name: ['-a', '--address'],
      description: 'Address for the REST API server (default "localhost:6565")',
      args: [
        Arg(
        name: 'address',
        description: 'Address for the REST API server (default "localhost:6565")'
      )
      ]
    ),
    Option(
      name: ['--config', '-c'],
      description: 'JSON config file',
      args: [
        Arg(
        name: 'config',
        description: 'JSON config file'
      )
      ]
    ),
    Option(
      name: '--log-format',
      description: 'Log output format',
      args: [
        Arg(
        name: 'log-format',
        description: 'Log output format'
      )
      ]
    ),
    Option(
      name: '--log-output',
      description: 'Change the output for k6 logs',
      args: [
        Arg(
        name: 'log-output',
        description: 'Change the output for k6 logs'
      )
      ]
    ),
    Option(
      name: '--no-color',
      description: 'Disable colored output',
      args: [
        Arg(
        name: 'no-color',
        description: 'Disable colored output'
      )
      ]
    )
  ]
);
