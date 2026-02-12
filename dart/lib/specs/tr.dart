// Auto-generated from TypeScript source: tr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

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
      description: 'Candidate string'
    ),
    Arg(
      name: 'string2',
      description: 'Replacment string',
      isOptional: true
    )
  ]
);
