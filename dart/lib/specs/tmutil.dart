// Auto-generated from TypeScript source: tmutil.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tmutil` CLI
final FigSpec tmutilSpec = FigSpec(
  name: 'tmutil',
  description: 'Time Machine utility',
  subcommands: [

    Subcommand(
      name: 'version',
      description: 'Print the current version'
    ),
    Subcommand(
      name: 'enable',
      description: 'Turn on automatic backups (required root + full disk access)'
    ),
    Subcommand(
      name: 'disable',
      description: 'Turn off automatic backups (required root + full disk access)'
    ),
    Subcommand(
      name: 'startbackup',
      description: 'Begin a backup if one is not already running',
      options: [

        Option(
          name: ['-a', '--auto'],
          description: 'Run the backup in a mode similar to system-scheduled backups'
        ),
        Option(
          name: ['-b', '--block'],
          description: 'Wait (block) until the backup is finished before exiting'
        ),
        Option(
          name: ['-r', '--rotation'],
          description: 'Allow automatic destination rotation during backup'
        ),
        Option(
          name: ['-d', '--destination'],
          description: 'Perform the backup to the destination corresponding to the specified ID',
          args: [
            Arg(
            name: 'destination i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stopbackup',
      description: 'Cancel a backup currently in progress'
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes backups with the specified timestamp from the backup volume mounted at the given mountpoint',
      options: [

        Option(
          name: '-d',
          description: 'Delete from the given mount point',
          args: [
            Arg(
            name: 'backup mount poin'
          )
          ]
        ),
        Option(
          name: '-t',
          description: 'Delete backups with this timestamp',
          isRepeatable: true,
          args: [
            Arg(
            name: 'timestam'
          )
          ]
        ),
        Option(
          name: '-p',
          description: 'A specific path to delete (HFS backup disk)',
          args: [
            Arg(
            name: 'path',
            template: ['filepaths', 'folders']
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'deleteinprogress',
      description: 'Delete all in-progress backups for a machine directory',
      args: [
        Arg(
        name: 'machine director'
      )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Restore the item `source`, which is inside a backup, to the location `destination`. Same semantics as `cp`',
      args: [

        Arg(
          name: 'source',
          isVariadic: true
        ),
        Arg(
          name: 'destination'
        )
      ],
      options: [

        Option(
          name: '-v',
          description: 'Be verbose, showing files as they are copied'
        )
      ]
    ),
    Subcommand(
      name: 'compare',
      description: 'Perform a backup diff',
      args: [

        Arg(
          name: 'backup or path'
        ),
        Arg(
          name: 'path (if not backup)',
          isOptional: true
        )
      ],
      options: [

        Option(
          name: '-@',
          description: 'Compare extended attributes'
        ),
        Option(
          name: '-a',
          description: 'Compare all supported metadata'
        ),
        Option(
          name: '-c',
          description: 'Compare creation times'
        ),
        Option(
          name: '-d',
          description: 'Compare file data forks'
        ),
        Option(
          name: '-e',
          description: 'Compare ACLs'
        ),
        Option(
          name: '-f',
          description: 'Compare file flags'
        ),
        Option(
          name: '-g',
          description: 'Compare GIDs'
        ),
        Option(
          name: '-h',
          description: 'Unknown'
        ),
        Option(
          name: '-l',
          description: 'Unknown'
        ),
        Option(
          name: '-m',
          description: 'Compare file modes'
        ),
        Option(
          name: '-n',
          description: 'No metadata comparison'
        ),
        Option(
          name: '-s',
          description: 'Compare sizes'
        ),
        Option(
          name: '-t',
          description: 'Compare modification times'
        ),
        Option(
          name: '-u',
          description: 'Compare UIDs'
        ),
        Option(
          name: '-E',
          description: 'Don\'t take exclusions into account when comparing items inside volumes'
        ),
        Option(
          name: '-U',
          description: 'Ignore logical volume identity (volume UUIDs) when directly comparing a local volume or volume store to a volume store'
        ),
        Option(
          name: '-X',
          description: 'Print output in XML property list format'
        ),
        Option(
          name: '-D',
          description: 'Limit traversal depth to depth levels from the beginning of iteration',
          args: [
            Arg(
            name: 'dept'
          )
          ]
        ),
        Option(
          name: '-I',
          description: 'Ignore paths with a path component equal to name during iteration',
          isRepeatable: true,
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'setdestination',
      description: 'Configure a local HFS+ or APFS volume, AFP share, or SMB share as a backup destination (requires root + Full Disk Access)',
      args: [
        Arg(
        name: 'destinatio'
      )
      ],
      options: [

        Option(
          name: '-a',
          description: 'Add the arg to the list of destinations, instead of replacing the list'
        ),
        Option(
          name: '-p',
          description: 'Enter a password in a non-echoing interactive prompt'
        )
      ]
    ),
    Subcommand(
      name: 'removedestination',
      description: 'Remove the destination with the specified unique identifier from the Time Machine configuration (requires root + Full Disk Access)',
      args: [
        Arg(
        name: 'destination i'
      )
      ]
    ),
    Subcommand(
      name: 'destinationinfo',
      description: 'Print information about destinations currently configured for use with Time Machine',
      options: [

        Option(
          name: '-X',
          description: 'Print output in XML plist format'
        )
      ]
    ),
    Subcommand(
      name: 'addexclusion',
      description: 'Configure an exclusion that tells Time Machine not to backup a file, directory, or volume during future backups',
      args: [
        Arg(
        name: 'item'
      )
      ],
      options: [

        Option(
          name: '-p',
          description: 'Configure fixed-path exclusions'
        ),
        Option(
          name: '-v',
          description: 'Configure volume exclusions'
        )
      ]
    ),
    Subcommand(
      name: 'removeexclusion',
      description: 'Configure  Time Machine to backup a file, directory, or volume during future backups',
      args: [
        Arg(
        name: 'item'
      )
      ],
      options: [

        Option(
          name: '-p',
          description: 'Configure fixed-path exclusions'
        ),
        Option(
          name: '-v',
          description: 'Configure volume exclusions'
        )
      ]
    ),
    Subcommand(
      name: 'isexcluded',
      description: 'Determine if a file, directory, or volume are excluded from Time Machine backups',
      args: [
        Arg(
        name: 'item'
      )
      ]
    ),
    Subcommand(
      name: 'inheritbackup',
      description: 'Claim a machine directory or sparsebundle for use by the current machine',
      args: [
        Arg(
        name: 'machine directory or sparsebundl'
      )
      ]
    ),
    Subcommand(
      name: 'associatedisk',
      description: 'Bind a volume store directory to the specified local disk, thereby reconfiguring the backup history (requires root + Full Disk Access)',
      args: [

        Arg(
          name: 'mount point'
        ),
        Arg(
          name: 'volume backup directory'
        )
      ],
      options: [

        Option(
          name: '-a',
          description: 'Find all volume stores in the same machine directory that match the identity of the volume backup directory'
        )
      ]
    ),
    Subcommand(
      name: 'latestbackup',
      description: 'List this computer\'s latest completed backup',
      options: [

        Option(
          name: '-d',
          description: 'Specify a destination volume to list backups from'
        ),
        Option(
          name: '-m',
          dependsOn: ['-d'],
          description: 'Attempt to mount the backups and list their mounted paths'
        ),
        Option(
          name: '-t',
          dependsOn: ['-m'],
          description: 'Only show the backup timestampt rather than the full name or path'
        )
      ]
    ),
    Subcommand(
      name: 'listbackups',
      description: 'List all of this computer\'s completed backups',
      options: [

        Option(
          name: '-d',
          description: 'Specify a destination volume to list backups from'
        ),
        Option(
          name: '-m',
          dependsOn: ['-d'],
          description: 'Attempt to mount the backups and list their mounted paths'
        ),
        Option(
          name: '-t',
          dependsOn: ['-m'],
          description: 'Only show the backup timestampt rather than the full name or path'
        )
      ]
    ),
    Subcommand(
      name: 'machinedirectory',
      description: 'Print the path to the current machine directory for this computer'
    ),
    Subcommand(
      name: 'calculatedrift',
      description: 'Analyze the backups in an HFS machine directory and determine the amount of change between each',
      args: [
        Arg(
        name: 'machine director'
      )
      ]
    ),
    Subcommand(
      name: 'uniquesize',
      description: 'Analyze the specified path in an HFS+ backup or path to an APFS backup and determine its unique size',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'verifychecksums',
      description: 'Compute a checksum of data contained within a backup and verify the results against checksum information computed at the time of backup',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Subcommand(
      name: 'localsnapshot',
      description: 'Create new local Time Machine snapshots of all APFS volumes included in the Time Machine backup'
    ),
    Subcommand(
      name: 'listlocalsnapshots',
      description: 'List local Time Machine snapshots of the specified volume',
      args: [
        Arg(
        name: 'mount poin'
      )
      ]
    ),
    Subcommand(
      name: 'listlocalsnapshotdates',
      description: 'List the creation dates of all local Time Machine snapshots',
      args: [
        Arg(
        name: 'mount point'
      )
      ]
    ),
    Subcommand(
      name: 'deletelocalsnapshots',
      description: 'Delete all local Time Machine snapshots on all mounted disks for the specified date or on the given disk',
      args: [
        Arg(
        name: 'mount point or snapshot date'
      )
      ]
    ),
    Subcommand(
      name: 'thinlocalsnapshots',
      description: 'Think local Time Machine snapshots for the specified volume',
      args: [

        Arg(
          name: 'mount point'
        ),
        Arg(
          name: 'purge amount (bytes)',
          isOptional: true
        ),
        Arg(
          name: 'urgency',
          isOptional: true,
          suggestions: [

            FigSuggestion(name: '1'),
            FigSuggestion(name: '2'),
            FigSuggestion(name: '3'),
            FigSuggestion(name: '4')
          ]
        )
      ]
    )
  ]
);
