// Auto-generated from TypeScript source: pijul.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pijul` CLI
final FigSpec pijulSpec = FigSpec(
  name: 'pijul',
  description: 'A distributed version control system that is at the same time theoretically sound, fast and easy to learn and use',
  subcommands: [

    Subcommand(
      name: 'add',
      description: 'Adds a path to the tree',
      args: [
        Arg(
        name: 'PATHS',
        description: 'Paths to add to the internal tree'
      )
      ],
      options: [

        Option(
          name: ['-f', '--force']
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-r', '--recursive']
        )
      ]
    ),
    Subcommand(
      name: 'apply',
      description: 'Applies changes to a channel',
      args: [
        Arg(
        name: 'CHANGE',
        description: 'The change that need to be applied. If this value is missing, read the change in text format on the standard input'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Apply change to this channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: '--deps-only',
          description: 'Only apply the dependencies of the change, not the change itself. Only applicable for a single change'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'archive',
      description: 'Creates an archive of the repository',
      options: [

        Option(
          name: '--change',
          description: 'Apply these changes after switching to the channel',
          args: [
            Arg(
            name: 'CHANGE'
          )
          ]
        ),
        Option(
          name: '--channel',
          description: 'Use this channel, instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '-k',
          description: 'Do not check certificates (HTTPS remotes only, this option might be dangerous)'
        ),
        Option(
          name: '-o',
          description: 'Name of the output file',
          args: [
            Arg(
            name: 'NAME'
          )
          ]
        ),
        Option(
          name: '--prefix',
          description: 'Append this path in front of each path inside the archive',
          args: [
            Arg(
            name: 'PREFIX'
          )
          ]
        ),
        Option(
          name: '--remote',
          description: 'Ask the remote to send an archive',
          args: [
            Arg(
            name: 'REMOTE'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--state',
          description: 'Archive in this state',
          args: [
            Arg(
            name: 'STATE'
          )
          ]
        ),
        Option(
          name: '--umask',
          description: 'Append this path in front of each path inside the archive',
          args: [
            Arg(
            name: 'UMASK'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'change',
      description: 'Shows information about a particular change',
      args: [
        Arg(
        name: 'HASH',
        description: 'The hash of the change to show, or an unambiguous prefix thereof'
      )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Use the repository at PATH instead of the current directory',
          args: [
            Arg(
            name: 'PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'channel',
      description: 'Manages different channels',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a channel. The channel must not be the current channel',
          args: [
            Arg(
            name: 'DELETE'
          )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)'
        ),
        Subcommand(
          name: 'new',
          description: 'Create a new, empty channel'
        ),
        Subcommand(
          name: 'rename',
          description: 'Rename a channel',
          args: [

            Arg(
              name: 'FROM'
            ),
            Arg(
              name: 'TO'
            )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'switch',
          description: 'Switch to a channel. There must not be unrecorded changes in the working copy'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'clone',
      description: 'Clones an existing pijul repository',
      args: [

        Arg(
          name: 'REMOTE',
          description: 'Clone this remote'
        ),
        Arg(
          name: 'PATH',
          description: 'Path where to clone the repository. If missing, the inferred name of the remote repository is used'
        ),
        Arg(
          name: 'SALT'
        )
      ],
      options: [

        Option(
          name: '--change',
          description: 'Clone this change and its dependencies',
          args: [
            Arg(
            name: 'CHANGE'
          )
          ]
        ),
        Option(
          name: '--channel',
          description: 'Set the remote channel [default: main]',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '-k',
          description: 'Do not check certificates (HTTPS remotes only, this option might be dangerous)'
        ),
        Option(
          name: '--path',
          description: 'Clone this path only',
          args: [
            Arg(
            name: 'PARTIAL_PATHS'
          )
          ]
        ),
        Option(
          name: '--state',
          description: 'Clone this state',
          args: [
            Arg(
            name: 'STATE'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'credit',
      description: 'Shows which change last affected each line of the given file(s)',
      args: [
        Arg(
        name: 'FILE',
        description: 'The file to annotate'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Use this channel instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'diff',
      description: 'Shows difference between two channels/changes',
      args: [
        Arg(
        name: 'PREFIXES',
        description: 'Only diff those paths (files or directories). If missing, diff the entire repository'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Compare with this channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--json',
          description: 'Output the diff in JSON format instead of the default change text format'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: ['-s', '--short'],
          description: 'Show a short version of the diff'
        ),
        Option(
          name: '--tag',
          description: 'Add all the changes of this channel as dependencies (except changes implied transitively), instead of the minimal dependencies'
        ),
        Option(
          name: ['-u', '--untracked'],
          description: 'Include the untracked files'
        )
      ]
    ),
    Subcommand(
      name: 'fork',
      description: 'Create a new channel',
      args: [
        Arg(
        name: 'TO',
        description: 'The name of the new channel'
      )
      ],
      options: [

        Option(
          name: '--change',
          description: 'Apply this change after creating the channel',
          args: [
            Arg(
            name: 'CHANGE'
          )
          ]
        ),
        Option(
          name: '--channel',
          description: 'Make the new channel from this channel instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'init',
      description: 'Initializes an empty pijul repository',
      args: [
        Arg(
        name: 'PATH',
        description: 'Path where the repository should be initialized'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Set the name of the current channel (defaults to “main”)',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: ['-k', '--kind'],
          description: 'Project kind; if Pijul knows about your project kind, the .ignore file will be populated with a conservative list of commonly ignored entries. Example: pijul init --kind=rust',
          args: [
            Arg(
            name: 'KIND'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'log',
      description: 'Show the entire log of changes',
      args: [
        Arg(
        name: 'FILTERS',
        description: 'Filter log output, showing only log entries that touched the specified files. Accepted as a list of paths relative to your current directory. Currently, filters can only be applied when logging the channel that’s in use'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Show logs for this channel instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: '--description',
          description: 'Include full change description in the output'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--hash-only',
          description: 'Only show the change hashes'
        ),
        Option(
          name: '--limit',
          description: 'Output at most this many changes',
          args: [
            Arg(
            name: 'LIMIT'
          )
          ]
        ),
        Option(
          name: '--offset',
          description: 'Start after this many changes',
          args: [
            Arg(
            name: 'OFFSET'
          )
          ]
        ),
        Option(
          name: '--output-format',
          args: [
            Arg(
            name: 'OUTPUT_FORMAT'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--state',
          description: 'Include state identifiers in the output'
        )
      ]
    ),
    Subcommand(
      name: 'ls'
    ),
    Subcommand(
      name: 'mv'
    ),
    Subcommand(
      name: 'pull',
      description: 'Pulls changes from a remote upstream',
      args: [

        Arg(
          name: 'FROM',
          description: 'Pulls from this remote'
        ),
        Arg(
          name: 'CHANGES',
          description: 'Pull changes from the local repository, not necessarily from a channel'
        )
      ],
      options: [

        Option(
          name: ['-a', '--all'],
          description: 'Pull all changes'
        ),
        Option(
          name: ['-f', '--force-cache'],
          description: 'Force an update of the local remote cache. May effect some reporting of unrecords/concurrent changes in the remote'
        ),
        Option(
          name: '--from-channel',
          description: 'Pull from this remote channel',
          args: [
            Arg(
            name: 'FROM_CHANNEL'
          )
          ]
        ),
        Option(
          name: '--full',
          description: 'Download full changes, even when not necessary'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '-k',
          description: 'Do not check certificates (HTTPS remotes only, this option might be dangerous)'
        ),
        Option(
          name: '--path',
          description: 'Only pull to these paths',
          args: [
            Arg(
            name: 'PATH'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--to-channel',
          description: 'Pull into this channel instead of the current channel',
          args: [
            Arg(
            name: 'TO_CHANNEL'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'push',
      description: 'Pushes changes to a remote upstream',
      args: [

        Arg(
          name: 'TO',
          description: 'Push to this remote'
        ),
        Arg(
          name: 'CHANGES',
          description: 'Push only these changes'
        )
      ],
      options: [

        Option(
          name: ['-a', '--all'],
          description: 'Push all changes'
        ),
        Option(
          name: ['-f', '--force-cache'],
          description: 'Force an update of the local remote cache. May effect some reporting of unrecords/concurrent changes in the remote'
        ),
        Option(
          name: '--from-channel',
          description: 'Push from this channel instead of the default channel',
          args: [
            Arg(
            name: 'FROM_CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '-k',
          description: 'Do not check certificates (HTTPS remotes only, this option might be dangerous)'
        ),
        Option(
          name: '--path',
          description: 'Push changes only relating to these paths',
          args: [
            Arg(
            name: 'PATH'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Path to the repository. Uses the current repository if the argument is omitted',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--to-channel',
          description: 'Push to this remote channel instead of the remote’s default channel',
          args: [
            Arg(
            name: 'TO_CHANNEL'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'record',
      description: 'Creates a new change',
      args: [
        Arg(
        name: 'PREFIXES',
        description: 'Paths in which to record the changes'
      )
      ],
      options: [

        Option(
          name: ['-a', '--all'],
          description: 'Record all paths that have changed'
        ),
        Option(
          name: '--amend',
          description: 'Amend this change instead of creating a new change',
          args: [
            Arg(
            name: 'AMEND'
          )
          ]
        ),
        Option(
          name: '--author',
          description: 'Set the author field',
          args: [
            Arg(
            name: 'AUTHOR'
          )
          ]
        ),
        Option(
          name: '--channel',
          description: 'Record the change in this channel instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--ignore-missing',
          description: 'Ignore missing (deleted) files'
        ),
        Option(
          name: ['-m', '--message'],
          description: 'Set the change message',
          args: [
            Arg(
            name: 'MESSAGE'
          )
          ]
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--timestamp',
          description: 'Set the timestamp field',
          args: [
            Arg(
            name: 'TIMESTAMP'
          )
          ]
        ),
        Option(
          name: '--working-copy',
          args: [
            Arg(
            name: 'WORKING_COPY'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remote',
      description: 'Manages remote repositories',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Deletes the remote',
          args: [
            Arg(
            name: 'REMOTE'
          )
          ],
          options: [

            Option(
              name: ['-h', '--help'],
              description: 'Print help information'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Print this message or the help of the given subcommand(s)'
        )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'remove',
      description: 'Removes a file from the tree of tracked files (pijul record will then record this as a deletion)',
      args: [
        Arg(
        name: 'PATHS',
        description: 'The paths need to be removed'
      )
      ],
      options: [

        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Resets the working copy to the last recorded change.\nIn other words, discards all unrecorded changes',
      args: [
        Arg(
        name: 'FILES',
        description: 'Only reset these files'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Reset the working copy to this channel, and change the current channel to this channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: '--dry-run',
          description: 'Print this file to the standard output, without modifying the repository (works for a single file only)'
        ),
        Option(
          name: ['-f', '--force'],
          description: 'Reset even if there are unrecorded changes'
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'unrecord',
      description: 'Unrecords a list of changes',
      args: [
        Arg(
        name: 'CHANGE_ID',
        description: 'The hash of a change (unambiguous prefixes are accepted)'
      )
      ],
      options: [

        Option(
          name: '--channel',
          description: 'Unrecord changes from this channel instead of the current channel',
          args: [
            Arg(
            name: 'CHANNEL'
          )
          ]
        ),
        Option(
          name: ['-h', '--help'],
          description: 'Print help information'
        ),
        Option(
          name: '--repository',
          description: 'Set the repository where this command should run. Defaults to the first ancestor of the current directory that contains a .pijul directory',
          args: [
            Arg(
            name: 'REPO_PATH'
          )
          ]
        ),
        Option(
          name: '--reset',
          description: 'Also undo the changes in the working copy (preserving unrecorded changes if there are any)'
        ),
        Option(
          name: '--show-changes',
          description: 'Show N changes in a text editor if no s were given. Defaults to the value of unrecord_changes in your global configuration',
          args: [
            Arg(
            name: 'N'
          )
          ]
        )
      ]
    )
  ]
);
