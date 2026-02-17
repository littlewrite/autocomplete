// Auto-generated from TypeScript source: eas.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// 生成一个从 start 到 end（包含两端）的数字范围数组
List<String> generateRange(int start, int end) {
  return List.generate(
    end - start + 1,
    (index) => '${index + start}',
  );
}

/// Completion spec for `eas` CLI
final FigSpec easSpec = FigSpec(
    name: 'eas',
    description:
        'EAS CLI is the command-line app that you will use to interact with EAS services from your terminal',
    subcommands: [
      Subcommand(
          name: ['account:login', 'login'],
          description: 'Log in with your Expo account'),
      Subcommand(name: ['account:logout', 'logout'], description: 'Log out'),
      Subcommand(
          name: ['account:view', 'whoami'],
          description: 'Show the username you are logged in as'),
      Subcommand(
          name: 'analytics',
          description: 'Display or change analytics settings',
          args: [
            Arg(name: 'Status', isOptional: true, suggestions: [
              FigSuggestion(name: 'on'),
              FigSuggestion(name: 'off')
            ])
          ]),
      Subcommand(
          name: 'autocomplete',
          description: 'Display autocomplete installation instructions',
          options: [
            Option(
                name: ['-r', '--refresh-cache'],
                description: 'Refresh cache (ignores displaying instructions)')
          ],
          args: [
            Arg(
                name: 'Shell',
                description:
                    'Select the shell you\'d like to display autocomplete information for',
                suggestions: [
                  FigSuggestion(name: 'zsh'),
                  FigSuggestion(name: 'bash')
                ])
          ]),
      Subcommand(name: 'branch:create', description: 'Create a branch', args: [
        Arg(name: 'Name', description: 'Name of the branch to create')
      ], options: [
        Option(
            name: '--json',
            description:
                'Enable JSON output, non-JSON messages will be printed to stderr'),
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode')
      ]),
      Subcommand(name: 'branch:delete', description: 'Delete a branch', args: [
        Arg(name: 'Name', description: 'Name of the branch to delete')
      ], options: [
        Option(
            name: '--json',
            description:
                'Enable JSON output, non-JSON messages will be printed to stderr'),
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode')
      ]),
      Subcommand(
          name: 'branch:list',
          description: 'List all branches',
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--limit',
                description:
                    'The number of items to fetch each query. Defaults to 50 and is capped at 100',
                args: [
                  Arg(
                    name: 'Limit',
                    defaultValue: '50',
                    suggestions: generateRange(50, 100),
                  ),
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--offset',
                description:
                    'Start queries from specified index. Use for paginating results. Defaults to 0',
                args: [Arg(name: 'Offset', defaultValue: '0')])
          ]),
      Subcommand(
          name: 'branch:rename',
          description: 'Rename a branch',
          options: [
            Option(
                name: '--from',
                description: 'Current name of the branch',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--to',
                description: 'New name of the branch',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(name: 'branch:view', description: 'View a branch', args: [
        Arg(name: 'Name', description: 'Name of the branch to view')
      ], options: [
        Option(
            name: '--json',
            description:
                'Enable JSON output, non-JSON messages will be printed to stderr'),
        Option(
            name: '--limit',
            description:
                'The number of items to fetch each query. Defaults to 25 and is capped at 50',
            args: [
              Arg(
                  name: 'Limit',
                  suggestions: generateRange(25, 50),
                  defaultValue: '25')
            ]),
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode'),
        Option(
            name: '--offset',
            description:
                'Start queries from specified index. Use for paginating results. Defaults to 0',
            args: [Arg(name: 'Offset', defaultValue: '0')])
      ]),
      Subcommand(name: 'build', description: 'Start a build', options: [
        Option(
            name: ['-e', '--profile'],
            description:
                'Name of the build profile from eas.json. Defaults to "production" if defined in eas.json',
            args: [Arg(name: 'Profile Name')]),
        Option(
            name: ['-m', '--message'],
            description: 'A short message describing the build',
            args: [Arg(name: 'Value')]),
        Option(name: [
          '-p',
          '--platform'
        ], args: [
          Arg(name: 'Platform', suggestions: [
            FigSuggestion(name: 'android'),
            FigSuggestion(name: 'ios'),
            FigSuggestion(name: 'all')
          ])
        ]),
        Option(
            name: '--auto-submit',
            description:
                'Submit on build complete using the submit profile with the same name as the build profile'),
        Option(
            name: '--auto-submit-with-profile',
            description:
                'Submit on build complete using the submit profile with provided name',
            args: [Arg(name: 'Profile Name')]),
        Option(
            name: '--clear-cache', description: 'Clear cache before the build'),
        Option(
            name: '--json',
            description:
                'Enable JSON output, non-JSON messages will be printed to stderr'),
        Option(
            name: '--local', description: 'Run build locally [experimental]'),
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode'),
        Option(
            name: '--output',
            description: 'Output path for local build',
            args: [Arg(name: 'Value')]),
        Option(
            name: '--no-wait',
            description: 'Don\'t wait for build(s) to complete'),
        Option(name: '--wait', description: 'Wait for build(s) to complete')
      ]),
      Subcommand(name: 'build:cancel', description: 'Cancel a build', options: [
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode')
      ], args: [
        Arg(name: 'Build ID')
      ]),
      Subcommand(
          name: 'build:configure',
          description: 'Configure the project to support EAS build',
          options: [
            Option(
                name: ['-p', '--platform'],
                description: 'Platform to configure',
                args: [
                  Arg(name: 'Platform', suggestions: [
                    FigSuggestion(name: 'android'),
                    FigSuggestion(name: 'ios'),
                    FigSuggestion(name: 'all')
                  ])
                ])
          ]),
      Subcommand(
          name: 'build:inspect',
          description:
              'Inspect the state of the project at specific build stages, useful for troubleshooting',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the build profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Profile Name')]),
            Option(
                name: ['-o', '--output'],
                description: '(required) Output directory',
                args: [Arg(name: 'Output directory')]),
            Option(
                name: ['-p', '--platform'],
                description: '(required)',
                args: [
                  Arg(name: 'Platform', suggestions: [
                    FigSuggestion(name: 'android'),
                    FigSuggestion(name: 'ios')
                  ])
                ]),
            Option(
                name: ['-s', '--stage'],
                // TS_UNCONVERTED_START (description)
// `(required) Stage of the build you want to inspect.
// archive - builds the project archive that would be uploaded to EAS when building
// pre-build - prepares the project to be built with Gradle/Xcode. Does not run the native build.
// post-build - builds the native project and leaves the output directory for inspection`
// TS_UNCONVERTED_END
                description: null,
                args: [
                  Arg(name: 'Build Stage', suggestions: [
                    FigSuggestion(name: 'archive'),
                    FigSuggestion(name: 'pre-build'),
                    FigSuggestion(name: 'post-build')
                  ])
                ]),
            Option(name: ['-v', '--verbose']),
            Option(
                name: '--force',
                description: 'Delete OUTPUT_DIRECTORY if it already exists')
          ]),
      Subcommand(
          name: 'build:list',
          description: 'List all builds for your project',
          options: [
            Option(name: '--appBuildVersion', args: [Arg(name: 'Value')]),
            Option(name: '--appIdentifier', args: [Arg(name: 'Value')]),
            Option(name: '--appVersion', args: [Arg(name: 'Value')]),
            Option(name: '--buildProfile', args: [Arg(name: 'Value')]),
            Option(name: '--channel', args: [Arg(name: 'Value')]),
            Option(name: '--distribution', args: [
              Arg(name: 'Distribution', suggestions: [
                FigSuggestion(name: 'store'),
                FigSuggestion(name: 'internal'),
                FigSuggestion(name: 'simulator')
              ])
            ]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--limit',
                description:
                    'The number of items to fetch each query. Defaults to 10 and is capped at 50',
                args: [
                  Arg(
                    name: 'Limit',
                    defaultValue: '10',
                    suggestions: generateRange(10, 50),
                  )
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--offset',
                description:
                    'Start queries from specified index. Use for paginating results. Defaults to 0',
                args: [Arg(name: 'Offset', defaultValue: '0')]),
            Option(name: '--platform', args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'all'),
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios')
              ])
            ]),
            Option(name: '--runtimeVersion', args: [Arg(name: 'Value')]),
            Option(name: '--sdkVersion', args: [Arg(name: 'Value')]),
            Option(name: '--status', args: [
              Arg(name: 'Status', suggestions: [
                FigSuggestion(name: 'new'),
                FigSuggestion(name: 'in-queue'),
                FigSuggestion(name: 'in-progress'),
                FigSuggestion(name: 'errored'),
                FigSuggestion(name: 'finished'),
                FigSuggestion(name: 'canceled')
              ])
            ])
          ]),
      Subcommand(
          name: ['build:submit', 'submit'],
          description: 'Submit app binary to App Store and/or Play Store',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the submit profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Value')]),
            Option(name: [
              '-p',
              '--platform'
            ], args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios'),
                FigSuggestion(name: 'all')
              ])
            ]),
            Option(
                name: '--id',
                description: 'ID of the build to submit',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--latest',
                description: 'Submit the latest build for specified platform'),
            Option(
                name: '--non-interactive',
                description: 'Run command in non-interactive mode'),
            Option(
                name: '--path',
                description: 'Path to the .apk/.aab/.ipa file',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--url',
                description: 'App archive url',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--verbose',
                description: 'Always print logs from Submission Service'),
            Option(
                name: '--no-wait',
                description: 'Don\'t wait for submission to complete'),
            Option(
                name: '--wait', description: 'Wait for submission to complete')
          ]),
      Subcommand(
          name: 'build:version:set',
          description: 'Update version of an app',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the build profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Profile Name')]),
            Option(name: [
              '-p',
              '--platform'
            ], args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios')
              ])
            ])
          ]),
      Subcommand(
          name: 'build:version:sync',
          description:
              'Update a version in native code with a value stored on EAS servers',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the build profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Profile Name')]),
            Option(name: [
              '-p',
              '--platform'
            ], args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios'),
                FigSuggestion(name: 'all')
              ])
            ])
          ]),
      Subcommand(
          name: 'build:view',
          description: 'View a build for your project',
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr')
          ],
          args: [
            Arg(name: 'Build ID')
          ]),
      Subcommand(
          name: 'channel:create',
          description: 'Create a channel',
          args: [
            Arg(name: 'Name', description: 'Name of the channel to create')
          ],
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(
          name: 'channel:edit',
          description: 'Point a channel at a new branch',
          args: [
            Arg(name: 'Name', description: 'Name of the channel to edit')
          ],
          options: [
            Option(
                name: '--branch',
                description: 'Name of the branch to point to',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(
          name: 'channel:list',
          description: 'List all channels',
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--limit',
                description:
                    'The number of items to fetch each query. Defaults to 10 and is capped at 25',
                args: [
                  Arg(
                      name: 'Limit',
                      defaultValue: '10',
                      suggestions: generateRange(10, 25))
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--offset',
                description:
                    'Start queries from specified index. Use for paginating results. Defaults to 0',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(name: 'channel:view', description: 'View a channel', args: [
        Arg(name: 'Name', description: 'Name of the channel to view')
      ], options: [
        Option(
            name: '--json',
            description:
                'Enable JSON output, non-JSON messages will be printed to stderr'),
        Option(
            name: '--limit',
            description:
                'The number of items to fetch each query. Defaults to 50 and is capped at 100',
            args: [
              Arg(
                name: 'Limit',
                defaultValue: '50',
                suggestions: generateRange(50, 100),
              )
            ]),
        Option(
            name: '--non-interactive',
            description: 'Run the command in non-interactive mode'),
        Option(
            name: '--offset',
            description:
                'Start queries from specified index. Use for paginating results. Defaults to 0',
            args: [Arg(name: 'Value', defaultValue: '0')])
      ]),
      Subcommand(
          name: 'config',
          description: 'Display project configuration (app.json + eas.json)',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the build profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Profile Name')]),
            Option(name: [
              '-p',
              '--platform'
            ], args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios')
              ])
            ])
          ]),
      Subcommand(
          name: 'credentials',
          description: 'Manage credentials',
          options: [
            Option(name: [
              '-p',
              '--platform'
            ], args: [
              Arg(name: 'Platform', suggestions: [
                FigSuggestion(name: 'android'),
                FigSuggestion(name: 'ios')
              ])
            ])
          ]),
      Subcommand(
          name: 'device:create',
          description:
              'Register new Apple devices to use for internal distribution'),
      Subcommand(
          name: 'device:delete',
          description: 'Remove a registered device from your account',
          options: [
            Option(
                name: '--apple-team-id',
                description: 'The Apple team ID on which to find the device',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--udid',
                description: 'The Apple device ID to disable',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(
          name: 'device:list',
          description: 'List all registered devices for your account',
          options: [
            Option(name: '--apple-team-id', args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--limit',
                description:
                    'The number of items to fetch each query. Defaults to 50 and is capped at 100',
                args: [
                  Arg(
                      name: 'Limit',
                      suggestions: generateRange(50, 100),
                      defaultValue: '50')
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--offset',
                description:
                    'Start queries from specified index. Use for paginating results. Defaults to 0',
                args: [Arg(name: 'Offset', defaultValue: '0')])
          ]),
      Subcommand(
          name: 'device:view',
          description: 'View a device for your project',
          args: [Arg(name: 'UDID')]),
      Subcommand(name: 'diagnostics', description: 'Display environment info'),
      Subcommand(name: 'help', description: 'Display help for eas-cli', args: [
        Arg(name: 'Command', description: 'Command to show help for')
      ], options: [
        Option(
            name: ['-n', '--nested-commands'],
            description: 'Include all nested commands in the output')
      ]),
      Subcommand(
          name: 'metadata:pull',
          description:
              'Generate the local store configuration from the app stores',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the submit profile from eas.json. Defaults to "production" if defined in eas.json',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(
          name: 'metadata:push',
          description: 'Sync the local store configuration to the app stores',
          options: [
            Option(
                name: ['-e', '--profile'],
                description:
                    'Name of the submit profile from eas.json. Defaults to "production" if defined in eas.json')
          ]),
      Subcommand(
          name: 'open', description: 'Open the project page in a web browser'),
      Subcommand(
          name: 'project:info',
          description: 'Information about the current project'),
      Subcommand(
          name: ['project:init', 'init'],
          description: 'Create or link an EAS project',
          options: [
            Option(
                name: '--force',
                description: 'Whether to overwrite any existing project ID'),
            Option(
                name: '--id',
                description: 'ID of the EAS project to link',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(
          name: 'secret:create',
          description:
              'Create an environment secret on the current project or owner account',
          options: [
            Option(
                name: '--force',
                description: 'Delete and recreate existing secrets'),
            Option(
                name: '--name',
                description: 'Name of the secret',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--scope',
                description: '[default: project] Scope for the secret',
                args: [
                  Arg(name: 'Scope', defaultValue: 'project', suggestions: [
                    FigSuggestion(name: 'account'),
                    FigSuggestion(name: 'project')
                  ])
                ]),
            Option(name: '--type', description: 'The type of secret', args: [
              Arg(name: 'Type', suggestions: [
                FigSuggestion(name: 'string'),
                FigSuggestion(name: 'file')
              ])
            ]),
            Option(
                name: '--value',
                description:
                    'Text value or path to a file to store in the secret',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(
          name: 'secret:delete',
          description: 'Delete an environment secret by ID',
          options: [
            Option(
                name: '--id',
                description: 'ID of the secret to delete',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(
          name: 'secret:list',
          description:
              'List environment secrets available for your current app'),
      Subcommand(
          name: 'update',
          description: 'Publish an update group',
          options: [
            Option(
                name: ['-p', '--platform'],
                description: '[default: all]',
                args: [
                  Arg(name: 'Platform', suggestions: [
                    FigSuggestion(name: 'android'),
                    FigSuggestion(name: 'ios'),
                    FigSuggestion(name: 'all')
                  ])
                ]),
            Option(
                name: '--auto',
                description:
                    'Use the current git branch and commit message for the EAS branch and update message'),
            Option(
                name: '--branch',
                description: 'Branch to publish the update group on',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--group',
                description: 'Update group to republish',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--input-dir',
                description: '[default: dist] Location of the bundle',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--message',
                description: 'A short message describing the update',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--private-key-path',
                // TS_UNCONVERTED_START (description)
// `File containing the PEM-encoded private key corresponding to the certificate in
// expo-updates' configuration. Defaults to a file named "private-key.pem" in the
// certificate's directory`
// TS_UNCONVERTED_END
                description: null,
                args: [Arg(name: 'Value', defaultValue: 'private-key.pem')]),
            Option(
                name: '--republish', description: 'Republish an update group'),
            Option(
                name: '--skip-bundler',
                description:
                    'Skip running Expo CLI to bundle the app before publishing')
          ]),
      Subcommand(
          name: 'update:configure',
          description: 'Configure the project to support EAS update',
          options: [
            Option(
                name: ['-p', '--platform'],
                description: '[default: all] Platform to configure',
                args: [
                  Arg(
                      name: 'Platform',
                      suggestions: [
                        FigSuggestion(name: 'android'),
                        FigSuggestion(name: 'ios'),
                        FigSuggestion(name: 'all')
                      ],
                      defaultValue: 'all')
                ])
          ]),
      Subcommand(
          name: 'update:delete',
          description: 'Delete all the updates in an update group',
          args: [
            Arg(
                name: 'Group ID',
                description: 'The ID of an update group to delete')
          ],
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(
          name: 'update:list',
          description: 'View the recent updates',
          options: [
            Option(name: '--all', description: 'List updates on all branches'),
            Option(
                name: '--branch',
                description: 'List updates only on this branch',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr'),
            Option(
                name: '--limit',
                description:
                    'The number of items to fetch each query. Defaults to 25 and is capped at 50',
                args: [
                  Arg(
                      name: 'Limit',
                      suggestions: generateRange(25, 50),
                      defaultValue: '25')
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--offset',
                description:
                    'Start queries from specified index. Use for paginating results. Defaults to 0')
          ]),
      Subcommand(
          name: 'update:view',
          description: 'Update group details',
          args: [
            Arg(name: 'Group ID', description: 'The ID of an update group')
          ],
          options: [
            Option(
                name: '--json',
                description:
                    'Enable JSON output, non-JSON messages will be printed to stderr')
          ]),
      Subcommand(
          name: 'webhook:create',
          description: 'Create a webhook',
          options: [
            Option(
                name: '--event',
                description: 'Event type that triggers the webhook',
                args: [
                  Arg(name: 'Value', suggestions: [
                    FigSuggestion(name: 'BUILD'),
                    FigSuggestion(name: 'SUBMIT')
                  ])
                ]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--secret',
                description:
                    'Secret used to create a hash signature of the request payload, provided in the \'Expo-Signature\' header',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--url',
                description: 'Webhook URL',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(
          name: 'webhook:delete',
          description: 'Delete a webhook',
          args: [
            Arg(name: 'ID', description: 'ID of the webhook to delete')
          ],
          options: [
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode')
          ]),
      Subcommand(name: 'webhook:list', description: 'List webhooks', options: [
        Option(
            name: '--event',
            description: 'Event type that triggers the webhook',
            args: [
              Arg(name: 'Value', suggestions: [
                FigSuggestion(name: 'BUILD'),
                FigSuggestion(name: 'SUBMIT')
              ])
            ])
      ]),
      Subcommand(
          name: 'webhook:update',
          description: 'Update a webhook',
          options: [
            Option(
                name: '--event',
                description: 'Event type that triggers the webhook',
                args: [
                  Arg(name: 'Value', suggestions: [
                    FigSuggestion(name: 'BUILD'),
                    FigSuggestion(name: 'SUBMIT')
                  ])
                ]),
            Option(
                name: '--id',
                description: '(required) Webhook ID',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--non-interactive',
                description: 'Run the command in non-interactive mode'),
            Option(
                name: '--secret',
                description:
                    'Secret used to create a hash signature of the request payload, provided in the \'Expo-Signature\' header',
                args: [Arg(name: 'Value')]),
            Option(
                name: '--url',
                description: 'Webhook URL',
                args: [Arg(name: 'Value')])
          ]),
      Subcommand(
          name: 'webhook:view',
          description: 'View a webhook',
          args: [Arg(name: 'ID', description: 'ID of the webhook to view')])
    ]);
