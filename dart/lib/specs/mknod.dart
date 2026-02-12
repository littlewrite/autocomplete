// Auto-generated from TypeScript source: mknod.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mknod` CLI
final FigSpec mknodSpec = FigSpec(
  name: 'mknod',
  description: 'Create device special file',
  subcommands: [
    Subcommand(
      name: 'c',
      description: 'Create (c)haracter device'
    ),
    Subcommand(
      name: 'b',
      description: 'Create (b)lock device'
    )
  ],
  options: [
    Option(
      name: '-F',
      description: 'Format',
      args: [
        Arg(
        name: 'FORMAT',
        suggestions: [
          FigSuggestion(name: 'native'),
          FigSuggestion(name: '386bsd'),
          FigSuggestion(name: '4bsd'),
          FigSuggestion(name: 'bsdos'),
          FigSuggestion(name: 'freebsd'),
          FigSuggestion(name: 'hpux'),
          FigSuggestion(name: 'isc'),
          FigSuggestion(name: 'linux'),
          FigSuggestion(name: 'netbsd'),
          FigSuggestion(name: 'npux'),
          FigSuggestion(name: 'isc'),
          FigSuggestion(name: 'linux'),
          FigSuggestion(name: 'netbsd'),
          FigSuggestion(name: 'osf1'),
          FigSuggestion(name: 'sco'),
          FigSuggestion(name: 'solaris'),
          FigSuggestion(name: 'sunos'),
          FigSuggestion(name: 'svr3'),
          FigSuggestion(name: 'svr4'),
          FigSuggestion(name: 'ultrix')
        ],
        defaultValue: 'native'
      )
      ]
    )
  ],
  args: [
    Arg(
      name: 'FILE',
      description: 'File to create'
    ),
    Arg(
      name: 'major',
      description: 'The major device number is an integer number which tells the kernel which device driver entry point to use'
    ),
    Arg(
      name: 'minor | unit subunit',
      description: 'The minor device number tells the kernel which one of several similar devices the node corresponds to; the unit and subunit numbers select a subset of a device; for example, the unit may specify a particular SCSI disk, and the subunit a partition on that disk'
    )
  ]
);
