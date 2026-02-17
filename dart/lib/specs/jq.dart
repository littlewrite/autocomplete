// Auto-generated from TypeScript source: jq.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> sharedOptions = [

  Option(
    name: '--version',
    description: 'Output the jq version and exit with zero'
  ),
  Option(
    name: '--seq',
    description: 'Use the application/json-seq MIME type scheme for separating JSON texts in jq\'s input and output'
  ),
  Option(
    name: '--stream',
    description: 'Parse the input in streaming fashion, outputting arrays of path and leaf values'
  ),
  Option(
    name: ['--slurp', '-s'],
    description: 'Instead of running the filter for each JSON object in the input, read the entire input stream into a large array and run the filter just once'
  ),
  Option(
    name: ['--raw-input', '-R'],
    description: 'Don\'t parse the input as JSON. Instead, each line of text is passed to the filter as a string'
  ),
  Option(
    name: ['--null-input', '-n'],
    description: 'Don\'t read any input at all! Instead, the filter is run once using null as the input'
  ),
  Option(
    name: ['--compact-output', '-c'],
    description: 'By default, jq pretty-prints JSON output. Using this option will result in more compact output by instead putting each JSON object on a single line'
  ),
  Option(
    name: '--tab',
    description: 'Use a tab for each indentation level instead of two spaces'
  ),
  Option(
    name: '--indent',
    description: 'Use the given number of spaces for indentation',
    args: [
      Arg(
      name: 'n',
      description: 'No more than 7'
    )
    ]
  ),
  Option(
    name: ['--color-output', '-C'],
    description: 'By default, jq outputs colored JSON if writing to a terminal. You can force it to produce color even if writing to a pipe or a file using -C'
  ),
  Option(
    name: ['--monochrome-output', '-M'],
    description: 'Disable color'
  ),
  Option(
    name: ['--ascii-output', '-a'],
    description: 'Jq usually outputs non-ASCII Unicode codepoints as UTF-8, even if the input specified them as escape sequences'
  ),
  Option(
    name: '--unbuffered',
    description: 'Flush the output after each JSON object is printed'
  ),
  Option(
    name: ['--sort-keys', '-S'],
    description: 'Output the fields of each object with the keys in sorted orde'
  ),
  Option(
    name: ['--raw-output', '-r'],
    description: 'If the filter\'s result is a string then it will be written directly to standard output rather than being formatted as a JSON string with quotes'
  ),
  Option(
    name: ['--join-output', '-j'],
    description: 'Like -r but jq won\'t print a newline after each output'
  ),
  Option(
    name: ['-f', '--from-file'],
    description: 'Read filter from the file rather than from a command line',
    args: [
      Arg(
      name: 'filename',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '-L',
    description: 'Prepend directory to the search list for modules',
    args: [
      Arg(
      name: 'directory',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: ['-e', '--exit-status'],
    description: 'Sets the exit status of jq to 0 if the last output values was neither false nor null, 1 if the last output value was either false or null, or 4 if no valid result was ever produced'
  ),
  Option(
    name: '--arg',
    description: 'This option passes a value to the jq program as a predefined variable',
    args: [

      Arg(
        name: 'name'
      ),
      Arg(
        name: 'value'
      )
    ]
  ),
  Option(
    name: '--argjson',
    description: 'This option passes a JSON-encoded value to the jq program as a predefined variable',
    args: [

      Arg(
        name: 'name'
      ),
      Arg(
        name: 'JSON-text'
      )
    ]
  ),
  Option(
    name: '--slurpfile',
    description: 'This option reads all the JSON texts in the named file and binds an array of the parsed JSON values to the given global variable',
    args: [

      Arg(
        name: 'variable name'
      ),
      Arg(
        name: 'filename',
        template: 'filepaths'
      )
    ]
  ),
  Option(
    name: '--rawfile',
    description: 'This option reads in the named file and binds its contents to the given global variable',
    args: [

      Arg(
        name: 'variable name'
      ),
      Arg(
        name: 'filename',
        template: 'filepaths'
      )
    ]
  ),
  Option(
    name: '--args',
    description: 'Remaining arguments are positional string arguments. These are available to the jq program as \$ARGS.positional[]'
  ),
  Option(
    name: '--jsonargs',
    description: 'Remaining arguments are positional JSON text arguments. These are available to the jq program as \$ARGS.positional[]'
  ),
  Option(
    name: '--run-tests',
    description: 'Runs the tests in the given file or standard input. This must be the last option given and does not honor all preceding options',
    args: [
      Arg(
      name: 'filename',
      isOptional: true,
      template: 'filepaths'
    )
    ]
  )
];

/// Completion spec for `jq` CLI
final FigSpec jqSpec = FigSpec(
  name: 'jq',
  description: 'Command-line JSON processor',
  options: sharedOptions,
  args: [

    Arg(
      name: 'filter',
      description: 'Must be enclosed in single quotes'
    ),
    Arg(
      name: 'files',
      template: 'filepaths',
      isOptional: true,
      isVariadic: true
    )
  ]
);
