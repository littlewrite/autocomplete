// Auto-generated from TypeScript source: cp.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cp` CLI
final FigSpec cpSpec = FigSpec(
  name: 'cp',
  description: 'Copy files and directories',
  args: [
    Arg(
      name: 'source',
      template: ['filepaths', 'folders'],
      isVariadic: true
    ),
    Arg(
      name: 'target',
      template: ['filepaths', 'folders']
    )
  ],
  options: [
    Option(
      name: '-a',
      description: 'Preserves structure and attributes of files but not directory structure'
    ),
    Option(
      name: '-f',
      description: 'If the destination file cannot be opened, remove it and create a new file, without prompting for confirmation',
      exclusiveOn: ['-n']
    ),
    Option(
      name: '-H',
      description: 'If the -R option is specified, symbolic links on the command line are followed',
      exclusiveOn: ['-L', '-P'],
      dependsOn: ['-R']
    ),
    Option(
      name: '-i',
      description: 'Cause cp to write a prompt to the standard error output before copying a file that would overwrite an existing file',
      exclusiveOn: ['-n']
    ),
    Option(
      name: '-L',
      description: 'If the -R option is specified, all symbolic links are followed',
      exclusiveOn: ['-H', '-P'],
      dependsOn: ['-R']
    ),
    Option(
      name: '-n',
      description: 'Do not overwrite an existing file',
      exclusiveOn: ['-f', '-i']
    ),
    Option(
      name: '-P',
      description: 'If the -R option is specified, no symbolic links are followed',
      exclusiveOn: ['-H', '-L'],
      dependsOn: ['-R']
    ),
    Option(
      name: '-R',
      description: 'If source designates a directory, cp copies the directory and the entire subtree connected at that point. If source ends in a /, the contents of the directory are copied rather than the directory itself'
    ),
    Option(
      name: '-v',
      description: 'Cause cp to be verbose, showing files as they are copied'
    ),
    Option(
      name: '-X',
      description: 'Do not copy Extended Attributes (EAs) or resource forks'
    ),
    Option(
      name: '-c',
      description: 'Copy files using clonefile'
    )
  ]
);
