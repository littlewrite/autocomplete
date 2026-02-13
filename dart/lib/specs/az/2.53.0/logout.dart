// Auto-generated from TypeScript source: logout.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `logout` CLI
final FigSpec logoutSpec = FigSpec(
  name: 'logout',
  description: 'Log out to remove access to Azure subscriptions',
  options: [

    Option(
      name: '--username',
      description: 'Account user, if missing, logout the current active account',
      args: [
        Arg(
        name: 'usernam'
      )
      ]
    )
  ]
);
