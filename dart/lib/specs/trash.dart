// Auto-generated from TypeScript source: trash.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `trash` CLI
final FigSpec trashSpec = FigSpec(
  name: 'trash',
  description: 'Trash, move files/folders to the trash',
  args: [
    Arg(
    isOptional: true,
    isVariadic: true,
    template: ['folders', 'filepaths']
  )
  ],
  options: [

    Option(
      name: '-v',
      description: 'Print verbose output while moving items'
    ),
    Option(
      name: '-F',
      description: 'Use the Finder API to move items to the trash'
    ),
    Option(
      name: '-l',
      description: 'List items in the trash'
    ),
    Option(
      name: '-e',
      description: 'Empty the trash',
      isDangerous: true
    ),
    Option(
      name: '-s',
      description: 'Securely empty the trash. trash asks for confirmation executing this action. If this argument is used, no need to be specified'
    ),
    Option(
      name: '-y',
      description: 'Skips the confirmation prompt for -e and -s. CAUTION: permanently instantly'
    )
  ]
);
