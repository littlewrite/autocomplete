import 'package:autocomplete/src/spec.dart';
import 'gcc.dart';
import 'clang.dart';

/// Completion spec for `g++` CLI
final FigSpec gppSpec = FigSpec(
  name: 'g++',
  description: 'The default C++ compiler for most linux distributions',
  args: gccSpec.args,
  parserDirectives: gccSpec.parserDirectives,
  options: [
    ...(gccSpec.options ?? []).where((option) => option.name != '-std'),
    Option(
      name: '-std',
      description: 'Language standard to compile for',
      args: [
        Arg(
          name: 'value',
          suggestions: stdCPPSuggestions,
        ),
      ],
      requiresSeparator: true,
    ),
  ],
);
