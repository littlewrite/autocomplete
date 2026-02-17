// Auto-generated from TypeScript source: touch.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `touch` CLI
final FigSpec touchSpec = FigSpec(
  name: 'touch',
  description: 'Change file access and modification times',
  args: [
    Arg(
    name: 'file',
    isVariadic: true,
    template: 'folders'
  )
  ],
  options: [

    Option(
      name: '-A',
      description: 'Adjust the access and modification time stamps for the file by the specified value',
      args: [
        Arg(
        name: 'time',
        description: '[-][[hh]mm]SS'
      )
      ]
    ),
    Option(
      name: '-a',
      description: 'Change the access time of the file'
    ),
    Option(
      name: '-c',
      description: 'Do not create the file if it does not exist'
    ),
    Option(
      name: '-f',
      description: 'Attempt to force the update, even if the file permissions do not currently permit it'
    ),
    Option(
      name: '-h',
      description: 'If the file is a symbolic link, change the times of the link itself rather than the file that the link points to'
    ),
    Option(
      name: '-m',
      description: 'Change the modification time of the file'
    ),
    Option(
      name: '-r',
      description: 'Use the access and modifications times from the specified file instead of the current time of day',
      args: [
        Arg(
        name: 'file'
      )
      ]
    ),
    Option(
      name: '-t',
      description: 'Change the access and modification times to the specified time instead of the current time of day',
      args: [
        Arg(
        name: 'timestamp',
        description: '[[CC]YY]MMDDhhmm[.SS]'
      )
      ]
    )
  ]
);
