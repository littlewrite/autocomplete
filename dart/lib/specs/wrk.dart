// Auto-generated from TypeScript source: wrk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wrk` CLI
final FigSpec wrkSpec = FigSpec(
  name: 'wrk',
  description: 'Wrk - a HTTP benchmarking tool',
  args: [
    Arg(
    name: 'Url'
  )
  ],
  options: [

    Option(
      name: ['-c', '--c'],
      description: 'Connections to keep open',
      args: [
        Arg(
        name: 'Number'
      )
      ]
    ),
    Option(
      name: ['-d', '--duration'],
      description: 'Duration of test',
      args: [
        Arg(
        name: 'Time'
      )
      ]
    ),
    Option(
      name: ['-t', '--threads'],
      description: 'Number of threads',
      args: [
        Arg(
        name: 'Number'
      )
      ]
    ),
    Option(
      name: ['-s', '--script'],
      description: 'Load Lua script file',
      args: [
        Arg(
        name: 'Script'
      )
      ]
    ),
    Option(
      name: ['-H', '--header'],
      description: 'Add header to request',
      args: [
        Arg(
        name: 'Header'
      )
      ]
    ),
    Option(
      name: '--latency',
      description: 'Print latency statistics'
    ),
    Option(
      name: '--timeout',
      description: 'Socket/request timeout',
      args: [
        Arg(
        name: 'Time'
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print version details'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ]
);
