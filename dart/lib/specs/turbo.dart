// AI-generated from TypeScript source: turbo.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';
import 'package:autocomplete/specs/git.dart';

final FigSpec turboSpec = FigSpec(
  name: 'turbo',
  description:
      'Turborepo is a high-performance build system for JavaScript and TypeScript codebases',
  options: [
    FigOption(
      name: ['--version'],
      description: 'Print the version',
    ),
    FigOption(
      name: ['--help'],
      description: 'Print a help message',
      isPersistent: true,
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'bin',
      description: 'Get the path to the turbo binary',
    ),
    FigSubcommand(
      name: 'link',
      description:
          'Link your local directory to a Vercel organization and enable remote caching',
      options: [
        FigOption(
          name: ['--no-gitignore'],
          description: 'Do not create or modify .gitignore',
        ),
      ],
    ),
    FigSubcommand(
      name: 'login',
      description: 'Login to your Vercel account',
      options: [
        FigOption(
          name: ['--sso-team'],
          description:
              'Attempt to authenticate to the specified team using SSO',
          requiresSeparator: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'logout',
      description: 'Logout of your Vercel account',
    ),
    FigSubcommand(
      name: 'prune',
      description: 'Prepare a subset of your monorepo',
      options: [
        FigOption(
          name: ['--scope'],
          description:
              'Specify package to act as entry point for pruned monorepo',
          requiresSeparator: true,
          isRequired: true,
          args: [
            FigArg(
              name: 'package',
            ),
          ],
        ),
        FigOption(
          name: ['--docker'],
          description:
              "Output pruned workspace into 'fill' and 'json' directories optimized for Docker layer caching",
        ),
      ],
    ),
    FigSubcommand(
      name: 'unlink',
      description:
          'Unlink the current directory from your Vercel organization and disable remote caching',
    ),
    FigSubcommand(
      name: 'run',
      description: 'Run tasks in your monorepo',
      icon: 'assets/icons/turbo.png',
      args: [
        FigArg(
          name: 'tasks',
          isVariadic: true,
          generators: [
            FigGenerator(
              script: [
                'bash',
                '-c',
                "until [[ ( -f turbo.json || \$PWD = '/' ) ]]; do cd ..; done; cat turbo.json",
              ],
              postProcess: (String out, [List<String>? tokens]) {
                try {
                  final Map<String, dynamic> turbo = jsonDecode(out);
                  if (!turbo.containsKey('pipeline')) return [];
                  final pipeline = turbo['pipeline'] as Map<String, dynamic>;
                  return pipeline.entries.map((entry) {
                    final key = entry.key;
                    final value = entry.value as Map<String, dynamic>;
                    final descriptionParts = <String>[];

                    if (value.containsKey('dependsOn')) {
                      final dependsOn =
                          (value['dependsOn'] as List).cast<String>();
                      descriptionParts.add(
                          "depends on ${dependsOn.map((item) => "'$item'").join(', ')}");
                    }

                    if (value.containsKey('outputs')) {
                      final outputs = (value['outputs'] as List).cast<String>();
                      descriptionParts.add(
                          "outputs ${outputs.map((item) => "'$item'").join(', ')}");
                    }

                    return FigSuggestion(
                      name: key,
                      description: descriptionParts.isNotEmpty
                          ? "Task: ${descriptionParts.join(', ')}"
                          : "Task",
                      icon: 'assets/icons/turbo.png',
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
      options: [
        FigOption(
          name: ['--scope'],
          description:
              'Specify packages to act as entry points for task execution',
          requiresSeparator: true,
          args: [
            FigArg(
              name: 'package',
            ),
          ],
        ),
        FigOption(
          name: ['--cache-dir'],
          requiresSeparator: true,
          description: 'Specify local filesystem cache directory',
          args: [
            FigArg(
              name: 'dir',
              template: 'folders',
            ),
          ],
        ),
        FigOption(
          name: ['--concurrency'],
          description:
              'Limit the concurrency of task execution (use `1` for serial)',
          requiresSeparator: true,
          args: [
            FigArg(
              name: 'limit',
            ),
          ],
        ),
        FigOption(
          name: ['--continue'],
          description: 'Continue execution even if a task exits with an error',
        ),
        FigOption(
          name: ['--force'],
          description: 'Ignore the existing cache',
        ),
        FigOption(
          name: ['--graph'],
          description: 'Generate a Dot graph of the task execution',
        ),
        FigOption(
          name: ['--global-deps'],
          description:
              'Specify glob of global filesystem dependencies to be hashed (useful for .env and files in the root directory)',
          isRepeatable: true,
          insertValue: "--global-deps='{cursor}'",
          requiresSeparator: true,
          args: [
            FigArg(
              name: 'glob',
            ),
          ],
        ),
        FigOption(
          name: ['--since'],
          description: 'Limit/set scope to changed packages since a mergebase',
          requiresSeparator: true,
          args: [
            FigArg(
              name: 'branch',
              generators: [
                if (gitGenerators.containsKey('remoteLocalBranches'))
                  gitGenerators['remoteLocalBranches']!
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--team'],
          requiresSeparator: true,
          description: 'The slug of a turborepo.com team',
          args: [
            FigArg(
              name: 'slug',
            ),
          ],
        ),
        FigOption(
          name: ['--token'],
          requiresSeparator: true,
          description: 'A turborepo.com access token',
          args: [
            FigArg(
              name: 'token',
            ),
          ],
        ),
        FigOption(
          name: ['--ignore'],
          requiresSeparator: true,
          description:
              'Files to ignore when calculating changed files (supports globs)',
          args: [
            FigArg(
              name: 'files',
            ),
          ],
        ),
        FigOption(
          name: ['--profile'],
          requiresSeparator: true,
          description: "File to write turbo's performance profile into",
          args: [
            FigArg(
              name: 'file',
              template: 'filepaths',
            ),
          ],
        ),
        FigOption(
          name: ['--parallel'],
          description: 'Execute all tasks in parallel',
        ),
        FigOption(
          name: ['--include-dependencies'],
          description: 'Include the dependencies of tasks in execution',
        ),
        FigOption(
          name: ['--no-deps'],
          description: 'Exclude dependent task consumers from execution',
        ),
        FigOption(
          name: ['--no-cache'],
          description:
              'Avoid saving task results to the cache (useful for development/watch tasks)',
        ),
        FigOption(
          name: ['--output-logs'],
          requiresSeparator: true,
          args: [
            FigArg(
              name: 'level',
              suggestions: [
                FigSuggestion(
                  name: 'new-only',
                  description: 'Only new output with hashes for cached tasks',
                ),
                FigSuggestion(
                  name: 'hash-only',
                  description: 'Only turbo-computed task hashes',
                ),
                FigSuggestion(
                  name: 'full',
                  description: 'Show all output',
                ),
                FigSuggestion(
                  name: 'none',
                  description: 'Hide process output',
                ),
              ],
            ),
          ],
        ),
        FigOption(
          name: ['--dry', '--dry-run'],
          requiresSeparator: true,
          description:
              'List the packages in scope and the tasks that would be run',
          args: [
            FigArg(
              name: 'format',
              suggestions: [
                FigSuggestion(name: 'json'),
              ],
              isOptional: true,
            ),
          ],
        ),
      ],
    ),
  ],
);
