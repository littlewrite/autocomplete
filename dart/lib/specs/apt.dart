// AI-generated from TypeScript source: apt.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator _packages = FigGenerator(
  trigger: (String current, String previous) {
    return current.isEmpty || (previous.isEmpty && current.isNotEmpty);
  },
  script: (List<String> tokens) {
    final finalToken = tokens.isNotEmpty ? tokens.last : '';
    if (finalToken.isEmpty) {
      return [];
    }
    return ['apt', 'list'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final finalToken = tokens != null && tokens.isNotEmpty ? tokens.last : '';
    return out
        .trim()
        .split('\n')
        .where((name) => name.startsWith(finalToken))
        .map((name) =>
            name.contains('/') ? name.substring(0, name.indexOf('/')) : name)
        .map((name) => FigSuggestion(
              name: name,
              description: 'Package',
              icon: '📦',
              priority: 50,
            ))
        .toList();
  },
);

final FigGenerator _installedPackages = FigGenerator(
  script: ['apt', 'list', '--installed'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.trim().split('\n').map((b) {
      final name = b.contains('/') ? b.substring(0, b.indexOf('/')) : b;
      return FigSuggestion(
        name: name,
        description: 'Package',
        icon: '📦',
      );
    }).toList();
  },
);

final FigGenerator _upgradablePackages = FigGenerator(
  script: ['apt', 'list', '--upgradable'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.trim().split('\n').map((b) {
      final name = b.contains('/') ? b.substring(0, b.indexOf('/')) : b;
      return FigSuggestion(
        name: name,
        description: 'Package',
        icon: '📦',
      );
    }).toList();
  },
);

final List<Option> _yesNoOptions = [
  Option(
    name: '-y',
    description: 'Assume yes to all prompts',
    exclusiveOn: ['--assume-no'],
  ),
  Option(
    name: '--assume-no',
    description: 'Assume no to all prompts',
    exclusiveOn: ['-y'],
  ),
];

final List<Option> _installationOptions = [
  Option(
    name: ['-d', '--download-only'],
    description:
        'For any operation that would download packages, download them, but do nothing else',
  ),
  Option(
    name: '--no-download',
    description:
        'Do not download packages, attempt to use already downloaded packages',
  ),
];

final List<Option> _simulate = [
  Option(
    name: ['-s', '--simulate'],
    description:
        'Simulate running this command and show it\'s output, without actually changing anything',
  ),
];

final FigSpec aptSpec = FigSpec(
  name: 'apt',
  description: 'Package manager for Debian-based Linux distributions',
  subcommands: [
    Subcommand(
      name: 'update',
      description: 'Update the package database',
      options: _yesNoOptions,
    ),
    Subcommand(
      name: 'upgrade',
      description: 'Install all available upgrades',
      args: [
        Arg(
          name: 'package',
          description: 'Package(s) to upgrade',
          isVariadic: true,
          isOptional: true,
          generators: [_upgradablePackages],
        )
      ],
      options: [..._installationOptions, ..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'full-upgrade',
      description:
          'Install available upgrades, removing currently installed packages if needed to upgrade the system as a whole',
      options: [..._installationOptions, ..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'install',
      description: 'Install package(s)',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to install',
          isVariadic: true,
          generators: [
            _packages,
            FigGenerator(
              template: 'filepaths',
              filterTemplateSuggestions: (suggestions) {
                return suggestions.where((s) {
                  final name = s.nameSingle;
                  return name != null && name.endsWith('.deb');
                }).toList();
              },
            ),
          ],
        )
      ],
      options: [
        ..._installationOptions,
        ..._yesNoOptions,
        ..._simulate,
        Option(
          name: '--reinstall',
          description: 'Reinstall the package if it is already installed',
        ),
        Option(
          name: ['-f', '--fix-broken'],
          description: 'Attempt to fix broken packages',
        ),
      ],
    ),
    Subcommand(
      name: 'reinstall',
      description: 'Reinstall package(s)',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to reinstall',
          isVariadic: true,
          generators: [_installedPackages],
        )
      ],
      options: [..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'remove',
      description: 'Remove package(s)',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to remove',
          isVariadic: true,
          generators: [_installedPackages],
        )
      ],
      options: [
        ..._yesNoOptions,
        ..._simulate,
        Option(
          name: ['-f', '--fix-broken'],
          description: 'Attempt to fix broken packages',
        ),
      ],
    ),
    Subcommand(
      name: 'purge',
      description: 'Remove package(s) and their configuration files',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to purge',
          isVariadic: true,
          generators: [_installedPackages],
        )
      ],
      options: [..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: ['autoremove', 'auto-remove'],
      description: 'Remove unused packages',
      options: [..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'list',
      description: 'List packages',
      options: [
        Option(
          name: '--installed',
          description: 'List installed packages',
        ),
        Option(
          name: '--upgradable',
          description: 'List upgradable packages',
        ),
      ],
    ),
    Subcommand(
      name: 'search',
      description: 'Search for packages',
      args: [
        Arg(
          name: 'query',
          description: 'The query to search for',
        )
      ],
      options: _yesNoOptions,
    ),
    Subcommand(
      name: 'show',
      description: 'Show package details',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to show',
          generators: [_packages],
        )
      ],
    ),
    Subcommand(
      name: 'satisfy',
      description: 'Satisfy package dependencies',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to satisfy',
          isVariadic: true,
          generators: [_packages],
        )
      ],
      options: [..._installationOptions, ..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'clean',
      description: 'Remove downloaded package files',
      options: [..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'edit-sources',
      description: 'Edit the list of package sources',
      options: _yesNoOptions,
    ),
    Subcommand(
      name: 'source',
      description: 'Fetch package source files',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to get source files for',
          isVariadic: true,
          generators: [_packages],
        )
      ],
      options: [
        ..._installationOptions,
        ..._yesNoOptions,
        ..._simulate,
        Option(
          name: '--compile',
          description:
              'Compile the package to a binary using dpkg-buildpackage',
        ),
        Option(
          name: '--only-source',
        ),
        Option(
          name: '--host-architecture',
          description: 'The architecture to build for',
          args: [
            Arg(
              name: 'architecture',
              description: 'The architecture to build for',
            )
          ],
        ),
      ],
    ),
    Subcommand(
      name: 'build-dep',
      description:
          'Install/remove packages in an attempt to satisfy the build dependencies for a source package',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to build dependencies for',
          generators: [_packages],
        )
      ],
      options: [
        ..._installationOptions,
        ..._yesNoOptions,
        ..._simulate,
        Option(
          name: '--host-architecture',
          description: 'The architecture to build for',
          args: [
            Arg(
              name: 'architecture',
              description: 'The architecture to build for',
            )
          ],
        ),
        Option(
          name: '--only-source',
        ),
      ],
    ),
    Subcommand(
      name: 'download',
      description: 'Download package binary into the current directory',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to download',
          generators: [_packages],
        )
      ],
      options: [..._installationOptions, ..._yesNoOptions],
    ),
    Subcommand(
      name: ['autoclean', 'auto-clean'],
      description:
          'Like clean, but only removes package files that can no longer be downloaded',
      options: [..._installationOptions, ..._yesNoOptions, ..._simulate],
    ),
    Subcommand(
      name: 'changelog',
      description: 'Show the changelog for a package',
      args: [
        Arg(
          name: 'package',
          description: 'The package you want to show the changelog for',
          generators: [_packages],
          isVariadic: true,
        )
      ],
      options: [..._installationOptions, ..._yesNoOptions],
    ),
  ],
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Print help message and exit',
      isPersistent: true,
      priority: 40,
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print version information and exit',
      isPersistent: true,
      priority: 40,
    ),
  ],
);
