// Auto-generated from TypeScript source: clang++.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `clang++` CLI
final FigSpec clangSpec = FigSpec(
  name: 'clang++',
  description: 'Clang LLVM compiler for C++',
  options: [
    Option(
      name: '-std',
      description: 'Language standard to compile for',
      args: [
        Arg(
        name: 'value',
        suggestions: [
          FigSuggestion(
            name: 'cuda',
            description: 'NVIDIA CUDA(tm)'
          ),
          FigSuggestion(
            name: 'hip',
            description: 'HIP'
          )
        ]
      )
      ]
    )
  ]
);
