// Auto-generated from TypeScript source: tailwindcss.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tailwindcss` CLI
final FigSpec tailwindcssSpec = FigSpec(
  name: 'tailwindcss',
  description: 'Tailwindcss CLI tools',
  icon: 'https://tailwindcss.com/favicons/favicon-32x32.png',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Creates Tailwind config file. Default: tailwind.config.js',
      args: [
        Arg(
        name: 'filename',
        isOptional: true
      )
      ],
      options: [
        Option(
          name: ['-p', '--postcss'],
          description: 'Initialize a \'postcss.config.js\' file'
        ),
        Option(
          name: ['-f', '--full'],
          description: 'Initialize a full \'tailwind.config.js\' file'
        )
      ]
    ),
    Subcommand(
      name: 'build',
      description: 'Build CSS file'
    )
  ]
);
