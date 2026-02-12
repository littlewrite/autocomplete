// Auto-generated from TypeScript source: unzip.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `unzip` CLI
final FigSpec unzipSpec = FigSpec(
  name: 'unzip',
  description: 'Extract compressed files in a ZIP archive',
  args: [
    Arg(
    name: 'file',
    template: 'filepaths'
  )
  ],
  options: [
    Option(
      name: '-l',
      description: 'List the contents of a zip file without extracting',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-c',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '-0',
      description: 'Extract a zip file created in windows, containing files with non-ascii (chinese) filenames',
      args: [
        Arg(
          name: 'gbk'
        ),
        Arg(
          name: 'file',
          template: 'filepaths'
        )
      ]
    ),
    Option(
      name: '-d',
      args: [
        Arg(
        name: 'destination',
        template: 'folders'
      )
      ]
    )
  ]
);
