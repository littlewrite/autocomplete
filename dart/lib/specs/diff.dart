// Auto-generated from TypeScript source: diff.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `diff` CLI
final FigSpec diffSpec =
    FigSpec(name: 'diff', description: 'Compare files line by line', args: [
  Arg(name: 'file', isVariadic: true, template: 'filepaths')
], options: [
  Option(
      name: ['-i', '--ignore-case'],
      description: 'Ignore case differences in file contents'),
  Option(
      name: '--ignore-file-name-case',
      description: 'Ignore case when comparing file names',
      exclusiveOn: ['--no-ignore-file-name-case']),
  Option(
      name: '--no-ignore-file-name-case',
      description: 'Consider case when comparing file names',
      exclusiveOn: ['--ignore-file-name-case']),
  Option(
      name: ['-E', '--ignore-tab-expansion'],
      description: 'Ignore changes due to tab expansion'),
  Option(
      name: ['-b', '--ignore-space-change'],
      description: 'Ignore changes in the amount of white space'),
  Option(
      name: ['-w', '--ignore-all-space'],
      description: 'Ignore all white space'),
  Option(
      name: ['-B', '--ignore-blank-lines'],
      description: 'Ignore changes whose lines are all blank'),
  Option(
      name: ['-I', '--ignore-matching-lines'],
      description: 'Ignore changes whose lines all match RE',
      args: [Arg(name: 'RE')]),
  Option(
      name: '--strip-trailing-cr',
      description: 'Strip trailing carriage return on input'),
  Option(name: ['-a', '--text'], description: 'Treat all files as text'),
  Option(
      name: ['-c', '-C', '--context'],
      description: 'Output NUM lines of copied context',
      args: [Arg(name: 'NUM', defaultValue: '')]),
  Option(
      name: ['-u', '-U', '--unified'],
      description: 'Output NUM lines of unified context',
      args: [Arg(name: 'NUM', defaultValue: '')]),
  Option(
      name: '--label',
      description: 'Use LABEL instead of file name',
      args: [Arg(name: 'LABE')]),
  Option(
      name: ['-p', '--show-c-function'],
      description: 'Show which C function each change is in'),
  Option(
      name: ['-F', '--show-function-line'],
      description: 'Show the most recent line matching RE',
      args: [Arg(name: 'R')]),
  Option(
      name: ['-q', '--brief'], description: 'Output only whether files differ'),
  Option(name: ['-e', '--ed'], description: 'Output an ed script'),
  Option(name: '--normal', description: 'Output a normal diff'),
  Option(name: ['-n', '--rcs'], description: 'Output an RCS format diff'),
  Option(name: ['-y', '--side-by-side'], description: 'Output in two columns'),
  Option(
      name: ['-W', '--width'],
      description: 'Output at most NUM (default 130) print columns',
      args: [Arg(name: 'NU')]),
  Option(
      name: '--left-column',
      description: 'Output only the left column of common lines'),
  Option(
      name: '--suppress-common-lines',
      description: 'Do not output common lines'),
  Option(
      name: ['-D', '--ifdef'],
      description: 'Output merged file to show `#ifdef NAME\' diffs',
      args: [Arg(name: 'NAM')]),
  Option(
      name: ['-l', '--paginate'],
      description: 'Pass the output through `pr\' to paginate it'),
  Option(
      name: ['-t', '--expand-tabs'],
      description: 'Expand tabs to spaces in output'),
  Option(
      name: ['-T', '--initial-tab'],
      description: 'Make tabs line up by prepending a tab'),
  Option(
      name: ['-r', '--recursive'],
      description: 'Recursively compare any subdirectories found'),
  Option(
      name: ['-N', '--new-file'], description: 'Treat absent files as empty'),
  Option(
      name: '--unidirectional-new-file',
      description: 'Treat absent first files as empty'),
  Option(
      name: ['-s', '--report-identical-files'],
      description: 'Report when two files are the same'),
  Option(
      name: ['-x', '--exclude'],
      description: 'Exclude files that match PAT',
      args: [Arg(name: 'PA')]),
  Option(
      name: ['-X', '--exclude-from'],
      description: 'Exclude files that match any pattern in FILE',
      args: [Arg(name: 'FILE', template: 'filepath')]),
  Option(
      name: ['-S', '--starting-file'],
      description: 'Start with FILE when comparing directories',
      args: [Arg(name: 'FILE', template: 'filepath')]),
  Option(
      name: '--from-file',
      description: 'Compare FILE1 to all operands. FILE1 can be a directory',
      args: [
        Arg(name: 'FILE1', template: ['filepaths', 'folders'])
      ]),
  Option(
      name: '--to-file',
      description: 'Compare all operands to FILE2. FILE2 can be a directory',
      args: [
        Arg(name: 'FILE2', template: ['filepaths', 'folders'])
      ]),
  Option(
      name: '--horizon-lines',
      description: 'Keep NUM lines of the common prefix and suffix',
      args: [Arg(name: 'NU')]),
  Option(
      name: ['-d', '--minimal'],
      description: 'Try hard to find a smaller set of changes'),
  Option(
      name: '--speed-large-files',
      description: 'Assume large files and many scattered small changes'),
  Option(name: ['-v', '--version'], description: 'Output version info'),
  Option(name: '--help', description: 'Show help'),
  Option(
      name: '--line-format',
      description: 'Format all input lines with LFMT',
      args: [Arg(name: 'LFT')])
]);
