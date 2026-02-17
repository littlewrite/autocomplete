// AI-generated from TypeScript source: xcodeproj.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator projectsAndFoldersGenerator = FigGenerator(
  template: ['folders'],
  filterTemplateSuggestions: (List<FigSuggestion> paths) {
    return paths.map((file) {
      final isXcodeProjFolder =
          file.nameSingle?.endsWith('.xcodeproj/') ?? false;
      if (isXcodeProjFolder) {
        return FigSuggestion(
          name: file.name,
          displayName: file.displayName,
          description: file.description,
          icon: file.icon,
          priority: 76,
          insertValue: file.insertValue,
          type: file.type,
        );
      }
      return file;
    }).toList();
  },
);

final FigSpec xcodeprojSpec = FigSpec(
  name: 'xcodeproj',
  description: 'Xcodeproj lets you create and modify Xcode projects',
  subcommands: [
    FigSubcommand(
      name: 'config-dump',
      description:
          'Dumps the build settings of all project targets for all configurations in directories named by the target in the given output directory',
      args: [
        FigArg(
          name: 'PROJECT',
          isOptional: true,
          generators: [projectsAndFoldersGenerator],
        ),
        FigArg(
          name: 'OUTPUT',
          isOptional: true,
          template: ['folders'],
        ),
      ],
    ),
    FigSubcommand(
      name: 'project-diff',
      description: 'Shows the difference between two projects',
      options: [
        FigOption(
          name: ['--ignore'],
          requiresSeparator: true,
          isRepeatable: true,
          description:
              'A key to ignore in the comparison. Can be specified multiple times',
          args: [FigArg(name: 'KEY')],
        ),
      ],
      args: [
        FigArg(
          name: 'PROJECT1',
          generators: [projectsAndFoldersGenerator],
        ),
        FigArg(
          name: 'PROJECT2',
          generators: [projectsAndFoldersGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'show',
      description: 'Shows an overview of a project in a YAML representation',
      options: [
        FigOption(
          name: ['--format'],
          requiresSeparator: true,
          description: 'YAML output format',
          args: [
            FigArg(
              name: 'FORMAT',
              suggestions: const [
                FigSuggestion(name: 'hash'),
                FigSuggestion(name: 'tree_hash'),
                FigSuggestion(name: 'raw'),
              ],
            ),
          ],
        ),
      ],
      args: [
        FigArg(
          name: 'PROJECT',
          isOptional: true,
          generators: [projectsAndFoldersGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'sort',
      description: 'Sorts the given project',
      options: [
        FigOption(
          name: ['--group-option'],
          requiresSeparator: true,
          description:
              'The position of the groups when sorting. If no option is specified sorting will interleave groups and files',
          args: [
            FigArg(
              name: 'POSITION',
              suggestions: const [
                FigSuggestion(name: 'above'),
                FigSuggestion(name: 'below'),
              ],
            ),
          ],
        ),
      ],
      args: [
        FigArg(
          name: 'PROJECT',
          generators: [projectsAndFoldersGenerator],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'target-diff',
      description: 'Shows the difference between two targets',
      options: [
        FigOption(
          name: ['--project'],
          description: 'The Xcode project document to use',
          args: [
            FigArg(
              name: 'PATH',
              generators: [projectsAndFoldersGenerator],
            ),
          ],
        ),
      ],
      args: [
        FigArg(name: 'TARGET1'),
        FigArg(name: 'TARGET2'),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--verbose'],
      icon: '🔊',
      isPersistent: true,
      description: 'Show more debugging information',
    ),
    FigOption(
      name: ['--version'],
      description: 'Show the version of the tool',
    ),
    FigOption(
      name: ['--no-ansi'],
      isPersistent: true,
      description: 'Show output without ANSI codes',
    ),
    FigOption(
      name: ['--help'],
      isPersistent: true,
      description: 'Show help banner of specified command',
    ),
  ],
);
