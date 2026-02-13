// AI-generated from TypeScript source: clang++.ts

import 'package:autocomplete/src/spec.dart';
import 'clang.dart';

/// Completion spec for `clang++` CLI
final FigSpec clangppSpec = FigSpec(
  name: 'clang++',
  description: 'Clang LLVM compiler for C++',
  args: clangSpec.args,
  parserDirectives: clangSpec.parserDirectives,
  options: [
    ...(clangSpec.options ?? []).where((option) => option.name != '-std'),
    Option(
      name: '-std',
      description: 'Language standard to compile for',
      args: [
        Arg(
          name: 'value',
          suggestions: [
            ...stdCPPSuggestions,
            ...stdOpenCLCPPSuggestions,
            FigSuggestion(name: 'cuda', description: 'NVIDIA CUDA(tm)'),
            FigSuggestion(name: 'hip', description: 'HIP'),
            ...stdHLSLSuggestions
          ],
        ),
      ],
      requiresSeparator: true,
    ),
  ],
);
