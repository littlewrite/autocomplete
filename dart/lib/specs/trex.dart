// AI-generated from TypeScript source: trex.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final FigGenerator dependenciesGenerator = FigGenerator(
  script: ['cat', 'import_map.json'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final deps = jsonDecode(out);
      if (deps is Map && deps.containsKey('imports')) {
        final imports = deps['imports'] as Map;
        return imports.entries.map((entry) {
          return FigSuggestion(
            name: entry.key,
            icon: '🦖',
            description: entry.value,
          );
        }).toList();
      }
    } catch (e) {
      return [];
    }
    return [];
  },
);

final FigGenerator scriptsGenerator = FigGenerator(
  script: ['cat', 'run.json'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final scriptsObj = jsonDecode(out);
      if (scriptsObj is Map && scriptsObj.containsKey('scripts')) {
        final scripts = scriptsObj['scripts'] as Map;
        return scripts.entries.map((entry) {
          return FigSuggestion(
            name: entry.key,
            icon: '🚀',
            description: 'trex script',
          );
        }).toList();
      }
    } catch (e) {
      return [];
    }
    return [];
  },
);

final FigOption versionOption = FigOption(
  name: ['-v', '--version'],
  description: 'Print version',
);

final FigOption mapOption = FigOption(
  name: ['-m', '--map'],
  description: 'Install package from deno.land',
  args: [
    FigArg(
      name: 'package name',
      description: 'Deno.land package name',
    ),
  ],
);

final FigOption nestOption = FigOption(
  name: ['-n', '--nest'],
  description: 'Install package from nest.land',
  args: [
    FigArg(
      name: 'package name',
      description: 'Nest.land package name',
    ),
  ],
);

final FigOption pkgOption = FigOption(
  name: ['-p', '--pkg'],
  description: 'Install package from some repository',
  args: [
    FigArg(
      name: 'repository',
      description: '[user]/[repo or repo@tag/branch]/[path/to/file]',
    ),
    FigArg(
      name: 'Package Name',
      description: 'Prefered package alias',
    ),
  ],
);

final FigOption customOption = FigOption(
  name: ['-c', '--custom'],
  description: 'Install custom package',
  args: [
    FigArg(
      name: 'custom package',
      description:
          'Install a package from a custom URL source, eg: React=https://dev.jspm.io/react/index.js',
    ),
  ],
);

final FigSpec trexSpec = FigSpec(
  name: 'trex',
  description: 'Advanced package management for deno, based on import_map.json',
  subcommands: [
    FigSubcommand(
      name: ['i', 'install'],
      description: 'Install a package',
      options: [mapOption, nestOption, pkgOption],
    ),
    FigSubcommand(
      name: ['delete'],
      description: 'Delete a package',
      args: [
        FigArg(
          name: 'package name',
          generators: [dependenciesGenerator],
          filterStrategy: 'fuzzy',
        ),
      ],
    ),
    FigSubcommand(
      name: ['upgrade'],
      description: 'Upgrade trex',
      options: [
        FigOption(
          name: ['--canary'],
          description: 'Install from dev branch',
        ),
      ],
    ),
    FigSubcommand(
      name: ['tree'],
      description: 'View dependency tree',
    ),
    FigSubcommand(
      name: ['run'],
      description: 'Run a script alias in a file run.json',
      options: [
        FigOption(
          name: ['-w', '--watch'],
          description: 'Use reboot script alias protocol (rsap)',
        ),
        FigOption(
          name: ['-wv'],
          description: 'Verbose output in --watch mode (rsap)',
        ),
      ],
      args: [
        FigArg(
          name: 'script alias',
          generators: [scriptsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: ['purge'],
      description: 'Remove a package or url from cache',
      args: [
        FigArg(
          name: 'package | url',
          generators: [dependenciesGenerator],
          filterStrategy: 'fuzzy',
        ),
      ],
    ),
    FigSubcommand(
      name: ['ls'],
      description: 'Shows the list of installed packages',
    ),
    FigSubcommand(
      name: ['exec'],
      description: 'Execute a cli tool with out install then',
      options: [
        FigOption(
          name: ['--perms'],
          description: 'Specify cli permisions',
        ),
      ],
      args: [FigArg(name: 'cli tool')],
    ),
    FigSubcommand(
      name: ['check'],
      description: 'Check deno.land [std/x] dependencies updates',
      options: [
        FigOption(
          name: ['-f', '--fix'],
          description: 'Update outdated dependencies',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Print help info',
      isPersistent: true,
    ),
    versionOption,
    customOption,
  ],
);
