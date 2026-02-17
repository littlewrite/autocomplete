// AI-generated from TypeScript source: src/fvm.ts
// Generated at: 2026-02-12

import 'package:autocomplete/src/spec.dart';

final RegExp semverRegex = RegExp(
    r'((([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?)(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?)',
    multiLine: true);

final List<FigOption> globalOptions = [
  FigOption(
    name: ['-h', '--help'],
    description: 'Print this usage information',
  ),
];

final FigSpec fvmSpec = FigSpec(
  name: 'fvm',
  description:
      'Flutter Version Management: A cli to manage Flutter SDK versions',
  options: [
    ...globalOptions,
    FigOption(
      name: ['--verbose'],
      description: 'Print verbose output',
    ),
    FigOption(
      name: ['--version'],
      description: 'Current FVM version',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'config',
      description: 'Set configuration for FVM',
      options: [
        ...globalOptions,
        FigOption(
          name: ['-c', '--cache-path'],
          description:
              'Set the path which FVM will cache the version. Priority over FVM_HOME',
          args: [
            FigArg(
              name: 'path',
              description: 'Path to the Flutter versions cache',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['-s', '--skip-setup', '--no-skip-setup'],
          description: 'Skip setup after a version install',
        ),
        FigOption(
          name: ['-g', '--git-cache', '--no-git-cache'],
          description:
              'ADVANCED: Will cache a local version of Flutter repo for faster version install',
        ),
      ],
    ),
    FigSubcommand(
      name: 'dart',
      description: 'Proxies Dart commands',
    ),
    FigSubcommand(
      name: 'doctor',
      description:
          'Shows information about environment, and project configuration',
    ),
    FigSubcommand(
      name: 'flavor',
      description: 'Switches between different project flavors',
      args: [
        FigArg(
          name: 'flavor-name',
          description: 'The flavor to switch to',
        ),
      ],
    ),
    FigSubcommand(
      name: 'flutter',
      description: 'Proxies Flutter commands',
      loadSpec: 'flutter',
    ),
    FigSubcommand(
      name: 'global',
      description: 'Sets Flutter SDK version as global',
      args: [
        FigArg(
          name: 'version',
          description: 'Flutter SDK to set for global flutter command',
        ),
      ],
    ),
    FigSubcommand(
      name: 'install',
      description: 'Installs Flutter SDK version',
      args: [
        FigArg(
          name: 'version',
          suggestions: [
            FigSuggestion(
              name: 'stable',
              description: 'Latest stable release of Flutter',
              priority: 100,
            ),
            FigSuggestion(
              name: 'beta',
              description: 'Latest beta release of Flutter',
              priority: 99,
            ),
            FigSuggestion(
              name: 'dev',
              description: 'Latest dev release of Flutter (master)',
              priority: 98,
            ),
          ],
          generators: [
            FigGenerator(
              script: ['fvm', 'releases'],
              postProcess: (String out, [List<String>? tokens]) {
                final matches = semverRegex.allMatches(out);
                final matchesSet =
                    matches.map((m) => m.group(0)!).toSet().toList();
                return matchesSet.reversed
                    .map((match) => FigSuggestion(name: match))
                    .toList();
              },
            ),
          ],
        ),
      ],
      options: [
        ...globalOptions,
        FigOption(
          name: ['-s', '--skip-setup'],
          description: 'Skips Flutter setup after install',
        ),
      ],
    ),
    FigSubcommand(
      name: 'list',
      description: 'Lists installed Flutter SDK versions',
      options: globalOptions,
    ),
    FigSubcommand(
      name: 'releases',
      description: 'View all Flutter SDK releases available for install',
      options: globalOptions,
    ),
    FigSubcommand(
      name: 'remove',
      description: 'Removes Flutter SDK version',
      args: [
        FigArg(
          name: 'version',
          description: 'The installed Flutter version to remove',
        ),
      ],
      options: [
        ...globalOptions,
        FigOption(
          name: ['--force'],
          description: 'Skips version global check',
        ),
      ],
    ),
    FigSubcommand(
      name: 'spawn',
      description: 'Spawn a Flutter SDK version command',
      args: [
        FigArg(
          name: 'version',
          description: 'The Flutter version from which to spawn a command',
        ),
      ],
    ),
    FigSubcommand(
      name: 'use',
      description: 'Sets a Flutter SDK version to be used in a project',
      args: [
        FigArg(
          name: 'version',
          description: 'The Flutter SDK version to use',
        ),
      ],
      options: [
        ...globalOptions,
        FigOption(
          name: ['-f', '--force'],
          description: 'Skips command guards that does Flutter project checks',
        ),
        FigOption(
          name: ['-p', '--pin'],
          description:
              'If version provided is a channel. Will pin the latest release of the channel',
        ),
        FigOption(
          name: ['--flavor'],
          description: 'Sets version for a project flavor',
        ),
      ],
    ),
  ],
);
