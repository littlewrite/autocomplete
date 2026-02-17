// AI-generated from TypeScript source: echo.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator environmentVariableGenerator = FigGenerator(
  script: ['env'],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((line) => line.contains('='))
        .map((line) {
          final key = line.split('=')[0];
          return FigSuggestion(
            name: '\$$key',
            type: SuggestionType.arg,
            description: 'Environment Variable',
          );
        })
        .toList();
  },
  trigger: '\$',
);

final FigSpec echoSpec = FigSpec(
  name: 'echo',
  description: 'Write arguments to the standard output',
  args: FigArg(
    name: 'string',
    isVariadic: true,
    optionsCanBreakVariadicArg: false,
    suggestCurrentToken: true,
    generators: [environmentVariableGenerator],
  ),
  options: [
    FigOption(
      name: '-n',
      description: 'Do not print the trailing newline character',
    ),
    FigOption(
      name: '-e',
      description: 'Interpret escape sequences',
    ),
    FigOption(
      name: '-E',
      description: 'Disable escape sequences',
    ),
  ],
);
