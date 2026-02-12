// Auto-generated from TypeScript source: find.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `find` CLI
final FigSpec findSpec = FigSpec(
  name: 'find',
  description: 'Walk a file hierarchy',
  args: [
    Arg(
      name: 'path',
      isOptional: true,
      isVariadic: true,
      template: ['folders']
    ),
    Arg(
      name: 'expression',
      description: 'Composition of primaries and operands',
      isOptional: true,
      isVariadic: true
    )
  ],
  options: [
    Option(
      name: '-E',
      description: 'Interpret regular expressions followed by -regex and -iregex primaries as extended'
    ),
    Option(
      name: '-H',
      description: 'Cause the file information and file type returned for each symbolic link specified to be those referenced by the link',
      exclusiveOn: ['-L', '-P']
    ),
    Option(
      name: '-L',
      description: 'Cause the file information and file type returned for each symbolic link to be those of the file referenced by the link',
      exclusiveOn: ['-H', '-P']
    ),
    Option(
      name: '-P',
      description: 'Cause the file information and file type returned for each symbolic link to be those for the link itself',
      exclusiveOn: ['-H', '-L']
    ),
    Option(
      name: '-X',
      description: 'Permit find to be safely used in conjunction with xargs'
    ),
    Option(
      name: '-d',
      description: 'Cause find to perform a depth-first traversal'
    ),
    Option(
      name: '-f',
      description: 'Specify a file hierarch for find to traverse',
      args: [
        Arg(
        name: 'path'
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Cause find to traverse the file hierarchies in lexicographical order'
    ),
    Option(
      name: '-x',
      description: 'Prevent find from descending into directories that have a device number different than that of the file from which the descent began'
    )
  ]
);
