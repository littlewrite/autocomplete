// AI-generated from TypeScript source: yomo.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec yomoSpec = FigSpec(
  name: 'yomo',
  description: 'YoMo CLI',
  subcommands: [
    FigSubcommand(
      name: 'init',
      description: 'Initialize a new YoMo Serverless Function',
      options: [
        FigOption(
          name: ['--name', '-n'],
          description: 'The name of the Serverless Function',
          args: [FigArg(name: 'name')],
        ),
      ],
      args: [FigArg(name: 'name')],
    ),
    FigSubcommand(
      name: 'build',
      description: 'Build the YoMo Serverless Function',
      args: [
        FigArg(
          name: 'path',
          template: ['filepaths'],
          generators: [
            FigGenerator(
              filterTemplateSuggestions: (List<FigSuggestion> paths) {
                return paths
                    .where((p) =>
                        p.name.endsWith('.go') ||
                        p.name.endsWith('.mod') ||
                        p.name.endsWith('/'))
                    .toList();
              },
            ),
          ],
        ),
      ],
      options: [
        FigOption(
          name: ['--mod'],
          description: 'The path of go.mod',
          args: [
            FigArg(name: 'mod', template: ['filepaths'])
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'run',
      description: 'Run the YoMo Serverless Function',
      args: [
        FigArg(
          name: 'path',
          template: ['filepaths'],
          generators: [
            FigGenerator(
              filterTemplateSuggestions: (List<FigSuggestion> paths) {
                return paths
                    .where(
                        (p) => p.name.endsWith('.wasm') || p.name.endsWith('/'))
                    .toList();
              },
            ),
          ],
        ),
      ],
      options: [
        FigOption(
          name: ['--name', '-n'],
          description: 'The name of the Serverless Function',
          args: [FigArg(name: 'name')],
        ),
        FigOption(
          name: ['--port', '-p'],
          description: 'The port of the Serverless Function',
          args: [FigArg(name: 'port')],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for yomo',
    ),
    FigOption(
      name: ['--version', '-v'],
      description: 'Show the version of yomo',
    ),
  ],
);
