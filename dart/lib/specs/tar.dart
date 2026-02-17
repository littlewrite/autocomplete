// Auto-generated from TypeScript source: tar.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

final List<FigSuggestion> sizeSuffixe = [
  FigSuggestion(name: 'Blocks', insertValue: '{cursor}b'),
  FigSuggestion(name: 'Bytes', insertValue: '{cursor}c'),
  FigSuggestion(name: 'Gigabytes', insertValue: '{cursor}G'),
  FigSuggestion(name: 'Kilobytes', insertValue: '{cursor}K'),
  FigSuggestion(name: 'Megabytes', insertValue: '{cursor}M'),
  FigSuggestion(name: 'Petabytes', insertValue: '{cursor}P'),
  FigSuggestion(name: 'Terabytes', insertValue: '{cursor}T'),
  FigSuggestion(name: 'Words', insertValue: '{cursor}w'),
];

final List<String> compressionExclusive = [
  "a",
  "-a",
  "--auto-compress",
  "I",
  "-I",
  "--use-compress-program",
  "j",
  "-j",
  "--bzip2",
  "J",
  "-J",
  "--xz",
  "--lzip",
  "--lzma",
  "--lzop",
  "--no-auto-compress",
  "z",
  "-z",
  "--gzip",
  "--gunzip",
  "--ungzip",
  "Z",
  "-Z",
  "--compress",
  "--uncompress",
  "--zstd",
];

final List<String> keepExclusives = [
  "k",
  "-k",
  "--keep-old-files",
  "--overwrite",
  "--overwrite-dir",
  "--recursive-unlink",
  "--skip-old-files",
  "U",
  "-U",
  "--unlink-first",
  "O",
  "-O",
  "--to-stdout",
];

final List<String> overwriteExclusives = [
  "k",
  "-k",
  "--keep-old-files",
  "--keep-newer-files",
  "--keep-directory-symlink",
  "--no-overwrite-dir",
  "--overwrite",
  "--skip-old-files",
  "U",
  "-U",
  "--unlink-first",
  "O",
  "-O",
  "--to-stdout",
];

final FigOption occurrenceOption = FigOption(
  name: '--occurrence',
  description: 'Process only the Nth occurrence of each file in the archive',
  args: [
    FigArg(
      name: 'N',
      defaultValue: '1',
      isOptional: true,
    ),
  ],
);

final List<Option> fileOptions = [
  Option(
      name: ['f', '-f', '--file'],
      description: 'Use archive file or device ARCHIVE',
      args: [Arg(name: 'ARCHIV')]),
  Option(
      name: '--force-local',
      description: 'Archive file is local even if it has a colon',
      dependsOn: ['f', '-f', '--file']),
  Option(
      name: ['F', '-F', '--info-script', '--new-volume-script'],
      description: 'Run  COMMAND  at the end of each tape',
      args: [Arg(name: 'COMMAN')]),
  Option(
      name: ['L', '-L', '--tape-length'],
      description: 'Change tape after writing Nx1024 bytes',
      args: [Arg(name: 'N', suggestions: sizeSuffixe)]),
  Option(
      name: ['M', '-M', '--multi-volume'],
      description: 'Create/list/extract multi-volume archive'),
  Option(
      name: '--rmt-command',
      description: 'Use  COMMAND instead of rmt when accessing remote archives',
      args: [Arg(name: 'COMMAN')]),
  Option(
      name: '--rsh-command',
      description: 'Use  COMMAND instead of rsh when accessing remote archives',
      args: [Arg(name: 'COMMAN')]),
  Option(
      name: '--volno-file',
      description:
          'Tar will keep track of which volume of a multi-volume archive it is working in FILE',
      dependsOn: ['M', '-M', '--multi-volume'],
      args: [Arg(name: 'FIL')])
];

final List<Option> compressionOptions = [
  Option(
      name: ['a', '-a', '--auto-compress'],
      description: 'Use archive suffix to determine the compression program',
      exclusiveOn: compressionExclusive),
  Option(
      name: ['I', '-I', '--use-compress-program'],
      description: 'Filter data through COMMAND',
      exclusiveOn: compressionExclusive,
      args: [Arg(name: 'COMMAN')]),
  Option(
      name: ['j', '-j', '--bzip2'],
      description: 'Filter the archive through bzip2',
      exclusiveOn: compressionExclusive),
  Option(
      name: ['J', '-J', '--xz'],
      description: 'Filter the archive through xz',
      exclusiveOn: compressionExclusive),
  Option(
      name: '--lzip',
      description: 'Filter the archive through lzip',
      exclusiveOn: compressionExclusive),
  Option(
      name: '--lzma',
      description: 'Filter the archive through lzma',
      exclusiveOn: compressionExclusive),
  Option(
      name: '--lzop',
      description: 'Filter the archive through lzop',
      exclusiveOn: compressionExclusive),
  Option(
      name: '--no-auto-compress',
      description:
          'Do not use archive suffix to determine the compression program',
      exclusiveOn: compressionExclusive),
  Option(
      name: ['z', '-z', '--gzip', '--gunzip', '--ungzip'],
      description: 'Filter the archive through gzip',
      exclusiveOn: compressionExclusive),
  Option(
      name: ['Z', '-Z', '--compress', '--uncompress'],
      description: 'Filter the archive through compress',
      exclusiveOn: compressionExclusive),
  Option(
      name: '--zstd',
      description: 'Filter the archive through zstd',
      exclusiveOn: compressionExclusive),
  Option(
      name: ['--transform', '--xform'],
      description: 'Use sed replace EXPRESSION to transform file names',
      args: [Arg(name: 'EXPRESSIO')]),
  Option(
      name: '--checkpoint',
      description: 'Display progress messages every Nth record',
      args: [Arg(name: 'N', isOptional: true, defaultValue: '1')]),
  Option(
      name: '--checkpoint-action',
      description: 'Run ACTION on each checkpoint',
      args: [Arg(name: 'ACTIO')]),
  Option(
      name: '--full-time',
      description: 'Print file time to its full resolution',
      dependsOn: ['v', '-v', '--verbose']),
  Option(
      name: '--utc',
      description: 'Print file modification times in UTC',
      dependsOn: ['v', '-v', '--verbose'])
];

final List<Option> dumpOptions = [
  Option(
      name: '--ignore-failed-read',
      description: 'Do not exit with nonzero on unreadable files'),
  Option(
      name: '--restrict',
      description: 'Disable the use of some potentially harmful options',
      dependsOn: ['M', '-M', '--multi-volume']),
  Option(
      name: '--remove-files',
      description: 'Remove files from disk after adding them to the archive'),
  Option(
      name: ['W', '-W', '--verify'],
      description: 'Verify the archive after writing it'),
  Option(
      name: '--atime-preserve',
      description: 'Preserve access times on dumped files',
      args: [
        Arg(
            name: 'METHOD',
            defaultValue: 'replace',
            isOptional: true,
            suggestions: [
              FigSuggestion(
                  name: 'replace',
                  description: 'Restore the times after reading'),
              FigSuggestion(
                  name: 'system',
                  description: 'Not setting the times in the first place')
            ])
      ]),
  Option(
      name: '--group',
      description: 'Force NAME as group for added files',
      args: [
        Arg(
            name: 'NAME[:GID]',
            description:
                'If GID is not supplied, NAME can be either a user name or numeric GID')
      ]),
  Option(
      name: '--group-map',
      description: 'Read group translation map from FILE',
      args: [
        Arg(
            name: 'FILE',
            description:
                'Each non-empty line in FILE defines translation for a single group',
            template: 'filepaths')
      ]),
  Option(
      name: '--mode',
      description: 'Force symbolic mode CHANGES for added files',
      args: [Arg(name: 'CHANGE')]),
  Option(name: '--mtime', description: 'Set mtime for added files', args: [
    Arg(
        name: 'DATE-OR-FILE',
        description:
            'Either a date/time in almost arbitrary format, or the name of an existing file',
        template: 'filepaths')
  ]),
  Option(
      name: '--owner',
      description: 'Force NAME as owner for added files',
      args: [
        Arg(
            name: 'NAME[:GID]',
            description:
                'If UID is not supplied, NAME can be either a user name or numeric UID')
      ]),
  Option(
      name: '--owner-map',
      description: 'Read owner translation map from FILE',
      args: [
        Arg(
            name: 'FILE',
            description:
                'Each non-empty line in FILE defines translation for a single UID',
            template: 'filepaths')
      ]),
  Option(
      name: '--sort',
      description:
          'When creating an archive, sort directory entries according to ORDER',
      args: [
        Arg(name: 'ORDER', defaultValue: 'none', suggestions: [
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'name'),
          FigSuggestion(name: 'inode')
        ])
      ]),
  Option(
      name: '--add-file',
      description: 'Add FILE to the archive',
      args: [Arg(name: 'FILE', template: 'filepaths')]),
  Option(
      name: '--exclude',
      description: 'Exclude files matching PATTERN',
      args: [
        Arg(name: 'PATTERN', description: 'A glob-style wildcard patter')
      ]),
  Option(
      name: '--exclude-backups', description: 'Exclude backup and lock files'),
  Option(
      name: '--exclude-caches',
      description:
          'Exclude contents of directories containing file CACHEDIR.TAG, except for the tag file itself',
      exclusiveOn: ['--exclude-caches-all', '--exclude-caches-under']),
  Option(
      name: '--exclude-caches-all',
      description:
          'Exclude directories containing file CACHEDIR.TAG and the file itself',
      exclusiveOn: ['--exclude-caches', '--exclude-caches-under']),
  Option(
      name: '--exclude-caches-under',
      description:
          'Exclude everything under directories containing CACHEDIR.TAG',
      exclusiveOn: ['--exclude-caches', '--exclude-caches-all']),
  Option(
      name: '--exclude-ignore',
      description:
          'Read exclusion patterns from FILE in directory before dumping',
      exclusiveOn: ['--exclude-ignore-recursive'],
      args: [Arg(name: 'FIL')]),
  Option(
      name: '--exclude-ignore-recursive',
      description:
          'Same  as --exclude-ignore, except that patterns from FILE affect both the directory and all its subdirectories',
      exclusiveOn: ['--exclude-ignore'],
      args: [Arg(name: 'FIL')]),
  Option(
      name: '--exclude-tag',
      description:
          'Exclude contents of directories containing FILE, except for FILE itself',
      exclusiveOn: ['--exclude-tag-all', '--exclude-tag-under'],
      args: [Arg(name: 'FIL')]),
  Option(
      name: '--exclude-tag-all',
      description: 'Exclude directories containing FILE',
      exclusiveOn: ['--exclude-tag', '--exclude-tag-under'],
      args: [Arg(name: 'FIL')]),
  Option(
      name: '--exclude-tag-under',
      description: 'Exclude everything under directories containing FILE',
      exclusiveOn: ['--exclude-tag', '--exclude-tag-all'],
      args: [Arg(name: 'FIL')]),
  Option(
      name: '--exclude-vcs',
      description: 'Exclude version control system directories',
      exclusiveOn: ['--exclude-vcs-ignores']),
  Option(
      name: '--exclude-vcs-ignores',
      description:
          'Exclude files that match patterns read from VCS-specific ignore files',
      exclusiveOn: ['--exclude-vcs']),
  Option(
      name: ['h', '-h', '--dereference'],
      description: 'Follow symlinks; archive and dump the files they point to'),
  Option(
      name: '--hard-dereference',
      description:
          'Follow hard links; archive and dump the files they refer to'),
  Option(
      name: ['N', '-N', '--newer', '--after-date'],
      description: 'Only store files newer than DATE',
      args: [
        Arg(
            name: 'DATE',
            description:
                'If DATE starts with / or . it is taken to be a file name',
            template: 'filepaths')
      ]),
  Option(
      name: '--one-file-system',
      description: 'Stay in local file system when creating archive'),
  Option(
      name: ['P', '-P', '--absolute-names'],
      description: 'Don\'t strip leading slashes from file names'),
  Option(
      name: '--anchored',
      description: 'Patterns match file name start',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--no-anchored']),
  Option(
      name: '--ignore-case',
      description: 'Ignore case',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--no-ignore-case']),
  Option(
      name: '--no-anchored',
      description: 'Patterns match after any /',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--anchored']),
  Option(
      name: '--no-ignore-case',
      description: 'Case sensitive matching',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--ignore-case']),
  Option(
      name: '--no-wildcards',
      description: 'Verbatim string matching',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--wildcards']),
  Option(
      name: '--no-wildcards-match-slash',
      description: 'Wildcards do not match /',
      dependsOn: ['--exclude', '--wildcards'],
      exclusiveOn: ['--no-wildcards', '--wildcards-match-slash']),
  Option(
      name: '--wildcards',
      description: 'Use wildcards',
      dependsOn: ['--exclude'],
      exclusiveOn: ['--no-wildcards']),
  Option(
      name: '--wildcards-match-slash',
      description: 'Wildcards match /',
      dependsOn: ['--exclude', '--wildcards'],
      exclusiveOn: ['--no-wildcards', '--no-wildcards-match-slash']),
  Option(
      name: '--clamp-mtime',
      description:
          'Only set time when the file is more recent than what was given with --mtime',
      dependsOn: ['--mtime']),
  Option(
      name: ['l', '-l', '--check-links'],
      description: 'Print a message if not all links are dumped'),
  ...compressionOptions
];

final List<Option> readOptions = [
  Option(
      name: ['n', '-n', '--seek'],
      description: 'Assume the archive is seekable',
      exclusiveOn: ['--no-seek']),
  Option(
      name: '--no-seek',
      description: 'Assume the archive is not seekable',
      exclusiveOn: ['n', '-n', '--seek']),
  occurrenceOption,
  Option(
      name: ['B', '-B', '--read-full-records'],
      description:
          'When listing or extracting, accept incomplete input records after end-of-file marker'),
  Option(
      name: ['i', '-i', '--ignore-zeros'],
      description: 'Ignore zeroed blocks in archive'),
  Option(
      name: ['V', '-V', '--label'],
      description: 'Use TEXT as a globbing pattern for volume name',
      args: [Arg(name: 'TEX')]),
  ...compressionOptions,
  Option(
      name: ['K', '-K', '--starting-file'],
      description: 'Begin at the given member in the archive',
      args: [Arg(name: 'MEMBE')]),
  Option(
      name: '--show-omitted-dirs',
      description: 'List each directory that does not match search criteria')
];

final List<FigSuggestion> sizeSuffixes = [
  FigSuggestion(name: 'Blocks', insertValue: '{cursor}b'),
  FigSuggestion(name: 'Bytes', insertValue: '{cursor}c'),
  FigSuggestion(name: 'Gigabytes', insertValue: '{cursor}G'),
  FigSuggestion(name: 'Kilobytes', insertValue: '{cursor}K'),
  FigSuggestion(name: 'Megabytes', insertValue: '{cursor}M'),
  FigSuggestion(name: 'Petabytes', insertValue: '{cursor}P'),
  FigSuggestion(name: 'Terabytes', insertValue: '{cursor}T'),
  FigSuggestion(name: 'Words', insertValue: '{cursor}w')
];

final List<FigSuggestion> warningSuggestions = [
  FigSuggestion(name: 'all', description: 'Enable all warning messages'),
  FigSuggestion(name: 'none', description: 'Disable all warning messages'),
  FigSuggestion(
      name: 'filename-with-nuls',
      description: '"%s: file name read contains nul character"'),
  FigSuggestion(
      name: 'no-filename-with-nuls',
      description: 'No "%s: file name read contains nul character"'),
  FigSuggestion(
      name: 'alone-zero-block', description: '"A lone zero block at %s"'),
  FigSuggestion(
      name: 'no-alone-zero-block', description: 'No "A lone zero block at %s"')
];

/// Completion spec for `tar` CLI
final FigSpec tarSpec = FigSpec(
    name: 'tar',
    description: 'Manipulating archive files',
    options: [
      Option(
          name: ['g', '-g', '--listed-incremental'],
          description: 'Handle new GNU-format incremental backups',
          isPersistent: true,
          exclusiveOn: ['G', '-G', '--incremental'],
          args: [
            Arg(name: 'FILE', description: 'The name of a snapshot file')
          ]),
      Option(
          name: '--hole-detection',
          description: 'Use METHOD to detect holes in sparse files',
          isPersistent: true,
          args: [
            Arg(
                name: 'METHOD',
                defaultValue: 'seek',
                isOptional: true,
                suggestions: [
                  FigSuggestion(name: 'seek'),
                  FigSuggestion(name: 'raw')
                ])
          ]),
      Option(
          name: ['G', '-G', '--incremental'],
          description: 'Handle old GNU-format incremental backups',
          isPersistent: true,
          exclusiveOn: ['g', '-g', '--listed-incremental']),
      Option(
          name: '--sparse-version',
          description: 'Set version of the sparse format to use',
          isPersistent: true,
          dependsOn: [
            'S',
            '-S',
            '--sparse'
          ],
          args: [
            Arg(name: 'MAJOR[.MINOR]', suggestions: [
              FigSuggestion(name: '0'),
              FigSuggestion(name: '0.1'),
              FigSuggestion(name: '1')
            ])
          ]),
      Option(
          name: ['S', '-S', '--sparse'],
          description: 'Handle sparse files efficiently',
          isPersistent: true),
      Option(
          name: '--ignore-command-error',
          description: 'Ignore subprocess exit codes',
          isPersistent: true,
          exclusiveOn: ['--no-ignore-command-error']),
      Option(
          name: '--no-ignore-command-error',
          description: 'Treat non-zero exit codes of children as error',
          isPersistent: true,
          exclusiveOn: ['--ignore-command-error']),
      Option(
          name: '--numeric-owner',
          description: 'Always use numbers for user/group names',
          isPersistent: true),
      Option(
          name: '--acls',
          description: 'Enable POSIX ACLs support',
          exclusiveOn: ['--no-acls'],
          isPersistent: true),
      Option(
          name: '--no-acls',
          description: 'Disable POSIX ACLs support',
          exclusiveOn: ['--acls'],
          isPersistent: true),
      Option(
          name: '--selinux',
          description: 'Enable SELinux context support',
          exclusiveOn: ['--no-selinux'],
          isPersistent: true),
      Option(
          name: '--no-selinux',
          description: 'Disable SELinux context support',
          exclusiveOn: ['--selinux'],
          isPersistent: true),
      Option(
          name: '--xattrs',
          description: 'Enable extended attributes support',
          exclusiveOn: ['--no-xattrs'],
          isPersistent: true),
      Option(
          name: '--no-xattrs',
          description: 'Disable extended attributes support',
          exclusiveOn: ['--xattrs', '--xattrs-exclude', '--xattrs-include'],
          isPersistent: true),
      Option(
          name: '--xattrs-exclude',
          description: 'Specify the exclude pattern for xattr keys',
          exclusiveOn: ['--no-xattrs'],
          isPersistent: true,
          args: [
            Arg(name: 'PATTERN', description: 'A POSIX regular expressio')
          ]),
      Option(
          name: '--xattrs-include',
          description: 'Specify the include pattern for xattr keys',
          isPersistent: true,
          args: [
            Arg(name: 'PATTERN', description: 'A POSIX regular expressio')
          ]),
      Option(
          name: '--backup',
          description: 'Backup before removal',
          isPersistent: true,
          args: [
            Arg(
                name: 'CONTROL',
                isOptional: true,
                defaultValue: 'existing',
                suggestions: [
                  FigSuggestion(
                      name: ['none', 'off'], description: 'Never make backups'),
                  FigSuggestion(
                      name: ['t', 'numbered'],
                      description: 'Make numbered backups'),
                  FigSuggestion(
                      name: ['nil', 'existing'],
                      description:
                          'Make numbered backups if numbered backups  exist'),
                  FigSuggestion(
                      name: ['never', 'simple'],
                      description: 'Always make simple backups')
                ])
          ]),
      Option(
          name: ['C', '-C', '--directory'],
          description: 'Change to DIR before performing any operations',
          isRepeatable: true,
          isPersistent: true,
          args: [Arg(name: 'DIR', template: 'folder')]),
      Option(
          name: '--newer-mtime',
          description: 'Work on files whose data changed after the DATE',
          isPersistent: true,
          args: [
            Arg(
                name: 'DATE',
                description:
                    'If DATE starts with / or . it is taken to be a file name',
                template: 'filepaths')
          ]),
      Option(
          name: '--no-null',
          description: 'Disable the effect of the previous --null option',
          dependsOn: ['T', '-T', '--files-from'],
          isPersistent: true),
      Option(
          name: '--no-recursion',
          description: 'Avoid descending automatically in directories',
          exclusiveOn: ['--recursion'],
          isPersistent: true),
      Option(
          name: '--no-unquote',
          description: 'Do not unquote input file or member names',
          exclusiveOn: ['--unquote'],
          isPersistent: true),
      Option(
          name: '--no-verbatim-files-from',
          description:
              'Treat each line read from a file list as if it were supplied in the command line',
          dependsOn: ['T', '-T', '--files-from'],
          isRepeatable: true,
          isPersistent: true),
      Option(
          name: '-null',
          description:
              'Instruct subsequent -T options to read null-terminated names verbatim',
          dependsOn: ['T', '-T', '--files-from'],
          isPersistent: true),
      Option(
          name: '--recursion',
          description: 'Recurse into directories',
          exclusiveOn: ['--no-recursion'],
          isPersistent: true),
      Option(
          name: '--suffix',
          description: 'Backup before removal, override usual suffix',
          dependsOn: ['--backup'],
          isPersistent: true,
          args: [Arg(name: 'STRING', defaultValue: '')]),
      Option(
          name: ['T', '-T', '--files-from'],
          description: 'Get names to extract or create from FILE',
          isRepeatable: true,
          isPersistent: true,
          args: [Arg(name: 'FILE', template: 'filepath')]),
      Option(
          name: '--unquote',
          description: 'Unquote file or member names',
          exclusiveOn: ['--no-unquote'],
          isPersistent: true),
      Option(
          name: '--verbatim-files-from',
          description:
              'Treat each line obtained from a file list as a file name, even if it starts with a dash',
          dependsOn: ['T', '-T', '--files-from'],
          isRepeatable: true,
          isPersistent: true),
      Option(
          name: ['X', '-X', '--exclude-from'],
          description: 'Exclude files matching patterns listed in FILE',
          isRepeatable: true,
          isPersistent: true,
          args: [Arg(name: 'FILE', template: 'filepath')]),
      Option(
          name: '--index-file',
          description: 'Send verbose output to FILE',
          isPersistent: true,
          args: [Arg(name: 'FIL')]),
      Option(
          name: '--no-quote-chars',
          description: 'Disable quoting for characters from STRING',
          isPersistent: true,
          args: [Arg(name: 'STRIN')]),
      Option(
          name: '--quote-chars',
          description: 'Additionally quote characters from STRING',
          isPersistent: true,
          args: [Arg(name: 'STRIN')]),
      Option(
          name: '--quoting-style',
          description: 'Set quoting style for file and member names',
          isPersistent: true,
          args: [
            Arg(name: 'STYLE', suggestions: [
              FigSuggestion(name: 'literal'),
              FigSuggestion(name: 'shell'),
              FigSuggestion(name: 'shell-always'),
              FigSuggestion(name: 'c'),
              FigSuggestion(name: 'c-maybe'),
              FigSuggestion(name: 'escape'),
              FigSuggestion(name: 'locale'),
              FigSuggestion(name: 'clocale')
            ])
          ]),
      Option(
          name: ['R', '-R', '--block-number'],
          description: 'Show block number within archive with each message',
          isPersistent: true),
      Option(
          name: ['--show-transformed-names', '--show-stored-names'],
          description:
              'Show file or archive names after transformation by --strip and --transform options',
          isPersistent: true),
      Option(
          name: '--totals',
          description: 'Print total bytes after processing the archive',
          isPersistent: true,
          args: [
            Arg(
                name: 'SIGNAL',
                description: 'Print total bytes when this signal is delivered',
                isOptional: true,
                suggestions: [
                  FigSuggestion(name: ['SIGHUP', 'HUP']),
                  FigSuggestion(name: ['SIGQUIT', 'QUIT']),
                  FigSuggestion(name: ['SIGINT', 'INT']),
                  FigSuggestion(name: ['SIGUSR1', 'USR1']),
                  FigSuggestion(name: ['SIGUSR2', 'USR2'])
                ])
          ]),
      Option(
          name: ['v', '-v', '--verbose'],
          description: 'Verbosely list files processed',
          isRepeatable: true,
          isPersistent: true),
      Option(
          name: ['w', '-w', '--interactive', '--confirmation'],
          description: 'Ask for confirmation for every action')
    ],
    subcommands: [
      Subcommand(
          name: ['A', '-A', '--catenate', '--concatenate'],
          description: 'Append archive to the end of another archive',
          args: [
            Arg(name: 'ARCHIVE', isVariadic: true, template: 'filepaths')
          ]),
      Subcommand(
          name: ['c', '-c', '--create'],
          description: 'Create a new archive',
          options: [
            Option(
                name: '--check-device',
                description:
                    'Check device numbers when creating incremental archives',
                exclusiveOn: ['--no-check-device'],
                dependsOn: ['g', '-g', '--listed-incremental']),
            Option(
                name: '--level',
                description:
                    'Set dump level for created listed-incremental archive',
                args: [Arg(name: 'NUMBER', defaultValue: '')],
                dependsOn: ['g', '-g', '--listed-incremental']),
            Option(
                name: '--no-check-device',
                description:
                    'Do not check device numbers when creating incremental archives',
                exclusiveOn: ['--check-device'],
                dependsOn: ['g', '-g', '--listed-incremental']),
            ...dumpOptions,
            Option(
                name: ['b', '-b', '--blocking-factor'],
                description: 'Set record size to BLOCKSx512 bytes',
                args: [Arg(name: 'BLOCK')]),
            Option(
                name: '--record-size',
                description: 'Set record size',
                args: [
                  Arg(
                      name: 'NUMBER',
                      description: 'The number of bytes per record',
                      suggestions: sizeSuffixes)
                ]),
            Option(
                name: ['H', '-H', '--format'],
                description: 'Create archive of the given format',
                exclusiveOn: [
                  '--old-archive',
                  '--portability',
                  '--posix',
                  'o',
                  '-o'
                ],
                args: [
                  Arg(name: 'FORMAT', suggestions: [
                    FigSuggestion(
                        name: 'gnu', description: 'GNU tar 1.13.x format'),
                    FigSuggestion(
                        name: 'oldgnu',
                        description: 'GNU format as per tar <= 1.12'),
                    FigSuggestion(
                        name: ['pax', 'posix'],
                        description: 'POSIX 1003.1-2001 (pax) format'),
                    FigSuggestion(
                        name: 'ustar',
                        description: 'POSIX 1003.1-1988 (ustar) format'),
                    FigSuggestion(name: 'v7', description: 'Old V7 tar format')
                  ])
                ]),
            Option(
                name: ['--old-archive', '--portability'],
                description: 'Same as --format=v7',
                exclusiveOn: [
                  'H',
                  '-H',
                  '--format',
                  '--pax-option',
                  '--posix',
                  'o',
                  '-o',
                ]),
            Option(
                name: '--pax-option',
                description: 'Control pax keywords when creating PAX archives',
                dependsOn: [
                  'H',
                  '-H',
                  '--format'
                ],
                exclusiveOn: [
                  '--old-archive',
                  '--portability',
                  '--old-archive',
                  '--portability',
                  '--posix',
                  'o',
                  '-o',
                ],
                args: [
                  Arg(name: 'keyword[[:]=value][,keyword[[:]=value]]..')
                ]),
            Option(
                name: '--posix',
                description: 'Same as --format=posix',
                exclusiveOn: [
                  'H',
                  '-H',
                  '--format',
                  '--old-archive',
                  '--portability',
                  '--pax-option',
                ]),
            Option(
                name: ['V', '-V', '--label'],
                description: 'Create archive with volume name TEXT',
                args: [Arg(name: 'TEX')]),
            Option(
                name: '--warning',
                description:
                    'Enable or disable warning messages identified by KEYWORD',
                isRepeatable: true,
                isPersistent: true,
                args: [
                  Arg(name: 'KEYWORD', defaultValue: 'all', suggestions: [
                    ...warningSuggestions,
                    FigSuggestion(
                        name: 'cachedir',
                        description:
                            '"%s: contains a cache directory tag %s; %s"'),
                    FigSuggestion(
                        name: 'no-cachedir',
                        description:
                            'No "%s: contains a cache directory tag %s; %s"'),
                    FigSuggestion(
                        name: 'file-shrank',
                        description:
                            '"%s: File shrank by %s bytes; padding with zeros"'),
                    FigSuggestion(
                        name: 'no-file-shrank',
                        description:
                            'No "%s: File shrank by %s bytes; padding with zeros"'),
                    FigSuggestion(
                        name: 'xdev',
                        description:
                            '"%s: file is on a different filesystem; not dumped"'),
                    FigSuggestion(
                        name: 'no-xdev',
                        description:
                            'No "%s: file is on a different filesystem; not dumped"'),
                    FigSuggestion(
                        name: 'file-ignored',
                        description:
                            '"%s: Unknown file type; file ignored", "%s: socket ignored", "%s: door ignored"'),
                    FigSuggestion(
                        name: 'no-file-ignored',
                        description:
                            'No "%s: Unknown file type; file ignored", "%s: socket ignored", "%s: door ignored"'),
                    FigSuggestion(
                        name: 'file-unchanged',
                        description: '"%s: file is unchanged; not dumped"'),
                    FigSuggestion(
                        name: 'no-file-unchanged',
                        description: 'No "%s: file is unchanged; not dumped"'),
                    FigSuggestion(
                        name: 'ignore-archive',
                        description: '"%s: file is the archive; not dumped"'),
                    FigSuggestion(
                        name: 'no-ignore-archive',
                        description:
                            'No "%s: file is the archive; not dumped"'),
                    FigSuggestion(
                        name: 'file-removed',
                        description: '"%s: File removed before we read it"'),
                    FigSuggestion(
                        name: 'no-file-removed',
                        description: 'No "%s: File removed before we read it"'),
                    FigSuggestion(
                        name: 'file-changed',
                        description: '"%s: file changed as we read it"'),
                    FigSuggestion(
                        name: 'no-file-changed',
                        description: 'No "%s: file changed as we read it"'),
                    FigSuggestion(
                        name: 'failed-read',
                        description:
                            'Enables warnings about unreadable files or directories'),
                    FigSuggestion(
                        name: 'no-failed-read',
                        description:
                            'Suppresses warnings about unreadable files or directories')
                  ])
                ]),
            Option(
                name: ['o', '-o'],
                description: 'Same as --old-archive',
                exclusiveOn: [
                  'H',
                  '-H',
                  '--format',
                  '--old-archive',
                  '--portability',
                  '--posix',
                  'o',
                  '-o',
                ]),
            ...fileOptions
          ],
          args: [Arg(name: 'FILE', isVariadic: true, template: 'filepaths')]),
      Subcommand(
          name: ['d', '-d', '--diff', '--compare'],
          description: 'Find differences between archive and file system',
          options: [...fileOptions, occurrenceOption],
          args: [
            Arg(
                name: 'FILE',
                isOptional: true,
                isVariadic: true,
                defaultValue: '.',
                template: 'filepaths')
          ]),
      Subcommand(
          name: ['t', '-t', '--list'],
          description: 'List the contents of an archive',
          options: [...fileOptions, ...readOptions],
          args: [Arg(name: 'MEMBER', isOptional: true, isVariadic: true)]),
      Subcommand(
          name: ['r', '-r', '--append'],
          description: 'Append files to the end of an archive',
          options: [...fileOptions, ...dumpOptions],
          args: [Arg(name: 'FILE', isVariadic: true, template: 'filepaths')]),
      Subcommand(
          name: ['u', '-u', '--update'],
          description:
              'Append files which are newer than the corresponding copy in  the archive',
          options: [...fileOptions, ...dumpOptions],
          args: [Arg(name: 'FILE', isVariadic: true, template: 'filepaths')]),
      Subcommand(
          name: ['x', '-x', '--extract', '--get'],
          description: 'Extract files from an archive',
          options: [
            ...fileOptions,
            ...readOptions,
            Option(
                name: ['k', '-k', '--keep-old-files'],
                description: 'Don\'t replace existing files when extracting',
                exclusiveOn: [
                  '--keep-newer-files',
                  '--keep-directory-symlink',
                  '--no-overwrite-dir',
                  ...keepExclusives,
                ]),
            Option(
                name: '--keep-newer-files',
                description:
                    'Don\'t replace existing files that are newer than their archive copies',
                exclusiveOn: keepExclusives),
            Option(
                name: '--keep-directory-symlink',
                description:
                    'Don\'t replace existing symlinks to directories when extracting',
                exclusiveOn: keepExclusives),
            Option(
                name: '--no-overwrite-dir',
                description: 'Preserve metadata of existing directories',
                exclusiveOn: keepExclusives),
            Option(
                name: '--one-top-level',
                description: 'Extract all files into DIR',
                args: [Arg(name: 'DI')]),
            Option(
                name: '--overwrite',
                description: 'Overwrite existing files when extracting',
                exclusiveOn: [
                  '--overwrite-dir',
                  '--recursive-unlink',
                  ...overwriteExclusives,
                ]),
            Option(
                name: '--overwrite-dir',
                description:
                    'Overwrite metadata of existing directories when extracting',
                exclusiveOn: overwriteExclusives),
            Option(
                name: '--recursive-unlink',
                description:
                    'Recursively remove all files in the directory prior to extracting it',
                exclusiveOn: overwriteExclusives),
            Option(
                name: '--skip-old-files',
                description:
                    'Don\'t replace existing files when extracting, silently skip over them',
                exclusiveOn: [...keepExclusives, ...overwriteExclusives]),
            Option(
                name: ['U', '-U', '--unlink-first'],
                description: 'Remove each file prior to extracting over it',
                exclusiveOn: [...keepExclusives, ...overwriteExclusives]),
            Option(
                name: ['O', '-O', '--to-stdout'],
                description: 'Extract files to standard output',
                exclusiveOn: [...keepExclusives, ...overwriteExclusives]),
            Option(
                name: '--to-command',
                description: 'Pipe extracted files to COMMAND',
                args: [Arg(name: 'COMMAND', template: 'filepath')]),
            Option(
                name: '--delay-directory-restore',
                description:
                    'Delay setting modification times and permissions of extracted directories until the end of extraction',
                exclusiveOn: ['--no-delay-directory-restore']),
            Option(
                name: ['m', '-m', '--touch'],
                description: 'Don\'t extract file modified time'),
            Option(
                name: '--no-delay-directory-restore',
                description:
                    'Cancel the effect of the prior --delay-directory-restore option',
                exclusiveOn: ['--delay-directory-restore']),
            Option(
                name: '--no-same-owner',
                description: 'Extract files as yourself',
                exclusiveOn: ['--same-owner']),
            Option(
                name: '--no-same-permissions',
                description:
                    'Apply the user\'s umask when extracting permissions from the archive',
                exclusiveOn: [
                  'p',
                  '-p',
                  '--preserve-permissions',
                  '--same-permissions',
                ]),
            Option(
                name: [
                  'p',
                  '-p',
                  '--preserve-permissions',
                  '--same-permissions'
                ],
                description: 'Extract information about file permissions',
                exclusiveOn: ['--no-same-permissions']),
            Option(name: '--preserve', description: 'Same as both -p and -s'),
            Option(
                name: '--same-owner',
                description:
                    'Try extracting files with the same ownership as exists in the archive',
                exclusiveOn: ['--no-same-owner']),
            Option(
                name: ['s', '-s', '--preserve-order', '--same-order'],
                description: 'Sort names to extract to match archive'),
            Option(
                name: '--strip-components',
                description:
                    'Strip NUMBER leading components from file names on extraction',
                args: [Arg(name: 'NUMBE')]),
            Option(
                name: '--warning',
                description:
                    'Enable or disable warning messages identified by KEYWORD',
                isRepeatable: true,
                isPersistent: true,
                args: [
                  Arg(name: 'KEYWORD', defaultValue: 'all', suggestions: [
                    ...warningSuggestions,
                    FigSuggestion(
                        name: 'existing-file',
                        description: '"%s: skipping existing file"'),
                    FigSuggestion(
                        name: 'no-existing-file',
                        description: 'No "%s: skipping existing file"'),
                    FigSuggestion(
                        name: 'timestamp',
                        description:
                            '"%s: implausibly old time stamp %s", "%s: time stamp %s is %s s in the future"'),
                    FigSuggestion(
                        name: 'no-timestamp',
                        description:
                            'No "%s: implausibly old time stamp %s", "%s: time stamp %s is %s s in the future"'),
                    FigSuggestion(
                        name: 'contiguous-cast',
                        description:
                            '"Extracting contiguous files as regular files"'),
                    FigSuggestion(
                        name: 'no-contiguous-cast',
                        description:
                            'No "Extracting contiguous files as regular files"'),
                    FigSuggestion(
                        name: 'symlink-cast',
                        description:
                            '"Attempting extraction of symbolic links as hard links"'),
                    FigSuggestion(
                        name: 'no-symlink-cast',
                        description:
                            'No "Attempting extraction of symbolic links as hard links"'),
                    FigSuggestion(
                        name: 'unknown-cast',
                        description:
                            '"%s: Unknown file type \'%c\', extracted as normal file"'),
                    FigSuggestion(
                        name: 'no-unknown-cast',
                        description:
                            'No "%s: Unknown file type \'%c\', extracted as normal file"'),
                    FigSuggestion(
                        name: 'ignore-newer',
                        description: '"Current %s is newer or same age"'),
                    FigSuggestion(
                        name: 'no-ignore-newer',
                        description: 'No "Current %s is newer or same age"'),
                    FigSuggestion(
                        name: 'unknown-keyword',
                        description:
                            '"Ignoring unknown extended header keyword \'%s\'"'),
                    FigSuggestion(
                        name: 'no-unknown-keyword',
                        description:
                            'No "Ignoring unknown extended header keyword \'%s\'"'),
                    FigSuggestion(
                        name: 'decompress-program',
                        description:
                            'Enables verbose description of failures occurring when trying to run alternative decompressor programs'),
                    FigSuggestion(
                        name: 'no-decompress-program',
                        description:
                            'Suppresses verbose description of failures occurring when trying to run alternative decompressor programs'),
                    FigSuggestion(
                        name: 'record-size',
                        description: '"Record size = %lu blocks"'),
                    FigSuggestion(
                        name: 'no-record-size',
                        description: 'No "Record size = %lu blocks"'),
                    FigSuggestion(
                        name: 'rename-directory',
                        description:
                            '"%s: Directory has been renamed from %s", "%s: Directory has been renamed"'),
                    FigSuggestion(
                        name: 'no-rename-directory',
                        description:
                            'No "%s: Directory has been renamed from %s", "%s: Directory has been renamed"'),
                    FigSuggestion(
                        name: 'new-directory',
                        description: '"%s: Directory is new"'),
                    FigSuggestion(
                        name: 'no-new-directory',
                        description: 'No "%s: Directory is new"'),
                    FigSuggestion(
                        name: 'xdev',
                        description:
                            '"%s: directory is on a different device: not purging"'),
                    FigSuggestion(
                        name: 'no-xdev',
                        description:
                            'No "%s: directory is on a different device: not purging"'),
                    FigSuggestion(
                        name: 'bad-dumpdir',
                        description: '"Malformed dumpdir: \'X\' never used"')
                  ])
                ]),
            Option(
                name: ['o', '-o'],
                description: 'Same as --no-same-owner',
                exclusiveOn: ['--no-same-owner', '--same-owner'])
          ],
          args: [Arg(name: 'MEMBER', isOptional: true, isVariadic: true)]),
      Subcommand(
          name: '--delete',
          description: 'Delete from the archive',
          options: [...fileOptions, occurrenceOption],
          args: [Arg(name: 'MEMBER', isVariadic: true)]),
      Subcommand(
          name: '--test-label',
          description: 'Test the archive volume label and exit',
          options: fileOptions,
          args: [Arg(name: 'LABEL', isOptional: true, isVariadic: true)]),
      Subcommand(
          name: '--show-defaults',
          description:
              'Show built-in defaults for various tar options and exit'),
      Subcommand(
          name: ['?', '-?', '--help'],
          description: 'Display a short option summary and exit'),
      Subcommand(
          name: '--usage',
          description: 'Display a list of available options and exit'),
      Subcommand(
          name: '--version',
          description:
              'Print program version and copyright information and exit')
    ],
    parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true));
