// Auto-generated from TypeScript source: create-react-app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-react-app` CLI
final FigSpec createReactAppSpec = FigSpec(
  name: 'create-react-app',
  description: 'Creates a new React project',
  args: [
    Arg(
    template: 'folders',
    name: 'name'
  )
  ],
  options: [
    Option(
      name: '--template',
      description: 'Specify a template for the created project (a custom template on npm (search for "cra-template-*"), a relative path, or an archive (.tgz or .tar.gz))',
      args: [
        Arg(
        name: 'name or url'
      )
      ],
      priority: 76
    ),
    Option(
      name: '--use-npm',
      description: 'Use npm to install dependencies (default when Yarn is not installed)',
      priority: 75
    ),
    Option(
      name: '--use-pnp',
      description: 'Use Yarn Plug\'n\'Play to create the app',
      priority: 75
    ),
    Option(
      name: '--scripts-version',
      description: 'Use a non-standard version of react-scripts (a specific npm version or npm tag, a custom fork published on npm, a relative path, or an archive (.tgz or .tar.gz))',
      args: [
        Arg(
        name: 'alternative package'
      )
      ],
      priority: 74
    ),
    Option(
      name: '--verbose',
      description: 'Print additional logs',
      priority: 1
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information',
      priority: 1
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number',
      priority: 1
    )
  ]
);
