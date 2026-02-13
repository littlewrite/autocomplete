// Auto-generated from TypeScript source: netlify.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> debugProxyOptions = [

  Option(
    name: '--debug',
    description: 'Print debugging information'
  ),
  Option(
    name: '--httpProxy',
    description: 'Proxy server address to route requests through',
    args: [
      Arg(
      name: 'httpProxy'
    )
    ]
  ),
  Option(
    name: '--httpProxyCertificateFilename',
    description: 'Certificate file to use when connecting using a proxy server',
    args: [
      Arg(
      name: 'httpProxyCertificateFilename'
    )
    ]
  )
];

/// Completion spec for `netlify` CLI
final FigSpec netlifySpec = FigSpec(
  name: 'netlify',
  description: 'Netlify command line tool',
  subcommands: [

    Subcommand(
      name: 'help',
      description: 'List available sub-commands',
      args: [
        Arg(
        name: 'subcommand',
        description: 'The command to display help for',
        isOptional: true
      )
      ]
    )
  ],
  options: [

    Option(
      name: '--telemetry-disable',
      description: 'Opt out of sharing usage data',
      exclusiveOn: ['--telemetry-enable']
    ),
    Option(
      name: '--telemetry-enable',
      description: 'Allow your usage to help shape development',
      exclusiveOn: ['--telemetry-disable']
    )
  ]
);
