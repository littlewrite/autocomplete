// Auto-generated from TypeScript source: pro.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pro` CLI
final FigSpec proSpec = FigSpec(
  name: 'pro',
  description: 'Manage Ubuntu Pro services from Canonical',
  subcommands: [
    Subcommand(
      name: 'attach',
      description: 'Connect an Ubuntu Pro support contract to this machine',
      options: [
        Option(
          name: '--no-auto-enable',
          description: 'Disable  the  automatic enablement of recommended entitlements'
        ),
        Option(
          name: '--attach-config',
          description: 'Provide a file with configuration options',
          args: [
            Arg(
            name: 'file path',
            template: 'filepaths'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'token',
        isOptional: true,
        description: 'Auth token. Not required if specified in --attach-config file'
      )
      ]
    ),
    Subcommand(
      name: 'collect-logs',
      description: 'Create a tarball with all relevant logs and debug data',
      options: [
        Option(
          name: ['-o', '--output'],
          description: 'Path for tarball. Uses ua_logs.tar.gz in current directory if not specified',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'detach',
      description: 'Remove Ubuntu Pro from this machine'
    ),
    Subcommand(
      name: 'disable',
      description: 'Disable this machine\'s access to an Ubuntu Pro service',
      args: [
        Arg(
        name: 'service',
        suggestions: [
          FigSuggestion(name: 'cc-eal'),
          FigSuggestion(name: 'cis'),
          FigSuggestion(name: 'esm'),
          FigSuggestion(name: 'fips'),
          FigSuggestion(name: 'fips-updates'),
          FigSuggestion(name: 'livepatch'),
          FigSuggestion(name: 'ros'),
          FigSuggestion(name: 'ros-updates')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'enable',
      description: 'Activate and configure this machine\'s access to an Ubuntu Pro service',
      args: [
        Arg(
        name: 'service',
        suggestions: [
          FigSuggestion(name: 'cc-eal'),
          FigSuggestion(name: 'cis'),
          FigSuggestion(name: 'esm'),
          FigSuggestion(name: 'fips'),
          FigSuggestion(name: 'fips-updates'),
          FigSuggestion(name: 'livepatch'),
          FigSuggestion(name: 'ros'),
          FigSuggestion(name: 'ros-updates')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'fix',
      description: 'Fix a CVE or USN on the  system  by  upgrading  the  appropriate package(s)',
      args: [
        Arg(
        name: 'security issue'
      )
      ]
    ),
    Subcommand(
      name: 'refresh',
      description: 'Refresh contract and service details from Canonical'
    ),
    Subcommand(
      name: 'security-status',
      description: 'Show  security updates for packages in the system, including all available ESM related content'
    ),
    Subcommand(
      name: 'status',
      description: 'Report current status of Ubuntu Pro services on system',
      options: [
        Option(
          name: '--format',
          description: 'Output format',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'tabular'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'yaml')
            ]
          )
          ]
        ),
        Option(
          name: '--simulate-with-token',
          args: [
            Arg(
            name: 'token'
          )
          ]
        ),
        Option(
          name: '--all',
          description: 'Include beta and unavailable services'
        )
      ]
    )
  ]
);
