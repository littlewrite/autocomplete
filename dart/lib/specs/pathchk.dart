// Auto-generated from TypeScript source: pathchk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pathchk` CLI
final FigSpec pathchkSpec = FigSpec(
  name: 'pathchk',
  description: 'Check pathnames for POSIX portability',
  options: [
    Option(
      name: '-p',
      description: 'Perform portability checks on the specified pathname arguments, writes messages if 1) path is longer than _POSIX_PATH_MAX (255) bytes 2) contains a component longer than _POSIX_NAME_MAX (14) bytes, contains any character not in the portable filename character set'
    ),
    Option(
      name: '-P',
      description: 'In addition to the default or -p checks, write a diagnostic for each argument that 1) is empty 2) contains a component that starts with a hyphen'
    )
  ],
  args: [
    Arg(
    name: 'pathname',
    description: 'Pathname(s) to check',
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
