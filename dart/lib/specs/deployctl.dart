// AI-generated from TypeScript source: deployctl.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final FigSpec deployctlSpec = FigSpec(
  name: 'deployctl',
  description: 'Command line tool for Deno Deploy',
  subcommands: [
    FigSubcommand(
      name: ['deploy'],
      description: 'Deploy a script with static files to Deno Deploy',
      args: [
        FigArg(
          name: 'entrypoint',
          generators: [
            FigGenerator(
              template: 'filepaths',
              filterTemplateSuggestions: (List<FigSuggestion> paths) {
                final extensions = [
                  '.js',
                  '.mjs',
                  '.jsx',
                  '.mjsx',
                  '.ts',
                  '.mts',
                  '.tsx',
                  '.mtsx'
                ];
                return paths.where((file) {
                  final name = file.name;
                  if (name == null) return false;
                  return name.endsWith('/') ||
                      extensions.any((ext) => name.endsWith(ext));
                }).toList();
              },
            ),
          ],
        ),
      ],
      options: [
        FigOption(
          name: ['--exclude'],
          insertValue: "--exclude '{cursor}'",
          description: 'Exclude files that match this pattern',
          args: [FigArg(name: 'pattern')],
        ),
        FigOption(
          name: ['--include'],
          insertValue: "--include '{cursor}'",
          description: 'Only upload files that match this pattern',
          args: [FigArg(name: 'pattern')],
        ),
        FigOption(
          name: ['--no-static'],
          description: "Don't include the files in the CWD as static files",
        ),
        FigOption(
          name: ['--prod'],
          description:
              'Create a production deployment (default is preview deployment)',
        ),
        FigOption(
          name: ['-p', '--project'],
          description: 'The project to deploy to',
          args: [FigArg(name: 'name')],
        ),
        FigOption(
          name: ['--token'],
          description: 'The API token to use',
          args: [FigArg(name: 'token')],
        ),
      ],
    ),
    FigSubcommand(
      name: ['upgrade'],
      description: 'Upgrade deployctl',
      args: [
        FigArg(
          name: 'version',
          isOptional: true,
          generators: [
            FigGenerator(
              script: [
                'curl',
                '-sL',
                'https://cdn.deno.land/deploy/meta/versions.json'
              ],
              postProcess: (String out, [List<String>? tokens]) {
                try {
                  final data = jsonDecode(out);
                  final versions = (data['versions'] as List).cast<String>();
                  final latest = data['latest'] as String;
                  return versions.map((version) {
                    return FigSuggestion(
                      name: version,
                      icon: version == latest ? '⭐️' : '🦕',
                    );
                  }).toList();
                } catch (e) {
                  return [];
                }
              },
            ),
          ],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help',
      isPersistent: true,
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Show the version',
    ),
  ],
);
