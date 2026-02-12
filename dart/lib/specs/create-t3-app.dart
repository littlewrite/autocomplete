// Auto-generated from TypeScript source: create-t3-app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-t3-app` CLI
final FigSpec createT3AppSpec = FigSpec(
  name: 'create-t3-app',
  description: 'A CLI for creating web applications with the t3 stack',
  icon: 'https://create.t3.gg/favicon.svg',
  options: [
    Option(
      name: '--noGit',
      description: 'Explicitly tell the CLI to not initialize a new git repo in the project (default: false)'
    ),
    Option(
      name: '--noInstall',
      description: 'Explicitly tell the CLI to not run the package manager\'s install command (default: false)'
    ),
    Option(
      name: ['-y', '--default'],
      priority: 76,
      description: 'Bypass the CLI and use all default options to bootstrap a new t3-app (default: false)'
    ),
    Option(
      name: '--CI',
      description: 'Boolean value if we\'re running in CI (default: false)',
      priority: 49
    ),
    Option(
      name: '--tailwind',
      description: 'Experimental: Boolean value if we should install Tailwind CSS. Must be used in conjunction with `--CI`',
      args: [
        Arg(
        name: 'boolean',
        suggestions: [
          FigSuggestion(
            name: 'true',
            description: 'Install Tailwind CSS'
          ),
          FigSuggestion(
            name: 'false',
            description: 'Do not install Tailwind CSS'
          )
        ]
      )
      ],
      dependsOn: ['--CI'],
      priority: 49
    ),
    Option(
      name: '--nextAuth',
      description: 'Experimental: Boolean value if we should install NextAuth.js. Must be used in conjunction with `--CI`',
      args: [
        Arg(
        name: 'boolean',
        suggestions: [
          FigSuggestion(
            name: 'true',
            description: 'Install NextAuth.js'
          ),
          FigSuggestion(
            name: 'false',
            description: 'Do not install NextAuth.js'
          )
        ]
      )
      ],
      dependsOn: ['--CI'],
      priority: 49
    ),
    Option(
      name: '--prisma',
      description: 'Experimental: Boolean value if we should install Prisma. Must be used in conjunction with `--CI`',
      args: [
        Arg(
        name: 'boolean',
        suggestions: [
          FigSuggestion(
            name: 'true',
            description: 'Install Prisma'
          ),
          FigSuggestion(
            name: 'false',
            description: 'Do not install Prisma'
          )
        ]
      )
      ],
      dependsOn: ['--CI'],
      priority: 49
    ),
    Option(
      name: '--trpc',
      description: 'Experimental: Boolean value if we should install tRPC. Must be used in conjunction with `--CI`',
      args: [
        Arg(
        name: 'boolean',
        suggestions: [
          FigSuggestion(
            name: 'true',
            description: 'Install tRPC'
          ),
          FigSuggestion(
            name: 'false',
            description: 'Do not install tRPC'
          )
        ]
      )
      ],
      dependsOn: ['--CI'],
      priority: 49
    ),
    Option(
      name: ['-i', '--import-alias'],
      description: 'Explicitly tell the CLI to use a custom import alias',
      args: [
        Arg(
        name: 'alias',
        suggestions: [
          FigSuggestion(
            name: '~/',
            description: 'Use the ~/ alias'
          ),
          FigSuggestion(
            name: '@/',
            description: 'Use the @/ alias'
          )
        ]
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Display the version number'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help for command'
    )
  ]
);
