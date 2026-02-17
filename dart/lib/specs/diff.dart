// AI-generated from TypeScript source: src/diff.ts
import 'package:autocomplete/src/spec.dart';

List<FigOption> groupFormatOptions(List<String> names) {
  return names.map((name) {
    return FigOption(
      name: '--$name-group-format',
      description: 'Similar, but format $name input groups with GFTM',
      args: [
        FigArg(
          name: 'GFTM',
          description: '''%<  lines from FILE1
%>  lines from FILE2
%=  lines common to FILE1 and FILE2
%[-][WIDTH][.[PREC]]{doxX}LETTER  printf-style spec for LETTER
LETTERs are as follows for new group, lower case for old group:
F  first line number
L  last line number
N  number of lines = L-F+1
E  F-1
M  L+1
%%  %
%c'C'  the single character C
%c'\\OOO'  the character with octal code OOO''',
        ),
      ],
    );
  }).toList();
}

List<FigOption> lineFormatOptions(List<String> names) {
  return names.map((name) {
    return FigOption(
      name: '--$name-line-format',
      description: 'Format $name input lines with LFTM',
      args: [
        FigArg(
          name: 'LFTM',
          description: '''%L  contents of line
%l  contents of line, excluding any trailing newline
%[-][WIDTH][.[PREC]]{doxX}n  printf-style spec for input line number
%%  %
%c'C'  the single character C
%c'\\OOO'  the character with octal code OOO''',
        ),
      ],
    );
  }).toList();
}

final FigSpec diffSpec = FigSpec(
  name: 'diff',
  description: 'Compare files line by line',
  args: [
    FigArg(
      name: 'file',
      isVariadic: true,
      template: 'filepaths',
    ),
  ],
  options: [
    FigOption(
      name: ['-i', '--ignore-case'],
      description: 'Ignore case differences in file contents',
    ),
    FigOption(
      name: '--ignore-file-name-case',
      description: 'Ignore case when comparing file names',
      exclusiveOn: ['--no-ignore-file-name-case'],
    ),
    FigOption(
      name: '--no-ignore-file-name-case',
      description: 'Consider case when comparing file names',
      exclusiveOn: ['--ignore-file-name-case'],
    ),
    FigOption(
      name: ['-E', '--ignore-tab-expansion'],
      description: 'Ignore changes due to tab expansion',
    ),
    FigOption(
      name: ['-b', '--ignore-space-change'],
      description: 'Ignore changes in the amount of white space',
    ),
    FigOption(
      name: ['-w', '--ignore-all-space'],
      description: 'Ignore all white space',
    ),
    FigOption(
      name: ['-B', '--ignore-blank-lines'],
      description: 'Ignore changes whose lines are all blank',
    ),
    FigOption(
      name: ['-I', '--ignore-matching-lines'],
      description: 'Ignore changes whose lines all match RE',
      args: [
        FigArg(
          name: 'RE',
        ),
      ],
    ),
    FigOption(
      name: '--strip-trailing-cr',
      description: 'Strip trailing carriage return on input',
    ),
    FigOption(name: ['-a', '--text'], description: 'Treat all files as text'),
    FigOption(
      name: ['-c', '-C', '--context'],
      description: 'Output NUM lines of copied context',
      args: [FigArg(name: 'NUM', defaultValue: '3')],
    ),
    FigOption(
      name: ['-u', '-U', '--unified'],
      description: 'Output NUM lines of unified context',
      args: [FigArg(name: 'NUM', defaultValue: '3')],
    ),
    FigOption(
      name: '--label',
      description: 'Use LABEL instead of file name',
      args: [FigArg(name: 'LABEL')],
    ),
    FigOption(
      name: ['-p', '--show-c-function'],
      description: 'Show which C function each change is in',
    ),
    FigOption(
      name: ['-F', '--show-function-line'],
      description: 'Show the most recent line matching RE',
      args: [FigArg(name: 'RE')],
    ),
    FigOption(
      name: ['-q', '--brief'],
      description: 'Output only whether files differ',
    ),
    FigOption(name: ['-e', '--ed'], description: 'Output an ed script'),
    FigOption(name: '--normal', description: 'Output a normal diff'),
    FigOption(name: ['-n', '--rcs'], description: 'Output an RCS format diff'),
    FigOption(name: ['-y', '--side-by-side'], description: 'Output in two columns'),
    FigOption(
      name: ['-W', '--width'],
      description: 'Output at most NUM (default 130) print columns',
      args: [FigArg(name: 'NUM')],
    ),
    FigOption(
      name: '--left-column',
      description: 'Output only the left column of common lines',
    ),
    FigOption(
      name: '--suppress-common-lines',
      description: 'Do not output common lines',
    ),
    FigOption(
      name: ['-D', '--ifdef'],
      description: 'Output merged file to show `#ifdef NAME\' diffs',
      args: [FigArg(name: 'NAME')],
    ),
    FigOption(
      name: ['-l', '--paginate'],
      description: 'Pass the output through `pr\' to paginate it',
    ),
    FigOption(
      name: ['-t', '--expand-tabs'],
      description: 'Expand tabs to spaces in output',
    ),
    FigOption(
      name: ['-T', '--initial-tab'],
      description: 'Make tabs line up by prepending a tab',
    ),
    FigOption(
      name: ['-r', '--recursive'],
      description: 'Recursively compare any subdirectories found',
    ),
    FigOption(name: ['-N', '--new-file'], description: 'Treat absent files as empty'),
    FigOption(
      name: '--unidirectional-new-file',
      description: 'Treat absent first files as empty',
    ),
    FigOption(
      name: ['-s', '--report-identical-files'],
      description: 'Report when two files are the same',
    ),
    FigOption(
      name: ['-x', '--exclude'],
      description: 'Exclude files that match PAT',
      args: [FigArg(name: 'PAT')],
    ),
    FigOption(
      name: ['-X', '--exclude-from'],
      description: 'Exclude files that match any pattern in FILE',
      args: [FigArg(name: 'FILE', template: 'filepaths')],
    ),
    FigOption(
      name: ['-S', '--starting-file'],
      description: 'Start with FILE when comparing directories',
      args: [FigArg(name: 'FILE', template: 'filepaths')],
    ),
    FigOption(
      name: '--from-file',
      description: 'Compare FILE1 to all operands. FILE1 can be a directory',
      args: [FigArg(name: 'FILE1', template: ['filepaths', 'folders'])],
    ),
    FigOption(
      name: '--to-file',
      description: 'Compare all operands to FILE2. FILE2 can be a directory',
      args: [FigArg(name: 'FILE2', template: ['filepaths', 'folders'])],
    ),
    FigOption(
      name: '--horizon-lines',
      description: 'Keep NUM lines of the common prefix and suffix',
      args: [FigArg(name: 'NUM')],
    ),
    FigOption(
      name: ['-d', '--minimal'],
      description: 'Try hard to find a smaller set of changes',
    ),
    FigOption(
      name: '--speed-large-files',
      description: 'Assume large files and many scattered small changes',
    ),
    FigOption(name: ['-v', '--version'], description: 'Output version info'),
    FigOption(name: '--help', description: 'Show help'),

    ...groupFormatOptions(['old', 'new', 'unchanged', 'changed']),
    FigOption(
      name: '--line-format',
      description: 'Format all input lines with LFMT',
      args: [FigArg(name: 'LFTM')],
    ),
    ...lineFormatOptions(['old', 'new', 'unchanged']),
  ],
);
