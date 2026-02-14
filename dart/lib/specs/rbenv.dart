// AI-generated from TypeScript source: rbenv.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator installVersionsGenerator = FigGenerator(
  script: ['rbenv', 'install', '-L'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((name) => FigSuggestion(name: name)).toList();
  },
);

final FigGenerator installedVersionsGenerator = FigGenerator(
  script: ['rbenv', 'versions', '--bare'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((name) => FigSuggestion(name: name)).toList();
  },
);

FigArg versionArg([FigGenerator? generator, bool required = false]) {
  return FigArg(
    name: 'version',
    isOptional: !required,
    generators: generator != null ? [generator] : null,
  );
}

final List<FigOption> versionOptions = [
  FigOption(
    name: ['--unset'],
  ),
];

final FigSpec rbenvSpec = FigSpec(
  name: 'rbenv',
  description:
      'Pick a Ruby version for your application and guarantee that your development environment matches production',
  subcommands: [
    FigSubcommand(
      name: ['commands'],
      description: 'List all available rbenv commands',
      options: [
        FigOption(
          name: ['--sh'],
        ),
        FigOption(
          name: ['--no-sh'],
        ),
      ],
    ),
    FigSubcommand(
      name: ['global'],
      description: 'Set or show the global Ruby version',
      args: [versionArg(installedVersionsGenerator)],
      options: versionOptions,
    ),
    FigSubcommand(
      name: ['install'],
      description: 'Install a Ruby version using ruby-build',
      args: [versionArg(installVersionsGenerator, true)],
      options: [
        FigOption(
          name: ['--version'],
          description: 'Show version of ruby-build',
          args: [versionArg()],
        ),
      ],
    ),
    FigSubcommand(
      name: ['local'],
      description: 'Set or show the local application-specific Ruby version',
      args: [versionArg(installedVersionsGenerator)],
      options: versionOptions,
    ),
    FigSubcommand(
      name: ['rehash'],
      description: 'Rehash rbenv shims (run this after installing executables)',
    ),
    FigSubcommand(
      name: ['shell'],
      description: 'Set or show the shell-specific Ruby version',
      args: [versionArg(installedVersionsGenerator)],
    ),
    FigSubcommand(
      name: ['uninstall'],
      description: 'Uninstall a specific Ruby version',
      options: [
        FigOption(
          name: ['-f'],
          description:
              'If the version does not exist, do not display an error message',
          args: [],
        ),
      ],
    ),
    FigSubcommand(
      name: ['versions'],
      description: 'List installed Ruby versions',
    ),
    FigSubcommand(
      name: ['whence'],
      description: 'List all Ruby versions that contain the given executable',
    ),
    FigSubcommand(
      name: ['which'],
      description: 'Display the full path to an executable',
      args: [
        FigArg(name: 'command'),
      ],
    ),
  ],
);
