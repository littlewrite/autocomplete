// AI-generated from TypeScript source: mkdocs.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

Option help(String name) => Option(
      name: ['-h', '--help'],
      description: 'help for $name',
    );

final List<Option> commonOptions = [
  Option(
      name: ['-f', '--config-file'],
      description: 'Provide a specific MkDocs config',
      args: [Arg(template: 'filepaths')]),
  Option(
      name: ['-s', '--strict'],
      description:
          'Enable strict mode. This will cause MkDocs to abort the build on any warnings'),
  Option(
      name: ['-t', '--theme'],
      description: 'The theme to use when building your documentation',
      args: [Arg(name: 'theme')]),
  Option(
      name: '--use-directory-urls',
      description: 'Use directory URLs when building pages (the default)'),
  Option(
      name: '--no-directory-urls',
      description: 'Don\'t use directory URLs when building pages')
];

final List<Option> globalOptions = [
  Option(name: ['-q', '--quiet'], description: 'Silence warnings'),
  Option(name: ['-v', '--verbose'], description: 'Enable verbose output')
];

/// Completion spec for `mkdocs` CLI
final FigSpec mkdocsSpec = FigSpec(
    name: 'mkdocs',
    description: 'Project documentation with Markdown',
    subcommands: [
      Subcommand(
          name: 'build',
          description: 'Build the MkDocs documentation',
          options: [
            help('build'),
            ...globalOptions,
            ...commonOptions,
            Option(
                name: ['-c', '--clean'],
                description:
                    'Remove old files from the site directory before building (the default)'),
            Option(
                name: '--dirty',
                description:
                    'Only rebuild pages that have been modified since last build'),
            Option(
                name: ['-d', '--site-dir'],
                description:
                    'The directory to output the result of the documentation build',
                args: [Arg(template: 'folders')])
          ]),
      Subcommand(
          name: 'gh-deploy',
          description: 'Deploy your documentation to GitHub Pages',
          options: [
            help('gh-deploy'),
            ...globalOptions,
            ...commonOptions,
            Option(
                name: ['-c', '--clean'],
                description:
                    'Remove old files from the site directory before building (the default)'),
            Option(
                name: '--dirty',
                description:
                    'Only rebuild pages that have been modified since last build'),
            Option(
                name: ['-m', '--message'],
                description:
                    'A commit message to use when committing to the GitHub Pages remote branch. Commit {sha} and MkDocs {version} are available as expansions',
                args: [Arg(name: 'message')]),
            Option(
                name: ['-b', '--remote-branch'],
                description:
                    'The remote branch to commit to for GitHub Pages. This overrides the value specified in config',
                args: [Arg(name: 'branch name')]),
            Option(
                name: ['-r', '--remote-name'],
                description:
                    'The remote name to commit to for GitHub Pages. This overrides the value specified in config',
                args: [Arg(name: 'remote name')]),
            Option(
                name: '--force',
                description: 'Force the push to the repository',
                isDangerous: true),
            Option(
                name: '--no-history',
                description:
                    'Replace the whole Git history with one new commit',
                isDangerous: true),
            Option(
                name: '--ignore-version',
                description:
                    'Ignore check that build is not being deployed with an older version of MkDocs'),
            Option(
                name: '--shell', description: 'Use the shell when invoking Git')
          ]),
      Subcommand(
          name: 'new',
          description: 'Create a new MkDocs project',
          options: [help('new'), ...globalOptions],
          args: [Arg(template: 'folders')]),
      Subcommand(
          name: 'serve',
          description: 'Run the builtin development server',
          options: [
            help('serve'),
            ...globalOptions,
            ...commonOptions,
            Option(
                name: ['-a', '--dev-addr'],
                description:
                    'IP address and port to serve documentation locally (default: localhost:8000)',
                args: [Arg(name: 'IP:PORT')]),
            Option(
                name: '--live-reload',
                description:
                    'Enable the live reloading in the development server (this is the default)'),
            Option(
                name: '--no-reload',
                description:
                    'Disable the live reloading in the development server'),
            Option(
                name: '--dirtyreload',
                description:
                    'Enable the live reloading in the development server, but only re-build files that have changed'),
            Option(
                name: '--watch-theme',
                description:
                    'Include the theme in list of files to watch for live reloading. Ignored when live reload is not used'),
            Option(
                name: ['-w', '--watch'],
                description:
                    'A directory or file to watch for live reloading. Can be supplied multiple times',
                args: [
                  Arg(template: ['folders', 'filepaths'])
                ])
          ])
    ],
    options: [
      Option(name: ['-h', '--help'], description: 'Show help message and exit'),
      Option(
          name: ['-V', '--version'], description: 'Show the version and exit')
    ]);
