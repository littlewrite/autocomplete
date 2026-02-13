// Auto-generated from TypeScript source: bw.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `bw` CLI
final FigSpec bwSpec = FigSpec(
  name: 'bw',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'Log into a user account',
      options: [

        Option(
          name: '--method',
          description: 'Two-step login method',
          exclusiveOn: ['--sso', '--apikey', '--check'],
          args: [
            Arg(
            name: 'method',
            description: 'Authenticator = 0, Email = 1, YubiKey = 3',
            suggestions: [

              FigSuggestion(
                name: '0',
                description: 'Authenticator'
              ),
              FigSuggestion(
                name: '1',
                description: 'Email'
              ),
              FigSuggestion(
                name: '3',
                description: 'YubiKey'
              )
            ]
          )
          ]
        ),
        Option(
          name: '--code',
          description: 'Two-step login code',
          exclusiveOn: ['--method', '--apikey', '--check'],
          args: [
            Arg(
            name: 'code',
            description: 'Valid TOTP Code'
          )
          ]
        ),
        Option(
          name: '--sso',
          description: 'Log in with Single-Sign On',
          exclusiveOn: [
            '--method',
            '--code',
            '--apikey',
            '--passwordenv',
            '--passwordfile',
            '--check',
          ]
        ),
        Option(
          name: '--apikey',
          description: 'Log in with an Api Key',
          exclusiveOn: [
            '--method',
            '--code',
            '--sso',
            '--passwordenv',
            '--passwordfile',
            '--check',
          ]
        ),
        Option(
          name: '--passwordenv',
          description: 'Environment variable storing your password',
          exclusiveOn: [
            '--method',
            '--code',
            '--sso',
            '--apikey',
            '--passwordfile',
            '--check',
          ],
          args: [
            Arg(
            name: 'passwordenv',
            description: 'Environmental Variable Name'
          )
          ]
        ),
        Option(
          name: '--passwordfile',
          description: 'Path to a file containing your password as its first line',
          exclusiveOn: ['--passwordenv', '--sso', '--apikey', '--check'],
          args: [
            Arg(
            name: 'passwordfile',
            template: 'filepaths',
            description: 'Path to a file containing your password'
          )
          ]
        ),
        Option(
          name: '--check',
          description: 'Check login status',
          exclusiveOn: [
            '--method',
            '--code',
            '--sso',
            '--apikey',
            '--passwordenv',
            '--passwordfile',
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for login command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'email',
          description: 'Email Address of Bitwarden Account',
          isOptional: true
        ),
        Arg(
          name: 'password',
          description: 'Master Password of Bitwarden Vault',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out of the current user account',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for logout command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'lock',
      description: 'Lock the vault and destroy active session keys',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for lock command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'unlock',
      description: 'Unlock the vault and return a new session key',
      options: [

        Option(
          name: '--check',
          description: 'Check lock status',
          exclusiveOn: ['--passwordenv', '--passwordfile']
        ),
        Option(
          name: '--passwordenv',
          description: 'Supply an environment variable storing your password',
          exclusiveOn: ['--passwordfile'],
          args: [
            Arg(
            name: 'passwordenv',
            description: 'Environmental variable containing your password'
          )
          ]
        ),
        Option(
          name: '--passwordfile',
          description: 'Path to a file containing your password as its first line',
          exclusiveOn: ['--passwordenv'],
          args: [
            Arg(
            name: 'passwordfile',
            description: 'File containing your password',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for unlock command',
          exclusiveOn: ['--check', '--passwordenv', '--passwordfile'],
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'password',
        description: 'Master Password for the Vault to be unlocked',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Pull the latest vault data from server',
      options: [

        Option(
          name: ['-f', '--force'],
          description: 'Force a full sync',
          exclusiveOn: ['--last']
        ),
        Option(
          name: '--last',
          description: 'Show details of the last sync',
          exclusiveOn: ['--force', '-f']
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for sync command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'generate',
      description: 'Generate a password/passphrase',
      subcommands: [

        Subcommand(
          name: ['-p', '--passphrase'],
          description: 'Generate a passphrase',
          priority: 55,
          options: [

            Option(
              name: '--words',
              description: 'Number of words to include in passphrase',
              exclusiveOn: [
                '-u',
                '--uppercase',
                '-l',
                '--lowercase',
                '-n',
                '--number',
                '-s',
                '--special',
                '--length',
                '-h',
                '--help',
              ],
              args: [
                Arg(
                name: 'Number of words',
                description: 'Number of words to include in passphrase'
              )
              ]
            ),
            Option(
              name: ['-c', '--capitalize'],
              exclusiveOn: [
                '-u',
                '--uppercase',
                '-l',
                '--lowercase',
                '-n',
                '--number',
                '-s',
                '--special',
                '--length',
                '-h',
                '--help',
              ],
              description: 'Title case passphrase'
            ),
            Option(
              name: '--separator',
              description: 'Define word separator',
              insertValue: '--separator \'{cursor}\'',
              exclusiveOn: [
                '-u',
                '--uppercase',
                '-l',
                '--lowercase',
                '-n',
                '--number',
                '-s',
                '--special',
                '--length',
                '-h',
                '--help',
              ],
              args: [
                Arg(
                name: 'separator',
                description: 'Character to delineate words in generated passphrase'
              )
              ]
            ),
            Option(
              name: '--includeNumber',
              description: 'Include a number in output',
              exclusiveOn: [
                '-u',
                '--uppercase',
                '-l',
                '--lowercase',
                '-n',
                '--number',
                '-s',
                '--special',
                '--length',
                '-h',
                '--help',
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: ['-u', '--uppercase'],
          description: 'Include uppercase characters',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-h',
            '--help',
          ]
        ),
        Option(
          name: ['-l', '--lowercase'],
          description: 'Include lowercase characters',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-h',
            '--help',
          ]
        ),
        Option(
          name: ['-n', '--number'],
          description: 'Include numeric characters',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-h',
            '--help',
          ]
        ),
        Option(
          name: ['-s', '--special'],
          description: 'Include special characters',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-h',
            '--help',
          ]
        ),
        Option(
          name: '--length',
          description: 'Define password length',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-h',
            '--help',
          ],
          args: [
            Arg(
            name: 'length',
            description: 'Output length'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for generate command',
          exclusiveOn: [
            '-p',
            '--passphrase',
            '--words',
            '-c',
            '--capitalize',
            '--separator',
            '--includeNumber',
            '-u',
            '--uppercase',
            '-l',
            '--lowercase',
            '-n',
            '--number',
            '-s',
            '--special',
            '--length',
          ],
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'encode',
      description: 'Base 64 encode stdin',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for encode command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Configure CLI settings',
      options: [

        Option(
          name: '--web-vault',
          description: 'Provides a custom web vault URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'URL for a self-hosted Bitwarden Server'
          )
          ]
        ),
        Option(
          name: '--api',
          description: 'Provides a custom API URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'API URL for a self-hosted Bitwarden Server'
          )
          ]
        ),
        Option(
          name: '--identity',
          description: 'Provides a custom identity URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'Custom Identity URL that differs from the base URL'
          )
          ]
        ),
        Option(
          name: '--icons',
          description: 'Provides a custom icon service URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'Custom icon service URL that differs from the base URL'
          )
          ]
        ),
        Option(
          name: '--notifications',
          description: 'Provides a custom notifications URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'Custom notifications URL that differs from the base URL'
          )
          ]
        ),
        Option(
          name: '--events',
          description: 'Provides a custom events URL that differs from the base URL',
          args: [
            Arg(
            name: 'url',
            description: 'Custom events URL that differs from the base URL'
          )
          ]
        ),
        Option(
          name: '--key-connector',
          description: 'Provides the URL for your Key Connector server',
          args: [
            Arg(
            name: 'url',
            description: 'Custom Key Connector URL that differs from the base URL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the config command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'setting',
          description: 'Setting to configure',
          suggestions: [

            FigSuggestion(name: 'server')
          ]
        ),
        Arg(
          name: 'value',
          description: 'Value to set'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Check for updates',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for update command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate shell completions',
      options: [

        Option(
          name: '--shell',
          description: 'Shell to generate completions for',
          args: [
            Arg(
            name: 'shell',
            suggestions: [

              FigSuggestion(name: 'zsh')
            ],
            description: 'Shell to generate completions for',
            defaultValue: 'zsh'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for completion command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Show server details, last sync time & date, user information, and vault status',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for status command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Start a RESTful API webserver',
      options: [

        Option(
          name: '--hostname',
          description: 'The hostname to bind your API webserver to',
          args: [
            Arg(
            name: 'hostnam'
          )
          ]
        ),
        Option(
          name: '--port',
          description: 'The port to run your API webserver on',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for serve command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'Retrieves an array of objects (items, folders, collections, org-collections, org-members, organizations) from your Vault',
      options: [

        Option(
          name: '--search',
          description: 'Perform a search on the listed objects',
          args: [
            Arg(
            name: 'searc'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Filter items of type login with a url-match search',
          args: [
            Arg(
            name: 'ur'
          )
          ]
        ),
        Option(
          name: '--folderid',
          description: 'Filter items by folder id',
          args: [
            Arg(
            name: 'folderi'
          )
          ]
        ),
        Option(
          name: '--collectionid',
          description: 'Filter items by collection id',
          args: [
            Arg(
            name: 'collectioni'
          )
          ]
        ),
        Option(
          name: '--organizationid',
          description: 'Filter items or collections by organization id',
          args: [
            Arg(
            name: 'organizationi'
          )
          ]
        ),
        Option(
          name: '--trash',
          description: 'Filter items that are in the trash'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the list command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'object',
        suggestions: [

          FigSuggestion(name: 'items'),
          FigSuggestion(name: 'folders'),
          FigSuggestion(name: 'collections'),
          FigSuggestion(name: 'org-collections'),
          FigSuggestion(name: 'org-members'),
          FigSuggestion(name: 'organizations')
        ]
      )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get an object from the vault',
      subcommands: [

        Subcommand(
          name: 'template',
          description: 'Type of template to get',
          args: [
            Arg(
            name: 'object',
            suggestions: [

              FigSuggestion(name: 'item'),
              FigSuggestion(name: 'item.field'),
              FigSuggestion(name: 'item.login'),
              FigSuggestion(name: 'item.login.uri'),
              FigSuggestion(name: 'item.card'),
              FigSuggestion(name: 'item.identity'),
              FigSuggestion(name: 'item.securenote'),
              FigSuggestion(name: 'folder'),
              FigSuggestion(name: 'collection'),
              FigSuggestion(name: 'item-collections'),
              FigSuggestion(name: 'org-collection'),
              FigSuggestion(name: 'send.text'),
              FigSuggestion(name: 'send.file')
            ]
          )
          ]
        ),
        Subcommand(
          name: 'attachment',
          options: [

            Option(
              name: '--itemid',
              description: 'Vault Item ID containing attachment',
              args: [
                Arg(
                name: 'itemid',
                description: 'ID of Vault Item containing attachment'
              )
              ]
            ),
            Option(
              name: '--output',
              description: 'Output directory and/or filename',
              args: [
                Arg(
                name: 'output',
                description: 'Output directory and/or filename',
                template: 'folders'
              )
              ]
            )
          ]
        )
      ],
      options: [

        Option(
          name: '--id',
          description: 'Exact id of the object',
          args: [
            Arg(
            name: 'id',
            description: 'Object id'
          )
          ]
        ),
        Option(
          name: '--organizationid',
          description: 'Organization id for an organization object',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization id'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the get command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object',
          suggestions: [

            FigSuggestion(name: 'item'),
            FigSuggestion(name: 'username'),
            FigSuggestion(name: 'password'),
            FigSuggestion(name: 'uri'),
            FigSuggestion(name: 'totp'),
            FigSuggestion(name: 'exposed'),
            FigSuggestion(name: 'folder'),
            FigSuggestion(name: 'collection')
          ],
          description: 'Type of object to get from the Vault'
        ),
        Arg(
          name: 'id',
          description: 'Search term or object\'s globally unique id'
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create an object in the vault',
      options: [

        Option(
          name: '--file',
          description: 'Path to file for attachment',
          args: [
            Arg(
            name: 'file',
            description: 'File to attach',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--itemid',
          description: 'Attachment\'s item id',
          args: [
            Arg(
            name: 'itemid',
            description: 'Item ID'
          )
          ]
        ),
        Option(
          name: '--organizationid',
          description: 'Organization id for an organization object',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization ID'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the create command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object',
          description: 'Object to be created',
          suggestions: [

            FigSuggestion(name: 'item'),
            FigSuggestion(name: 'attachment'),
            FigSuggestion(name: 'folder'),
            FigSuggestion(name: 'org-collection')
          ]
        ),
        Arg(
          name: 'encodedJson',
          description: 'Encoded Json instead of uploading to Vault'
        )
      ]
    ),
    Subcommand(
      name: 'edit',
      description: 'Edit an object from the vault',
      options: [

        Option(
          name: '--organizationid',
          description: 'Organization id for an organization object',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization ID'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the edit command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object',
          description: 'Type of Vault Object to edit',
          suggestions: [

            FigSuggestion(name: 'item'),
            FigSuggestion(name: 'item-collections'),
            FigSuggestion(name: 'folder'),
            FigSuggestion(name: 'org-collection')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Object\'s globally unique id'
        ),
        Arg(
          name: 'encodedJson',
          isOptional: true,
          description: 'Encoded json of the object to create'
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete an object from the vault',
      options: [

        Option(
          name: '--itemid',
          description: 'Attachment\'s item id',
          args: [
            Arg(
            name: 'itemid',
            description: 'Item I'
          )
          ],
          isDangerous: true
        ),
        Option(
          name: '--organizationid',
          description: 'Organization id for an organization object',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization I'
          )
          ],
          isDangerous: true
        ),
        Option(
          name: ['-p', '--permanent'],
          description: 'Permanently deletes the item instead of soft-deleting it (item only)',
          isDangerous: true
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the delete command',
          exclusiveOn: ['--itemid', '--organizationid', '-p', '--permanent'],
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object',
          description: 'Object to delete',
          suggestions: [

            FigSuggestion(name: 'item'),
            FigSuggestion(name: 'attachment'),
            FigSuggestion(name: 'folder'),
            FigSuggestion(name: 'org-collection')
          ]
        ),
        Arg(
          name: 'id',
          description: 'Unique Vault ID'
        )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Restores an object from the trash',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for the restore command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object'
        ),
        Arg(
          name: 'id'
        )
      ]
    ),
    Subcommand(
      name: 'move',
      description: 'Transfers a Vault item to an Organization',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for the move command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'id'
        ),
        Arg(
          name: 'organizationId'
        ),
        Arg(
          name: 'encodedJson',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'confirm',
      description: 'Confirm an object to the organization',
      options: [

        Option(
          name: '--organizationid',
          description: 'Organization id for an organization object',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization ID'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the confirm command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'object',
          description: 'Valid objects are: org-member'
        ),
        Arg(
          name: 'id',
          description: 'Organization id for an organization object'
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import vault data from a file',
      options: [

        Option(
          name: '--formats',
          description: 'List supported file formats'
        ),
        Option(
          name: '--organizationid',
          description: 'ID of the organization to import to',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization ID to be imported to'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the import command',
          priority: 49
        )
      ],
      args: [

        Arg(
          name: 'format',
          suggestions: [

            FigSuggestion(name: '1password1pif'),
            FigSuggestion(name: '1password1pux'),
            FigSuggestion(name: '1passwordmaccsv'),
            FigSuggestion(name: '1passwordwincsv'),
            FigSuggestion(name: 'ascendocsv'),
            FigSuggestion(name: 'avastcsv'),
            FigSuggestion(name: 'avastjson'),
            FigSuggestion(name: 'aviracsv'),
            FigSuggestion(name: 'bitwardencsv'),
            FigSuggestion(name: 'bitwardenjson'),
            FigSuggestion(name: 'blackberrycsv'),
            FigSuggestion(name: 'blurcsv'),
            FigSuggestion(name: 'buttercupcsv'),
            FigSuggestion(name: 'chromecsv'),
            FigSuggestion(name: 'clipperzhtml'),
            FigSuggestion(name: 'codebookcsv'),
            FigSuggestion(name: 'dashlanecsv'),
            FigSuggestion(name: 'dashlanejson'),
            FigSuggestion(name: 'encryptrcsv'),
            FigSuggestion(name: 'enpasscsv'),
            FigSuggestion(name: 'enpassjson'),
            FigSuggestion(name: 'firefoxcsv'),
            FigSuggestion(name: 'fsecurefsk'),
            FigSuggestion(name: 'gnomejson'),
            FigSuggestion(name: 'kasperskytxt'),
            FigSuggestion(name: 'keepass2xml'),
            FigSuggestion(name: 'keepassxcsv'),
            FigSuggestion(name: 'keepercsv'),
            FigSuggestion(name: 'lastpasscsv'),
            FigSuggestion(name: 'logmeoncecsv'),
            FigSuggestion(name: 'meldiumcsv'),
            FigSuggestion(name: 'msecurecsv'),
            FigSuggestion(name: 'mykicsv'),
            FigSuggestion(name: 'nordpasscsv'),
            FigSuggestion(name: 'operacsv'),
            FigSuggestion(name: 'padlockcsv'),
            FigSuggestion(name: 'passboltcsv'),
            FigSuggestion(name: 'passkeepcsv'),
            FigSuggestion(name: 'passmanjson'),
            FigSuggestion(name: 'passpackcsv'),
            FigSuggestion(name: 'passwordagentcsv'),
            FigSuggestion(name: 'passwordbossjson'),
            FigSuggestion(name: 'passworddragonxml'),
            FigSuggestion(name: 'passwordwallettxt'),
            FigSuggestion(name: 'pwsafexml'),
            FigSuggestion(name: 'remembearcsv'),
            FigSuggestion(name: 'roboformcsv'),
            FigSuggestion(name: 'safaricsv'),
            FigSuggestion(name: 'safeincloudxml'),
            FigSuggestion(name: 'saferpasscsv'),
            FigSuggestion(name: 'securesafecsv'),
            FigSuggestion(name: 'splashidcsv'),
            FigSuggestion(name: 'stickypasswordxml'),
            FigSuggestion(name: 'truekeycsv'),
            FigSuggestion(name: 'upmcsv'),
            FigSuggestion(name: 'vivaldicsv'),
            FigSuggestion(name: 'yoticsv'),
            FigSuggestion(name: 'zohovaultcsv')
          ],
          description: 'Format of import file',
          defaultValue: 'bitwardenjson'
        ),
        Arg(
          name: 'input',
          template: 'filepaths',
          description: 'File to be imported'
        )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Export vault data to a CSV or JSON file',
      options: [

        Option(
          name: '--output',
          description: 'Set output directory or filename',
          args: [
            Arg(
            name: 'output',
            template: 'folders',
            description: 'Path to export to'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Export file format',
          args: [
            Arg(
            name: 'format',
            suggestions: [

              FigSuggestion(name: 'csv'),
              FigSuggestion(name: 'json'),
              FigSuggestion(name: 'encrypted_json')
            ],
            description: 'Export format',
            defaultValue: 'json'
          )
          ]
        ),
        Option(
          name: '--password',
          description: 'Use a password to encrypt instead of your Bitwarden account encryption key. Only applies to the encrypted_json format',
          args: [
            Arg(
            name: 'password',
            isOptional: true,
            description: 'Password that will encrypt this export'
          )
          ]
        ),
        Option(
          name: '--organizationid',
          description: 'Enter organization id for an organization',
          args: [
            Arg(
            name: 'organizationid',
            description: 'Organization id'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the export command',
          priority: 49
        )
      ]
    ),
    Subcommand(
      name: 'share',
      description: '--DEPRECATED-- Move an item to an organization',
      icon: 'fig://icon?type=alert',
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Display help for the share command',
          priority: 55
        )
      ],
      args: [

        Arg(
          name: 'id',
          description: 'Object\'s globally unique ID'
        ),
        Arg(
          name: 'organizationId',
          description: 'Organization\'s globally unique ID'
        ),
        Arg(
          name: 'encodedJson',
          description: 'Encoded json of an array of collection ids. Can also be piped into stdin',
          isOptional: true
        )
      ]
    ),
    Subcommand(
      name: 'send',
      description: 'Work with Bitwarden Sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all the Sends owned by you',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the Send command'
            )
          ]
        ),
        Subcommand(
          name: 'template',
          description: 'Get json templates for Send objects',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the template sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'object',
            description: 'Json template to fetch',
            suggestions: [

              FigSuggestion(name: 'send.text'),
              FigSuggestion(name: 'send.file')
            ]
          )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get Sends owned by you',
          options: [

            Option(
              name: '--output',
              description: 'Output directory or filename for attachment',
              args: [
                Arg(
                name: 'output',
                description: '',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: '--text',
              description: 'Specifies to return the text content of a Send'
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for the Send get sub-command'
            )
          ],
          args: [
            Arg(
            name: 'Send ID',
            description: 'Send ID'
          )
          ]
        ),
        Subcommand(
          name: 'receive',
          description: 'Access a Bitwarden Send from a url',
          options: [

            Option(
              name: '--password',
              description: 'Password needed to access the Send',
              exclusiveOn: ['--passwordenv', '--passwordfile'],
              args: [
                Arg(
                name: 'password',
                description: 'Password for Send'
              )
              ]
            ),
            Option(
              name: '--passwordenv',
              description: 'Environment variable storing the Send\'s password',
              exclusiveOn: ['--password', '--passwordfile'],
              args: [
                Arg(
                name: 'passwordenv',
                description: 'Environment variable containing Send\'s password'
              )
              ]
            ),
            Option(
              name: '--passwordfile',
              description: 'Path to a file containing the Send\'s password as its first line',
              exclusiveOn: ['--passwordenv', '--password'],
              args: [
                Arg(
                name: 'passwordfile',
                description: 'File containing Send\'s password',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--obj',
              description: 'Return the Send\'s json object rather than the Send\'s content'
            ),
            Option(
              name: '--output',
              description: 'Specify a file path to save a File-type Send to',
              args: [
                Arg(
                name: 'location',
                description: 'Path to save File-type Send',
                template: 'folders'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for the receive sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'Send URL',
            description: 'URL of Send to download'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Send',
          options: [

            Option(
              name: '--file',
              description: 'File to Send. Can also be specified in parent\'s JSON',
              exclusiveOn: ['--text', '--hidden'],
              args: [
                Arg(
                name: 'path',
                description: 'Path to file to attach as content',
                template: 'filepaths'
              )
              ]
            ),
            Option(
              name: '--text',
              description: 'Text to Send. Can also be specified in parent\'s JSON',
              exclusiveOn: ['--file'],
              args: [
                Arg(
                name: 'text',
                description: 'Text to include as content'
              )
              ]
            ),
            Option(
              name: '--hidden',
              dependsOn: ['--text'],
              description: 'Text hidden flag. Valid only with the --text option'
            ),
            Option(
              name: '--password',
              description: 'Optional password to access this Send. Can also be specified in JSON',
              args: [
                Arg(
                name: 'password',
                description: 'Password to secure the Send'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for the create sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'encodedJson',
            description: 'Encoded Json to be uploaded'
          )
          ]
        ),
        Subcommand(
          name: 'edit',
          description: 'Edit a Send',
          options: [

            Option(
              name: '--itemid',
              description: 'Overrides the itemId provided in [encodedJson]',
              args: [
                Arg(
                name: 'itemid',
                description: 'ItemID'
              )
              ]
            ),
            Option(
              name: ['-h', '--help'],
              description: 'Display help for the edit sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'encodedJson',
            description: 'Encoded Json'
          )
          ]
        ),
        Subcommand(
          name: 'remove-password',
          description: 'Removes the saved password from a Send',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the remove-password sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'Send ID',
            description: 'ID of the Send to remove password from'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Send',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the delete sub-command',
              priority: 49
            )
          ],
          args: [
            Arg(
            name: 'Send ID',
            description: 'ID of the Send to delete'
          )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for the Send command',
          priority: 49,
          args: [
            Arg(
            name: 'command'
          )
          ]
        )
      ],
      options: [

        Option(
          name: ['-f', '--file'],
          description: 'Specifies that <data> is a filepath'
        ),
        Option(
          name: ['-d', '--deleteInDays'],
          description: 'The number of days in the future to set deletion date (defaults to 7 if not specified)',
          args: [
            Arg(
            name: 'days',
            defaultValue: '7',
            isOptional: true
          )
          ]
        ),
        Option(
          name: ['-a', '--maxAccessCount'],
          description: 'The max number of accesses allowed for this Send',
          args: [
            Arg(
            name: 'amount',
            description: 'Max number of accesses allowed'
          )
          ]
        ),
        Option(
          name: '--hidden',
          description: 'Hide <data> in web by default. Valid only if --file is not set'
        ),
        Option(
          name: ['-n', '--name'],
          description: 'The name of the Send. Defaults to a guid for text Sends and the filename for files',
          args: [
            Arg(
            name: 'name',
            description: 'Send name'
          )
          ]
        ),
        Option(
          name: '--notes',
          description: 'Notes to add to the Send',
          args: [
            Arg(
            name: 'notes',
            description: 'Notes to add to the Send'
          )
          ]
        ),
        Option(
          name: '--fullObject',
          description: 'Specifies that the full Send object should be returned rather than just the access url'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the Send command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'data',
        description: 'Encoded Json data'
      )
      ]
    ),
    Subcommand(
      name: 'device-approval',
      description: 'Manage device approval requests sent to organizations that use SSO with trusted devices',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all pending requests for an organisation',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the list sub-command',
              priority: 1
            ),
            Option(
              name: '--organizationid',
              description: 'The organisation id (required)',
              args: [
                Arg(
                name: 'organizationid',
                description: 'Organisation ID'
              )
              ],
              priority: 100
            )
          ]
        ),
        Subcommand(
          name: 'approve',
          description: 'Approve a pending request',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the approve sub-command',
              priority: 49
            ),
            Option(
              name: 'requestId',
              description: 'The id of the request to approve',
              args: [
                Arg(
                name: 'requestId',
                description: 'The id of the request to approve',
                isVariadic: true
              )
              ]
            ),
            Option(
              name: '--organizationid',
              description: 'The organisation id (required)',
              args: [
                Arg(
                name: 'organizationid',
                description: 'Organisation ID'
              )
              ],
              priority: 100
            )
          ]
        ),
        Subcommand(
          name: 'approve-all',
          description: 'Approve all pending requests for an organisation',
          icon: 'fig://icon?type=alert',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the approve-all sub-command',
              priority: 49
            ),
            Option(
              name: '--organizationid',
              description: 'The organisation id (required)',
              args: [
                Arg(
                name: 'organizationid',
                description: 'Organisation ID'
              )
              ],
              priority: 100
            )
          ]
        ),
        Subcommand(
          name: 'deny',
          description: 'Deny a pending request',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the deny sub-command',
              priority: 49
            ),
            Option(
              name: 'requestId',
              description: 'The id of the request to deny',
              args: [
                Arg(
                name: 'requestId',
                description: 'The id of the request to approve',
                isVariadic: true
              )
              ]
            ),
            Option(
              name: '--organizationid',
              description: 'The organisation id (required)',
              args: [
                Arg(
                name: 'organizationid',
                description: 'Organisation ID'
              )
              ],
              priority: 100
            )
          ]
        ),
        Subcommand(
          name: 'deny-all',
          description: 'Deny all pending requests for an organisation',
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Display help for the deny-all sub-command',
              priority: 49
            ),
            Option(
              name: '--organizationid',
              description: 'The organisation id (required)',
              args: [
                Arg(
                name: 'organizationid',
                description: 'Organisation ID'
              )
              ],
              priority: 100
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Display help for command',
          priority: 49,
          args: [
            Arg(
            name: 'command'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'receive',
      description: 'Access a Bitwarden Send from a url',
      options: [

        Option(
          name: '--password',
          description: 'Password needed to access the Send',
          exclusiveOn: ['--passwordenv', '--passwordfile'],
          args: [
            Arg(
            name: 'password',
            description: 'Password for Send'
          )
          ]
        ),
        Option(
          name: '--passwordenv',
          description: 'Environment variable storing the Send\'s password',
          exclusiveOn: ['--password', '--passwordfile'],
          args: [
            Arg(
            name: 'passwordenv',
            description: 'Environment variable containing Send\'s password'
          )
          ]
        ),
        Option(
          name: '--passwordfile',
          description: 'Path to a file containing the Send\'s password as its first line',
          exclusiveOn: ['--passwordenv', '--password'],
          args: [
            Arg(
            name: 'passwordfile',
            description: 'File containing Send\'s password',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--obj',
          description: 'Return the Send\'s json object rather than the Send\'s content'
        ),
        Option(
          name: '--output',
          description: 'Specify a file path to save a File-type Send to',
          args: [
            Arg(
            name: 'location',
            description: 'Path to save File-type Send',
            template: 'folders'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Display help for the receive sub-command',
          priority: 49
        )
      ],
      args: [
        Arg(
        name: 'Send URL',
        description: 'URL of Send to download'
      )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Display help for the Bitwarden CLI tool',
      priority: 49,
      args: [
        Arg(
        name: 'command',
        description: 'Subcommand to display help for',
        suggestions: [

          FigSuggestion(name: 'login'),
          FigSuggestion(name: 'logout'),
          FigSuggestion(name: 'lock'),
          FigSuggestion(name: 'unlock'),
          FigSuggestion(name: 'sync'),
          FigSuggestion(name: 'generate'),
          FigSuggestion(name: 'encode'),
          FigSuggestion(name: 'config'),
          FigSuggestion(name: 'update'),
          FigSuggestion(name: 'completion'),
          FigSuggestion(name: 'status'),
          FigSuggestion(name: 'serve'),
          FigSuggestion(name: 'list'),
          FigSuggestion(name: 'get'),
          FigSuggestion(name: 'create'),
          FigSuggestion(name: 'edit'),
          FigSuggestion(name: 'delete'),
          FigSuggestion(name: 'restore'),
          FigSuggestion(name: 'move'),
          FigSuggestion(name: 'confirm'),
          FigSuggestion(name: 'import'),
          FigSuggestion(name: 'export'),
          FigSuggestion(name: 'share'),
          FigSuggestion(name: 'send'),
          FigSuggestion(name: 'receive'),
          FigSuggestion(name: 'device-approval')
        ],
        isOptional: true
      )
      ]
    )
  ],
  options: [

    Option(
      name: '--pretty',
      description: 'Format output. JSON is tabbed with two spaces',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--raw',
      description: 'Return raw output instead of a descriptive message',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--response',
      description: 'Return a JSON formatted version of response output',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--cleanexit',
      description: 'Exit with a success exit code (0) unless an error is thrown',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--quiet',
      description: 'Don\'t return anything to stdout',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--nointeraction',
      description: 'Do not prompt for interactive user input',
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: '--session',
      description: 'Pass session key instead of reading from env',
      args: [
        Arg(
        name: 'session',
        description: 'Session Key'
      )
      ],
      isPersistent: true,
      priority: 40
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Output BW CLI tool version number',
      priority: 40
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command',
      priority: 49
    )
  ]
);
