// Auto-generated from TypeScript source: upgrade.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `upgrade` CLI
final FigSpec upgradeSpec = FigSpec(
  name: 'upgrade',
  description: 'Upgrade Azure CLI and extensions',
  options: [

    Option(
      name: '--all',
      description: 'Enable updating extensions as well',
      args: [
        Arg(
        name: 'all',
        suggestions: [

          FigSuggestion(name: 'false'),
          FigSuggestion(name: 'true')
        ]
      )
      ]
    ),
    Option(
      name: ['--yes', '-y'],
      description: 'Do not prompt for checking release notes'
    )
  ]
);
