// Auto-generated from TypeScript source: pnpx.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pnpx` CLI
final FigSpec pnpxSpec = FigSpec(
    name: 'pnpx',
    description: 'Execute binaries from npm packages',
    subcommands: [
      Subcommand(
          name: 'create-react-native-app',
          icon: 'https://reactnative.dev/img/pwa/manifest-icon-512.png',
          loadSpec: 'create-react-native-app'),
      Subcommand(
          name: 'react-native',
          icon: 'https://reactnative.dev/img/pwa/manifest-icon-512.png',
          loadSpec: 'react-native'),
      Subcommand(
          name: 'tailwindcss',
          icon: 'https://tailwindcss.com/favicon-32x32.png',
          loadSpec: 'tailwindcss'),
      Subcommand(
          name: 'next',
          icon: 'https://nextjs.org/static/favicon/favicon-16x16.png',
          loadSpec: 'next'),
      Subcommand(
          name: 'gltfjsx',
          icon:
              'https://raw.githubusercontent.com/pmndrs/branding/master/logo.svg',
          loadSpec: 'gltfjsx'),
      Subcommand(
          name: 'prisma',
          icon:
              'https://raw.githubusercontent.com/prisma/docs/main/src/images/favicon-16x16.png',
          loadSpec: 'prisma')
    ],
    options: [
      Option(
          name: ['--package', '-p'],
          description: 'Package to be executed',
          args: [Arg(name: 'package')]),
      Option(
          name: '--cache',
          args: [Arg(name: 'path', template: 'filepaths')],
          description: 'Location of the npm cache'),
      Option(
          name: '--always-spawn',
          description: 'Always spawn a child process to execute the command'),
      Option(
          description: 'Skip installation if a package is missing',
          name: '--no-install'),
      Option(
          args: [Arg(name: 'path', template: 'filepaths')],
          description: 'Path to user npmrc',
          name: '--userconfig'),
      Option(
          name: ['--call', '-c'],
          args: [Arg(name: 'script')],
          description: 'Execute string as if inside `npm run-script`'),
      Option(
          name: ['--shell', '-s'],
          description: 'Shell to execute the command with, if any',
          args: [
            Arg(name: 'shell', suggestions: [
              FigSuggestion(name: 'bash'),
              FigSuggestion(name: 'fish'),
              FigSuggestion(name: 'zsh')
            ])
          ]),
      Option(
          args: [
            Arg(name: 'shell-fallback', suggestions: [
              FigSuggestion(name: 'bash'),
              FigSuggestion(name: 'fish'),
              FigSuggestion(name: 'zsh')
            ])
          ],
          name: '--shell-auto-fallback',
          description:
              'Generate shell code to use pnpx as the "command not found" fallback'),
      Option(
          name: '--ignore-existing',
          description:
              'Ignores existing binaries in \$PATH, or in the localproject. This forces pnpx to do a temporary install and use the latest version'),
      Option(
          name: ['--quiet', '-q'],
          description:
              'Suppress output from pnpx itself. Subcommands will not be affected'),
      Option(
          name: '--npm',
          args: [Arg(name: 'path to binary', template: 'filepaths')],
          description: 'Npm binary to use for internal operations'),
      Option(
          args: [Arg()],
          description: 'Extra node argument when calling a node binary',
          name: ['--node-arg', '-n']),
      Option(description: 'Show version number', name: ['--version', '-v']),
      Option(description: 'Show help', name: ['--help', '-h'])
    ]);
