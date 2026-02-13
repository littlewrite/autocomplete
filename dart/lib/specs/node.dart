// AI-generated from TypeScript source: node.ts
// TODO: Implement the generateSpec logic

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `node` CLI
final FigSpec nodeSpec = FigSpec(
  name: 'node',
  description: 'Run the node interpreter',
  args: [
    Arg(
      name: 'node script',
      isScript: true,
      generators: [
        FigGenerator(
          template: 'filepaths',
          filterTemplateSuggestions: (suggestions) {
            return suggestions.where((suggestion) {
              final name = suggestion.name as String;
              return name.endsWith('.mjs') ||
                  name.endsWith('.js') ||
                  name.endsWith('.cjs');
            }).toList();
          },
        ),
      ],
    )
  ],
  options: [
    Option(
      name: ['-e', '--eval=...'],
      insertValue: '-e \'{cursor}\'',
      description: 'Evaluate script',
      args: [
        Arg(
          name: 'script',
        )
      ],
    ),
    Option(
      name: '--watch',
      description: 'Watch input files',
    ),
    Option(
      name: '--watch-path',
      description: 'Specify a watch directory or file',
      args: [
        Arg(
          name: 'path',
          template: 'filepaths',
        )
      ],
      isRepeatable: true,
    ),
    Option(
      name: '--watch-preserve-output',
      description:
          'Disable the clearing of the console when watch mode restarts the process',
      dependsOn: ['--watch', '--watch-path'],
    ),
    Option(
      name: '--env-file',
      description: 'Specify a file containing environment variables',
      args: [
        Arg(
          name: 'path',
          template: 'filepaths',
        )
      ],
      isRepeatable: true,
    ),
    Option(
      name: ['-p', '--print'],
      description: 'Evaluate script and print result',
    ),
    Option(
      name: ['-c', '--check'],
      description: 'Syntax check script without executing',
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print Node.js version',
    ),
    Option(
      name: ['-i', '--interactive'],
      description:
          'Always enter the REPL even if stdin does not appear to be a terminal',
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print node command line options (currently set)',
    ),
    Option(
      name: '--inspect',
      requiresSeparator: true,
      args: [
        Arg(
          name: '[host:]port',
          isOptional: true,
        )
      ],
      description: 'Activate inspector on host:port (default: 127.0.0.1:9229)',
    ),
    Option(
      name: '--preserve-symlinks',
      description:
          'Follows symlinks to directories when examining source code and templates for translation strings',
    ),
  ],
  // The dynamic generateSpec logic from the TypeScript file is complex and
  // seems to depend on a Fig-specific shell execution context.
  // A direct translation is not straightforward without more information on the
  // Dart environment's capabilities for dynamic spec generation.
  // The AdonisJS-specific subcommands have been omitted for now.
);
