// Auto-generated from TypeScript source: http.server.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `http.server` CLI
final FigSpec httpServerSpec = FigSpec(
  name: 'http.server',
  description: '',
  options: [

    Option(
      name: ['-d', '--directory'],
      description: 'Choose the directory to initiate the server from',
      args: [
        Arg(
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-b', '--bind'],
      description: 'Bind to a specific IP address',
      args: [
        Arg(
        name: 'IP Address',
        description: 'E.g. 127.0.0.1'
      )
      ]
    ),
    Option(
      name: '--cgi',
      description: 'Enable the CGIHTTPRequestHandler'
    )
  ],
  args: [
    Arg(
    name: 'port',
    description: 'Port number'
  )
  ]
);
