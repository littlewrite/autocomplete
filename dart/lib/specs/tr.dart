// Auto-generated from TypeScript source: tr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> stringSuggestions = [

  FigSuggestion(
    name: 'a',
    description: 'Any single character',
    priority: 40
  ),
  FigSuggestion(
    name: '\\a',
    description: 'Alert character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\b',
    description: 'Backspace character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\f',
    description: 'Form feed character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\n',
    description: 'Newline character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\r',
    description: 'Carriage return character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\t',
    description: 'Tab character',
    priority: 39
  ),
  FigSuggestion(
    name: '\\v',
    description: 'Vertical tab character',
    priority: 39
  ),
  FigSuggestion(
    name: 'c-c',
    description: 'For non-octal range endpoints represents the range of characters between the range endpoints, inclusive, in ascending order, as defined by the collation sequence',
    priority: 38
  ),
  FigSuggestion(
    name: '[:alnum:]',
    description: 'Alphanumeric characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:alpha:]',
    description: 'Alphabetic characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:blank:]',
    description: 'Blank characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:cntrl:]',
    description: 'Control characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:digit:]',
    description: 'Digit characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:graph:]',
    description: 'Graphic characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:ideogram:]',
    description: 'Ideographic characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:lower:]',
    description: 'Lower-case characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:phonogram:]',
    description: 'Phonographic characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:print:]',
    description: 'Printable characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:punct:]',
    description: 'Punctuation characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:rune:]',
    description: 'Valid characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:space:]',
    description: 'Space characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:special:]',
    description: 'Special characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:upper:]',
    description: 'Upper-case characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[:xdigit:]',
    description: 'Hexadecimal characters',
    priority: 37
  ),
  FigSuggestion(
    name: '[=equiv=]',
    description: 'Represents all characters belonging to the same equivalence class as \'equiv\', ordered by their encoded values',
    priority: 36
  ),
  FigSuggestion(
    name: '[#*n]',
    description: 'Represents \'n\' repeated occurrences of the character represented by \'#\'',
    priority: 35
  )
];

/// Completion spec for `tr` CLI
final FigSpec trSpec = FigSpec(
  name: 'tr',
  description: 'Translate characters',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [

    Option(
      name: '-C',
      description: 'Complement the set of characters in string1, that is \'-C ab\' includes every character except for \'a\' and \'b\''
    ),
    Option(
      name: '-c',
      description: 'Same as \'-C\' but complement the set of values in string1'
    ),
    Option(
      name: '-d',
      description: 'Delete characters in string1 from the input'
    ),
    Option(
      name: '-s',
      description: 'Squeeze multiple occurrences of the characters listed in the last operand (either string1 or string2) in the input into a single instance of the character. This occurs after all deletion and translation is completed'
    ),
    Option(
      name: '-u',
      description: 'Guarantee that any output is unbuffered'
    )
  ],
  args: [

    Arg(
      name: 'string1',
      description: 'Candidate string',
      suggestions: stringSuggestions
    ),
    Arg(
      name: 'string2',
      description: 'Replacment string',
      isOptional: true,
      suggestions: stringSuggestions
    )
  ]
);
