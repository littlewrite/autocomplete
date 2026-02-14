// AI-generated from TypeScript source: ng.ts
import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

final FigGenerator projectsGenerator = FigGenerator(
  script: ['ng', 'config', 'projects'],
  postProcess: (String out, [List<String>? tokens]) {
    try {
      final projects = jsonDecode(out);

      return (projects as Map<String, dynamic>)
          .entries
          .map(
            (entry) => FigSuggestion(
              name: entry.key,
              description: (entry.value as Map<String, dynamic>)['projectType'],
            ),
          )
          .toList();
    } catch (e) {
      return [];
    }
  },
);

final FigOption projectsOption = FigOption(
  name: ['--project'],
  description: 'Project name',
  args: [
    FigArg(
      name: 'project',
      generators: [projectsGenerator],
    ),
  ],
);

final FigSpec ngSpec = FigSpec(
  name: 'ng',
  description: 'CLI interface for Angular',
  subcommands: [
    FigSubcommand(
      name: 'new',
      description: 'Create a new Angular app',
      args: [
        FigArg(
          name: 'name',
        ),
      ],
      options: [
        FigOption(
          name: ['--create-application'],
          description: 'Create a default application?',
          args: [
            FigArg(
              name: 'project',
              suggestions: [
                FigSuggestion(name: 'true'),
                FigSuggestion(name: 'false')
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'generate',
      description: 'Generate new files',
      args: [
        FigArg(
          name: 'schematic',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'application',
          description: 'Generates a new application',
          args: [
            FigArg(
              name: 'name',
              description: 'Name of the new app',
            ),
          ],
          options: [
            FigOption(
              name: ['--style'],
              args: [
                FigArg(
                  name: 'extension',
                  suggestions: [
                    FigSuggestion(name: 'css'),
                    FigSuggestion(name: 'scss'),
                    FigSuggestion(name: 'sass'),
                    FigSuggestion(name: 'less'),
                    FigSuggestion(name: 'styl'),
                  ],
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'component',
          description: 'Generate a new component',
          args: [
            FigArg(
              name: 'name',
              description: 'Component name',
              isOptional: true,
            ),
          ],
          options: [
            projectsOption,
            FigOption(
              name: ['--change-detection', '-c'],
              description: 'The change detection strategy to use',
              args: [
                FigArg(
                  name: 'strategy',
                  suggestions: [
                    FigSuggestion(name: 'Default'),
                    FigSuggestion(name: 'OnPush'),
                  ],
                ),
              ],
            ),
            FigOption(
              name: ['--display-block', '-b'],
              description: 'Add :host block to styles',
              args: [
                FigArg(
                  name: 'boolean',
                  suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ],
                ),
              ],
            ),
            FigOption(
              name: ['--flat'],
              description: 'Create at the top level',
              args: [
                FigArg(
                  name: 'boolean',
                  suggestions: [
                    FigSuggestion(name: 'true'),
                    FigSuggestion(name: 'false')
                  ],
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'library',
          description: 'Generates a new library',
          args: [
            FigArg(
              name: 'name',
              isOptional: true,
            ),
          ],
        ),
        FigSubcommand(
          name: 'class',
          description: 'Generates a class',
          args: [
            FigArg(
              name: 'name',
              isOptional: true,
            ),
          ],
          options: [projectsOption],
        ),
      ],
    ),
    FigSubcommand(
      name: 'version',
      description: 'View your Angular CLI version (update for Angular 14+)',
    ),
  ],
  options: [
    FigOption(
      name: ['--version'],
      description: 'View your Angular CLI version',
    ),
  ],
);
