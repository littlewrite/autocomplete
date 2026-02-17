// AI-generated from TypeScript source: direnv.ts
import 'package:autocomplete/src/spec.dart';

const int priorityTopThreshold = 76;
const int priorityBottomThreshold = 49;

FigSuggestion _copySuggestion(
  FigSuggestion original, {
  int? priority,
  bool? isDangerous,
}) {
  return FigSuggestion(
    name: original.name,
    displayName: original.displayName,
    description: original.description,
    icon: original.icon,
    priority: priority ?? original.priority,
    insertValue: original.insertValue,
    replaceValue: original.replaceValue,
    type: original.type,
    hidden: original.hidden,
    isDangerous: isDangerous ?? original.isDangerous,
    deprecated: original.deprecated,
    previewComponent: original.previewComponent,
    loadSpec: original.loadSpec,
  );
}

FigGenerator envrcFilepathsGenerator({bool isDangerous = false}) {
  return FigGenerator(
    template: 'filepaths',
    filterTemplateSuggestions: (List<FigSuggestion> paths) {
      bool isEnvrc(String fileName) => fileName.contains('.envrc');
      return paths.where((file) {
        final name = file.name;
        if (name == null) return false;
        return isEnvrc(name) || name.endsWith('/');
      }).map((file) {
        final name = file.name!;
        int? priority;
        if (isEnvrc(name)) {
          priority = priorityTopThreshold;
        }
        return _copySuggestion(
          file,
          priority: priority,
          isDangerous: isDangerous,
        );
      }).toList();
    },
  );
}

final FigGenerator dotenvFilepathsGenerator = FigGenerator(
  template: 'filepaths',
  filterTemplateSuggestions: (List<FigSuggestion> paths) {
    final regex = RegExp(r'\.env(?!rc)');
    return paths.where((file) {
      final name = file.name;
      if (name == null) return false;
      return regex.hasMatch(name) || name.endsWith('/');
    }).map((file) {
      if (regex.hasMatch(file.name!)) {
        return _copySuggestion(file, priority: priorityTopThreshold);
      }
      return file;
    }).toList();
  },
);

final List<FigSuggestion> shellSuggestions = [
  'bash',
  'zsh',
  'fish',
  'tcsh',
  'elvish'
].map((shell) => FigSuggestion(name: shell, icon: '🐚')).toList();

final FigSpec direnvSpec = FigSpec(
  name: 'direnv',
  description: 'Unclutter your .profile',
  subcommands: [
    FigSubcommand(
      name: ['allow'],
      description: 'Grants direnv to load the given .envrc',
      isDangerous: true,
      args: [
        FigArg(
          name: 'PATH_TO_RC',
          generators: [envrcFilepathsGenerator(isDangerous: true)],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['deny'],
      description: 'Revokes the authorization of a given .envrc',
      isDangerous: true,
      args: [
        FigArg(
          name: 'PATH_TO_RC',
          generators: [envrcFilepathsGenerator(isDangerous: true)],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['edit'],
      description:
          'Opens PATH_TO_RC or the current .envrc into an \$EDITOR and allow the file to be loaded afterwards',
      args: [
        FigArg(
          name: 'PATH_TO_RC',
          generators: [envrcFilepathsGenerator()],
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['exec'],
      description:
          'Executes a command after loading the first .envrc found in DIR',
      args: [
        FigArg(
          name: 'DIR',
          template: 'folders',
        ),
        FigArg(
          name: 'COMMAND',
          isCommand: true,
          isDangerous: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['fetchurl'],
      description: "Fetches a given URL into direnv's CAS",
      args: [
        FigArg(name: 'url'),
        FigArg(
          name: 'integrity-hash',
          description:
              'Check if the `integrity hash` is equal to the hash value of the file obtained from the `url`',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['help'],
      description: 'Help for direnv',
      args: [
        FigArg(
          name: 'SHOW_PRIVATE',
          description: 'Any string',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['hook'],
      description: 'Used to setup the shell hook',
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
        ),
      ],
    ),
    FigSubcommand(
      name: ['prune'],
      description: 'Removes old allowed files',
      isDangerous: true,
    ),
    FigSubcommand(
      name: ['reload'],
      description: 'Triggers an env reload',
      isDangerous: true,
    ),
    FigSubcommand(
      name: ['status'],
      description: 'Prints some debug status information',
    ),
    FigSubcommand(
      name: ['stdlib'],
      description:
          'Displays the stdlib available in the .envrc execution context',
    ),
    FigSubcommand(
      name: ['version'],
      description:
          'Prints the version or checks that direnv is older than VERSION_AT_LEAST',
      args: [
        FigArg(
          name: 'VERSION_AT_LEAST',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['apply_dump'],
      description:
          'Accepts a filename containing `direnv dump` output and generates a series of bash export statements to apply the given env',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'FILE',
          template: 'filepaths',
          isDangerous: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['show_dump'],
      description: 'Show the data inside of a dump for debugging purposes',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'DUMP',
          template: 'filepaths',
        ),
      ],
    ),
    FigSubcommand(
      name: ['dotenv'],
      description:
          'Transforms a .env file to evaluatable `export KEY=PAIR` statements',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
          isOptional: true,
        ),
        FigArg(
          name: 'PATH_TO_DOTENV',
          generators: [dotenvFilepathsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: ['dump'],
      description:
          'Used to export the inner bash state at the end of execution',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
          isOptional: true,
        ),
        FigArg(
          name: 'FILE',
          description: 'Overwrites by dump data',
          template: 'filepaths',
          isOptional: true,
          isDangerous: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['export'],
      description: 'Loads an .envrc and prints the diff in terms of exports',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
        ),
      ],
    ),
    FigSubcommand(
      name: ['watch'],
      description: 'Adds a path to the list that direnv watches for changes',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
        ),
        FigArg(
          name: 'PATH',
          template: 'filepaths',
          isVariadic: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['watch-dir'],
      description:
          'Recursively adds a directory to the list that direnv watches for changes',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
        ),
        FigArg(
          name: 'DIR',
          template: 'folders',
        ),
      ],
    ),
    FigSubcommand(
      name: ['watch-list'],
      description:
          'Pipe pairs of `mtime path` to stdin to build a list of files to watch',
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'SHELL',
          suggestions: shellSuggestions,
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['current'],
      description:
          "Reports whether direnv's view of a file is current (or stale)",
      priority: priorityBottomThreshold,
      args: [
        FigArg(
          name: 'PATH',
          template: 'filepaths',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--version'],
      description:
          'Prints the version or checks that direnv is older than VERSION_AT_LEAST',
      args: [
        FigArg(
          name: 'VERSION_AT_LEAST',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['--help'],
      description: 'Help for direnv',
      args: [
        FigArg(
          name: 'SHOW_PRIVATE',
          description: 'Any string',
          isOptional: true,
        ),
      ],
    ),
  ],
);
