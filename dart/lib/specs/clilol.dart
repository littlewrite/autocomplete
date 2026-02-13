// Auto-generated from TypeScript source: clilol.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `clilol` CLI
final FigSpec clilolSpec = FigSpec(
  name: 'clilol',
  description: 'A cli for omg.lol',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create things',
      subcommands: [

        Subcommand(
          name: 'dns',
          description: 'Create a DNS record',
          args: [

            Arg(
              name: 'name',
              description: 'Name of the DNS record'
            ),
            Arg(
              name: 'type',
              description: 'Type of the DNS record'
            ),
            Arg(
              name: 'data',
              description: 'Data of the DNS record'
            )
          ],
          options: [

            Option(
              name: ['--priority', '-p'],
              description: 'Priority of the DNS record',
              args: [
                Arg(
                name: 'priority',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--ttl', '-T'],
              description: 'Time to live of the DNS record',
              args: [
                Arg(
                name: 'ttl',
                defaultValue: '360'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'paste',
          description: 'Create or update a paste',
          args: [
            Arg(
            name: 'title',
            description: 'Title of the past'
          )
          ],
          options: [

            Option(
              name: ['--filename', '-f'],
              description: 'File to read paste from (default stdin)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: ['--listed', '-l'],
              description: 'Create paste as listed (default false)'
            )
          ]
        ),
        Subcommand(
          name: 'picture',
          description: 'Upload a picture to some.pics',
          args: [
            Arg(
            name: 'filename',
            description: 'Filename of the image fil'
          )
          ],
          options: [

            Option(
              name: ['--description', '-d'],
              description: 'Description of the picture (default empty/unlisted)'
            )
          ]
        ),
        Subcommand(
          name: 'purl',
          description: 'Create a PURL',
          args: [

            Arg(
              name: 'name',
              description: 'Name of the PURL'
            ),
            Arg(
              name: 'url',
              description: 'URL that the PURL redirects to'
            )
          ],
          options: [

            Option(
              name: ['--listed', '-l'],
              description: 'Create as listed (default false)'
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Create a status',
          args: [
            Arg(
            name: 'text',
            description: 'Text of the statu'
          )
          ],
          options: [

            Option(
              name: ['--emoji', '-e'],
              description: 'Emoji to add to status (default sparkles)',
              args: [
                Arg(
                name: 'emoj'
              )
              ]
            ),
            Option(
              name: '--skip-mastodon-post',
              description: 'Do not cross-post to Mastodon'
            )
          ]
        ),
        Subcommand(
          name: 'weblog',
          description: 'Create a weblog entry',
          options: [

            Option(
              name: ['--filename', '-f'],
              description: 'File to read entry from (default stdin)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete things',
      subcommands: [

        Subcommand(
          name: 'account',
          description: 'Delete information about your account',
          subcommands: [

            Subcommand(
              name: 'session',
              description: 'Delete a session',
              args: [
                Arg(
                name: 'id',
                description: 'ID of the session to delete',
                isDangerous: true
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'dns',
          description: 'Delete a DNS record',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the record to delete',
            isDangerous: true
          )
          ]
        ),
        Subcommand(
          name: 'paste',
          description: 'Delete a paste',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the paste to delete',
            isDangerous: true
          )
          ]
        ),
        Subcommand(
          name: 'picture',
          description: 'Delete a picture from some.pics',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the picture to delete',
            isDangerous: true
          )
          ]
        ),
        Subcommand(
          name: 'purl',
          description: 'Delete a PURL',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the PURL to delete',
            isDangerous: true
          )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Delete a status',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the status to delete',
            isDangerous: true
          )
          ]
        ),
        Subcommand(
          name: 'weblog',
          description: 'Delete a weblog entry',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the weblog entry to delete',
            isDangerous: true
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'get',
      description: 'Get things',
      subcommands: [

        Subcommand(
          name: 'account',
          description: 'Get information about your account',
          subcommands: [

            Subcommand(
              name: 'info',
              description: 'Get info about your account'
            ),
            Subcommand(
              name: 'name',
              description: 'Get your account name'
            ),
            Subcommand(
              name: 'settings',
              description: 'Get your account settings'
            )
          ]
        ),
        Subcommand(
          name: 'address',
          description: 'Get information about an address',
          subcommands: [

            Subcommand(
              name: 'availability',
              description: 'Get address availability',
              args: [
                Arg(
                name: 'address',
                description: 'Address to ge'
              )
              ]
            ),
            Subcommand(
              name: 'expiration',
              description: 'Get address expiration',
              args: [
                Arg(
                name: 'address',
                description: 'Address to ge'
              )
              ]
            ),
            Subcommand(
              name: 'info',
              description: 'Get information about an address',
              subcommands: [

                Subcommand(
                  name: 'private',
                  description: 'Get private information about an address',
                  args: [
                    Arg(
                    name: 'address',
                    description: 'Address to ge'
                  )
                  ]
                ),
                Subcommand(
                  name: 'public',
                  description: 'Get public information about an address',
                  args: [
                    Arg(
                    name: 'address',
                    description: 'Address to ge'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'email',
          description: 'Get email forwarding address(es)'
        ),
        Subcommand(
          name: 'now',
          description: 'Get a Now page',
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose Now page to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: ['--filename', '-f'],
              description: 'File to write Now page to (default stdout)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'paste',
          description: 'Get a paste',
          args: [
            Arg(
            name: 'title',
            description: 'Title of the past'
          )
          ],
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose paste to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: ['--filename', '-f'],
              description: 'File to write paste to (default stdout)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'purl',
          description: 'Get a PURL',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the PUR'
          )
          ],
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose PURL to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'service',
          description: 'Get service stats'
        ),
        Subcommand(
          name: 'status',
          description: 'Get status',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the statu'
          )
          ],
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose status to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status-bio',
          description: 'Get status bio',
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose status bio to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'theme',
          description: 'Get theme information',
          args: [
            Arg(
            name: 'name',
            description: 'Name of the them'
          )
          ],
          subcommands: [

            Subcommand(
              name: 'preview',
              description: 'Get theme preview',
              args: [
                Arg(
                name: 'name',
                description: 'Name of the them'
              )
              ],
              options: [

                Option(
                  name: ['--filename', '-f'],
                  description: 'File to write preview to (default stdout)',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepath'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'web',
          description: 'Get your webpage content',
          options: [

            Option(
              name: ['--filename', '-f'],
              description: 'File to write webpage to (default stdout)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'weblog',
          description: 'Get a weblog entry',
          args: [
            Arg(
            name: 'id',
            description: 'ID of the weblog entr'
          )
          ],
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Get your weblog config',
              options: [

                Option(
                  name: ['--filename', '-f'],
                  description: 'File to write configuration to (default stdout)',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepath'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'latest',
              description: 'Get the latest weblog entry'
            ),
            Subcommand(
              name: 'template',
              description: 'Get your weblog template',
              options: [

                Option(
                  name: ['--filename', '-f'],
                  description: 'File to write template to (default stdout)',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepath'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List things',
      subcommands: [

        Subcommand(
          name: 'account',
          description: 'List information about your account',
          subcommands: [

            Subcommand(
              name: 'addresses',
              description: 'List your addresses'
            ),
            Subcommand(
              name: 'sessions',
              description: 'List your sessions'
            )
          ]
        ),
        Subcommand(
          name: 'directory',
          description: 'List the address directory'
        ),
        Subcommand(
          name: 'dns',
          description: 'List your dns records'
        ),
        Subcommand(
          name: 'now',
          description: 'List Now pages'
        ),
        Subcommand(
          name: 'paste',
          description: 'List pastes',
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose pastes to list',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'picture',
          description: 'List pictures'
        ),
        Subcommand(
          name: 'purl',
          description: 'List all PURLs',
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose PURLs to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'List statuses',
          options: [

            Option(
              name: ['--address', '-a'],
              description: 'Address whose status(es) to get',
              args: [
                Arg(
                name: 'addres'
              )
              ]
            ),
            Option(
              name: ['--limit', '-l'],
              description: 'How many status(es) to get (default all)',
              args: [
                Arg(
                name: 'limit',
                defaultValue: ''
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'statuslog',
          description: 'List the statuslog',
          options: [

            Option(
              name: ['--all', '-A'],
              description: 'Get the entire statuslog (default is latest statuses only)'
            )
          ]
        ),
        Subcommand(
          name: 'theme',
          description: 'List profile themes'
        ),
        Subcommand(
          name: 'weblog',
          description: 'List all weblog entries'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update things',
      subcommands: [

        Subcommand(
          name: 'account',
          description: 'Update information about your account',
          subcommands: [

            Subcommand(
              name: 'name',
              description: 'Set the name on your account'
            ),
            Subcommand(
              name: 'settings',
              description: 'Set the settings on your account',
              options: [

                Option(
                  name: ['--communication', '-c'],
                  description: 'Communication preference',
                  args: [
                    Arg(
                    name: 'communicatio'
                  )
                  ]
                ),
                Option(
                  name: ['--date-format', '-d'],
                  description: 'Date format preference',
                  args: [
                    Arg(
                    name: 'date-forma'
                  )
                  ]
                ),
                Option(
                  name: ['--web-editor', '-w'],
                  description: 'Web editor preference',
                  args: [
                    Arg(
                    name: 'web-edito'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'dns',
          description: 'Update a DNS record',
          options: [

            Option(
              name: ['--priority', '-p'],
              description: 'Updated priority',
              args: [
                Arg(
                name: 'priority',
                defaultValue: ''
              )
              ]
            ),
            Option(
              name: ['--ttl', '-T'],
              description: 'Updated TTL',
              args: [
                Arg(
                name: 'ttl',
                defaultValue: '360'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'email',
          description: 'Set email forwarding address(es)',
          options: [

            Option(
              name: ['--destination', '-d'],
              description: 'Address(es) to forward to',
              args: [
                Arg(
                name: 'destinatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'preference',
          description: 'Set a preference'
        ),
        Subcommand(
          name: 'set',
          description: 'Set Now page content',
          options: [

            Option(
              name: ['--filename', '-f'],
              description: 'File to read Now page from (default stdin)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: ['--listed', '-l'],
              description: 'Create Now page as listed (default false)'
            )
          ]
        ),
        Subcommand(
          name: 'status',
          description: 'Update a status',
          options: [

            Option(
              name: ['--emoji', '-e'],
              description: 'Emoji to add to status (default sparkles)',
              args: [
                Arg(
                name: 'emoj'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'status-bio',
          description: 'Update your status bio'
        ),
        Subcommand(
          name: 'web',
          description: 'Set webpage content',
          subcommands: [

            Subcommand(
              name: 'pfp',
              description: 'Set your profile picture'
            )
          ],
          options: [

            Option(
              name: ['--filename', '-f'],
              description: 'File to read webpage from (default stdin)',
              args: [
                Arg(
                name: 'filename',
                template: 'filepath'
              )
              ]
            ),
            Option(
              name: ['--publish', '-p'],
              description: 'Publish the updated page (default false)'
            )
          ]
        ),
        Subcommand(
          name: 'weblog',
          description: 'Set your weblog config',
          subcommands: [

            Subcommand(
              name: 'config',
              description: 'Set your weblog config',
              options: [

                Option(
                  name: ['--filename', '-f'],
                  description: 'File to read config from (default stdin)',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepath'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'template',
              description: 'Set your weblog template',
              options: [

                Option(
                  name: ['--filename', '-f'],
                  description: 'File to read template from (default stdin)',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepath'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create things',
          subcommands: [

            Subcommand(
              name: 'dns',
              description: 'Create a DNS record'
            ),
            Subcommand(
              name: 'paste',
              description: 'Create or update a paste'
            ),
            Subcommand(
              name: 'purl',
              description: 'Create a PURL'
            ),
            Subcommand(
              name: 'status',
              description: 'Create a status'
            ),
            Subcommand(
              name: 'weblog',
              description: 'Create a weblog entry'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete things',
          subcommands: [

            Subcommand(
              name: 'account',
              description: 'Delete information about your account',
              subcommands: [

                Subcommand(
                  name: 'session',
                  description: 'Delete a session'
                )
              ]
            ),
            Subcommand(
              name: 'dns',
              description: 'Delete a DNS record'
            ),
            Subcommand(
              name: 'paste',
              description: 'Delete a paste'
            ),
            Subcommand(
              name: 'purl',
              description: 'Delete a PURL'
            ),
            Subcommand(
              name: 'weblog',
              description: 'Delete a weblog entry'
            )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get things',
          subcommands: [

            Subcommand(
              name: 'account',
              description: 'Get information about your account',
              subcommands: [

                Subcommand(
                  name: 'info',
                  description: 'Get info about your account'
                ),
                Subcommand(
                  name: 'name',
                  description: 'Get your account name'
                ),
                Subcommand(
                  name: 'settings',
                  description: 'Get your account settings'
                )
              ]
            ),
            Subcommand(
              name: 'address',
              description: 'Get information about an address',
              subcommands: [

                Subcommand(
                  name: 'availability',
                  description: 'Get address availability'
                ),
                Subcommand(
                  name: 'expiration',
                  description: 'Get address expiration'
                ),
                Subcommand(
                  name: 'info',
                  description: 'Get information about an address',
                  subcommands: [

                    Subcommand(
                      name: 'private',
                      description: 'Get private information about an address'
                    ),
                    Subcommand(
                      name: 'public',
                      description: 'Get public information about an address'
                    )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'email',
              description: 'Get email forwarding address(es)'
            ),
            Subcommand(
              name: 'now',
              description: 'Get a Now page'
            ),
            Subcommand(
              name: 'paste',
              description: 'Get a paste'
            ),
            Subcommand(
              name: 'purl',
              description: 'Get a PURL'
            ),
            Subcommand(
              name: 'service',
              description: 'Get service stats'
            ),
            Subcommand(
              name: 'status',
              description: 'Get status'
            ),
            Subcommand(
              name: 'status-bio',
              description: 'Get status bio'
            ),
            Subcommand(
              name: 'theme',
              description: 'Get theme information',
              subcommands: [

                Subcommand(
                  name: 'preview',
                  description: 'Get theme preview'
                )
              ]
            ),
            Subcommand(
              name: 'web',
              description: 'Get your webpage content'
            ),
            Subcommand(
              name: 'weblog',
              description: 'Get a weblog entry',
              subcommands: [

                Subcommand(
                  name: 'config',
                  description: 'Get your weblog config'
                ),
                Subcommand(
                  name: 'latest',
                  description: 'Get the latest weblog entry'
                ),
                Subcommand(
                  name: 'template',
                  description: 'Get your weblog template'
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List things',
          subcommands: [

            Subcommand(
              name: 'account',
              description: 'List information about your account',
              subcommands: [

                Subcommand(
                  name: 'addresses',
                  description: 'List your addresses'
                ),
                Subcommand(
                  name: 'sessions',
                  description: 'List your sessions'
                )
              ]
            ),
            Subcommand(
              name: 'directory',
              description: 'List the address directory'
            ),
            Subcommand(
              name: 'dns',
              description: 'List your dns records'
            ),
            Subcommand(
              name: 'now',
              description: 'List Now pages'
            ),
            Subcommand(
              name: 'paste',
              description: 'List pastes'
            ),
            Subcommand(
              name: 'purl',
              description: 'List all PURLs'
            ),
            Subcommand(
              name: 'status',
              description: 'List statuses'
            ),
            Subcommand(
              name: 'statuslog',
              description: 'List the statuslog'
            ),
            Subcommand(
              name: 'theme',
              description: 'List profile themes'
            ),
            Subcommand(
              name: 'weblog',
              description: 'List all weblog entries'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update things',
          subcommands: [

            Subcommand(
              name: 'account',
              description: 'Update information about your account',
              subcommands: [

                Subcommand(
                  name: 'name',
                  description: 'Set the name on your account',
                  args: [
                    Arg(
                    name: 'name',
                    description: 'The name to se'
                  )
                  ]
                ),
                Subcommand(
                  name: 'settings',
                  description: 'Set the settings on your account'
                )
              ]
            ),
            Subcommand(
              name: 'dns',
              description: 'Update a DNS record',
              args: [

                Arg(
                  name: 'id',
                  description: 'The ID of the record to update'
                ),
                Arg(
                  name: 'name',
                  description: 'Updated name'
                ),
                Arg(
                  name: 'type',
                  description: 'Updated type'
                ),
                Arg(
                  name: 'data',
                  description: 'Updated data'
                )
              ]
            ),
            Subcommand(
              name: 'email',
              description: 'Set email forwarding address(es)',
              args: [
                Arg(
                name: 'address',
                description: 'Address(es) to forward to'
              )
              ]
            ),
            Subcommand(
              name: 'preference',
              description: 'Set a preference',
              args: [

                Arg(
                  name: 'item',
                  description: 'Preferences item to set'
                ),
                Arg(
                  name: 'value',
                  description: 'Value to set'
                )
              ]
            ),
            Subcommand(
              name: 'now',
              description: 'Update Now page content'
            ),
            Subcommand(
              name: 'status',
              description: 'Update a status',
              args: [

                Arg(
                  name: 'id',
                  description: 'The ID of the status to update'
                ),
                Arg(
                  name: 'text',
                  description: 'New text for the status'
                )
              ]
            ),
            Subcommand(
              name: 'status-bio',
              description: 'Update your status bio',
              args: [
                Arg(
                name: 'text',
                description: 'New text for the status bio'
              )
              ]
            ),
            Subcommand(
              name: 'web',
              description: 'Set webpage content',
              subcommands: [

                Subcommand(
                  name: 'pfp',
                  description: 'Set your profile picture',
                  args: [
                    Arg(
                    name: 'filename',
                    template: 'filepaths',
                    description: 'The filename of the image to set'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'weblog',
              description: 'Set your weblog config',
              subcommands: [

                Subcommand(
                  name: 'config',
                  description: 'Set your weblog config'
                ),
                Subcommand(
                  name: 'template',
                  description: 'Set your weblog template'
                )
              ]
            )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
