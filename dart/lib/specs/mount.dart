// AI-generated from TypeScript source: mount.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec mountSpec = FigSpec(
  name: 'mount',
  description: 'Mount disks and manage subtrees',
  args: [
    FigArg(
      name: 'Disk/loopfile',
      template: 'filepaths',
      generators: [
        FigGenerator(
          script: ['cat', '/proc/partitions'],
          postProcess: (String out, [List<String>? tokens]) {
            return out
                .trim()
                .split('\n')
                .sublist(2)
                .map((line) => '/dev/' + line.split(' ').last)
                .where((x) => x != '/dev/')
                .map((blk) =>
                    FigSuggestion(name: blk, description: 'Block device'))
                .toList();
          },
        ),
        FigGenerator(
          script: ['ls', '-1', '/dev/mapper'],
          postProcess: (String out, [List<String>? tokens]) {
            return out
                .trim()
                .split('\n')
                .where((x) => x.isNotEmpty)
                .map((blk) => FigSuggestion(
                      name: '/dev/mapper/' + blk,
                      description: 'Mapped block device',
                    ))
                .toList();
          },
        ),
      ],
    ),
    FigArg(
      name: 'mountpoint',
      template: 'folders',
      suggestions: [
        FigSuggestion(name: '/mnt'),
        FigSuggestion(name: '/run/media/'),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Help for abc',
    ),
    FigOption(
      name: ['-a', '--all'],
      description: 'Mount all filesystems in fstab',
    ),
    FigOption(
      name: ['-c', '--no-canonicalize'],
      description: "Don't canonicalize paths",
    ),
    FigOption(
      name: ['-f', '--fake'],
      description: 'Dry run; skip the mount(2) syscall',
    ),
    FigOption(
      name: ['-F', '--fork'],
      description: 'Fork off for each device (use with -a)',
    ),
    FigOption(
      name: ['-T', '--fstab'],
      description: 'Alternative file to /etc/fstab',
      args: FigArg(
        name: 'fstab',
        template: 'filepaths',
        defaultValue: '/etc/fstab',
      ),
    ),
    FigOption(
      name: ['-i', '--internal-only'],
      description: "Don't call the mount.<type> helpers",
    ),
    FigOption(
      name: ['-l', '--show-labels'],
      description: 'Show also filesystem labels',
    ),
    FigOption(
      name: ['-m', '--mkdir'],
      description: "Alias to '-o X-mount.mkdir",
    ),
    FigOption(
      name: ['-n', '--no-mtab'],
      description: "Don't write to /etc/mtab",
    ),
    FigOption(
      name: '--options-mode',
      description: 'What to do with options loaded from fstab',
      args: FigArg(
        name: 'mode',
      ),
    ),
    FigOption(
      name: '--options-source',
      description: 'Mount options source',
      args: FigArg(
        name: 'source',
        template: 'filepaths',
      ),
    ),
    FigOption(
      name: '--options-source-force',
      description: 'Force use of options from fstab/mtab',
    ),
    FigOption(
      name: ['-o', '--options'],
      description: 'Comma-separated list of mount options',
      args: FigArg(
        name: 'list',
      ),
    ),
    FigOption(
      name: ['-O', '--test-opts'],
      description: 'Limit the set of filesystems (use with -a)',
      args: FigArg(
        name: 'list',
      ),
    ),
    FigOption(
      name: ['-r', '--read-only'],
      description: 'Mount the filesystem read-only (same as -o ro)',
    ),
    FigOption(
      name: ['-t', '--types'],
      description: 'Limit the set of filesystem types',
      args: FigArg(
        name: 'list',
      ),
    ),
    FigOption(
      name: '--source',
      description: 'Explicitly specifies source',
      args: FigArg(
        name: 'source',
        suggestions: [
          FigSuggestion(name: 'path'),
          FigSuggestion(name: 'label'),
          FigSuggestion(name: 'uuid'),
        ],
      ),
    ),
    FigOption(
      name: '--target',
      description: 'Explicitly specifies mountpoint',
      args: FigArg(
        name: 'mountpoint',
        template: 'folders',
      ),
    ),
    FigOption(
      name: '--target-prefix',
      description: 'Specifies path used for all mountpoints',
      args: FigArg(
        name: 'path',
        template: 'folders',
      ),
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Say what is being done',
    ),
    FigOption(
      name: ['-w', '--rw', '--read-write'],
      description: 'Mount the filesystem read-write (default)',
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Display version',
    ),
    FigOption(
      name: ['-B', '--bind'],
      description: 'Mount a subtree somewhere else (same as -o bind)',
    ),
    FigOption(
      name: ['-M', '--move'],
      description: 'Move a subtree to some other place',
    ),
    FigOption(
      name: ['-R', '-rbind'],
      description: 'Mount a subtree and all submounts somewhere else',
    ),
    FigOption(
      name: '--make-shared',
      description: 'Mark a subtree as shared',
    ),
    FigOption(
      name: '--make-slave',
      description: 'Mark a subtree as slave',
    ),
    FigOption(
      name: '--make-private',
      description: 'Mark a subtree as private',
    ),
    FigOption(
      name: '--make-unbindable',
      description: 'Mark a subtree as unbindable',
    ),
    FigOption(
      name: '--make-rshared',
      description: 'Recursively mark a whole subtree as shared',
    ),
    FigOption(
      name: '--make-rslave',
      description: 'Recursively mark a whole subtree as slave',
    ),
    FigOption(
      name: '--make-rprivate',
      description: 'Recursively mark a whole subtree as private',
    ),
    FigOption(
      name: '--make-runbindable',
      description: 'Recursively mark a whole subtree as unbindable',
    ),
  ],
);
