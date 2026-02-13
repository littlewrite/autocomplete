// Auto-generated from TypeScript source: lpass.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `lpass` CLI
final FigSpec lpassSpec = FigSpec(
  name: 'lpass',
  description: 'Command line interface for LastPass',
  subcommands: [

    Subcommand(
      name: 'login',
      description: 'Log in to LastPass',
      options: [

        Option(
          name: '--trust',
          description: 'Subsequent logins will not require multifactor authentication'
        ),
        Option(
          name: '--plaintext-key',
          description: 'Save decryption key to the hard disk in plaintext',
          args: [
            Arg(
            name: '--force',
            description: 'Skip user confirmation',
            isOptional: true
          )
          ]
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'USERNAME',
        description: 'LastPass account username (email address)'
      )
      ]
    ),
    Subcommand(
      name: 'logout',
      description: 'Log out of LastPass',
      options: [

        Option(
          name: '--force',
          description: 'Skip user confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'ls',
      description: 'List names in groups in a tree structure',
      options: [

        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: ['--long', '-l'],
          description: 'Show the last modification time'
        ),
        Option(
          name: '-m',
          description: 'Show the last modified time'
        ),
        Option(
          name: '-u',
          description: 'Show the last used time'
        )
      ],
      args: [
        Arg(
        name: 'GROUP',
        description: 'Group of entries to list',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'passwd',
      description: 'Change LastPass password and reencrypt all entries'
    ),
    Subcommand(
      name: 'show',
      description: 'Show password or selected field',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: ['--clip', '-c'],
          description: 'Copy to the clipboard'
        ),
        Option(
          name: ['--quiet', '-q'],
          description: 'Display no output and only sets return code'
        ),
        Option(
          name: ['--expand-multi', '-x'],
          description: 'Show information from all matching sites'
        ),
        Option(
          name: ['--json', '-j'],
          description: 'Generate json output instead of human-readable text'
        ),
        Option(
          name: '--all',
          description: 'Show all fields',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--notes',
            '--field',
            '--id',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--username',
          description: 'Show only the username',
          exclusiveOn: [
            '--all',
            '--password',
            '--url',
            '--notes',
            '--field',
            '--id',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--password',
          description: 'Show only the password',
          exclusiveOn: [
            '--all',
            '--username',
            '--url',
            '--notes',
            '--field',
            '--id',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--url',
          description: 'Show only the URL',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--notes',
            '--field',
            '--id',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--notes',
          description: 'Show only the notes',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--url',
            '--field',
            '--id',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--field',
          description: 'Show only the field',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--url',
            '--notes',
            '--id',
            '--name',
            '--attachid',
          ],
          args: [
            Arg(
            name: 'FIELD',
            description: 'Show only this field'
          )
          ]
        ),
        Option(
          name: '--id',
          description: 'Show only the ID',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--url',
            '--notes',
            '--field',
            '--name',
            '--attachid',
          ]
        ),
        Option(
          name: '--name',
          description: 'Show only the name',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--url',
            '--notes',
            '--field',
            '--id',
            '--attachid',
          ]
        ),
        Option(
          name: '--attach',
          description: 'Show only the attachment',
          exclusiveOn: [
            '--all',
            '--username',
            '--password',
            '--url',
            '--notes',
            '--field',
            '--id',
            '--name',
          ],
          args: [
            Arg(
            name: 'ATTACHID',
            description: 'Attachment ID'
          )
          ]
        ),
        Option(
          name: ['--basic-regexp', '-G'],
          description: 'Show sites matching case-insensitive regular expression',
          exclusiveOn: ['--fixed-strings', '-F']
        ),
        Option(
          name: ['--fixed-strings', '-F'],
          description: 'Show sites matching this exact substring',
          exclusiveOn: ['--basic-regexp', '-G']
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'UNIQENAME|UNIQUEID',
        description: 'Shows entry with this unique name or ID'
      )
      ]
    ),
    Subcommand(
      name: 'mv',
      description: 'Move LastPass entry to a different group',
      options: [

        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ],
      args: [

        Arg(
          name: 'UNIQUENAME|UNIQUEID',
          description: 'Unique name or ID to move'
        ),
        Arg(
          name: 'GROUP',
          description: 'Destination group'
        )
      ]
    ),
    Subcommand(
      name: 'add',
      description: 'Add a new entry',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--non-interactive',
          description: 'Accept data until EOF or, unless the notes field is being edited, the first new line'
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--username',
          description: 'Add only the username',
          exclusiveOn: [
            '--password',
            '--url',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--password',
          description: 'Add only the password',
          exclusiveOn: [
            '--username',
            '--url',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--url',
          description: 'Add only the URL',
          exclusiveOn: [
            '--username',
            '--password',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--notes',
          description: 'Add only the notes',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--field',
          description: 'Add only the field',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--notes',
            '--note-type',
          ],
          args: [
            Arg(
            name: 'FIELD',
            description: 'Add only this field'
          )
          ]
        ),
        Option(
          name: '--note-type',
          description: 'Add only the note',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--notes',
            '--field',
          ],
          args: [
            Arg(
            name: 'NOTETYPE',
            description: 'Type of note to add',
            suggestions: [

              FigSuggestion(name: 'amex'),
              FigSuggestion(name: 'bank'),
              FigSuggestion(name: 'credit'),
              FigSuggestion(name: 'database'),
              FigSuggestion(name: 'drivers_license'),
              FigSuggestion(name: 'email'),
              FigSuggestion(name: 'health_insurance'),
              FigSuggestion(name: 'im'),
              FigSuggestion(name: 'mastercard'),
              FigSuggestion(name: 'membership'),
              FigSuggestion(name: 'passport'),
              FigSuggestion(name: 'server'),
              FigSuggestion(name: 'software_license'),
              FigSuggestion(name: 'ssh_key'),
              FigSuggestion(name: 'ssn'),
              FigSuggestion(name: 'visa'),
              FigSuggestion(name: 'wifi')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'NAME|UNIQUEID',
        description: 'Name or unique ID of the entry to add'
      )
      ]
    ),
    Subcommand(
      name: 'edit',
      description: 'Edit existing entry',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--non-interactive',
          description: 'Accept data until EOF or, unless the notes field is being edited, the first new line'
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: ['--name', '--username'],
          description: 'Edit only the name (or username)',
          exclusiveOn: [
            '--password',
            '--url',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--password',
          description: 'Edit only the password',
          exclusiveOn: [
            '--username',
            '--url',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--url',
          description: 'Edit only the URL',
          exclusiveOn: [
            '--username',
            '--password',
            '--notes',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--notes',
          description: 'Edit only the notes',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--field',
            '--note-type',
          ]
        ),
        Option(
          name: '--field',
          description: 'Edit only the field',
          exclusiveOn: [
            '--username',
            '--password',
            '--url',
            '--notes',
            '--note-type',
          ],
          args: [
            Arg(
            name: 'FIELD',
            description: 'Edit just this field'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'NAME|UNIQUEID',
        description: 'Name or unique ID of the entry to edit'
      )
      ]
    ),
    Subcommand(
      name: 'generate',
      description: 'Create randomly generated password',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: ['--clip', '-c'],
          description: 'Copy the text to the clipboard'
        ),
        Option(
          name: '--username',
          description: 'Generate password for this username',
          args: [
            Arg(
            name: 'USERNAME',
            description: 'Username to generate the password for'
          )
          ]
        ),
        Option(
          name: '--url',
          description: 'Generate password for this URL',
          args: [
            Arg(
            name: 'URL',
            description: 'URL to generate the password for'
          )
          ]
        ),
        Option(
          name: '--no-symbols',
          description: 'Generate password without symbols'
        )
      ],
      args: [

        Arg(
          name: 'NAME|UNIQUEID',
          description: 'Name or unique ID of the entry to generate the password for'
        ),
        Arg(
          name: 'LENGTH',
          description: 'Length of the password to create'
        )
      ]
    ),
    Subcommand(
      name: 'duplicate',
      description: 'Duplicate existing entry',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'UNIQUENAME|UNIQUEID',
        description: 'Unique name or unique ID of the entry to duplicate'
      )
      ]
    ),
    Subcommand(
      name: 'rm',
      description: 'Removes existing entry',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'UNIQUENAME|UNIQUEID',
        description: 'Unique name or unique ID of the entry to remove'
      )
      ]
    ),
    Subcommand(
      name: 'status',
      description: 'Show the LastPass login status',
      options: [

        Option(
          name: ['--quiet', '-q'],
          description: 'Display no output and only sets return code'
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sync',
      description: 'Sync the local cache against the LastPass server',
      options: [

        Option(
          name: ['--background', '-b'],
          description: 'Syncronization occurs in a daemonized process'
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'import',
      description: 'Import account information from an unencrypted CSV',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--keep-dupes',
          description: 'Keeps any duplicate entries'
        )
      ],
      args: [
        Arg(
        name: 'FILENAME',
        description: 'CSV filename to import from'
      )
      ]
    ),
    Subcommand(
      name: 'export',
      description: 'Export account information to an unencrypted CSV',
      options: [

        Option(
          name: '--sync',
          description: 'When the current operation syncs to server',
          args: [
            Arg(
            name: 'sync',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'now'),
              FigSuggestion(name: 'no')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--color',
          description: 'Control colored output to the terminal',
          args: [
            Arg(
            name: 'color',
            suggestions: [

              FigSuggestion(name: 'auto'),
              FigSuggestion(name: 'never'),
              FigSuggestion(name: 'always')
            ],
            isOptional: true,
            defaultValue: 'auto'
          )
          ]
        ),
        Option(
          name: '--fields',
          description: 'Comma-separated subset of: id, url, username, password, extra, name, fav, id, grouping, group, fullname, last_touch, last_modified_gmt, attachpresent',
          args: [
            Arg(
            name: 'FIELDLIST',
            suggestions: [

              FigSuggestion(name: 'id,url,username,password,extra,name,fav,id,grouping,group,fullname,last_touch,last_modified_gmt,attachpresent')
            ]
          )
          ]
        )
      ],
      args: [
        Arg(
        name: 'FILENAME',
        description: 'CSV filename to export to'
      )
      ]
    ),
    Subcommand(
      name: 'share',
      description: 'LastPass Sharing Center functionality',
      subcommands: [

        Subcommand(
          name: 'userls',
          description: 'List the LastPass users which have access to the Shared Folders'
        ),
        Subcommand(
          name: 'useradd',
          description: 'Add user to Shared Folders',
          options: [

            Option(
              name: '--read-only',
              description: 'Control read or write access',
              args: [

                Arg(
                  name: 'true',
                  description: 'Grant read only access'
                ),
                Arg(
                  name: 'false',
                  description: 'Grant write access'
                )
              ]
            ),
            Option(
              name: '--hidden',
              description: 'Share user view permission',
              args: [

                Arg(
                  name: 'true',
                  description: 'User can only view entry'
                ),
                Arg(
                  name: 'false',
                  description: 'User can view entry and secrets'
                )
              ]
            ),
            Option(
              name: '--admin',
              description: 'Share user administer permission',
              args: [

                Arg(
                  name: 'true',
                  description: 'User can administer entry'
                ),
                Arg(
                  name: 'false',
                  description: 'User cannot administer entry'
                )
              ]
            )
          ],
          args: [

            Arg(
              name: 'SHARE',
              description: 'Entry to share'
            ),
            Arg(
              name: 'USERNAME',
              description: 'User to share entry with'
            )
          ]
        ),
        Subcommand(
          name: 'usermod',
          description: 'Modify user on Shared Folders',
          options: [

            Option(
              name: '--read-only',
              description: 'Control read or write access',
              args: [

                Arg(
                  name: 'true',
                  description: 'Grant read only access'
                ),
                Arg(
                  name: 'false',
                  description: 'Grant write access'
                )
              ]
            ),
            Option(
              name: '--hidden',
              description: 'Share user view permission',
              args: [

                Arg(
                  name: 'true',
                  description: 'User can only view entry'
                ),
                Arg(
                  name: 'false',
                  description: 'User can view entry and secrets'
                )
              ]
            ),
            Option(
              name: '--admin',
              description: 'Share user administer permission',
              args: [

                Arg(
                  name: 'true',
                  description: 'User can administer entry'
                ),
                Arg(
                  name: 'false',
                  description: 'User cannot administer entry'
                )
              ]
            )
          ],
          args: [

            Arg(
              name: 'SHARE',
              description: 'Entry to modify'
            ),
            Arg(
              name: 'USERNAME',
              description: 'User access to modify'
            )
          ]
        ),
        Subcommand(
          name: 'userdel',
          description: 'Remove user from Shared Folders',
          args: [

            Arg(
              name: 'SHARE',
              description: 'LastPass entry to remove user from'
            ),
            Arg(
              name: 'USERNAME',
              description: 'LastPass user to remove'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create new LastPass Shared Folder',
          args: [
            Arg(
            name: 'SHARE',
            description: 'LastPass Shared Folder to create'
          )
          ]
        ),
        Subcommand(
          name: 'rm',
          description: 'LastPass Shared Folder to remove',
          args: [
            Arg(
            name: 'SHARE',
            description: 'LastPass Shared Folder to remove'
          )
          ]
        ),
        Subcommand(
          name: 'limit',
          description: 'Manipulate LastPass Shared Folder access',
          options: [

            Option(
              name: ['--deny', '--allow'],
              description: 'Deny or allow access'
            ),
            Option(
              name: ['--add', '--rm', '--clear'],
              description: 'Add, remove, or clear acces'
            )
          ],
          args: [

            Arg(
              name: 'SHARE',
              description: 'Shared Folder to remove'
            ),
            Arg(
              name: 'USERNAME',
              description: 'User access to manipulate'
            ),
            Arg(
              name: 'sites',
              description: 'LastPass sites to manipulate',
              isOptional: true
            )
          ]
        )
      ],
      args: [
        Arg(
        name: 'SHARE',
        description: 'LastPass Shared folder to query'
      )
      ]
    )
  ],
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Display the help for lpass'
    ),
    Option(
      name: '--version',
      description: 'Display the version of lpass'
    )
  ]
);
