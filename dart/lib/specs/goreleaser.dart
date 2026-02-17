// Auto-generated from TypeScript source: goreleaser.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `goreleaser` CLI
final FigSpec goreleaserSpec = FigSpec(
  name: 'goreleaser',
  description: 'Deliver Go binaries as fast and easily as possible',
  subcommands: [

    Subcommand(
      name: ['b', 'build'],
      description: 'Builds the current project',
      options: [

        Option(
          name: '--clean',
          description: 'Remove the dist folder before building'
        ),
        Option(
          name: ['--config', '-f'],
          description: 'Load configuration from file',
          args: [
            Arg(
            name: 'config',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--deprecated',
          description: 'Force print the deprecation message - tests only'
        ),
        Option(
          name: '--id',
          description: 'Builds only the specified build ids',
          isRepeatable: true,
          args: [
            Arg(
            name: 'i'
          )
          ]
        ),
        Option(
          name: ['--output', '-o'],
          description: 'Copy the binary to the path after the build. Only taken into account when using --single-target and a single id (either with --id or if configuration only has one build)',
          args: [
            Arg(
            name: 'output',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--parallelism', '-p'],
          description: 'Amount tasks to run concurrently (default: number of CPUs)',
          args: [
            Arg(
            name: 'parallelism',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--rm-dist',
          description: 'Remove the dist folder before building'
        ),
        Option(
          name: '--single-target',
          description: 'Builds only for current GOOS and GOARCH, regardless of what\'s set in the configuration file'
        ),
        Option(
          name: '--skip',
          description: 'Skip the given options (valid options are: before, post-hooks, pre-hooks, validate)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'ski'
          )
          ]
        ),
        Option(
          name: '--skip-before',
          description: 'Skips global before hooks'
        ),
        Option(
          name: '--skip-post-hooks',
          description: 'Skips all post-build hooks'
        ),
        Option(
          name: '--skip-validate',
          description: 'Skips several sanity checks'
        ),
        Option(
          name: '--snapshot',
          description: 'Generate an unversioned snapshot build, skipping all validations'
        ),
        Option(
          name: '--timeout',
          description: 'Timeout to the entire build process',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '30m0'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['c', 'check'],
      description: 'Checks if configuration is valid',
      options: [

        Option(
          name: ['--config', '-f'],
          description: 'Configuration file(s) to check',
          args: [
            Arg(
            name: 'config',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--deprecated',
          description: 'Force print the deprecation message - tests only'
        ),
        Option(
          name: ['--quiet', '-q'],
          description: 'Quiet mode: no output'
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['hc', 'healthcheck'],
      description: 'Checks if needed tools are installed',
      options: [

        Option(
          name: ['--config', '-f'],
          description: 'Configuration file',
          args: [
            Arg(
            name: 'config',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: ['--quiet', '-q'],
          description: 'Quiet mode: no output'
        )
      ]
    ),
    Subcommand(
      name: ['i', 'init'],
      description: 'Generates a .goreleaser.yaml file',
      options: [

        Option(
          name: ['--config', '-f'],
          description: 'Load configuration from file',
          args: [
            Arg(
            name: 'config',
            defaultValue: '.goreleaser.yaml',
            template: ['filepaths']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['schema', 'jsonschema'],
      description: 'Outputs goreleaser\'s JSON schema',
      options: [

        Option(
          name: ['--output', '-o'],
          description: 'Where to save the JSONSchema file',
          args: [
            Arg(
            name: 'output',
            defaultValue: '-',
            template: ['filepaths']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: ['r', 'release'],
      description: 'Releases the current project',
      options: [

        Option(
          name: '--auto-snapshot',
          description: 'Automatically sets --snapshot if the repository is dirty'
        ),
        Option(
          name: '--clean',
          description: 'Removes the dist folder'
        ),
        Option(
          name: ['--config', '-f'],
          description: 'Load configuration from file',
          args: [
            Arg(
            name: 'config',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--deprecated',
          description: 'Force print the deprecation message - tests only'
        ),
        Option(
          name: '--fail-fast',
          description: 'Whether to abort the release publishing on the first error'
        ),
        Option(
          name: ['--parallelism', '-p'],
          description: 'Amount tasks to run concurrently (default: number of CPUs)',
          args: [
            Arg(
            name: 'parallelism',
            defaultValue: ''
          )
          ]
        ),
        Option(
          name: '--release-footer',
          description: 'Load custom release notes footer from a markdown file',
          args: [
            Arg(
            name: 'release-footer',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--release-footer-tmpl',
          description: 'Load custom release notes footer from a templated markdown file (overrides --release-footer)',
          args: [
            Arg(
            name: 'release-footer-tmpl',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--release-header',
          description: 'Load custom release notes header from a markdown file',
          args: [
            Arg(
            name: 'release-header',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--release-header-tmpl',
          description: 'Load custom release notes header from a templated markdown file (overrides --release-header)',
          args: [
            Arg(
            name: 'release-header-tmpl',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--release-notes',
          description: 'Load custom release notes from a markdown file (will skip GoReleaser changelog generation)',
          args: [
            Arg(
            name: 'release-notes',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--release-notes-tmpl',
          description: 'Load custom release notes from a templated markdown file (overrides --release-notes)',
          args: [
            Arg(
            name: 'release-notes-tmpl',
            template: ['filepaths']
          )
          ]
        ),
        Option(
          name: '--rm-dist',
          description: 'Removes the dist folder'
        ),
        Option(
          name: '--skip',
          description: 'Skip the given options (valid options are announce, aur, before, chocolatey, docker, homebrew, ko, nfpm, nix, publish, sbom, scoop, sign, snapcraft, validate, winget)',
          isRepeatable: true,
          args: [
            Arg(
            name: 'ski'
          )
          ]
        ),
        Option(
          name: '--skip-announce',
          description: 'Skips announcing releases (implies --skip=validate)'
        ),
        Option(
          name: '--skip-before',
          description: 'Skips global before hooks'
        ),
        Option(
          name: '--skip-docker',
          description: 'Skips Docker Images/Manifests builds'
        ),
        Option(
          name: '--skip-ko',
          description: 'Skips Ko builds'
        ),
        Option(
          name: '--skip-publish',
          description: 'Skips publishing artifacts (implies --skip=announce)'
        ),
        Option(
          name: '--skip-sbom',
          description: 'Skips cataloging artifacts'
        ),
        Option(
          name: '--skip-sign',
          description: 'Skips signing artifacts'
        ),
        Option(
          name: '--skip-validate',
          description: 'Skips git checks'
        ),
        Option(
          name: '--snapshot',
          description: 'Generate an unversioned snapshot release, skipping all validations and without publishing any artifacts (implies --skip=announce,publish,validate)'
        ),
        Option(
          name: '--timeout',
          description: 'Timeout to the entire release process',
          args: [
            Arg(
            name: 'timeout',
            defaultValue: '30m0'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: ['b', 'build'],
          description: 'Builds the current project'
        ),
        Subcommand(
          name: ['c', 'check'],
          description: 'Checks if configuration is valid'
        ),
        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [

            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        ),
        Subcommand(
          name: ['hc', 'healthcheck'],
          description: 'Checks if needed tools are installed'
        ),
        Subcommand(
          name: ['i', 'init'],
          description: 'Generates a .goreleaser.yaml file'
        ),
        Subcommand(
          name: ['schema', 'jsonschema'],
          description: 'Outputs goreleaser\'s JSON schema'
        ),
        Subcommand(
          name: ['r', 'release'],
          description: 'Releases the current project'
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--debug',
      description: 'Enable verbose mode',
      isPersistent: true
    ),
    Option(
      name: '--verbose',
      description: 'Enable verbose mode',
      isPersistent: true
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
