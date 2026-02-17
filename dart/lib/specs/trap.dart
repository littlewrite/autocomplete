// AI-generated from TypeScript source: trap.ts
import 'package:autocomplete/src/spec.dart';

final RegExp re = RegExp(r'(\d+\)\s)?([\w-+]+)');

final FigGenerator availableSignalsGenerator = FigGenerator(
  script: ['command', 'kill', '-l'],
  postProcess: (String out, [List<String>? tokens]) {
    return re.allMatches(out).map((match) {
      return FigSuggestion(name: match.group(2)!);
    }).toList();
  },
);

final FigSpec trapSpec = FigSpec(
  name: 'trap',
  description:
      'Automatically execute commands after receiving signals by processes or the operating system',
  options: [
    FigOption(
      name: ['--print', '-p'],
      description: 'Prints all defined signal handlers',
    ),
    FigOption(
      name: ['--help', '-h'],
      description: 'Displays help about using this command',
    ),
  ],
  args: [
    FigArg(name: 'function name', isOptional: true),
    FigArg(
      name: 'reason',
      generators: [availableSignalsGenerator],
    ),
  ],
);
