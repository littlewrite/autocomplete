// Auto-generated from TypeScript source: fdisk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fdisk` CLI
final FigSpec fdiskSpec = FigSpec(
  name: 'fdisk',
  description: 'Manipulate disk partition table',
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for fdisk'
    ),
    Option(
      name: ['--version', '-V'],
      description: 'Show version for lsblk'
    ),
    Option(
      name: ['--sector-size', '-b'],
      description: 'Specify the sector size of the disk',
      args: [
        Arg(
        name: 'mode',
        description: 'Valid values are 512, 1024, 2048, and 4096',
        suggestions: [

          FigSuggestion(name: '512'),
          FigSuggestion(name: '1024'),
          FigSuggestion(name: '2048'),
          FigSuggestion(name: '4096')
        ]
      )
      ]
    ),
    Option(
      name: ['--protect-boot', '-B'],
      description: 'Don\'t erase the beginning of the first disk sector when creating a new disk label'
    ),
    Option(
      name: ['--compatibility', '-c'],
      description: 'Specify the compatibility mode, \'dos\' or \'nondos\'',
      args: [
        Arg(
        name: 'mode',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'dos'),
          FigSuggestion(name: 'nondos')
        ]
      )
      ]
    ),
    Option(
      name: ['--color', '-L'],
      description: 'Colorize the output',
      args: [
        Arg(
        name: 'when',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: ['--list', '-l'],
      description: 'List the partition tables for the specified devices and then exit'
    ),
    Option(
      name: ['--list-details', '-x'],
      description: 'Like --list, but provides more details'
    ),
    Option(
      name: '--lock',
      description: 'Use exclusive BSD lock for device or file it operates',
      args: [
        Arg(
        name: 'mode',
        description: 'Optional argument mode can be yes, no (or 1 and 0) or nonblock',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'yes'),
          FigSuggestion(name: 'no'),
          FigSuggestion(name: 'nonblock')
        ]
      )
      ]
    ),
    Option(
      name: ['--noauto-pt', '-n'],
      description: 'Don\'t automatically create a default partition table on empty device'
    ),
    Option(
      name: ['--output', '-o'],
      description: 'Desc',
      args: [
        Arg(
        name: 'list'
      )
      ]
    ),
    Option(
      name: ['--getsz', '-s'],
      description: 'Print the size in 512-byte sectors of each given block device. This option is DEPRECATED in favour of blockdev(8)'
    ),
    Option(
      name: ['--type', '-t'],
      description: 'Enable support only for disklabels of the specified type, and disable support for all other types',
      args: [
        Arg(
        name: 'type'
      )
      ]
    ),
    Option(
      name: ['--units', '-u'],
      description: 'When listing partition tables, show sizes in \'sectors\' or in \'cylinders\'',
      args: [
        Arg(
        name: 'unit',
        isOptional: true,
        suggestions: [

          FigSuggestion(name: 'sectors'),
          FigSuggestion(name: 'cylinders')
        ]
      )
      ]
    ),
    Option(
      name: ['--cylinders', '-C'],
      description: 'Specify the number of cylinders of the disk',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: ['--heads', '-H'],
      description: 'Specify the number of heads of the disk. (Not the physical number, of course, but the number used for partition tables.)',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: ['--sectors', '-S'],
      description: 'Specify the number of sectors per track of the disk. (Not the physical number, of course, but the number used for partition tables.)'
    ),
    Option(
      name: ['--wipe', '-w'],
      description: 'Wipe filesystem, RAID and partition-table signatures from the device, in order to avoid possible collisions',
      args: [
        Arg(
        name: 'when',
        description: 'The argument when can be auto, never or always',
        suggestions: [

          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'always')
        ]
      )
      ]
    ),
    Option(
      name: ['--wipe-partitions', '-W'],
      description: 'Wipe filesystem, RAID and partition-table signatures from a newly created partitions, in order to avoid possible collisions',
      args: [
        Arg(
        name: 'when',
        description: 'The argument when can be auto, never or always'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'device',
    description: 'Device to list',
    isOptional: true,
    template: 'filepaths'
  )
  ]
);
