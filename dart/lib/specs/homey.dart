// AI-generated from TypeScript source: homey.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec homeySpec = FigSpec(
  name: 'homey',
  subcommands: [
    FigSubcommand(
      name: 'app',
      description: 'App related commands',
      subcommands: [
        FigSubcommand(
          name: 'add-types',
          description: 'Install the Apps SDK TypeScript declarations',
        ),
        FigSubcommand(
          name: 'build',
          description: 'Build a Homey App for publishing',
        ),
        FigSubcommand(
          name: 'compose',
          description: 'Migrate app to Homey compose',
        ),
        FigSubcommand(
          name: 'create',
          description: 'Create a new Homey App',
        ),
        FigSubcommand(
          name: 'discovery',
          description: 'Discovery related commands',
          subcommands: [
            FigSubcommand(
              name: 'create',
              description: 'Create a new Discovery strategy',
            ),
          ],
        ),
        FigSubcommand(
          name: 'driver',
          description: 'Driver related commands',
          subcommands: [
            FigSubcommand(
              name: 'capabilities',
              description: 'Change the capabilities of a Driver',
            ),
            FigSubcommand(
              name: 'create',
              description: 'Create a new Driver',
            ),
            FigSubcommand(
              name: 'flow',
              description: 'Create a new Flow for a Driver',
            ),
          ],
        ),
        FigSubcommand(
          name: 'flow',
          description: 'Flow related commands',
          subcommands: [
            FigSubcommand(
              name: 'create',
              description: 'Create a new Flow',
            ),
          ],
        ),
        FigSubcommand(
          name: 'install',
          description: 'Install a Homey App',
          options: [
            FigOption(
              name: ['-c', '--clean'],
              args: [
                FigArg(
                  name: 'clean',
                  defaultValue: 'false',
                  suggestions: [
                    const FigSuggestion(name: 'false'),
                    const FigSuggestion(name: 'true'),
                  ],
                ),
              ],
            ),
            FigOption(
              name: ['-s', '--skip-build'],
              args: [
                FigArg(
                  name: 'skip-build',
                  defaultValue: 'false',
                  suggestions: [
                    const FigSuggestion(name: 'false'),
                    const FigSuggestion(name: 'true'),
                  ],
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'manage',
          description: 'View your app in the Homey Developer Tools',
        ),
        FigSubcommand(
          name: 'publish',
          description: 'Publish a Homey App to the Homey Apps Store',
        ),
        FigSubcommand(
          name: 'run',
          description: 'Run a Homey App in development mode',
          options: [
            FigOption(
              name: ['-c', '--clean'],
              args: [
                FigArg(
                  name: 'clean',
                  defaultValue: 'false',
                  suggestions: [
                    const FigSuggestion(name: 'false'),
                    const FigSuggestion(name: 'true'),
                  ],
                ),
              ],
            ),
            FigOption(
              name: ['-s', '--skip-build'],
              args: [
                FigArg(
                  name: 'skip-build',
                  defaultValue: 'false',
                  suggestions: [
                    const FigSuggestion(name: 'false'),
                    const FigSuggestion(name: 'true'),
                  ],
                ),
              ],
            ),
            FigOption(
              name: ['-l', '--link-modules'],
              description:
                  'Provide a comma-separated path to local Node.js modules to link. Only works on Homey Cloud',
              args: [FigArg(name: 'modules')],
            ),
          ],
        ),
        FigSubcommand(
          name: 'validate',
          description: 'Validate a Homey App',
          options: [
            FigOption(
              name: ['-l', '--level'],
              description: 'Validation level',
              args: [
                FigArg(
                  name: 'value',
                  suggestions: [
                    const FigSuggestion(name: 'debug'),
                    const FigSuggestion(name: 'publish'),
                    const FigSuggestion(name: 'verified'),
                  ],
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'version',
          description: 'Update a Homey App\'s version',
          args: [
            FigArg(
              name: 'next',
              suggestions: [
                const FigSuggestion(name: 'patch'),
                const FigSuggestion(name: 'minor'),
                const FigSuggestion(name: 'major'),
                const FigSuggestion(
                  name: 'semver',
                  insertValue: '1.0.0',
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'view',
          description: 'View your app in the Homey Apps Store',
        ),
      ],
      options: [
        FigOption(
          name: ['-p', '--path'],
          description: 'Path to a Homey App directory',
          isPersistent: true,
          args: [
            FigArg(template: 'folders'),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'docs',
      description: 'Open Homey Developer Documentation',
      icon: '📖',
    ),
    FigSubcommand(
      name: 'list',
      description: 'List all Homeys',
    ),
    FigSubcommand(
      name: 'login',
      description: 'Log in with an Athom Account',
    ),
    FigSubcommand(
      name: 'logout',
      description: 'Log out the current user',
    ),
    FigSubcommand(
      name: 'select',
      description: 'Select a Homey as active',
      options: [
        FigOption(
          name: ['-i', '--id'],
          description: 'ID of the Homey',
          args: [FigArg(name: 'id')],
        ),
        FigOption(
          name: ['-n', '--name'],
          description: 'Name of the Homey',
          args: [FigArg(name: 'name')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'tools',
      description: 'Open Homey Developer Tools',
      icon: '🔧',
    ),
    FigSubcommand(
      name: 'unselect',
      description: 'Unselect the active Homey',
    ),
    FigSubcommand(
      name: 'whoami',
      description: 'Show the current logged in user',
    ),
  ],
  options: [
    FigOption(
      name: '--help',
      isPersistent: true,
    ),
    FigOption(
      name: '--version',
      isPersistent: true,
    ),
  ],
);
