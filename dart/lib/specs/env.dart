// AI-generated from TypeScript source: env.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator environmentVariables = FigGenerator(
  script: ['env'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.contains('='))
        .map((line) {
          final key = line.split('=')[0];
          return FigSuggestion(
            name: key,
            description: 'Environment variable',
            icon: '🌎',
          );
        })
        .toList();
  },
);

final FigSpec envSpec = FigSpec(
  name: 'env',
  description: 'Set environment and execute command, or print environment',
  options: [
    FigOption(
      name: '-0',
      description: 'End each output line with NUL, not newline',
    ),
    FigOption(
      name: ['-i', '-'],
      description: 'Start with an empty environment',
    ),
    FigOption(
      name: '-v',
      description: 'Print verbose logs',
    ),
    FigOption(
      name: '-u',
      description: 'Remove variable from the environment',
      args: FigArg(
        name: 'name',
        generators: [environmentVariables],
      ),
    ),
    FigOption(
      name: '-P',
      description:
          'Search the given directories for the utility, rather than the PATH',
      args: FigArg(
        name: 'altpath',
        template: 'folders',
      ),
    ),
    FigOption(
      name: '-S',
      description: 'Split the given string into separate arguments',
      args: FigArg(
        name: 'string',
      ),
    ),
  ],
  args: [
    FigArg(
      name: 'name=value ...',
      description: 'Set environment variables',
      isOptional: true,
    ),
    FigArg(
      name: 'utility',
      description: 'Utility to run',
      isOptional: true,
      isCommand: true,
    ),
  ],
);
