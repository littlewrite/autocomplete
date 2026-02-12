// Auto-generated from TypeScript source: create-web3-frontend.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `create-web3-frontend` CLI
final FigSpec createWeb3FrontendSpec = FigSpec(
  name: 'create-web3-frontend',
  description: 'Quickly create a Next.js project with wagmi and TailwindCSS ready to go',
  options: [
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
