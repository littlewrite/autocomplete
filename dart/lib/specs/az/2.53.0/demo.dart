// Auto-generated from TypeScript source: demo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `demo` CLI
final FigSpec demoSpec = FigSpec(
  name: 'demo',
  description: 'Demos for designing, developing and demonstrating Azure CLI',
  subcommands: [

    Subcommand(
      name: 'byo-access-token',
      description: 'List resource groups by bringing your own access token',
      options: [

        Option(
          name: '--access-token',
          description: 'Your own access token',
          args: [
            Arg(
            name: 'access-toke'
          )
          ]
        ),
        Option(
          name: '--subscription-id',
          description: 'Subscription ID under which to list resource groups',
          args: [
            Arg(
            name: 'subscription-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'style',
      description: 'A demo showing supported text styles',
      options: [

        Option(
          name: '--theme',
          description: 'The theme to format styled text. If unspecified, the default theme is used',
          args: [
            Arg(
            name: 'theme',
            suggestions: [

              FigSuggestion(name: 'cloud-shell'),
              FigSuggestion(name: 'dark'),
              FigSuggestion(name: 'light'),
              FigSuggestion(name: 'none')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'secret-store',
      description: 'A demo showing how to use secret store',
      subcommands: [

        Subcommand(
          name: 'load',
          description: 'Load custom data from secret store'
        ),
        Subcommand(
          name: 'save',
          description: 'Save custom data to secret store',
          args: [
            Arg(
            name: '<KEY_VALUE>',
            description: 'Space-separated data: = [= ...]',
            isOptional: true
          )
          ]
        )
      ]
    )
  ]
);
