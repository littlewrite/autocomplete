// Auto-generated from TypeScript source: publish-spec.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `@fig/publish-spec` CLI
final FigSpec figPublishSpecSpec = FigSpec(
    name: '@fig/publish-spec',
    description: 'Publish a spec to fig teams',
    subcommands: [
      Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [Arg(name: 'command')])
    ],
    options: [
      Option(
          name: ['-V', '--version'], description: 'Output the version number'),
      Option(
          name: ['-i', '--interactive'],
          description: 'Publish a spec interactively'),
      Option(
          name: ['-t', '--token'],
          description: 'A fig token',
          args: [Arg(name: 'strin')]),
      Option(
          name: '--team',
          description: 'Set the namespace of the published spec',
          args: [Arg(name: 'strin')]),
      Option(
          name: ['-n', '--name'],
          description: 'Set the name of the published spec',
          args: [Arg(name: 'strin')]),
      Option(
          name: ['-p', '--spec-path'],
          description: 'The local path of the spec to publish',
          args: [
            Arg(name: 'path', template: ['filepaths'])
          ]),
      Option(
          name: ['-b', '--binary-path'],
          description: 'The path of the binary to run to generate the spec',
          args: [
            Arg(name: 'path', template: ['filepaths'])
          ]),
      Option(
          name: ['-s', '--subcommand-name'],
          description: 'The subcommand of the binary used to generate the spec',
          args: [Arg(name: 'strin')]),
      Option(
          name: '--is-script',
          description:
              'The spec is a local script and will only be loaded when referenced in a fig/config.json file'),
      Option(
          name: ['-f', '--framework'],
          description: 'Framework used to build the CLI',
          args: [Arg(name: 'strin')]),
      Option(
          name: ['-h', '--help'],
          description: 'Display help for command',
          priority: 49)
    ]);
