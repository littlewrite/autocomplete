// Auto-generated from TypeScript source: rsync.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rsync` CLI
final FigSpec rsyncSpec = FigSpec(
  name: 'rsync',
  description: 'Rsync is a file transfer program capable of efficient remote update via a fast differencing algorithm',
  args: [

    Arg(
      name: 'SRC',
      isVariadic: true,
      generators: [

        Generator(
          template: ['history', 'filepaths', 'folders']
        )
      ]
    ),
    Arg(
      name: 'DEST',
      generators: [

        Generator(
          template: ['history', 'filepaths', 'folders']
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['-v', '--verbose'],
      description: 'Increase verbosity'
    ),
    Option(
      name: '--info',
      description: 'Fine-grained informational verbosity'
    ),
    Option(
      name: '--debug',
      description: 'Fine-grained debug verbosity'
    ),
    Option(
      name: '--msgs2stderr',
      description: 'Special output handling for debugging'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Suppress non-error messages'
    ),
    Option(
      name: '--no-motd',
      description: 'Suppress daemon-mode MOTD (see manpage caveat)'
    ),
    Option(
      name: ['--checksum', '-c'],
      description: 'Skip based on checksum, not mod-time & size'
    ),
    Option(
      name: ['-a', '--archive'],
      description: 'Archive mode; equals -rlptgoD (no -H,-A,-X)',
      exclusiveOn: ['-H', '-A', '-X']
    ),
    Option(
      name: '--no-OPTION',
      description: 'Turn off an implied OPTION (e.g. --no-D)'
    ),
    Option(
      name: ['-r', '--recursive'],
      description: 'Recurse into directories'
    ),
    Option(
      name: ['-R', '--relative'],
      description: 'Use relative path names'
    ),
    Option(
      name: '--no-implied-dirs',
      description: 'Don\'t send implied dirs with --relative',
      dependsOn: ['--relative']
    ),
    Option(
      name: ['-b', '--backup'],
      description: 'Make backups (see --suffix & --backup-dir)'
    ),
    Option(
      name: '--backup-dir',
      description: 'Make backups into hierarchy based in DIR',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--suffix',
      description: 'Set backup suffix (default ~ w/o --backup-dir)',
      args: [
        Arg(
        name: 'SUFFIX'
      )
      ]
    ),
    Option(
      name: ['-u', '--update'],
      description: 'Skip files that are newer on the receiver'
    ),
    Option(
      name: '--inplace',
      description: 'Update destination files in-place (SEE MAN PAGE)'
    ),
    Option(
      name: '--append',
      description: 'Append data onto shorter files'
    ),
    Option(
      name: '--append-verify',
      description: 'Like --append, but with old data in file checksum'
    ),
    Option(
      name: ['-d', '--dirs'],
      description: 'Transfer directories without recursing',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-l', '--links'],
      description: 'Copy symlinks as symlinks'
    ),
    Option(
      name: ['-L', '--copy-links'],
      description: 'Transform symlink into referent file/dir'
    ),
    Option(
      name: '--copy-unsafe-links',
      description: 'Only "unsafe" symlinks are transformed'
    ),
    Option(
      name: '--safe-links',
      description: 'Ignore symlinks that point outside the source tree'
    ),
    Option(
      name: '--munge-links',
      description: 'Munge symlinks to make them safer (but unusable)'
    ),
    Option(
      name: ['-k', '--copy-dirlinks'],
      description: 'Transform symlink to a dir into referent dir'
    ),
    Option(
      name: ['-K', '--keep-dirlinks'],
      description: 'Treat symlinked dir on receiver as dir'
    ),
    Option(
      name: ['-H', '--hard-links'],
      description: 'Preserve hard links'
    ),
    Option(
      name: ['-p', '--perms'],
      description: 'Preserve permissions'
    ),
    Option(
      name: ['-E', '--executability'],
      description: 'Preserve the file\'s executability'
    ),
    Option(
      name: '--chmod',
      description: 'Affect file and/or directory permissions',
      args: [
        Arg(
        name: 'CHMOD'
      )
      ]
    ),
    Option(
      name: ['-A', '--acls'],
      description: 'Preserve ACLs (implies --perms)',
      dependsOn: ['--perms']
    ),
    Option(
      name: ['-X', '--xattrs'],
      description: 'Preserve extended attributes'
    ),
    Option(
      name: ['-o', '--owner'],
      description: 'Preserve owner (super-user only)'
    ),
    Option(
      name: ['-g', '--group'],
      description: 'Preserve group'
    ),
    Option(
      name: '--devices',
      description: 'Preserve device files (super-user only)'
    ),
    Option(
      name: '--copy-devices',
      description: 'Copy device contents as regular file'
    ),
    Option(
      name: '--specials',
      description: 'Preserve special files'
    ),
    Option(
      name: '-D',
      description: 'Same as --devices --specials'
    ),
    Option(
      name: ['-t', '--times'],
      description: 'Preserve modification times'
    ),
    Option(
      name: ['-O', '--omit-dir-times'],
      description: 'Omit directories from --times',
      dependsOn: ['--times'],
      args: [
        Arg(
        name: 'DIR',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-J', '--omit-link-times'],
      description: 'Omit symlinks from --times',
      dependsOn: ['--times']
    ),
    Option(
      name: '--super',
      description: 'Receiver attempts super-user activities'
    ),
    Option(
      name: '--fake-super',
      description: 'Store/recover privileged attrs using xattrs'
    ),
    Option(
      name: ['-S', '--sparse'],
      description: 'Turn sequences of nulls into sparse blocks'
    ),
    Option(
      name: '--preallocate',
      description: 'Allocate dest files before writing them'
    ),
    Option(
      name: ['-n', '--dry-run'],
      description: 'Perform a trial run with no changes made'
    ),
    Option(
      name: ['-W', '--whole-file'],
      description: 'Copy files whole (without delta-xfer algorithm)'
    ),
    Option(
      name: '--checksum-choice',
      description: 'Choose the checksum algorithms',
      args: [
        Arg(
        name: 'ALGORITHM',
        suggestions: [

          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'md4'),
          FigSuggestion(name: 'md5'),
          FigSuggestion(name: 'none')
        ]
      )
      ]
    ),
    Option(
      name: ['-x', '--one-file-system'],
      description: 'Don\'t cross filesystem boundaries'
    ),
    Option(
      name: ['-B', '--block-size'],
      description: 'Force a fixed checksum block-size',
      args: [
        Arg(
        name: 'SIZE'
      )
      ]
    ),
    Option(
      name: ['-e', '--rsh'],
      description: 'Specify the remote shell to use',
      args: [
        Arg(
        name: 'COMMAND'
      )
      ]
    ),
    Option(
      name: '--rsync-path',
      description: 'Specify the rsync to run on the remote machine',
      args: [
        Arg(
        name: 'PATH'
      )
      ]
    ),
    Option(
      name: '--existing',
      description: 'Skip creating new files on receiver'
    ),
    Option(
      name: '--ignore-existing',
      description: 'Skip updating files that already exist on receiver'
    ),
    Option(
      name: '--remove-source-files',
      description: 'Sender removes synchronized files (non-dirs)'
    ),
    Option(
      name: '--delete',
      description: 'Delete extraneous files from destination dirs'
    ),
    Option(
      name: '--delete-before',
      description: 'Receiver deletes before transfer, not during'
    ),
    Option(
      name: ['--delete-during', '--del'],
      description: 'Receiver deletes during the transfer'
    ),
    Option(
      name: '--delete-delay',
      description: 'Find deletions during, delete after'
    ),
    Option(
      name: '--delete-after',
      description: 'Receiver deletes after transfer, not during'
    ),
    Option(
      name: '--delete-excluded',
      description: 'Also delete excluded files from destination dirs'
    ),
    Option(
      name: '--ignore-missing-args',
      description: 'Ignore missing source args without error'
    ),
    Option(
      name: '--delete-missing-args',
      description: 'Delete missing source args from destination'
    ),
    Option(
      name: '--ignore-errors',
      description: 'Delete even if there are I/O errors'
    ),
    Option(
      name: '--force',
      description: 'Force deletion of directories even if not empty'
    ),
    Option(
      name: '--max-delete',
      description: 'Don\'t delete more than NUM files',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--max-size',
      description: 'Don\'t transfer any file larger than SIZE',
      args: [
        Arg(
        name: 'SIZE'
      )
      ]
    ),
    Option(
      name: '--min-size',
      description: 'Don\'t transfer any file smaller than SIZE',
      args: [
        Arg(
        name: 'SIZE'
      )
      ]
    ),
    Option(
      name: '--partial',
      description: 'Keep partially transferred files'
    ),
    Option(
      name: '--partial-dir=DIR',
      description: 'Put a partially transferred file into DIR',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--delay-updates',
      description: 'Put all updated files into place at transfer\'s end'
    ),
    Option(
      name: ['-m', '--prune-empty-dirs'],
      description: 'Prune empty directory chains from the file-list'
    ),
    Option(
      name: '--numeric-ids',
      description: 'Don\'t map uid/gid values by user/group name'
    ),
    Option(
      name: '--usermap',
      description: 'Custom username mapping',
      args: [
        Arg(
        name: 'STRING'
      )
      ]
    ),
    Option(
      name: '--groupmap',
      description: 'Custom groupname mapping',
      args: [
        Arg(
        name: 'STRING'
      )
      ]
    ),
    Option(
      name: '--chown=USER:GROUP',
      description: 'Simple username/groupname mapping',
      args: [
        Arg(
        name: 'USER:GROUP'
      )
      ]
    ),
    Option(
      name: '--timeout',
      description: 'Set I/O timeout in seconds',
      args: [
        Arg(
        name: 'SECONDS'
      )
      ]
    ),
    Option(
      name: '--contimeout',
      description: 'Set daemon connection timeout in seconds',
      args: [
        Arg(
        name: 'SECONDS'
      )
      ]
    ),
    Option(
      name: ['-I', '--ignore-times'],
      description: 'Don\'t skip files that match in size and mod-time'
    ),
    Option(
      name: '-M',
      description: 'Send OPTION to the remote side only',
      args: [
        Arg(
        name: 'OPTION'
      )
      ]
    ),
    Option(
      name: '--remote-option',
      description: 'Send OPTION to the remote side only',
      args: [
        Arg(
        name: 'OPTION'
      )
      ]
    ),
    Option(
      name: '--size-only',
      description: 'Skip files that match in size'
    ),
    Option(
      name: '-@',
      description: 'Set the accuracy for mod-time comparisons',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--modify-window',
      description: 'Set the accuracy for mod-time comparisons',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '-T',
      description: 'Create temporary files in directory DIR',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--temp-dir',
      description: 'Create temporary files in directory DIR',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-y', '--fuzzy'],
      description: 'Find similar file for basis if no dest file'
    ),
    Option(
      name: '--compare-dest',
      description: 'Also compare destination files relative to DIR',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--copy-dest',
      description: 'Also compare destination files relative to DIR and include copies of unchanged files',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--link-dest',
      description: 'Hardlink to files in DIR when unchanged',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-z', '--compress'],
      description: 'Compress file data during the transfer'
    ),
    Option(
      name: '--compress-level',
      description: 'Explicitly set compression level',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--skip-compress',
      description: 'Skip compressing files with a suffix in LIST',
      args: [
        Arg(
        name: 'LIST'
      )
      ]
    ),
    Option(
      name: ['-C', '--cvs-exclude'],
      description: 'Auto-ignore files the same way CVS does'
    ),
    Option(
      name: '-f',
      description: 'Add a file-filtering RULE',
      args: [
        Arg(
        name: 'RULE'
      )
      ]
    ),
    Option(
      name: '--filter',
      description: 'Add a file-filtering RULE',
      args: [
        Arg(
        name: 'RULE'
      )
      ]
    ),
    Option(
      name: '-F',
      description: 'Same as --filter=\'dir-merge /.rsync-filter\'',
      args: [
        Arg(
        name: 'DIR',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--exclude',
      description: 'Exclude files matching PATTERN',
      args: [
        Arg(
        name: 'PATTERN'
      )
      ]
    ),
    Option(
      name: '--exclude-from',
      description: 'Read exclude patterns from FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--include',
      description: 'Don\'t exclude files matching PATTERN',
      args: [
        Arg(
        name: 'PATTERN'
      )
      ]
    ),
    Option(
      name: '--include-from',
      description: 'Read include patterns from FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--files-from',
      description: 'Read list of source-file names from FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-0', '--from0'],
      description: 'All *-from/filter files are delimited by 0s'
    ),
    Option(
      name: ['-s', '--protect-args'],
      description: 'No space-splitting; only wildcard special-chars'
    ),
    Option(
      name: '--address',
      description: 'Bind address for outgoing socket to daemon',
      args: [
        Arg(
        name: 'ADDRESS'
      )
      ]
    ),
    Option(
      name: '--port',
      description: 'Specify double-colon alternate port number',
      args: [
        Arg(
        name: 'PORT'
      )
      ]
    ),
    Option(
      name: '--sockopts',
      description: 'Specify custom TCP options',
      args: [
        Arg(
        name: 'OPTIONS'
      )
      ]
    ),
    Option(
      name: '--blocking-io',
      description: 'Use blocking I/O for the remote shell'
    ),
    Option(
      name: '--stats',
      description: 'Give some file-transfer stats'
    ),
    Option(
      name: ['-8', '--8-bit-output'],
      description: 'Leave high-bit chars unescaped in output'
    ),
    Option(
      name: ['-h', '--human-readable'],
      description: 'Output numbers in a human-readable format'
    ),
    Option(
      name: '--progress',
      description: 'Show progress during transfer'
    ),
    Option(
      name: '-P',
      description: 'Same as --partial --progress'
    ),
    Option(
      name: ['-i', '--itemize-changes'],
      description: 'Output a change-summary for all updates'
    ),
    Option(
      name: '--out-format',
      description: 'Output updates using the specified FORMAT',
      args: [
        Arg(
        name: 'FORMAT'
      )
      ]
    ),
    Option(
      name: '--log-file',
      description: 'Log what we\'re doing to the specified FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--log-file-format',
      description: 'Log updates using the specified FMT',
      args: [
        Arg(
        name: 'FMT'
      )
      ]
    ),
    Option(
      name: '--password-file',
      description: 'Read daemon-access password from FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--list-only',
      description: 'List the files instead of copying them'
    ),
    Option(
      name: '--bwlimit',
      description: 'Limit socket I/O bandwidth',
      args: [
        Arg(
        name: 'RATE'
      )
      ]
    ),
    Option(
      name: '--stop-at',
      description: 'Stop rsync at year-month-dayThour:minute',
      args: [
        Arg(
        name: 'y-m-dTh:m'
      )
      ]
    ),
    Option(
      name: '--time-limit',
      description: 'Stop rsync after MINS minutes have elapsed',
      args: [
        Arg(
        name: 'MINS'
      )
      ]
    ),
    Option(
      name: '--outbuf',
      description: 'Set output buffering to None, Line, or Block',
      args: [
        Arg(
        name: 'BUFFER',
        suggestions: [

          FigSuggestion(name: 'N'),
          FigSuggestion(name: 'L'),
          FigSuggestion(name: 'B')
        ]
      )
      ]
    ),
    Option(
      name: '--write-batch',
      description: 'Write a batched update to FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--only-write-batch',
      description: 'Like --write-batch but w/o updating destination',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--read-batch',
      description: 'Read a batched update from FILE',
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--protocol',
      description: 'Force an older protocol version to be used',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--iconv',
      description: 'Request charset conversion of filenames',
      args: [
        Arg(
        name: 'CONVERT_SPEC'
      )
      ]
    ),
    Option(
      name: '--checksum-seed',
      description: 'Set block/file checksum seed (advanced)',
      args: [
        Arg(
        name: 'NUM'
      )
      ]
    ),
    Option(
      name: '--noatime',
      description: 'Do not alter atime when opening source files'
    ),
    Option(
      name: ['-4', '--ipv4'],
      description: 'Prefer IPv4'
    ),
    Option(
      name: ['-6', '--ipv6'],
      description: 'Prefer IPv6'
    ),
    Option(
      name: '--version',
      description: 'Print version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help for rsync (-h is --help only if used alone)'
    )
  ]
);
