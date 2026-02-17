// Auto-generated from TypeScript source: src.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `src` CLI
final FigSpec srcSpec = FigSpec(
  name: 'src',
  description: 'Interact with Sourcegraph from the command line',
  subcommands: [

    Subcommand(
      name: 'search',
      description: 'Run a code search',
      options: [

        Option(
          name: '-display',
          description: 'Limit the number of results that are displayed. Only supported together with stream flag. Statistics continue to report all results',
          dependsOn: ['-stream']
        ),
        Option(
          name: '-dump-requests',
          description: 'Log GraphQL requests and responses to stdout'
        ),
        Option(
          name: '-explain-json',
          description: 'Explain the JSON output schema and exit'
        ),
        Option(
          name: '-get-curl',
          description: 'Print the curl command for executing this query and exit. (WARNING: Includes printing your access token!)'
        ),
        Option(
          name: '-insecure-skip-verify',
          description: 'Skip validation of TLD certificates against trusted chains'
        ),
        Option(
          name: '-json',
          description: 'Whether or not to output results as JSON'
        ),
        Option(
          name: '-less',
          description: 'Pipe output to `less -R` (only if stdout is terminal, and not json flag)'
        ),
        Option(
          name: '-stream',
          description: 'Consume results as stream. Streaming search only supports a subset of flags and parameters: trace, insecure-skip-verify, display, json'
        ),
        Option(
          name: '-trace',
          description: 'Log the trace ID for requests'
        ),
        Option(
          name: '-user-agent-telemetry',
          description: 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph'
        )
      ]
    ),
    Subcommand(
      name: 'api',
      description: 'Sourcegraph API Access',
      options: [

        Option(
          name: '-get-curl',
          description: 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
        ),
        Option(
          name: '-dump-requests',
          description: 'Log GraphQL requests and responses to stdout'
        ),
        Option(
          name: '-insecure-skip-verify',
          description: 'Skip validation of TLS certificates against trusted chains'
        ),
        Option(
          name: '-query',
          description: 'GraphQL query to execute, e.g. ‘query { currentUser { username } }’ (stdin otherwise)'
        ),
        Option(
          name: '-trace',
          description: 'Log the trace ID for requests'
        ),
        Option(
          name: '-user-agent-telemetry',
          description: 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph'
        ),
        Option(
          name: '-vars',
          description: 'GraphQL query variables to include as JSON string, e.g. ‘{“var”: “val”, “var2”: “val2”}’'
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: '\'src login\' helps you authenticate \'src\' to access a Sourcegraph instance with your user credentials',
      options: [

        Option(
          name: '-dump-requests',
          description: 'Log GraphQL requests and responses to stdout'
        ),
        Option(
          name: '-get-curl',
          description: 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
        ),
        Option(
          name: '-insecure-skip-verify',
          description: 'Skip validation of TLS certificates against trusted chains'
        ),
        Option(
          name: '-trace',
          description: 'Log the trace ID for requests'
        ),
        Option(
          name: '-user-agent-telemetry',
          description: 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph'
        )
      ]
    ),
    Subcommand(
      name: 'batch',
      description: '\'Batch gives you a declarative structure for finding and modifying code across all of your repositories',
      subcommands: [

        Subcommand(
          name: 'apply',
          description: 'Apply batch'
        ),
        Subcommand(
          name: 'exec',
          description: 'Execute batch'
        ),
        Subcommand(
          name: 'new',
          description: 'New batch'
        ),
        Subcommand(
          name: 'preview',
          description: 'Preview batch'
        ),
        Subcommand(
          name: 'repositories',
          description: 'Repositories to batch'
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate batch'
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: '\'src config\' helps you configure \'src\'',
      subcommands: [

        Subcommand(
          name: 'edit',
          description: 'Edit config'
        ),
        Subcommand(
          name: 'get',
          description: 'Get configs'
        ),
        Subcommand(
          name: 'list',
          description: 'List configs'
        )
      ]
    ),
    Subcommand(
      name: 'extsvc',
      description: 'Edit or view external service configuration on the Sourcegraph instance',
      subcommands: [

        Subcommand(
          name: 'edit',
          description: 'Edit external service configuration'
        ),
        Subcommand(
          name: 'list',
          description: 'List external service configurations'
        )
      ]
    ),
    Subcommand(
      name: 'lsif',
      description: 'Upload an LSIF dumps',
      subcommands: [

        Subcommand(
          name: 'upload',
          description: 'Upload LSIF dump'
        )
      ]
    ),
    Subcommand(
      name: 'orgs',
      description: 'Create, edit, view, or delete organizations and members',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an organization'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an organization'
        ),
        Subcommand(
          name: 'get',
          description: 'Get an organization'
        ),
        Subcommand(
          name: 'list',
          description: 'List organizations'
        ),
        Subcommand(
          name: 'members',
          description: 'List organization members'
        )
      ]
    ),
    Subcommand(
      name: 'repos',
      description: 'View or delete repositories',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete repository'
        ),
        Subcommand(
          name: 'get',
          description: 'Get repository'
        ),
        Subcommand(
          name: 'list',
          description: 'List repositories'
        )
      ]
    ),
    Subcommand(
      name: 'serve-git',
      description: 'By default \'src serve-git\' will recursively serve your current directory on the address \':3434\'',
      options: [

        Option(
          name: '-addr',
          description: 'Address on which to server (end with : for unused port)'
        ),
        Option(
          name: '-list',
          description: 'List found repository names'
        )
      ]
    ),
    Subcommand(
      name: 'users',
      description: 'Create, edit, view, tag, or delete users',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create user'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete user'
        ),
        Subcommand(
          name: 'get',
          description: 'Get user'
        ),
        Subcommand(
          name: 'list',
          description: 'List users'
        ),
        Subcommand(
          name: 'tag',
          description: 'Tag user'
        )
      ]
    ),
    Subcommand(
      name: 'validate',
      description: 'EXPERIMENTAL: Instance validation provides a quick way to check that a Sourcegraph instance functions properly after a fresh install or an update',
      options: [

        Option(
          name: '-context',
          description: 'Comma-separated list of key=value pairs to add to the script execution context'
        ),
        Option(
          name: '-dump-requests',
          description: 'Log GraphQL requests and responses to stdout'
        ),
        Option(
          name: '-get-curl',
          description: 'Print the curl command for executing this query and exit (WARNING: includes printing your access token!)'
        ),
        Option(
          name: '-insecure-skip-verify',
          description: 'Skip validation of TLS certificates against trusted chains'
        ),
        Option(
          name: '-secrets',
          description: 'Path to a file containing key=value lines. The key value pairs will be added to the script context'
        ),
        Option(
          name: '-trace',
          description: 'Log the trace ID for requests'
        ),
        Option(
          name: '-user-agent-telemetry',
          description: 'Include the operating system and architecture in the User-Agent sent with requests to Sourcegraph'
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for src'
    )
  ],
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  )
);
