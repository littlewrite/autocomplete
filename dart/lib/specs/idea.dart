// AI-generated from TypeScript source: idea.ts
import 'package:autocomplete/src/spec.dart';

FigSpec generateInteliJCompletionSpec(String name, String editorName) {
  return FigSpec(
    name: name,
    description: '$editorName cli',
    args: [
      FigArg(
        name: 'path',
        template: 'filepaths',
      ),
    ],
    subcommands: [
      FigSubcommand(
        name: 'diff',
        description: 'Open the diff viewer to see the differences between two specified files',
        args: [
          FigArg(
            name: 'path',
            template: 'filepaths',
          ),
          FigArg(
            name: 'path2',
            template: 'filepaths',
          ),
          FigArg(
            name: 'path3-optional',
            template: 'filepaths',
          ),
        ],
      ),
      FigSubcommand(
        name: 'merge',
        description: 'Open the Merge dialog to merge the specified files',
        args: [
          FigArg(
            name: 'path',
            template: 'filepaths',
          ),
          FigArg(
            name: 'path2',
            template: 'filepaths',
          ),
          FigArg(
            name: 'base-optional',
            template: 'filepaths',
          ),
        ],
      ),
      FigSubcommand(
        name: 'format',
        description: 'Apply code style formatting to the specified files',
        args: [
          FigArg(
            name: 'path...',
            template: 'filepaths',
          ),
        ],
        options: [
          FigOption(
            name: ['-h'],
            description: 'Show help for format command',
          ),
          FigOption(
            name: ['-m', '-mask'],
            description: 'Specify a comma-separated list of file masks that define the files to be processed',
          ),
          FigOption(
            name: ['-r', '-R'],
            description: 'Process specified directories recursively',
          ),
          FigOption(
            name: ['-s', '-settings'],
            description: 'Specify the code style settings file to use for formatting',
          ),
          FigOption(
            name: ['-allowDefaults'],
            description: 'Use the default code style settings when the code style is not defined for a file or a group of files',
          ),
          FigOption(
            name: ['-charset'],
            description: 'Preserve encoding and enforce the charset for reading and writing source files',
          ),
          FigOption(
            name: ['-d', '-dry'],
            description: 'Run the formatter in the validation mode',
          ),
        ],
      ),
      FigSubcommand(
        name: 'inspect',
        description: 'Perform code inspection on the specified project',
        args: [
          FigArg(
            name: 'project',
            template: 'folders',
          ),
          FigArg(
            name: 'inspection-profile',
            template: 'filepaths',
          ),
          FigArg(
            name: 'output',
            template: 'filepaths',
          ),
        ],
        options: [
          FigOption(
            name: ['-changes'],
            description: 'Run inspections only on local uncommitted changes',
          ),
          FigOption(
            name: ['-d'],
            description: "Specify the full path to the subdirectory if you don't want to inspect the whole project",
          ),
          FigOption(
            name: ['-format'],
            description: 'Specify the format of the output file with inspection results',
          ),
          FigOption(
            name: ['-v'],
            description: 'Set the verbosity level of the output',
          ),
        ],
      ),
      FigSubcommand(
        name: 'installPlugins',
        description: 'Install plugins by plugin ID from JetBrains Marketplace or a custom plugin repository',
        args: [
          FigArg(
            name: 'plugin-id',
          ),
          FigArg(
            name: 'repository-url ',
          ),
        ],
      ),
    ],
    options: [
      FigOption(
        name: ['nosplash'],
        description: 'Do not show the splash screen when loading $editorName',
      ),
      FigOption(
        name: ['dontReopenProjects'],
        description: 'Do not reopen projects and show the welcome screen',
      ),
      FigOption(
        name: ['disableNonBundledPlugins'],
        description: 'Do not load manually installed plugins',
      ),
      FigOption(
        name: ['--wait'],
        description: 'Wait for the files to be closed before returning to the command prompt',
      ),
    ],
  );
}

final FigSpec ideaSpec = generateInteliJCompletionSpec('idea', 'InteliJ IDEA');
