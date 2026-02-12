// Auto-generated from TypeScript source: dos2unix.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dos2unix` CLI
final FigSpec dos2unixSpec = FigSpec(
  name: 'dos2unix',
  description: 'DOS to Unix file format converter',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Show help for dos2unix'
    ),
    Option(
      name: '--',
      description: 'Treat all following options as file names. Use this option if you want to convert files whose names start with a dash'
    ),
    Option(
      name: '--allow-chown',
      description: 'Allow file ownership change in old file mode'
    ),
    Option(
      name: '-ascii',
      description: 'Convert only line breaks. This is the default conversion mode'
    ),
    Option(
      name: '-iso',
      description: 'Conversion between DOS and ISO-8859-1 character set'
    ),
    Option(
      name: '-1252',
      description: 'Use Windows code page 1252 (Western European)'
    ),
    Option(
      name: '-437',
      description: 'Use DOS code page 437 (US). This is the default code page used for ISO conversion'
    ),
    Option(
      name: '-850',
      description: 'Use DOS code page 850 (Western European)'
    ),
    Option(
      name: '-860',
      description: 'Use DOS code page 860 (Portuguese)'
    ),
    Option(
      name: '-863',
      description: 'Use DOS code page 863 (French Canadian)'
    ),
    Option(
      name: '-865',
      description: 'Use DOS code page 865 (Nordic)'
    ),
    Option(
      name: '-7',
      description: 'Convert 8 bit characters to 7 bit space'
    ),
    Option(
      name: ['-b', '--keep-bom'],
      description: 'Keep Byte Order Mark (BOM). When the input file has a BOM, write a BOM in the output file'
    ),
    Option(
      name: ['-c', '--convmode'],
      description: 'Set conversion mode',
      args: [
        Arg(
        name: 'CONVMODE',
        suggestions: [
          FigSuggestion(name: 'ascii'),
          FigSuggestion(name: '7bit'),
          FigSuggestion(name: 'iso'),
          FigSuggestion(name: 'mac')
        ]
      )
      ]
    ),
    Option(
      name: ['-D', '--display-enc'],
      description: 'Set encoding of displayed text',
      args: [
        Arg(
        name: 'ENCODING',
        suggestions: [
          FigSuggestion(name: 'ansi'),
          FigSuggestion(name: 'unicode'),
          FigSuggestion(name: 'unicodebom'),
          FigSuggestion(name: 'utf8'),
          FigSuggestion(name: 'utf8bom')
        ]
      )
      ]
    ),
    Option(
      name: ['-f', '--force'],
      description: 'Force conversion of binary files'
    ),
    Option(
      name: ['-gb', '--gb18030'],
      description: 'On Windows UTF-16 files are by default converted to UTF-8, regardless of the locale setting'
    ),
    Option(
      name: '-i',
      description: 'Display file information. No conversion is done',
      insertValue: '-i{cursor}',
      exclusiveOn: ['--info'],
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: '--info',
      description: 'Display file information. No conversion is done',
      exclusiveOn: ['-i'],
      args: [
        Arg(
        name: 'value'
      )
      ]
    ),
    Option(
      name: ['-k', '--keepdate'],
      description: ''
    ),
    Option(
      name: ['-L', '--license'],
      description: 'Display program\'s license'
    ),
    Option(
      name: ['-l', '--newline'],
      description: 'Add additional newline'
    ),
    Option(
      name: ['-m', '--add-bom'],
      description: 'Write a Byte Order Mark (BOM) in the output file. By default an UTF-8 BOM is written'
    ),
    Option(
      name: '--newfile',
      description: 'New file mode. Convert file INFILE and write output to file OUTFILE. File names must be given in pairs and wildcard names should not be used or you will lose your files',
      args: [
        Arg(
          name: 'INFILE',
          template: 'filepaths'
        ),
        Arg(
          name: 'OUTFILE',
          template: 'filepaths'
        )
      ]
    ),
    Option(
      name: '--no-allow-chown',
      description: 'Don\'t allow file ownership change in old file mode (default)'
    ),
    Option(
      name: ['-o', '--oldfile'],
      description: 'Old file mode. Convert file FILE and overwrite output to it',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Quiet mode. Suppress all warnings and messages. The return value is zero.  Except when wrong command-line options are used'
    ),
    Option(
      name: ['-r', '--remove-bom'],
      description: 'Remove Byte Order Mark (BOM). Do not write a BOM in the output file'
    ),
    Option(
      name: ['-s', '--safe'],
      description: 'Skip binary files (default)'
    ),
    Option(
      name: ['-u', '--keep-utf16'],
      description: 'Keep UTF-16 encoding'
    ),
    Option(
      name: ['-ul', '--assume-utf16le'],
      description: 'Assume that the input format is UTF-16LE'
    ),
    Option(
      name: ['-ub', '--assume-utf16be'],
      description: 'Assume that the input format is UTF-16BE'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Verbose operation'
    ),
    Option(
      name: ['-F', '--follow-symlink'],
      description: 'Follow symbolic links and convert the targets'
    ),
    Option(
      name: ['-R', '--replace-symlink'],
      description: 'Replace symbolic links with converted files'
    ),
    Option(
      name: ['-S', '--skip-symlink'],
      description: 'Keep symbolic links and targets unchanged (default)'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Display version number'
    )
  ],
  args: [
    Arg(
    name: 'file',
    isVariadic: true,
    isOptional: true,
    template: 'filepaths'
  )
  ]
);
