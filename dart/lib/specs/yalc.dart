// AI-generated from TypeScript source: yalc.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator generatePackages = FigGenerator(
  script: [
    'bash',
    '-c',
    "command find ~/.yalc/packages -maxdepth 4 -iname 'package.json'",
  ],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .map((path) {
          final pathArr = path.split('/');
          final packagesIndex = pathArr.indexOf('packages');
          if (packagesIndex == -1 || pathArr.length < 2) return null;
          
          final subPath = pathArr.sublist(
            packagesIndex + 1,
            pathArr.length - 2,
          );
          final version = pathArr[pathArr.length - 2];
          return '${subPath.join('/')}@$version';
        })
        .whereType<String>()
        .map((path) => FigSuggestion(
              name: path,
              icon: '📦',
              description: path,
            ))
        .toList();
  },
);

final FigGenerator getRemovablePackages = FigGenerator(
  script: ['ls', '.yalc'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').map((path) => FigSuggestion(
          name: path,
          icon: '📦',
          description: path,
        )).toList();
  },
);

final FigSpec yalcSpec = FigSpec(
  name: 'yalc',
  description: 'Work with yarn/npm packages locally like a boss',
  subcommands: [
    FigSubcommand(
      name: 'publish',
      description:
          'Copy all the files that should be published in remote NPM registry',
      options: [
        FigOption(
          name: ['--push'],
          description:
              'Publish package to the store and propagate all changes to existing yalc package installations',
        ),
        FigOption(
          name: ['--no-scripts'],
          description: 'Publish without running scripts',
        ),
        FigOption(
          name: ['--no-sig'],
          description:
              'Disable adding hash signature of all files when copying package content',
        ),
        FigOption(
          name: ['--content'],
          description: 'Show included files in the published package',
        ),
        FigOption(
          name: ['--no-workspace-resolve'],
          description: "Do not resolve 'workspace:' protocol in dependencies",
        ),
        FigOption(
          name: ['--private'],
          description: 'Force publishing of private package',
        ),
      ],
    ),
    FigSubcommand(
      name: 'push',
      description:
          'Publish your package to the store and propagate all changes to existing yalc package installations',
    ),
    FigSubcommand(
      name: 'add',
      description: 'Copy the current version from the store to your project',
      args: [
        FigArg(
          name: 'package',
          description: 'The package you want to add',
          generators: [generatePackages],
        ),
      ],
      options: [
        FigOption(
          name: ['--link'],
          description: "Add a 'link:' dependency instead of 'file:'",
        ),
        FigOption(
          name: ['--dev'],
          description: 'Add yalc package to dev dependencies',
        ),
        FigOption(
          name: ['--pure'],
          description: "Do not touch 'package.json' or 'node_modules'",
        ),
        FigOption(
          name: ['--workspace', '-W'],
          description: "Add dependency with 'workspace:' protocol",
        ),
      ],
    ),
    FigSubcommand(
      name: 'link',
      description:
          "Alterative to 'add', instead using local '.yalc' as symlink source",
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update package(s)',
      args: [
        FigArg(
          name: 'package',
          description: 'The package to update',
          isOptional: true,
          generators: [generatePackages],
        ),
      ],
      options: [
        FigOption(
          name: ['--update', '--upgrade', '--up'],
          description: "Run package manager's update command for packages",
        ),
      ],
    ),
    FigSubcommand(
      name: 'remove',
      description: "Remove package info from 'package.json' & 'yalc.lock'",
      args: [
        FigArg(
          name: 'package',
          description: 'The package you want to remove',
          isOptional: true,
          generators: [getRemovablePackages],
        ),
      ],
      options: [
        FigOption(
          name: ['--all'],
          description: 'Remove all packages from project',
        ),
      ],
    ),
    FigSubcommand(
      name: 'installations',
      subcommands: [
        FigSubcommand(
          name: 'clean',
          description: 'Unpublish a package published with yalc publish',
          args: [
            FigArg(
              name: 'package',
              generators: [generatePackages],
            ),
          ],
        ),
        FigSubcommand(
          name: 'show',
          description:
              'Show all packages to which chosen package has been added',
          args: [
            FigArg(
              name: 'package',
              generators: [generatePackages],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'dir',
      description: 'Show yalc system directory',
    ),
    FigSubcommand(
      name: 'check',
      description: "Check 'package.json' for yalc packages",
    ),
    FigSubcommand(
      name: 'restore',
      description: 'Restore retreated packages',
    ),
    FigSubcommand(
      name: 'retreat',
      description:
          'Remove packages from project, but leave in lock file (to be restored later)',
    ),
  ],
  options: [
    FigOption(
      name: ['--help'],
      description: 'Show help for yalc',
    ),
    FigOption(
      name: ['--no-colors'],
      description: 'Disable colors',
    ),
    FigOption(
      name: ['--quiet'],
      description: 'Fully disable output (except errors)',
    ),
  ],
);
