// Auto-generated from TypeScript source: charm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `charm` CLI
final FigSpec charmSpec = FigSpec(
  name: 'charm',
  description: 'Do Charm stuff; run without arguments for a TUI or use the sub-commands like a pro',
  subcommands: [

    Subcommand(
      name: 'backup-keys',
      description: 'Backup your Charm account keys'
    ),
    Subcommand(
      name: 'completion',
      description: 'Generate shell completion'
    ),
    Subcommand(
      name: 'crypt',
      description: 'Use charm encryption',
      subcommands: [

        Subcommand(
          name: 'decrypt',
          description: 'Decrypt stdin with your Charm account encryption key'
        ),
        Subcommand(
          name: 'decrypt-lookup',
          description: 'Decrypt arg deterministically'
        ),
        Subcommand(
          name: 'encrypt',
          description: 'Encrypt stdin with your Charm account encryption key'
        ),
        Subcommand(
          name: 'encrypt-lookup',
          description: 'Encrypt arg deterministically'
        )
      ]
    ),
    Subcommand(
      name: 'fs',
      description: 'Use the Charm file systems',
      subcommands: [

        Subcommand(
          name: 'cat',
          description: 'Output the content of the file at path',
          args: [
            Arg(
            name: '[charm:]PATH'
          )
          ]
        ),
        Subcommand(
          name: 'cp',
          description: 'Copy a file, preface source or destination with "charm:" to specify a remote path',
          args: [

            Arg(
              name: '[charm:]PATH'
            ),
            Arg(
              name: '[charm:]PATH'
            )
          ],
          options: [

            Option(
              name: ['--recursive', '-r'],
              description: 'Copy directories recursively'
            )
          ]
        ),
        Subcommand(
          name: 'ls',
          description: 'List file or directory at path',
          args: [
            Arg(
            name: '[charm:]PATH'
          )
          ]
        ),
        Subcommand(
          name: 'mv',
          description: 'Move a file, preface source or destination with "charm" to specify a remote  path',
          args: [

            Arg(
              name: '[charm:]PATH'
            ),
            Arg(
              name: '[charm:]PATH'
            )
          ]
        ),
        Subcommand(
          name: 'rm',
          description: 'Remove file or directory at path',
          args: [
            Arg(
            name: '[charm:]PATH'
          )
          ]
        ),
        Subcommand(
          name: 'tree',
          description: 'Print a file system tree from path',
          args: [
            Arg(
            name: '[charm:]PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command'
    ),
    Subcommand(
      name: 'id',
      description: 'Print your Charm ID'
    ),
    Subcommand(
      name: 'import-keys',
      description: 'Import previously backed up Charm account keys',
      args: [
        Arg(
        name: 'BACKUP.tar',
        suggestions: [

          FigSuggestion(name: 'BACKUP.tar')
        ],
        template: 'filepaths'
      )
      ],
      options: [

        Option(
          name: ['--force-overwrite', '-f'],
          description: 'Overwrite if keys exist; don\'t prompt for input'
        )
      ]
    ),
    Subcommand(
      name: 'jwt',
      description: 'Print a JWT'
    ),
    Subcommand(
      name: 'keys',
      description: 'Browse or print linked SSH keys',
      options: [

        Option(
          name: ['--randomart', '-r'],
          description: 'Print SSH 5.1 randomart for each key (the Drunken Bishop algorithm)'
        ),
        Option(
          name: ['--simple', '-s'],
          description: 'Simple, non-interactive output (good for scripts)'
        )
      ]
    ),
    Subcommand(
      name: 'kv',
      description: 'Use the Charm key value store',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a key with an optional @ db',
          args: [
            Arg(
            name: 'KEY[@DB]'
          )
          ]
        ),
        Subcommand(
          name: 'get',
          description: 'Get a value for a key with an optional @ db',
          args: [
            Arg(
            name: 'KEY[@DB]'
          )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all key value pairs with an optional @ db',
          args: [
            Arg(
            name: 'KEY[@DB]',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'reset',
          description: 'Delete local db and pull down fresh copy from Charm Cloud',
          args: [
            Arg(
            name: 'KEY[@DB]',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set a value for a key with an optional @ db',
          args: [

            Arg(
              name: 'KEY[@DB]'
            ),
            Arg(
              name: 'VALUE'
            )
          ]
        ),
        Subcommand(
          name: 'sync',
          description: 'Sync local db with latest Charm Cloud db',
          args: [
            Arg(
            name: 'KEY[@DB]'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'link',
      description: 'Link multiple machines to your Charm account',
      args: [
        Arg(
        name: 'code',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'name',
      description: 'Username stuff',
      args: [
        Arg(
        name: 'username',
        isOptional: true
      )
      ]
    ),
    Subcommand(
      name: 'serve',
      description: 'Start a self-hosted Charm Cloud server',
      options: [

        Option(
          name: '--data-dir',
          description: 'Directory to store SQLite db, SSH keys and file data',
          args: [
            Arg(
            name: 'DATA_DIR',
            template: ['folders']
          )
          ]
        ),
        Option(
          name: '--health-port',
          description: 'Health port to listen on',
          args: [
            Arg(
            name: 'HEALTH_PORT',
            suggestions: [

              FigSuggestion(name: '35356')
            ]
          )
          ]
        ),
        Option(
          name: '--http-port',
          description: 'HTTP port to listen on',
          args: [
            Arg(
            name: 'HTTP_PORT',
            suggestions: [

              FigSuggestion(name: '35354')
            ]
          )
          ]
        ),
        Option(
          name: '--ssh-port',
          description: 'SSH port to listen on',
          args: [
            Arg(
            name: 'SSH_PORT',
            suggestions: [

              FigSuggestion(name: '35353')
            ]
          )
          ]
        ),
        Option(
          name: '--stats-port',
          description: 'Stats port to listen on',
          args: [
            Arg(
            name: 'STATS_PORT',
            suggestions: [

              FigSuggestion(name: '35355')
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
      description: 'Help for charm'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Version for charm'
    )
  ]
);
