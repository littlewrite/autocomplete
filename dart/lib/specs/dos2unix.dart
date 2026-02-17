// AI-generated from TypeScript source: dos2unix.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec dos2unixSpec = FigSpec(
  name: 'dos2unix',
  description: 'DOS to Unix file format converter',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
  ),
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help for dos2unix',
    ),
    FigOption(
      name: ['--'],
      description:
          'Treat all following options as file names. Use this option if you want to convert files whose names start with a dash',
    ),
    FigOption(
      name: ['--allow-chown'],
      description: 'Allow file ownership change in old file mode',
    ),
    FigOption(
      name: ['-ascii'],
      description:
          'Convert only line breaks. This is the default conversion mode',
    ),
    FigOption(
      name: ['-iso'],
      description: 'Conversion between DOS and ISO-8859-1 character set',
    ),
    FigOption(
      name: ['-1252'],
      description: 'Use Windows code page 1252 (Western European)',
    ),
    FigOption(
      name: ['-437'],
      description:
          'Use DOS code page 437 (US). This is the default code page used for ISO conversion',
    ),
    FigOption(
      name: ['-850'],
      description: 'Use DOS code page 850 (Western European)',
    ),
    FigOption(
      name: ['-860'],
      description: 'Use DOS code page 860 (Portuguese)',
    ),
    FigOption(
      name: ['-863'],
      description: 'Use DOS code page 863 (French Canadian)',
    ),
    FigOption(
      name: ['-865'],
      description: 'Use DOS code page 865 (Nordic)',
    ),
    FigOption(
      name: ['-7'],
      description: 'Convert 8 bit characters to 7 bit space',
    ),
    FigOption(
      name: ['-b', '--keep-bom'],
      description:
          'Keep Byte Order Mark (BOM). When the input file has a BOM, write a BOM in the output file',
    ),
    FigOption(
      name: ['-c', '--convmode'],
      description: 'Set conversion mode',
      args: [
        FigArg(
          name: 'CONVMODE',
          suggestions: [
            FigSuggestion(name: 'ascii'),
            FigSuggestion(name: '7bit'),
            FigSuggestion(name: 'iso'),
            FigSuggestion(name: 'mac'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-D', '--display-enc'],
      description: 'Set encoding of displayed text',
      args: [
        FigArg(
          name: 'ENCODING',
          suggestions: [
            FigSuggestion(name: 'ansi'),
            FigSuggestion(name: 'unicode'),
            FigSuggestion(name: 'unicodebom'),
            FigSuggestion(name: 'utf8'),
            FigSuggestion(name: 'utf8bom'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-f', '--force'],
      description: 'Force conversion of binary files',
    ),
    FigOption(
      name: ['-gb', '--gb18030'],
      description:
          'On Windows UTF-16 files are by default converted to UTF-8, regardless of the locale setting',
    ),
    FigOption(
      name: ['-i'],
      description: 'Display file information. No conversion is done',
      insertValue: '-i{cursor}',
      exclusiveOn: ['--info'],
      args: [
        FigArg(
          name: 'value',
        ),
      ],
    ),
    FigOption(
      name: ['--info'],
      description: 'Display file information. No conversion is done',
      requiresSeparator: true,
      exclusiveOn: ['-i'],
      args: [
        FigArg(
          name: 'value',
        ),
      ],
    ),
    FigOption(
      name: ['-k', '--keepdate'],
      description: '',
    ),
    FigOption(
      name: ['-L', '--license'],
      description: "Display program's license",
    ),
    FigOption(
      name: ['-l', '--newline'],
      description: 'Add additional newline',
    ),
    FigOption(
      name: ['-m', '--add-bom'],
      description:
          'Write a Byte Order Mark (BOM) in the output file. By default an UTF-8 BOM is written',
    ),
    FigOption(
      name: ['--newfile'],
      description:
          'New file mode. Convert file INFILE and write output to file OUTFILE. File names must be given in pairs and wildcard names should not be used or you will lose your files',
      args: [
        FigArg(
          name: 'INFILE',
          template: 'filepaths',
        ),
        FigArg(
          name: 'OUTFILE',
          template: 'filepaths',
          suggestCurrentToken: true,
        ),
      ],
    ),
    FigOption(
      name: ['--no-allow-chown'],
      description:
          "Don't allow file ownership change in old file mode (default)",
    ),
    FigOption(
      name: ['-o', '--oldfile'],
      description:
          'Old file mode. Convert file FILE and overwrite output to it',
      args: [
        FigArg(
          name: 'FILE',
          template: 'filepaths',
          isVariadic: true,
        ),
      ],
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description:
          'Quiet mode. Suppress all warnings and messages. The return value is zero.  Except when wrong command-line options are used',
    ),
    FigOption(
      name: ['-r', '--remove-bom'],
      description:
          'Remove Byte Order Mark (BOM). Do not write a BOM in the output file',
    ),
    FigOption(
      name: ['-s', '--safe'],
      description: 'Skip binary files (default)',
    ),
    FigOption(
      name: ['-u', '--keep-utf16'],
      description: 'Keep UTF-16 encoding',
    ),
    FigOption(
      name: ['-ul', '--assume-utf16le'],
      description: 'Assume that the input format is UTF-16LE',
    ),
    FigOption(
      name: ['-ub', '--assume-utf16be'],
      description: 'Assume that the input format is UTF-16BE',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Verbose operation',
    ),
    FigOption(
      name: ['-F', '--follow-symlink'],
      description: 'Follow symbolic links and convert the targets',
    ),
    FigOption(
      name: ['-R', '--replace-symlink'],
      description: 'Replace symbolic links with converted files',
    ),
    FigOption(
      name: ['-S', '--skip-symlink'],
      description: 'Keep symbolic links and targets unchanged (default)',
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Display version number',
    ),
  ],
  args: [
    FigArg(
      name: 'file',
      isVariadic: true,
      isOptional: true,
      template: 'filepaths',
    ),
  ],
);
