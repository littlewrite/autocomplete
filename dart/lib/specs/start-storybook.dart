// Auto-generated from TypeScript source: start-storybook.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> storybookCommonOptions = [

  Option(
    name: '--help',
    description: 'Display usage information'
  ),
  Option(
    name: ['-V', '--version'],
    description: 'Display the version number'
  ),
  Option(
    name: ['-s', '--static-dir'],
    description: 'Directory where to load static files from, comma-separated list',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: ['-c', '--config-dir'],
    description: 'Directory where to load Storybook configurations from',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--https',
    description: 'Serve Storybook over HTTPS. Note: You must provide your own certificate information',
    dependsOn: ['--ssl-cert', '--ssl-key']
  ),
  Option(
    name: '--ssl-ca',
    description: 'Provide an SSL certificate authority. (Optional with --https, required if using a self-signed certificate)',
    args: [
      Arg(
      name: 'certificate authority'
    )
    ]
  ),
  Option(
    name: '--ssl-cert',
    description: 'Provide an SSL certificate. (Required with --https)',
    args: [
      Arg(
      name: 'certificate'
    )
    ]
  ),
  Option(
    name: '--ssl-key',
    description: 'Provide an SSL key. (Required with --https)',
    args: [
      Arg(
      name: 'key'
    )
    ]
  ),
  Option(
    name: '--smoke-test',
    description: 'Exit after successful start'
  ),
  Option(
    name: '--ci',
    description: 'CI mode (skip interactive prompts, don\'t open browser)'
  ),
  Option(
    name: '--quiet',
    description: 'Suppress verbose build output'
  ),
  Option(
    name: '--no-dll',
    description: 'Do not use dll reference (no-op)'
  ),
  Option(
    name: '--debug-webpack',
    description: 'Display final webpack configurations for debugging purposes'
  ),
  Option(
    name: '--webpack-stats-json',
    description: 'Write Webpack Stats JSON to disk',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--docs',
    description: 'Starts Storybook in documentation mode'
  ),
  Option(
    name: '--no-manager-cache',
    description: 'Disables Storybook\'s manager caching mechanism. NOTE: this flag disables the internal caching of Storybook and can severely impact your Storybook loading time, so only use it when you need to refresh Storybook\'s UI, such as when editing themes'
  )
];

/// Completion spec for `start-storybook` CLI
final FigSpec startStorybookSpec = FigSpec(
  name: 'start-storybook',
  description: 'Storybook start CLI tools',
  options: [

    Option(
      name: ['-p', '--port'],
      description: 'Port to run Storybook',
      args: [
        Arg(
        name: 'port'
      )
      ]
    ),
    Option(
      name: ['-h', '--host'],
      description: 'Host to run Storybook',
      args: [
        Arg(
        name: 'host'
      )
      ]
    ),
    ...storybookCommonOptions
  ]
);
