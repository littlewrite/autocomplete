// Auto-generated from TypeScript source: nl.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nl` CLI
final FigSpec nlSpec = FigSpec(
  name: 'nl',
  description: 'Line numbering filter',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: '-b',
      description: 'Specify the logical page body lines to be numbered',
      args: [
        Arg(
        name: 'type',
        suggestions: [
          FigSuggestion(
            name: 'a',
            description: 'Number all lines'
          ),
          FigSuggestion(
            name: 't',
            description: 'Number only non-empty lines'
          ),
          FigSuggestion(
            name: 'pexpr',
            description: 'Only those lines that contain the basic regular expression specified by \'expr\''
          )
        ],
        defaultValue: 't'
      )
      ]
    ),
    Option(
      name: '-d',
      args: [
        Arg(
        name: 'delim',
        suggestions: [
          FigSuggestion(name: '\\:')
        ],
        defaultValue: '\\:'
      )
      ]
    ),
    Option(
      name: '-f',
      description: 'Specify the same as -b type except for logical page footer lines',
      args: [
        Arg(
        name: 'type',
        suggestions: [
          FigSuggestion(name: 'n')
        ],
        defaultValue: 'n'
      )
      ]
    ),
    Option(
      name: '-h',
      description: 'Specify the same as -b type except for logical page header lines',
      args: [
        Arg(
        name: 'type',
        suggestions: [
          FigSuggestion(name: 'n')
        ],
        defaultValue: 'n'
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Specify the increment value used to number logical page lines',
      args: [
        Arg(
        name: 'incr',
        suggestions: [
          FigSuggestion(name: '1')
        ],
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: '-l',
      args: [
        Arg(
        name: 'num',
        suggestions: [
          FigSuggestion(name: '1')
        ],
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: '-n',
      description: 'Specify the line numbering output format',
      args: [
        Arg(
        name: 'format',
        suggestions: [
          FigSuggestion(
            name: 'ln',
            description: 'Left justified'
          ),
          FigSuggestion(
            name: 'rn',
            description: 'Right justified (leading zeros suppressed)'
          ),
          FigSuggestion(
            name: 'rz',
            description: 'Right justified (leading zeros kept)'
          )
        ],
        defaultValue: 'rz'
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Specify that line numbering should not be restarted at logical page delimiters'
    ),
    Option(
      name: '-s',
      args: [
        Arg(
        name: 'sep',
        suggestions: [
          FigSuggestion(name: '\\t')
        ],
        defaultValue: '\\t'
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Specify the initial value used to number logical page lines; see also the description of the -p option',
      args: [
        Arg(
        name: 'startnum',
        suggestions: [
          FigSuggestion(name: '1'),
          FigSuggestion(name: '2'),
          FigSuggestion(name: '3')
        ],
        defaultValue: '1'
      )
      ]
    ),
    Option(
      name: '-w',
      args: [
        Arg(
        name: 'width',
        suggestions: [
          FigSuggestion(name: '6'),
          FigSuggestion(name: '5'),
          FigSuggestion(name: '4'),
          FigSuggestion(name: '3'),
          FigSuggestion(name: '2'),
          FigSuggestion(name: '1')
        ],
        defaultValue: '6'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'file',
    description: 'File(s) to number',
    template: 'filepaths'
  )
  ]
);
