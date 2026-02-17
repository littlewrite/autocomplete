// AI-generated from TypeScript source: phpunit-watcher.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator tests = FigGenerator(
  script: ['phpunit', '--list-tests'],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.startsWith('fatal:')) {
      return [];
    }

    return out
        .split('\n')
        .where((line) => line.indexOf('::') > 0)
        .map((line) {
      final name = line.substring(line.indexOf('::') + 2);
      return FigSuggestion(
        name: name,
        icon: 'fig://icon?type=php',
        description: name,
      );
    }).toList();
  },
);

final FigSpec phpunitWatcherSpec = FigSpec(
  name: 'phpunit-watcher',
  description: 'Automatically rerun PHPUnit tests when source code changes',
  subcommands: [
    FigSubcommand(
      name: ['watch'],
      description:
          'This will run the tests and rerun them whenever a file in the app, src or tests directory is modified',
      options: [
        FigOption(
          name: ['--filter'],
          description: 'Watch a specific test',
          args: [
            FigArg(
              generators: [tests],
              name: 'filter',
            ),
          ],
        ),
      ],
    ),
  ],
);
