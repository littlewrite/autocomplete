// AI-generated from TypeScript source: pkgutil.ts
import 'package:autocomplete/src/spec.dart';

List<FigSuggestion> _postProcessPkgFilenames(String out,
    [String pathPrefix = '']) {
  final names = <String>{};
  out.split('\n').forEach((line) {
    if (line.startsWith(pathPrefix)) {
      final result = line.replaceFirst(pathPrefix, '').split('/')[0];
      if (result.isNotEmpty) {
        names.add('$result/');
      }
    }
  });

  return names.map((name) => FigSuggestion(name: name)).toList();
}

final Map<String, FigGenerator> pkgutilGenerators = {
  // BOM files
  'bom': FigGenerator(
    script: ['find', '.', '-type', 'f', '-name', '*.bom', '-maxdepth', '1'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .map((filepath) => FigSuggestion(
                name: filepath.replaceFirst('./', ''),
              ))
          .toList();
    },
  ),
  // Installed package ids
  'packageIds': FigGenerator(
    script: ['pkgutil', '--pkgs'],
    splitOn: '\n',
  ),
  // .pkg files
  'pkgs': FigGenerator(
    script: ['find', '.', '-type', 'f', '-name', '*.pkg', '-maxdepth', '1'],
    postProcess: (String out, [List<String>? tokens]) {
      return out
          .split('\n')
          .map((filepath) => FigSuggestion(
                name: filepath.replaceFirst('./', ''),
              ))
          .toList();
    },
  ),
  // group ids
  'groupIds': const FigGenerator(
    script: ['pkgutil', '--groups'],
    splitOn: '\n',
  ),
  // filenames within a package
  'pkgFilenames': FigGenerator(
    trigger: '/',
    script: (List<String> tokens) {
      final editPkgIndex = tokens.indexOf('--edit-pkg');
      final pkgIdIndex = editPkgIndex + 1;
      if (editPkgIndex == -1 || pkgIdIndex >= tokens.length) {
        return [];
      }

      final pkgId = tokens[pkgIdIndex];
      return ['pkgutil', '--files', pkgId];
    },
    postProcess: (String out, [List<String>? tokens]) {
      if (tokens == null) return [];
      final pathPrefix = tokens.isNotEmpty ? tokens.last : '';
      return _postProcessPkgFilenames(out, pathPrefix);
    },
  ),
};

final FigSpec pkgutilSpec = FigSpec(
  name: 'pkgutil',
  description: 'Query and manipulate for macOS Installer packages and receipts',
  subcommands: [
    FigSubcommand(
      name: ['--packages', '--pkgs'],
      description: 'List all installed package IDs on the specified --volume',
    ),
    FigSubcommand(
      name: ['--pkgs-plist'],
      description:
          'List all installed package IDs, in Mac OS X plist(5) format, on the specified --volume',
    ),
    FigSubcommand(
      name: ['--files'],
      description: 'List all of the files installed under the package-id',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to list the files of',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--export-plist'],
      description:
          'Print all receipt information about the specified package-id in Mac OS X plist(5) format',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to export the plist of',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--verify'],
      description: 'Run repair_packages(8) to verify the specified package-id',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to verify',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--repair'],
      description: 'Run repair_packages(8) to repair the specified package-id',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to repair',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--pkg-info'],
      description: 'Print extended information about the specified package-id',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to print the info of',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--pkg-info-plist'],
      description:
          'Print extended information about the specified package-id in Mac OS X plist(5) format',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to print the info of',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--forget'],
      description:
          'Discard all receipt data about package-id, but don\'t touch installed files',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to forget',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--learn'],
      description:
          'Update the ACLs of the given path in the receipt identified by --edit-pkg',
      args: [
        FigArg(
          name: 'path',
          description: 'The path to update ACLs on',
          generators: [pkgutilGenerators['pkgFilenames']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--pkg-groups'],
      description:
          'List all of the package groups this package-id is a member of',
      args: [
        FigArg(
          name: 'package-id',
          description: 'The package ID to list the groups of',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--groups'],
      description: 'List all of the package groups ont he specified --volume',
    ),
    FigSubcommand(
      name: ['--group-plist'],
      description:
          'List all of the package groups ont he specified --volume in Mac OS X plist(5) format',
    ),
    FigSubcommand(
      name: ['--group-pkgs'],
      description: 'List all of the packages that are members of this group-id',
      args: [
        FigArg(
          name: 'group-id',
          description: 'The group ID to list the packages of',
          generators: [pkgutilGenerators['groupIds']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--file-info'],
      description: 'Show the metadata known about path',
      args: [
        FigArg(
          name: 'path',
          description: 'The path to show the metadata of',
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: ['--file-info-plist'],
      description:
          'Show the metadata known about path in Mac OS X plist(5) format',
      args: [
        FigArg(
          name: 'path',
          description: 'The path to show the metadata of',
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: ['--expand'],
      description:
          'Expand the flat package at pkg-path into a new directory specified by dir-path',
      args: [
        FigArg(
          name: 'pkg-path',
          description: 'The path to the flat package to expand',
          template: 'filepaths',
        ),
        FigArg(
          name: 'dir-path',
          description: 'The path to the directory to expand the package into',
          template: 'folders',
        ),
      ],
    ),
    FigSubcommand(
      name: ['--flatten'],
      description:
          'Flatten the dir-path into a new flat package created at pkg-path',
      args: [
        FigArg(
          name: 'dir-path',
          description: 'The path to the directory to flatten',
          template: 'folders',
        ),
        FigArg(
          name: 'pkg-path',
          description: 'The path to the flat package to create',
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: ['--bom'],
      description:
          'Extract any BOM files from the flat pkg at path into /tmp and return the filename(s)',
      args: [
        FigArg(
          name: 'path',
          description: 'The path to the flat package to extract the BOM from',
          generators: [pkgutilGenerators['bom']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--payload-files'],
      description:
          'List the files archived within the uninstalled flat package(s) at path',
      args: [
        FigArg(
          name: 'path',
          description:
              'The path to the flat package to list the archived files of',
          generators: [pkgutilGenerators['pkgs']!],
        ),
      ],
    ),
    FigSubcommand(
      name: ['--check-signature'],
      description:
          'Check the validity and trust of the signature on the package at pkg-path',
      args: [
        FigArg(
          name: 'pkg-path',
          description: 'The path to the flat package to check the signature of',
          generators: [pkgutilGenerators['pkgs']!],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'A brief summary of commands and usage',
    ),
    FigOption(
      name: ['-f', '--force'],
      description:
          'Skip confirmation before a potentially destructive or ambiguous action',
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Output in a human-readable format',
    ),
    FigOption(
      name: ['--volume'],
      description: 'Perform all operations on specified volume',
      args: [
        FigArg(
          name: 'volume',
          description: 'Volume to perform operations on',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--edit-pkg'],
      description:
          'Specifies an existing receipt to be modified in-place by --learn',
      args: [
        FigArg(
          name: 'package-id',
          description: 'Package ID of the receipt to modify',
          generators: [pkgutilGenerators['packageIds']!],
        ),
      ],
    ),
    FigOption(
      name: ['--only-files'],
      description: 'List only files (not directories) in --files listing',
    ),
    FigOption(
      name: ['--only-dirs'],
      description: 'List only directories (not files) in --files listing',
    ),
    FigOption(
      name: ['--regexp'],
      description:
          'Use regex to match package-id arguments, if an exact match isn\'t found',
    ),
    FigOption(
      name: ['--pkgs'],
      description:
          'List all installed package IDs, optionally matching kwarg REGEXP, on the specified --volume',
      requiresSeparator: true,
      args: [
        FigArg(
          name: 'REGEXP',
          description: 'Regular expression',
        ),
      ],
    ),
  ],
);
