// AI-generated completion spec for `c++` CLI

import 'package:autocomplete/src/spec.dart';
import 'clang++.dart';

/// Completion spec for `c++` CLI
final FigSpec cppSpec = FigSpec(
  name: 'c++',
  description: 'C++ compiler',
  args: clangppSpec.args,
  parserDirectives: clangppSpec.parserDirectives,
  options: clangppSpec.options,
);
