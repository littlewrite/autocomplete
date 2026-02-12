// Auto-generated from TypeScript source: st2.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `st2` CLI
final FigSpec st2Spec = FigSpec(
  name: 'st2',
  description: 'CLI for StackStorm event-driven automation platform',
  subcommands: [],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show this help message and exit',
      priority: 60
    ),
    Option(
      name: '--version',
      description: 'Show program\'s version number and exit'
    ),
    Option(
      name: '--url',
      description: 'Base URL for the API servers. Assumes all servers use the same base URL and default ports are used. Get ST2_BASE_URL from the environment variables by default',
      args: [
        Arg(
        name: 'BASE_URL'
      )
      ]
    ),
    Option(
      name: '--auth-url',
      description: 'URL for the authentication service. Get ST2_AUTH_URL from the environment variables by default',
      args: [
        Arg(
        name: 'AUTH_URL'
      )
      ]
    ),
    Option(
      name: '--api-url',
      description: 'URL for the API server. Get ST2_API_URL from the environment variables by default',
      args: [
        Arg(
        name: 'API_URL'
      )
      ]
    ),
    Option(
      name: '--stream-url',
      description: 'URL for the stream endpoint. Get ST2_STREAM_URLfrom the environment variables by default',
      args: [
        Arg(
        name: 'ST2_STREAM_URL'
      )
      ]
    ),
    Option(
      name: '--api-version',
      description: 'API version to use. Get ST2_API_VERSION from the environment variables by default',
      args: [
        Arg(
        name: 'API_VERSION'
      )
      ]
    ),
    Option(
      name: '--cacert',
      description: 'Path to the CA cert bundle for the SSL endpoints. Get ST2_CACERT from the environment variables by default. If this is not provided, then SSL cert will not be verified',
      args: [
        Arg(
        name: 'CACERT'
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'Path to the CLI config file',
      args: [
        Arg(
        name: 'CONFIG_FILE'
      )
      ]
    ),
    Option(
      name: '--print-config',
      description: 'Parse the config file and print the values'
    ),
    Option(
      name: '--skip-config',
      description: 'Don\'t parse and use the CLI config file'
    ),
    Option(
      name: '--debug',
      description: 'Enable debug mode'
    )
  ]
);
