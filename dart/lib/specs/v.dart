// AI-generated from TypeScript source: v.ts
import 'package:autocomplete/src/spec.dart';

final FigArg fileOrFolder = FigArg(
  name: 'file',
  description: 'The input file',
  template: 'filepaths',
);

final FigSpec vSpec = FigSpec(
  name: 'v',
  description: 'The V Programming Language',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
  ),
  subcommands: [
    FigSubcommand(
      name: 'run',
      description: 'Compile and run the program',
      args: [fileOrFolder],
    ),
    FigSubcommand(
      name: 'crun',
      description:
          'Compile if executable inexistent or not updated and run the program',
      args: [fileOrFolder],
    ),
    FigSubcommand(
      name: 'watch',
      description: 'Watch the file for changes and recompile',
      args: [fileOrFolder],
      subcommands: [
        FigSubcommand(
          name: 'run',
          description: 'Run the program after recompiling',
          args: [fileOrFolder],
        ),
      ],
    ),
    // Project Scaffolding Utilities
    FigSubcommand(
      name: 'new',
      description: 'Setup the file structure for a V project (in a sub folder)',
    ),
    FigSubcommand(
      name: 'init',
      description: 'Setup the file structure for an already existing V project',
    ),
    // Commonly used utilities
    FigSubcommand(
      name: 'test',
      description: 'Run all test files in the provided directory',
    ),
    FigSubcommand(
      name: 'fmt',
      description: 'Format the V code provided',
      args: [fileOrFolder],
    ),
    FigSubcommand(
      name: 'vet',
      description: 'Report suspicious code constructs',
    ),
    FigSubcommand(
      name: 'doc',
      description: 'Generate documentation for a V module',
    ),
    FigSubcommand(
      name: 'vlib-docs',
      description:
          'Generate and open the documentation of all the vlib modules',
    ),
    FigSubcommand(
      name: 'repl',
      description: 'Run the REPL',
    ),
    FigSubcommand(
      name: 'where',
      description:
          'Find and print the location of current project declarations',
    ),
    // Installation Management Utilities
    FigSubcommand(
      name: 'symlink',
      description: 'Create a symbolic link for V',
    ),
    FigSubcommand(
      name: 'up',
      description: 'Run the V self-updater',
    ),
    FigSubcommand(
      name: 'self',
      description: 'Run the V self-compiler',
      options: [
        FigOption(
          name: ['-prod'],
          description: 'Compile V for production (optimize compilation)',
        ),
      ],
    ),
    // help command
    FigSubcommand(
      name: 'help',
      description: 'Display help for V',
      args: [
        FigArg(
          generators: [
            FigGenerator(
              script: ['v', 'help', 'topics'],
              postProcess: (String out, [List<String>? tokens]) {
                out = out.trim();
                // remove starting phrase "Known help topics: " and trailing dot
                if (out.startsWith('Known help topics: ')) {
                  out = out.substring(19);
                }
                if (out.endsWith('.')) {
                  out = out.substring(0, out.length - 1);
                }
                return out
                    .split(', ')
                    .where((topic) => topic != 'other')
                    .map((topic) => FigSuggestion(
                          priority: 0,
                          name: topic,
                          description: 'Display help for: "$topic"',
                        ))
                    .toList();
              },
            ),
          ],
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'other',
          description: 'Display help for less frequently used commands',
        ),
        FigSubcommand(
          name: 'topics',
          description: 'Display a list of all known help topics',
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for V',
    ),
    FigOption(
      name: ['version', '--version', '-v'],
      description: 'Show V installed version',
    ),
  ],
  args: [
    FigArg(
      name: 'file',
      description: 'The file to compile',
      template: 'filepaths',
    ),
  ],
);
