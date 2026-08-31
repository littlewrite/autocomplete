// Hand-written dynamic handlers migrated from src/kamal.ts.
//
// The focused kamal JSON export kept a single dynamic root: the `generateSpec`
// callback. At runtime it detects whether the current working tree has a
// `bin/kamal` file and, when absent, promotes the `init` command (priority 100)
// so it surfaces first. Everything else (base options, root commands, nested
// subcommands, the destination generator) is reconstructed from src/kamal.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/kamal.ts.
const kamalGenerateSpecHandler = 'manual.src_kamal.spec.generatespec';

/// `bin/kamal destinations --json` output: a JSON array of destination names.
/// Each element becomes a suggestion named after the destination.
List<FigSuggestion> _destinations(String output, [List<String>? tokens]) {
  tokens;
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    return decoded
        .map((destination) => FigSuggestion(name: destination.toString()))
        .toList();
  } catch (_) {
    return const [];
  }
}

/// `destinationGenerator` from src/kamal.ts.
FigGenerator _destinationGenerator() => FigGenerator(
      script: ['bin/kamal', 'destinations', '--json'],
      cache: const FigCache(
        cacheByDirectory: true,
        strategy: 'stale-while-revalidate',
        ttl: 30,
      ),
      postProcess: _destinations,
    );

/// `deployOptions` from src/kamal.ts, shared by `deploy` and `redeploy`.
List<FigOption> _deployOptions() => [
      FigOption(
        name: ['-P', '--skip_push'],
        description: 'Skip image build and push',
      ),
    ];

/// `logOptions` from src/kamal.ts, shared by the accessory/app/traefik logs.
List<FigOption> _logOptions() => [
      FigOption(
        name: ['--since', '-s'],
        description:
            'Show lines since timestamp\\" (e.g. 2013-01-02T13:23:37Z) or relative (e.g. 42m for 42 minutes)',
      ),
      FigOption(
        name: ['--lines', '-n'],
        description: 'Number of lines to show from each server',
      ),
      FigOption(
        name: ['--grep', '-g'],
        description:
            'Show lines with grep match only (use this to fetch specific requests by id)',
      ),
      FigOption(
        name: ['--follow', '-f'],
        description:
            'Follow log on primary server (or specific host set by --hosts)',
      ),
    ];

/// `baseOptions` from src/kamal.ts, exposed on every generated kamal spec.
List<FigOption> _baseOptions() => [
      FigOption(name: ['--verbose', '-v'], description: 'Detailed logging'),
      FigOption(name: ['--quiet', '-q'], description: 'Minimal logging'),
      FigOption(
        name: '--version',
        args: [
          FigArg(name: 'VERSION'),
        ],
        description: 'Run commands against a specific app version',
      ),
      FigOption(
        name: ['--primary', '-p'],
        description: 'Run commands only on primary host instead of all',
      ),
      FigOption(
        name: ['--hosts', '-h'],
        args: [
          FigArg(name: 'hosts'),
        ],
        description:
            'Run commands on these hosts instead of all (separate by comma)',
      ),
      FigOption(
        name: ['--roles', '-r'],
        args: [
          FigArg(name: 'roles'),
        ],
        description:
            'Run commands on these roles instead of all (separate by comma)',
      ),
      FigOption(
        name: ['--config_file', '-c'],
        args: [
          FigArg(name: 'config', defaultValue: 'config/deploy.yml'),
        ],
        description: 'Path to config file',
      ),
      FigOption(
        name: ['-d', '--destination'],
        description: 'Specify destination to use',
        args: [
          FigArg(
            name: 'destination',
            description: 'Destination to use',
            generators: [_destinationGenerator()],
          ),
        ],
      ),
      FigOption(name: ['--skip_hooks', '-H'], description: "Don't run hooks"),
    ];

/// `accessorySubcommand` from src/kamal.ts.
FigSubcommand _accessorySubcommand() => FigSubcommand(
      name: 'accessory',
      description: 'Manage accessories (db/redis/search)',
      subcommands: [
        FigSubcommand(
          name: 'boot',
          description:
              'Boot new accessory service on host (use NAME=all to boot all accessories)',
          args: [
            FigArg(
              name: 'name',
              suggestions: const [
                FigSuggestion(
                  name: 'all',
                  displayName: 'Use "all" to boot all accessories',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'upload',
          description: 'Upload accessory files to host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'directories',
          description: 'Create accessory directories on host',
          hidden: true,
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'reboot',
          description:
              'Reboot existing accessory on host (stop container, remove container, start new container)',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'start',
          description: 'Start existing accessory container on host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'stop',
          description: 'Stop existing accessory container on host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'restart',
          description: 'Restart existing accessory container on host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'details',
          description:
              'Show details about accessory on host (use NAME=all to show all accessories)',
          args: [
            FigArg(
              name: 'name',
              suggestions: const [
                FigSuggestion(
                  name: 'all',
                  displayName: 'Use "all" to boot all accessories',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'exec',
          description: 'Execute a custom command on servers',
          args: [
            FigArg(name: 'name'),
            FigArg(name: 'CMD'),
          ],
          options: [
            FigOption(
              name: ['-i', '--interactive'],
              description:
                  'Execute command over ssh for an interactive shell (use for console/bash)',
            ),
            FigOption(
              name: '--reuse',
              description:
                  'Reuse currently running container instead of starting a new one',
            ),
          ],
        ),
        FigSubcommand(
          name: 'logs',
          description: 'Show log lines from accessory on host',
          options: _logOptions(),
        ),
        FigSubcommand(
          name: 'status',
          description: 'Show status of accessory on host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'remove',
          description:
              'Remove accessory container, image and data directory from host',
          options: [
            FigOption(
              name: ['-y', '--confirmed'],
              description: 'Proceed without confirmation question',
            ),
          ],
          args: [
            FigArg(
              name: 'name',
              suggestions: const [
                FigSuggestion(
                  name: 'all',
                  displayName: 'Use "all" to boot all accessories',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'remove_container',
          hidden: true,
          description: 'Remove accessory container from host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'remove_image',
          hidden: true,
          description: 'Remove accessory image from host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
        FigSubcommand(
          name: 'remove_service_directory',
          hidden: true,
          description:
              'Remove accessory directory used for uploaded files and data directories from host',
          args: [
            FigArg(name: 'name'),
          ],
        ),
      ],
    );

/// `appSubcommand` from src/kamal.ts.
FigSubcommand _appSubcommand() => FigSubcommand(
      name: 'app',
      description: 'Manage application',
      subcommands: [
        FigSubcommand(
          name: 'boot',
          description: 'Boot app on servers (or reboot app if already running)',
        ),
        FigSubcommand(
          name: 'start',
          description: 'Start existing app container on servers',
        ),
        FigSubcommand(
          name: 'stop',
          description: 'Stop app container on servers',
        ),
        FigSubcommand(
          name: 'details',
          description: 'Show details about app containers',
        ),
        FigSubcommand(
          name: 'exec',
          description: 'Execute a custom command on servers',
          args: [
            FigArg(name: 'CMD'),
          ],
          options: [
            FigOption(
              name: ['--interactive', '-i'],
              description:
                  'Execute command over ssh for an interactive shell (use for console/bash)',
            ),
            FigOption(
              name: '--reuse',
              description:
                  'Reuse currently running container instead of starting a new one',
            ),
          ],
        ),
        FigSubcommand(
          name: 'containers',
          description: 'Show app containers on servers',
        ),
        FigSubcommand(
          name: 'stale_containers',
          description: 'Detect app stale containers',
          options: [
            FigOption(
              name: ['--stop', '-s'],
              description: 'Stop the stale containers found',
            ),
          ],
        ),
        FigSubcommand(name: 'images', description: 'Show app images on servers'),
        FigSubcommand(
          name: 'logs',
          description:
              'Show log lines from app on servers (use --help to show options)',
          options: _logOptions(),
        ),
        FigSubcommand(
          name: 'remove',
          description: 'Remove app containers and images from servers',
        ),
        FigSubcommand(
          name: 'remove_container',
          description: 'Remove app container with given version from servers',
          hidden: true,
          args: [
            FigArg(name: 'VERSION'),
          ],
        ),
        FigSubcommand(
          name: 'remove_containers',
          description: 'Remove all app containers from servers',
          hidden: true,
        ),
        FigSubcommand(
          name: 'remove_images',
          description: 'Remove all app images from servers',
          hidden: true,
        ),
        FigSubcommand(
          name: 'version',
          description: 'Show app version currently running on servers',
        ),
      ],
    );

/// `traefikCommand` from src/kamal.ts.
FigSubcommand _traefikCommand() => FigSubcommand(
      name: 'traefik',
      description: 'Manage Traefik load balancer',
      icon: '🚦',
      subcommands: [
        FigSubcommand(name: 'boot', description: 'Boot Traefik on servers'),
        FigSubcommand(
          name: 'reboot',
          description:
              'Reboot Traefik on servers (stop container, remove container, start new container)',
          options: [
            FigOption(
              name: '--rolling',
              description:
                  'Reboot traefik on hosts in sequence, rather than in parallel',
            ),
          ],
        ),
        FigSubcommand(
          name: 'start',
          description: 'Start existing Traefik container on servers',
        ),
        FigSubcommand(
          name: 'stop',
          description: 'Stop existing Traefik container on servers',
        ),
        FigSubcommand(
          name: 'restart',
          description: 'Restart existing Traefik container on servers',
        ),
        FigSubcommand(
          name: 'details',
          description: 'Show details about Traefik container from servers',
        ),
        FigSubcommand(
          name: 'logs',
          description: 'Show log lines from Traefik on servers',
          options: _logOptions(),
        ),
        FigSubcommand(
          name: 'remove',
          description: 'Remove Traefik container and image from servers',
        ),
        FigSubcommand(
          name: 'remove_container',
          description: 'Remove Traefik container from servers',
          hidden: true,
        ),
        FigSubcommand(
          name: 'remove_image',
          description: 'Remove Traefik image from servers',
          hidden: true,
        ),
        FigSubcommand(
          name: 'help',
          description: 'Describe subcommands or one specific subcommand',
          args: [
            FigArg(
              name: 'subcommand',
              suggestions: const [
                FigSuggestion(name: 'boot'),
                FigSuggestion(name: 'details'),
                FigSuggestion(name: 'help'),
                FigSuggestion(name: 'logs'),
                FigSuggestion(name: 'reboot'),
                FigSuggestion(name: 'remove'),
                FigSuggestion(name: 'restart'),
                FigSuggestion(name: 'start'),
                FigSuggestion(name: 'stop'),
              ],
            ),
          ],
        ),
      ],
    );

/// `lockSubcommands` from src/kamal.ts.
FigSubcommand _lockSubcommand() => FigSubcommand(
      name: 'lock',
      description: 'Manage the deploy lock',
      icon: '🔒',
      subcommands: [
        FigSubcommand(name: 'status', description: 'Report lock status'),
        FigSubcommand(
          name: 'acquire',
          description: 'Acquire the deploy lock',
          options: [
            FigOption(
              name: ['message', 'm'],
              args: [
                FigArg(
                  name: 'message',
                  description: 'Message to set on the lock',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(name: 'release', description: 'Release the deploy lock'),
      ],
    );

/// `registrySubcommand` from src/kamal.ts.
FigSubcommand _registrySubcommand() => FigSubcommand(
      name: 'registry',
      description: 'Login and -out of the image registry',
      icon: '📦',
      subcommands: [
        FigSubcommand(
          name: 'login',
          description: 'Login to registry locally and remotely',
        ),
        FigSubcommand(
          name: 'logout',
          description: 'Log out of registry remotely',
        ),
      ],
    );

/// `pruneSubcommand` from src/kamal.ts.
FigSubcommand _pruneSubcommand() => FigSubcommand(
      name: 'prune',
      icon: '🧹',
      description: 'Prune old application images and containers',
      subcommands: [
        FigSubcommand(
          name: 'all',
          description: 'Prune unused images and stopped containers',
        ),
        FigSubcommand(name: 'images', description: 'Prune unused images'),
        FigSubcommand(
          name: 'containers',
          description: 'Prune stopped containers, except last 5',
        ),
      ],
    );

/// `buildSubcommand` from src/kamal.ts.
FigSubcommand _buildSubcommand() => FigSubcommand(
      name: 'build',
      description: 'Build application image',
      icon: '🏗️',
      subcommands: [
        FigSubcommand(
          name: 'deliver',
          description:
              'Build app and push app image to registry then pull image on servers',
        ),
        FigSubcommand(
          name: 'push',
          description: 'Build and push app image to registry',
        ),
        FigSubcommand(
          name: 'pull',
          description: 'Pull app image from registry onto servers',
        ),
        FigSubcommand(name: 'create', description: 'Create a build setup'),
        FigSubcommand(name: 'remove', description: 'Remove build setup'),
        FigSubcommand(name: 'details', description: 'Show build setup'),
      ],
    );

/// `rootCommands` from src/kamal.ts. When [initPriority] is non-null the
/// `init` command carries that priority instead of the default.
List<FigSubcommand> _rootCommands({required int? initPriority}) => [
      FigSubcommand(
        name: 'setup',
        icon: '🛠️',
        description: 'Setup all accessories and deploy app to servers',
      ),
      FigSubcommand(
        name: 'destinations',
        description: 'List all destinations',
        options: [
          FigOption(
            name: ['--json', '-j'],
            description: 'Output as JSON',
          ),
        ],
      ),
      FigSubcommand(
        name: 'deploy',
        description: 'Deploy your app to a destination',
        icon: '🚀',
        priority: 80,
        options: _deployOptions(),
      ),
      FigSubcommand(
        name: 'redeploy',
        description:
            'Deploy app to servers without bootstrapping servers, starting Traefik, pruning, and registry login',
        icon: '🚀',
        options: _deployOptions(),
      ),
      FigSubcommand(
        name: 'rollback',
        description: 'Rollback app to VERSION',
        icon: '↩️',
        args: [
          FigArg(name: 'version'),
        ],
      ),
      FigSubcommand(
        name: 'details',
        icon: '🔍',
        description: 'Show details about all containers',
      ),
      FigSubcommand(
        name: 'audit',
        icon: '🔍',
        description: 'Show audit log from servers',
      ),
      FigSubcommand(
        name: 'config',
        description: 'Show combined config (including secrets!)',
      ),
      FigSubcommand(
        name: 'init',
        icon: '🆕',
        description:
            'Create config stub in config/deploy.yml and env stub in .env',
        priority: initPriority,
        options: [
          FigOption(
            name: 'bundle',
            description:
                'Add Kamal to the Gemfile and create a bin/kamal binstub',
          ),
        ],
      ),
      FigSubcommand(
        name: 'envify',
        description:
            'Create .env by evaluating .env.erb (or .env.staging.erb -> .env.staging when using -d staging)',
        options: [
          FigOption(
            // FIXME: REQUIRES MY FORK since it's not yet merged.
            hidden: true,
            name: 'template',
            description: 'Template to use',
            args: [
              FigArg(name: 'template', template: 'filepaths'),
            ],
          ),
        ],
      ),
      FigSubcommand(
        name: 'remove',
        description:
            'Remove Traefik, app, accessories, and registry session from servers',
        icon: '🗑️',
        options: [
          FigOption(
            name: ['--confirmed', '-y'],
            description: 'Proceed without confirmation question',
          ),
        ],
      ),
      FigSubcommand(name: 'version', description: 'Show Kamal version'),
      _accessorySubcommand(),
      _appSubcommand(),
      _buildSubcommand(),
      FigSubcommand(
        name: 'healthcheck',
        description: 'Healthcheck application',
        subcommands: [
          FigSubcommand(
            name: 'perform',
            description: 'Health check current app version',
          ),
        ],
      ),
      _lockSubcommand(),
      _pruneSubcommand(),
      _registrySubcommand(),
      FigSubcommand(
        name: 'server',
        description: 'Bootstrap servers with curl and Docker',
        subcommands: [
          FigSubcommand(
            name: 'bootstrap',
            description: 'Set up Docker to run Kamal apps',
          ),
        ],
      ),
      _traefikCommand(),
    ];

/// Root `generateSpec` from src/kamal.ts. Walks up from the current directory
/// looking for a `bin/kamal` file; when one is absent, `init` is promoted to
/// priority 100 so it is offered first.
Future<FigSpec?> _kamalGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: [
      '-c',
      'while [ ! -f "\$PWD/bin/kamal" ] && [ "\$PWD" != "/" ]; do cd ..; done; [ -f "\$PWD/bin/kamal" ] && echo "true" || echo "false"',
    ],
  ));
  final hasBinKamal = result.stdout == 'true';
  return FigSpec(
    name: 'kamal',
    options: _baseOptions(),
    subcommands: _rootCommands(initPriority: hasBinKamal ? null : 100),
  );
}

/// Registers the dynamic handler referenced by the shipped kamal JSON.
void registerKamalHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(kamalGenerateSpecHandler, _kamalGenerateSpec);
}
