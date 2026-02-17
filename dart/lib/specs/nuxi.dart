// Auto-generated from TypeScript source: nuxi.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> mainNuxiOptions = [

  Option(
    name: '--help',
    description: 'Show help',
    isPersistent: true
  )
];

/// Completion spec for `nuxi` CLI
final FigSpec nuxiSpec = FigSpec(
  name: 'nuxi',
  description: 'Nuxt 3 CLI',
  icon: 'https://v3.nuxtjs.org/icon.png',
  options: mainNuxiOptions
);
