// AI-generated from TypeScript source: ollama.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator listModelGenerator = FigGenerator(
  script: ['bash', '-c', "ollama ls | awk '!/NAME/ { print \$1 }'"],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .map((model) => FigSuggestion(name: model))
        .toList();
  },
);

final FigGenerator runModelGenerator = FigGenerator(
  script: ['bash', '-c', "ollama ps | awk '!/NAME/ { print \$1 }'"],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .trim()
        .split('\n')
        .map((model) => FigSuggestion(name: model))
        .toList();
  },
);

final FigSpec ollamaSpec = FigSpec(
  name: 'ollama',
  description:
      'A command-line tool for managing and deploying machine learning models',
  subcommands: [
    FigSubcommand(
      name: 'serve',
      description: 'Start ollama',
    ),
    FigSubcommand(
      name: 'create',
      description: 'Create a model from a Modelfile',
      options: [
        FigOption(
          name: ['-f'],
          description: 'Specify Modelfile',
          args: [
            FigArg(
              name: 'filename',
              template: 'filepaths',
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'show',
      description: 'Show information for a model',
      args: [
        FigArg(
          name: 'model',
          generators: [listModelGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'run',
      description: 'Run a model',
      args: [
        FigArg(
          name: 'model',
          generators: [listModelGenerator],
        ),
      ],
      options: [
        FigOption(
          name: ['--verbose'],
          description: 'Enable verbose output',
        ),
      ],
    ),
    FigSubcommand(
      name: 'stop',
      description: 'Stop the ollama server',
      args: [
        FigArg(
          name: 'model',
          generators: [runModelGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'pull',
      description: 'Pull a model from a registry',
    ),
    FigSubcommand(
      name: 'push',
      description: 'Push a model to a registry',
    ),
    FigSubcommand(
      name: ['list', 'ls'],
      description: 'List models',
    ),
    FigSubcommand(
      name: 'ps',
      description: 'List running models',
    ),
    FigSubcommand(
      name: 'cp',
      description: 'Copy a model',
      args: [
        FigArg(
          name: 'SOURCE',
          generators: [listModelGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Remove a model',
      args: [
        FigArg(
          name: 'model',
          generators: [listModelGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [
        FigSubcommand(
          name: 'serve',
          description: 'Start ollama',
        ),
        FigSubcommand(
          name: 'create',
          description: 'Create a model from a Modelfile',
        ),
        FigSubcommand(
          name: 'show',
          description: 'Show information for a model',
        ),
        FigSubcommand(
          name: 'run',
          description: 'Run a model',
        ),
        FigSubcommand(
          name: 'stop',
          description: 'Stop the ollama server',
        ),
        FigSubcommand(
          name: 'pull',
          description: 'Pull a model from a registry',
        ),
        FigSubcommand(
          name: 'push',
          description: 'Push a model to a registry',
        ),
        FigSubcommand(
          name: 'list',
          description: 'List models',
        ),
        FigSubcommand(
          name: 'ps',
          description: 'List running models',
        ),
        FigSubcommand(
          name: 'cp',
          description: 'Copy a model',
        ),
        FigSubcommand(
          name: 'rm',
          description: 'Remove a model',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for ollama',
      isPersistent: true,
    ),
    FigOption(
      name: ['--version', '-v'],
      description: 'Show version information',
    ),
  ],
);
