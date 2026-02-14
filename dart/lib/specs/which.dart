// AI-generated from TypeScript source: which.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator programGenerator = FigGenerator(
  script: [
    'bash',
    '-c',
    'for i in \$(echo \$PATH | tr ":" "\\n"); do find \$i -maxdepth 1 -perm -111 -type f; done',
  ],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split('\n')
        .where((path) => path.isNotEmpty)
        .map((path) => path.split('/').last)
        .map((pr) => FigSuggestion(
              name: pr,
              description: 'Executable file',
            ))
        .toList();
  },
);

final FigSpec whichSpec = FigSpec(
  name: 'which',
  description: "Locate a program in the user's PATH",
  args: [
    FigArg(
      name: 'names',
      isVariadic: true,
      generators: [programGenerator],
      filterStrategy: 'fuzzy',
      suggestCurrentToken: true,
    ),
  ],
  options: [
    FigOption(
      name: ['-s'],
      description:
          'No output, return 0 if all the executables are found, 1 if not',
    ),
    FigOption(
      name: ['-a'],
      description:
          'List all instances of executables found, instead of just the first',
    ),
  ],
);
