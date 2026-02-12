// Auto-generated from TypeScript source: copypath.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `copypath` CLI
final FigSpec copypathSpec = FigSpec(
  name: 'copypath',
  description: 'Oh-My-Zsh plugin that copies the path of given directory or file to the clipboard',
  args: [
    Arg(
    name: 'path',
    isOptional: true,
    template: ['filepaths', 'folders']
  )
  ]
);
