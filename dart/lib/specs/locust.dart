// Auto-generated from TypeScript source: locust.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `locust` CLI
final FigSpec locustSpec = FigSpec(
  name: 'locust',
  description: 'Locust is an easy to use, scriptable and scalable Python-based performance testing tool',
  options: [
    Option(
      name: ['-v', '--version'],
      description: 'Show program\'s version number and exit'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show this help message and exit'
    ),
    Option(
      name: ['-f', '--locustfile'],
      description: 'Show program\'s version number and exit',
      args: [
        Arg(
        name: 'files...',
        template: 'filepaths',
        isVariadic: true,
        description: 'Python module to import, e.g. \'../other_test.py\'. Either a .py file, multiple comma-separated .py files or a package directory. Defaults to \'locustfile\''
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Config file path',
      args: [
        Arg(
        name: 'files...',
        template: 'filepaths',
        isVariadic: true,
        description: 'Config file path'
      )
      ]
    ),
    Option(
      name: ['-H', '--host'],
      description: 'Host to load test in the following format: http://10.21.32.33'
    ),
    Option(
      name: ['-u', '--users'],
      description: 'Peak number of concurrent Locust users. Primarily used together with --headless or --autostart'
    ),
    Option(
      name: ['-r', '--spawn-rate'],
      description: 'Rate to spawn users at (users per second). Primarily used together with --headless or --autostart'
    ),
    Option(
      name: ['-t', '--run-time'],
      description: 'Stop after the specified amount of time, e.g. (300s, 20m, 3h, 1h30m, etc.)'
    ),
    Option(
      name: ['-l', '--list'],
      description: 'Show list of possible User classes and exit'
    ),
    Option(
      name: '--web-host',
      description: 'Host to bind the web interface to. Defaults to \'*\' (all interfaces)'
    ),
    Option(
      name: ['-P', '--web-port'],
      description: 'Port on which to run web host'
    ),
    Option(
      name: '--headless',
      description: 'Disable the web interface, and start the test immediately'
    ),
    Option(
      name: '--autostart',
      description: 'Starts the test immediately (without disabling the web UI)'
    ),
    Option(
      name: '--autoquit',
      description: 'Quits Locust entirely, X seconds after the run is finished'
    ),
    Option(
      name: '--web-auth',
      description: 'Turn on Basic Auth for the web interface. e.g. username:password'
    ),
    Option(
      name: '--tls-cert',
      description: 'Optional path to TLS certificate to use to serve over HTTPS',
      args: [
        Arg(
        name: 'tls-cert',
        description: 'Optional path to TLS certificate',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--tls-key',
      description: 'Optional path to TLS private key to use to serve over HTTPS',
      args: [
        Arg(
        name: 'tls-key',
        description: 'Optional path to TLS private key',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--class-picker',
      description: 'Enable select boxes in the web interface to choose from all available User classes and Shape classes'
    ),
    Option(
      name: '--master',
      description: 'Set locust to run in distributed mode with this process as master'
    ),
    Option(
      name: '--master-bind-host',
      description: 'Interfaces (hostname, ip) that locust master should bind to'
    ),
    Option(
      name: '--master-bind-port',
      description: 'Port that locust master should bind to'
    ),
    Option(
      name: '--expect-workers',
      description: 'How many workers master should expect to connect before starting the test (only when --headless/autostart is used)'
    ),
    Option(
      name: '--expect-workers-max-wait',
      description: 'How long should the master wait for workers to connect before giving up. Defaults to wait forever'
    ),
    Option(
      name: '--worker',
      description: 'Set locust to run in distributed mode with this process as worker'
    ),
    Option(
      name: '--master-host',
      description: 'Host or IP address of locust master for distributed load testing. Only used when running with --worker. Defaults to 127.0.0.1'
    ),
    Option(
      name: '--master-port',
      description: 'Show list of possible User classes and exit'
    ),
    Option(
      name: '--csv',
      description: 'Store current request stats to files in CSV format'
    ),
    Option(
      name: '--csv-full-history',
      description: 'Store each stats entry in CSV format to _stats_history.csv file. You must also specify the \'--csv\' argument to enable this'
    ),
    Option(
      name: '--print-stats',
      description: 'Print stats in the console'
    ),
    Option(
      name: '--only-summary',
      description: 'Only print the summary stats'
    ),
    Option(
      name: '--reset-stats',
      description: 'Reset statistics once spawning has been completed. Should be set on both master and workers when running in distributed mode'
    ),
    Option(
      name: '--html',
      description: 'Store HTML report to file path specified'
    ),
    Option(
      name: '--skip-log-setup',
      description: 'Disable Locust\'s logging setup. Instead, the configuration is provided by the Locust test or Python defaults. --loglevel LOGLEVEL, -L LOGLEVEL'
    ),
    Option(
      name: '--loglevel',
      description: 'Choose between DEBUG/INFO/WARNING/ERROR/CRITICAL. Default is INFO',
      args: [
        Arg(
        name: 'loglevel',
        suggestions: [
          FigSuggestion(name: 'INFO'),
          FigSuggestion(name: 'WARNING'),
          FigSuggestion(name: 'DEBUG'),
          FigSuggestion(name: 'ERROR'),
          FigSuggestion(name: 'CRITICAL')
        ]
      )
      ]
    ),
    Option(
      name: '--logfile',
      description: 'Path to log file. If not set, log will go to stderr',
      args: [
        Arg(
        name: 'logfile',
        description: 'Path to log file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--show-task-ratio',
      description: 'Print table of the User classes\' task execution ratio. Use this with non-zero --user option if some classes define non-zero fixed_count attribute'
    ),
    Option(
      name: '--show-task-ratio-json',
      description: 'Print json data of the User classes\' task execution ratio. Use this with non-zero --user option if some classes define non-zero fixed_count attribute'
    ),
    Option(
      name: '--exit-code-on-error',
      description: 'Sets the process exit code to use when a test result contain any failure or error'
    ),
    Option(
      name: '--equal-weights',
      description: 'Use equally distributed task weights, overriding the weights specified in the locustfile'
    ),
    Option(
      name: '--enable-rebalancing',
      description: 'Allow to automatically rebalance users if new workers are added or removed during a test run'
    ),
    Option(
      name: ['-T', '--tags'],
      description: 'List of tags to include in the test, so only tasks with any matching tags will be executed'
    ),
    Option(
      name: ['--E', '--exclude-tags'],
      description: 'List of tags to exclude from the test, so only tasks with no matching tags will be executed'
    )
  ]
);
