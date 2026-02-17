// Auto-generated from TypeScript source: create-react-native-app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-react-native-app` CLI
final FigSpec createReactNativeAppSpec = FigSpec(
  name: 'create-react-native-app',
  description: 'Creates a new React Native project',
  args: [
    Arg(
    template: 'folders',
    name: 'name'
  )
  ],
  options: [

    Option(
      name: '--template',
      description: 'The name of a template from expo/examples or URL to a GitHub repo that contains an example',
      args: [
        Arg(
        name: 'template'
      )
      ],
      priority: 76
    ),
    Option(
      name: '--template-path',
      description: 'The path inside of a GitHub repo where the example lives',
      args: [
        Arg(
        name: 'name'
      )
      ],
      priority: 76
    ),
    Option(
      name: '--yes',
      description: 'Use the default options for creating a project',
      priority: 76
    ),
    Option(
      name: '--no-install',
      description: 'Skip installing npm packages or CocoaPods',
      priority: 76
    ),
    Option(
      name: '--use-npm',
      description: 'Use npm to install dependencies. (default when Yarn is not installed)',
      priority: 76
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
