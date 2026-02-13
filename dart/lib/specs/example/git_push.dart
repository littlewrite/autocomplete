// Auto-generated from TypeScript source: git_push.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `git_push_example` CLI
final FigSpec git_push_exampleSpec = FigSpec(
  name: 'git_push_example',
  description: '',
  args: [

    Arg(
      name: 'repository',
      isOptional: true
    ),
    Arg(
      name: 'refspec',
      isOptional: true,
      isVariadic: true
    )
  ],
  options: [

    Option(
      name: '--all'
    ),
    Option(
      name: '--mirror'
    ),
    Option(
      name: '--tags'
    ),
    Option(
      name: ['-n', '--dry-run']
    ),
    Option(
      name: '--receive-pack',
      args: [
        Arg(
        name: 'git-receive-pac'
      )
      ]
    ),
    Option(
      name: ['-u', '--set-upstream']
    ),
    Option(
      name: '-o',
      args: [
        Arg(
        name: 'strin'
      )
      ]
    ),
    Option(
      name: '--push-option',
      args: [
        Arg(
        name: 'strin'
      )
      ]
    )
  ]
);
