// Auto-generated from TypeScript source: cli.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cli` CLI
final FigSpec cliSpec = FigSpec(
  name: 'cli',
  description: 'Manage packages and bundle versions in Capgo Cloud',
  subcommands: [
    Subcommand(
      name: 'login',
      description: 'Save apikey to your machine or folder',
      args: [
        Arg(
        name: 'apikey'
      )
      ],
      options: [
        Option(
          name: '--local',
          description: 'Only save in local folder'
        )
      ]
    ),
    Subcommand(
      name: 'doctor',
      description: 'Get info about your Capgo app install'
    ),
    Subcommand(
      name: 'init',
      description: 'Init a new app',
      args: [
        Arg(
          name: 'apikey'
        ),
        Arg(
          name: 'appId'
        )
      ],
      options: [
        Option(
          name: ['-n', '--name'],
          description: 'App name',
          args: [
            Arg(
            name: 'name'
          )
          ]
        ),
        Option(
          name: ['-i', '--icon'],
          description: 'App icon path',
          args: [
            Arg(
            name: 'icon',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-a', '--apikey'],
          description: 'Apikey to link to your account',
          args: [
            Arg(
            name: 'apikey'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'app',
      description: 'Manage app',
      subcommands: [
        Subcommand(
          name: ['add', 'a'],
          description: 'Add a new app in Capgo Cloud',
          args: [
            Arg(
            name: 'appId'
          )
          ],
          options: [
            Option(
              name: ['-n', '--name'],
              description: 'App name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: ['-i', '--icon'],
              description: 'App icon path',
              args: [
                Arg(
                name: 'icon',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['delete', 'd'],
          description: 'Delete an app in Capgo Cloud',
          args: [
            Arg(
            name: 'appId'
          )
          ],
          options: [
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['list', 'l'],
          description: 'List apps in Capgo Cloud',
          options: [
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'debug',
          description: 'Listen for live updates event in Capgo Cloud to debug your app',
          args: [
            Arg(
            name: 'appId'
          )
          ],
          options: [
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            ),
            Option(
              name: ['-d', '--device'],
              description: 'The specific device to debug',
              args: [
                Arg(
                name: 'device'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['set', 's'],
          description: 'Set an app in Capgo Cloud',
          args: [
            Arg(
            name: 'appId'
          )
          ],
          options: [
            Option(
              name: ['-n', '--name'],
              description: 'App name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: ['-i', '--icon'],
              description: 'App icon path',
              args: [
                Arg(
                name: 'icon',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            ),
            Option(
              name: ['-r', '--retention'],
              description: 'Retention period of app bundle in days',
              args: [
                Arg(
                name: 'retention'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'bundle',
      description: 'Manage bundle',
      subcommands: [
        Subcommand(
          name: ['delete', 'd'],
          description: 'Delete a bundle in Capgo Cloud',
          args: [
            Arg(
              name: 'bundleId'
            ),
            Arg(
              name: 'appId'
            )
          ],
          options: [
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: ['decrypt', 'l'],
          description: 'Decrypt a signed zip bundle',
          args: [
            Arg(
              name: 'zipPath',
              template: 'filepaths'
            ),
            Arg(
              name: 'sessionKey'
            )
          ],
          options: [
            Option(
              name: '--key',
              description: 'Custom path for private signing key',
              args: [
                Arg(
                name: 'key',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--key-data',
              description: 'Base64 private signing key',
              args: [
                Arg(
                name: 'keyData'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'encrypt',
          description: 'Encrypt a zip bundle',
          args: [
            Arg(
            name: 'zipPath',
            template: 'filepaths'
          )
          ],
          options: [
            Option(
              name: '--key',
              description: 'Custom path for private signing key',
              args: [
                Arg(
                name: 'key',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--key-data',
              description: 'Base64 private signing key',
              args: [
                Arg(
                name: 'keyData'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'zip',
          description: 'Zip a bundle',
          args: [
            Arg(
            name: 'appId'
          )
          ],
          options: [
            Option(
              name: ['-p', '--path'],
              description: 'Path of the folder to upload',
              args: [
                Arg(
                name: 'path',
                template: 'folders'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'channel',
      description: 'Manage channel',
      subcommands: [
        Subcommand(
          name: ['add', 'a'],
          description: 'Create channel',
          args: [
            Arg(
              name: 'channelId'
            ),
            Arg(
              name: 'appId'
            )
          ],
          options: [
            Option(
              name: ['-d', '--default'],
              description: 'Set the channel as default'
            )
          ]
        ),
        Subcommand(
          name: ['delete', 'd'],
          description: 'Delete channel',
          args: [
            Arg(
              name: 'channelId'
            ),
            Arg(
              name: 'appId'
            )
          ]
        ),
        Subcommand(
          name: ['list', 'l'],
          description: 'List channel',
          args: [
            Arg(
            name: 'appId'
          )
          ]
        ),
        Subcommand(
          name: 'currentBundle',
          description: 'Get current bundle for specific channel in Capgo Cloud',
          args: [
            Arg(
              name: 'channel'
            ),
            Arg(
              name: 'appId'
            )
          ],
          options: [
            Option(
              name: ['-c', '--channel'],
              description: 'Channel to get the current bundle from',
              args: [
                Arg(
                name: 'channel'
              )
              ]
            ),
            Option(
              name: ['-a', '--apikey'],
              description: 'Apikey to link to your account',
              args: [
                Arg(
                name: 'apikey'
              )
              ]
            ),
            Option(
              name: '--quiet',
              description: 'Only print the bundle version'
            )
          ]
        ),
        Subcommand(
          name: ['set', 's'],
          description: 'Set channel',
          args: [
            Arg(
              name: 'channelId'
            ),
            Arg(
              name: 'appId'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'key',
      description: 'Manage key',
      subcommands: [
        Subcommand(
          name: 'save',
          description: 'Save base64 signing key in capacitor config, useful for CI',
          options: [
            Option(
              name: ['-f', '--force'],
              description: 'Force generate a new one'
            ),
            Option(
              name: '--key',
              description: 'Key path to save in capacitor config',
              args: [
                Arg(
                name: 'key',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--key-data',
              description: 'Key data to save in capacitor config',
              args: [
                Arg(
                name: 'keyData'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new signing key',
          options: [
            Option(
              name: ['-f', '--force'],
              description: 'Force generate a new one'
            )
          ]
        )
      ]
    )
  ]
);
