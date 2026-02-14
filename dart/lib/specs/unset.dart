// AI-generated from TypeScript source: unset.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec unsetSpec = FigSpec(
  name: 'unset',
  description: 'Named variable shall be undefined',
  args: [
    FigArg(
      name: 'string',
      generators: [
        FigGenerator(
          script: ['env'],
          postProcess: (String out, [List<String>? tokens]) {
            if (out.isEmpty) return [];
            return out
                .split('\n')
                .where((line) => line.isNotEmpty)
                .map((env) => env.split('=')[0])
                .map((suggestion) => FigSuggestion(
                      name: suggestion,
                      type: SuggestionType.arg,
                      description: 'Environment Variable',
                    ))
                .toList();
          },
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-v'],
      description: 'Variable definition will be unset',
    ),
  ],
);
