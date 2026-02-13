// Auto-generated from TypeScript source: sidekiq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sidekiq` CLI
final FigSpec sidekiqSpec = FigSpec(
  name: 'sidekiq',
  description: 'Background job framework for Ruby',
  options: [

    Option(
      name: ['--concurrency', '-c'],
      description: 'Processor threads to use',
      args: [
        Arg(
        name: 'IN'
      )
      ]
    ),
    Option(
      name: ['--environment', '-e'],
      description: 'Application environment',
      args: [
        Arg(
        name: 'EN'
      )
      ]
    ),
    Option(
      name: ['--tag', '-g'],
      description: 'Process tag for procline',
      args: [
        Arg(
        name: 'TA'
      )
      ]
    ),
    Option(
      name: ['--queue', '-q'],
      description: 'Queues to process with optional weights',
      args: [

        Arg(
          name: 'QUEUE'
        ),
        Arg(
          name: 'WEIGHT',
          isOptional: true
        )
      ]
    ),
    Option(
      name: ['--require', '-r'],
      description: 'Location of Rails application with jobs or file to require',
      args: [
        Arg(
        name: 'PATH|DIR',
        template: ['folders', 'filepaths']
      )
      ]
    ),
    Option(
      name: ['--timeout', '-t'],
      description: 'Shutdown timeout',
      args: [
        Arg(
        name: 'NU'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Print more verbose output'
    ),
    Option(
      name: ['--config', '-C'],
      description: 'Path to YAML config file',
      args: [
        Arg(
        name: 'PATH'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for sidekiq run'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Print version and exit'
    )
  ]
);
