// Auto-generated from TypeScript source: extension.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `extension` CLI
final FigSpec extensionSpec = FigSpec(
  name: 'extension',
  description: 'Manage and update CLI extensions',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Add an extension',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of extension',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--pip-extra-index-urls',
          description: 'Space-separated list of extra URLs of package indexes to use. This should point to a repository compliant with PEP 503 (the simple repository API) or a local directory laid out in the same format',
          args: [
            Arg(
            name: 'pip-extra-index-url'
          )
          ]
        ),
        Option(
          name: '--pip-proxy',
          description: 'Proxy for pip to use for extension dependencies in the form of [user:passwd@]proxy.server:port',
          args: [
            Arg(
            name: 'pip-prox'
          )
          ]
        ),
        Option(
          name: ['--source', '-s'],
          description: 'Filepath or URL to an extension',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--system',
          description: 'Use a system directory for the extension',
          args: [
            Arg(
            name: 'syste'
          )
          ]
        ),
        Option(
          name: '--upgrade',
          description: 'Update the extension if already installed, otherwise just install the extension',
          args: [
            Arg(
            name: 'upgrad'
          )
          ]
        ),
        Option(
          name: '--version',
          description: 'The specific version of an extension',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        ),
        Option(
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List the installed extensions'
    ),
    Subcommand(
      name: 'list-available',
      description: 'List publicly available extensions',
      options: [

        Option(
          name: ['--show-details', '-d'],
          description: 'Show the raw data from the extension index'
        )
      ]
    ),
    Subcommand(
      name: 'list-versions',
      description: 'List available versions for an extension',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of extension',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove an extension',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of extension',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show an extension',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of extension',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update an extension',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of extension',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--pip-extra-index-urls',
          description: 'Space-separated list of extra URLs of package indexes to use. This should point to a repository compliant with PEP 503 (the simple repository API) or a local directory laid out in the same format',
          args: [
            Arg(
            name: 'pip-extra-index-url'
          )
          ]
        ),
        Option(
          name: '--pip-proxy',
          description: 'Proxy for pip to use for extension dependencies in the form of [user:passwd@]proxy.server:port',
          args: [
            Arg(
            name: 'pip-prox'
          )
          ]
        )
      ]
    )
  ]
);
