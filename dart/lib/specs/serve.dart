// Auto-generated from TypeScript source: serve.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `serve` CLI
final FigSpec serveSpec = FigSpec(
  name: 'serve',
  description: 'Static file serving and directory listing',
  args: [
    Arg(
    name: 'location',
    template: 'folders'
  )
  ],
  options: [

    Option(
      name: ['-h', '--help'],
      description: 'Shows help message'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Displays the current version of serve'
    ),
    Option(
      name: ['-l', '--listen'],
      description: 'Specify a URI endpoint on which to listen - more than one may be specified to listen in multiple places',
      args: [
        Arg(
        name: 'listen_uri',
        suggestions: [

          FigSuggestion(
            name: 'port',
            description: 'E.g. serve --listen 1234',
            insertValue: '1234',
            priority: 100
          ),
          FigSuggestion(
            name: 'host/port',
            description: 'E.g. serve --listen tcp://hostname:1234',
            insertValue: 'tcp://hostname:1234',
            priority: 76
          ),
          FigSuggestion(
            name: 'unix domain',
            description: 'E.g. serve --listen unix:/path/to/socket.sock',
            insertValue: 'unix:/path/to/socket.sock'
          ),
          FigSuggestion(
            name: 'windows pipe',
            description: 'E.g. serve -l pipe:\\.pipePipeName',
            insertValue: 'pipe:\\.pipePipeName'
          )
        ]
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Specify custom port',
      args: [
        Arg(
        name: 'por'
      )
      ]
    ),
    Option(
      name: ['-d', '--debug'],
      description: 'Show debugging information'
    ),
    Option(
      name: ['-s', '--single'],
      description: 'Rewrite all not-found requests to `index.html`'
    ),
    Option(
      name: ['-c', '--config'],
      description: 'Specify custom path to `serve.json`',
      args: [
        Arg(
        name: 'path to config file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-C', '--cors'],
      description: 'Enable CORS, sets `Access-Control-Allow-Origin` to `*`'
    ),
    Option(
      name: ['-n', '--no-clipboard'],
      description: 'Do not copy the local address to the clipboard'
    ),
    Option(
      name: ['-u', '--no-compression'],
      description: 'Do not compress files'
    ),
    Option(
      name: '--no-etag',
      description: 'Send `Last-Modified` header instead of `ETag`'
    ),
    Option(
      name: ['-S', '--symlinks'],
      description: 'Resolve symlinks instead of showing 404 errors'
    ),
    Option(
      name: '--ssl-cert',
      description: 'Optional path to an SSL/TLS certificate to serve with HTTPS',
      args: [
        Arg(
        name: 'path to SSL/TLS certificate',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-key',
      description: 'Optional path to the SSL/TLS certificate\'s private key',
      args: [
        Arg(
        name: 'path to private key',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl-pass',
      description: 'Optional path to the SSL/TLS certificate\'s passphrase',
      args: [
        Arg(
        name: 'path to passphrase',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--no-port-switching',
      description: 'Do not open a port other than the one specified when it\'s taken'
    )
  ]
);
