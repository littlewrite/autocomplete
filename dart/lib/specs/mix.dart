// AI-generated from TypeScript source: mix.ts
import 'package:autocomplete/src/spec.dart';

const String mixIcon = 'asset://icons/mix.png';

final FigGenerator preferredScriptFilepaths = const FigGenerator(
  template: 'filepaths',
);

List<FigSuggestion> makeTaskSuggestions(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .map((task) {
        var parts = task.split('#').map((x) => x.trim()).toList();
        var name = parts.isNotEmpty ? parts[0] : '';
        var description = parts.length > 1 ? parts[1] : null;

        return FigSuggestion(
          name: name.replaceFirst(RegExp(r'^mix '), ''),
          description: description,
        );
      })
      .where(
          (x) => !['mix', 'help', 'new', 'run', 'iex -S mix'].contains(x.name))
      .toList();
}

final FigSpec mixSpec = FigSpec(
  name: 'mix',
  description: 'Build tool for Elixir',
  icon: mixIcon,
  subcommands: [
    FigSubcommand(
      name: 'new',
      description: 'Creates a new Elixir project at the given path',
      args: FigArg(
        name: 'path',
      ),
      options: [
        FigOption(
          name: ['-h', '--help'],
          description: 'Output usage information',
        ),
        FigOption(
          name: ['--app'],
          description: 'Name the OTP application for the project',
          args: FigArg(
            name: 'app',
          ),
        ),
        FigOption(
          name: ['--modules'],
          description: 'Name the modules in the generated code skeleton',
          args: FigArg(
            name: 'module',
          ),
        ),
        FigOption(
          name: ['--sup'],
          description:
              'Generate an OTP application skeleton including a supervision tree. Normally an app is generated without a supervisor and without the app callback',
        ),
        FigOption(
          name: ['--umbrella'],
          description: 'Generate an umbrella project',
        ),
      ],
    ),
    FigSubcommand(
      name: 'run',
      description: 'Starts the current application and runs code',
      args: FigArg(
        name: 'file',
        generators: preferredScriptFilepaths,
        isOptional: true,
      ),
      options: [
        FigOption(
          name: ['--config'],
          description: 'Loads the given configuration files',
          args: FigArg(
            name: 'file',
            template: 'filepaths',
          ),
        ),
        FigOption(
          name: ['-e', '--eval'],
          description: 'Evaluates the given code',
          args: FigArg(
            name: 'code',
            description: 'String containing code to execute',
            isScript: true,
          ),
        ),
        FigOption(
          name: ['-r', '--require'],
          description: 'Executes the given pattern/file',
          args: FigArg(
            name: 'file|pattern',
            description: 'The file|pattern to execute',
            generators: preferredScriptFilepaths,
          ),
        ),
        FigOption(
          name: ['-p', '--parallel'],
          description: 'Executes the given pattern/file',
          args: FigArg(
            name: 'file|pattern',
            generators: preferredScriptFilepaths,
          ),
        ),
        FigOption(
          name: ['--preload-modules'],
          description: 'Preloads all modules defined in applications',
        ),
        FigOption(
          name: ['--no-compile'],
          description: 'Does not compile even if files require compilation',
        ),
        FigOption(
          name: ['--no-deps-check'],
          description: 'Does not check dependencies',
        ),
        FigOption(
          name: ['--no-archives-check'],
          description: 'Does not check archives',
        ),
        FigOption(
          name: ['--no-halt'],
          description: 'Does not halt the system after running the command',
        ),
        FigOption(
          name: ['--no-mix-exs'],
          description: 'Allows the command to run even if there is no mix.exs',
        ),
        FigOption(
          name: ['--no-start'],
          description: 'Does not start applications after compilation',
        ),
        FigOption(
          name: ['--no-elixir-version-check'],
          description: 'Does not check the Elixir version from mix.exs',
        ),
      ],
    ),
    FigSubcommand(
      name: 'help',
      description:
          'Prints documentation for a given task (Lists all the tasks if no task is specified)',
      args: FigArg(
        name: 'task',
        isOptional: true,
        description: 'Prints documentation for a given task',
        generators: const FigGenerator(
          // cache: { ttl: 10000 }, // Cache not directly supported in basic FigGenerator constructor, assuming default or ignored
          script: ['mix', 'help'],
          postProcess: makeTaskSuggestions,
        ),
      ),
      options: [
        FigOption(
          name: ['--search'],
          description:
              'Prints all tasks and aliases that contain \'pattern\' in the name',
          args: FigArg(
            name: 'pattern',
          ),
        ),
        FigOption(
          name: ['--names'],
          description: 'Prints all task names and aliases',
        ),
      ],
    ),
  ],
  args: FigArg(
    name: 'task',
    description: 'Invokes the task (mix run) in a project',
    isOptional: true,
    generators: const FigGenerator(
      // cache: { ttl: 10000 },
      script: ['mix', 'help'],
      postProcess: makeTaskSuggestions,
    ),
  ),
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Shows usage information',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Shows versioning information',
    ),
  ],
);
