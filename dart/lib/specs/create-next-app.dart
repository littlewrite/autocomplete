// Auto-generated from TypeScript source: create-next-app.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-next-app` CLI
final FigSpec createNextAppSpec = FigSpec(
  name: 'create-next-app',
  icon: 'https://nextjs.org/static/favicon/favicon-16x16.png',
  options: [
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['--ts', '--typescript'],
      description: 'Initialize as a TypeScript project'
    ),
    Option(
      name: '--use-npm',
      description: 'Explicitly tell the CLI to bootstrap the app using npm'
    ),
    Option(
      name: '--use-pnpm',
      description: 'Explicitly tell the CLI to bootstrap the app using pnpm'
    ),
    Option(
      name: ['-e', '--example'],
      description: 'An example to bootstrap the app with. You can use an example name from the official Next.js repo or a GitHub URL. The URL can use any branch and/or subdirectory',
      args: [
        Arg(
        name: 'name|github-ur'
      )
      ]
    ),
    Option(
      name: '--example-path',
      description: 'In a rare case, your GitHub URL might contain a branch name with a slash (e.g. bug/fix-1) and the path to the example (e.g. foo/bar). In this case, you must specify the path to the example separately: --example-path foo/bar',
      args: [
        Arg(
        name: 'path-to-exampl'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ],
  args: [
    Arg(
    name: 'project-directory',
    template: 'folder'
  )
  ]
);
