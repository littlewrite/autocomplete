// Auto-generated from TypeScript source: paste.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `paste` CLI
final FigSpec pasteSpec = FigSpec(
  name: 'paste',
  description: 'The paste utility concatenates the corresponding lines of the given input files, replacing all but the last file\'s newline characters with a single tab character, and writes the resulting lines to standard output.  If end-of-file is reached on an input file while other input files still contain data, the file is treated as if it were an endless source of empty lines',
  options: [

    Option(
      name: '-d',
      description: 'Use one or more of the provided characters to replace the newline characters instead of the default tab. The characters in list are used circularly, i.e., when list is exhausted the first character from list is reused. This continues until a line from the last input file (in default operation) or the last line in each file (using the -s option) is displayed, at which time paste begins selecting characters from the beginning of list again',
      args: [
        Arg(
        name: 'list',
        suggestions: [

          FigSuggestion(name: '\\t\\n'),
          FigSuggestion(name: '\\t'),
          FigSuggestion(name: '\\n')
        ]
      )
      ]
    )
  ]
);
