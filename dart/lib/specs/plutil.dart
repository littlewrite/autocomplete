// Auto-generated from TypeScript source: plutil.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `plutil` CLI
final FigSpec plutilSpec = FigSpec(
  name: 'plutil',
  description: 'Check the syntax of property list files, or convert a plist file from one format to another. Specifying - as an input file reads from stdin',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
    optionsMustPrecedeArguments: true
  ),
  args: [
    Arg(
    name: 'file',
    description: 'File to check the syntax of or convert'
  )
  ],
  options: [

    Option(
      name: '-help',
      description: 'Show the usage information for the command and exit'
    ),
    Option(
      name: '-p',
      description: 'Print the property list in a human-readable fashion'
    ),
    Option(
      name: '-lint',
      description: 'Check the named property list files for syntax errors. This is the default command option if none is specified'
    ),
    Option(
      name: '-convert',
      description: 'Convert the named file to the indicated format and write back to the file system',
      args: [
        Arg(
        name: 'format',
        description: 'Format to convert the named file to',
        suggestions: [

          FigSuggestion(
            name: 'xml1',
            description: 'For version 1 of the XML plist format'
          ),
          FigSuggestion(
            name: 'binary1',
            description: 'For version 1 of the binary plist'
          ),
          FigSuggestion(
            name: 'json',
            description: 'For the JSON format'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--',
      description: 'Specifies that all further arguments are file names'
    ),
    Option(
      name: '-s',
      description: 'Don\'t print anything on success'
    ),
    Option(
      name: '-r',
      description: 'For JSON, add whitespace and indentation to make the output more human-readable'
    ),
    Option(
      name: '-o',
      description: 'Specify an alternate path name for the result of the -convert operation; this option is only useful with a single file to be converted. Specifying - as the path outputs to stdout',
      args: [
        Arg(
        name: 'path'
      )
      ]
    ),
    Option(
      name: '-e',
      description: 'Specify an alternate extension for converted files, and the output file names are otherwise the same',
      args: [
        Arg(
        name: 'extension'
      )
      ]
    )
  ]
);
