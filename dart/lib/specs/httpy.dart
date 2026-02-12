// Auto-generated from TypeScript source: httpy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `httpy` CLI
final FigSpec httpySpec = FigSpec(
  name: 'httpy',
  description: 'Programmable command-line HTTP client for the API',
  args: [
    Arg(
      name: 'URL',
      description: 'The scheme defaults to \'http://\' if the URL does not include one'
    ),
    Arg(
      name: 'METHOD',
      isOptional: true,
      suggestions: [
        FigSuggestion(name: 'GET'),
        FigSuggestion(name: 'POST'),
        FigSuggestion(name: 'PUT'),
        FigSuggestion(name: 'DELETE')
      ],
      defaultValue: 'GET',
      description: 'The HTTP method to be used for the request (GET, POST, PUT, DELETE, ...)'
    )
  ],
  options: [
    Option(
      name: ['--exec', '-x'],
      description: 'Execute httpy command'
    ),
    Option(
      name: ['--status', '-S'],
      description: 'Print only the response status'
    ),
    Option(
      name: ['--header', '-H'],
      description: 'Print only the response headers'
    ),
    Option(
      name: ['--body', '-B'],
      description: 'Print only the response body'
    ),
    Option(
      name: ['--allow-redirect', '-r'],
      description: 'Allow requests to be redirected'
    ),
    Option(
      name: ['--verbose', '-V'],
      description: 'Show request and response in verbose'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for httpy'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Show version for httpy'
    )
  ]
);
