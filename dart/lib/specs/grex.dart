// Auto-generated from TypeScript source: grex.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `grex` CLI
final FigSpec grexSpec = FigSpec(
  name: 'grex',
  description: 'Command-line tool for generating regular expressions from user-provided test cases',
  options: [
    Option(
      name: ['-d', '--digits'],
      description: 'Converts any Unicode decimal digit to \\d'
    ),
    Option(
      name: ['-D', '--non-digits'],
      description: 'Converts any character which is not a Unicode decimal digit to \\D'
    ),
    Option(
      name: ['-s', '--spaces'],
      description: 'Converts any Unicode whitespace character to \\s'
    ),
    Option(
      name: ['-S', '--non-spaces'],
      description: 'Converts any character which is not a Unicode whitespace character to \\S'
    ),
    Option(
      name: ['-w', '--words'],
      description: 'Converts any Unicode word character to \\w'
    ),
    Option(
      name: ['-W', '--non-words'],
      description: 'Converts any character which is not a Unicode word character to \\W'
    ),
    Option(
      name: ['-r', '--repetitions'],
      description: 'Detects repeated non-overlapping substrings and converts them to {min,max} quantifier notation'
    ),
    Option(
      name: ['-e', '--escape'],
      description: 'Replaces all non-ASCII characters with unicode escape sequences'
    ),
    Option(
      name: '--with-surrogates',
      description: 'Converts astral code points to surrogate pairs if --escape is set'
    ),
    Option(
      name: ['-i', '--ignore-case'],
      description: 'Performs case-insensitive matching, letters match both upper and lower case'
    ),
    Option(
      name: ['-g', '--capture-groups'],
      description: 'Replaces non-capturing groups by capturing ones'
    ),
    Option(
      name: ['-c', '--colorize'],
      description: 'Provides syntax highlighting for the resulting regular expression'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Prints help information'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Prints version information'
    ),
    Option(
      name: ['-f', '--file'],
      description: 'Reads test cases on separate lines from a file',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--min-repetitions',
      description: 'Specifies the minimum quantity of substring repetitions to be converted if --repetitions is set [default: 1]',
      args: [
        Arg(
        name: 'QUANTITY',
        suggestions: [
          FigSuggestion(
            name: '1',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '2',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '3',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '4',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '5',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '6',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '7',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '8',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '9',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '10',
            icon: '🔢'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--min-substring-length',
      description: 'Specifies the minimum length a repeated substring must have in order to be converted if --repetitions is set [default: 1]',
      args: [
        Arg(
        name: 'LENGTH',
        suggestions: [
          FigSuggestion(
            name: '1',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '2',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '3',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '4',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '5',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '6',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '7',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '8',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '9',
            icon: '🔢'
          ),
          FigSuggestion(
            name: '10',
            icon: '🔢'
          )
        ]
      )
      ]
    )
  ]
);
