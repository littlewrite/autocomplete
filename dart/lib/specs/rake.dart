// AI-generated from TypeScript source: rake.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec rakeSpec = FigSpec(
  name: 'rake',
  description: 'A ruby build program with capabilities similar to make',
  icon: 'https://avatars.githubusercontent.com/u/210414?s=48&v=4',
  args: [
    FigArg(
      name: 'targets',
      isVariadic: true,
      isOptional: true,
      generators: [
        FigGenerator(
          script: ['rake', '--tasks', '--silent'],
          cache: FigCache(
            strategy: 'stale-while-revalidate',
            cacheByDirectory: true,
          ),
          postProcess: (String out, [List<String>? tokens]) {
            return out.split('\n').map((line) {
              final parts = line.split('#');
              final name = parts[0];
              final description = parts.length > 1 ? parts[1] : '';

              return FigSuggestion(
                name: name.trim().substring('rake '.length),
                description: description.trim(),
              );
            }).toList();
          },
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-n', '--dry-run'],
      description: 'Do a dry run without executing actions',
    ),
    FigOption(
      name: ['-h', '-H', '--help'],
      description: 'Display this help message',
    ),
    FigOption(
      name: ['-I', '--libdir'],
      requiresSeparator: true,
      description: 'Include LIBDIR in the search path for required modules',
      args: [
        FigArg(
          name: 'LIBDIR',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['-P', '--prereqs'],
      description: 'Display the tasks and dependencies, then exit',
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description: 'Do not log messages to standard output',
    ),
    FigOption(
      name: ['-f', '--rakefile'],
      requiresSeparator: true,
      description: 'Use FILE as the rakefile',
      args: [
        FigArg(
          name: 'FILE',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-r', '--require'],
      requiresSeparator: true,
      description: 'Require MODULE before executing rakefile',
      args: [
        FigArg(
          name: 'MODULE',
        ),
      ],
    ),
    FigOption(
      name: ['-s', '--silent'],
      description:
          'Like --quiet, but also suppresses the \'in directory\' announcement',
    ),
    FigOption(
      name: ['-T', '--tasks'],
      description: 'Display the tasks and dependencies, then exit',
      args: [
        FigArg(
          name: 'pattern',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['-t', '--trace'],
      description: 'Turn on invoke/execute tracing, enable full backtrace',
      args: [
        FigArg(
          name: 'output',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Log message to standard output (default)',
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Display the program version',
    ),
  ],
);
