// Auto-generated from TypeScript source: asr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> restoreRestoreExactOptions = [

  Option(
    name: '--source',
    description: 'Can be a disk image, /dev entry, or volume mountpoint',
    args: [
      Arg(
      name: 'source',
      description: 'Disk image, /dev entry, or volume mountpoint',
      template: 'filepaths'
    )
    ],
    dependsOn: ['--target', '--file']
  ),
  Option(
    name: '--target',
    description: 'Can be a /dev entry, or volume mountpoint',
    args: [
      Arg(
      name: 'target',
      description: '/dev entry, or volume mountpoint',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: '--file',
    description: 'When performing a multicast restore, --file can be specified instead of --target',
    args: [
      Arg(
      name: 'source',
      description: 'Disk image, /dev entry, or volume mountpoint',
      template: 'filepaths'
    )
    ],
    dependsOn: ['--erase']
  ),
  Option(
    name: '--erase',
    description: 'Erases target and is required. --erase must always be used, as file copies are no longer supported by asr'
  ),
  Option(
    name: '--format',
    description: 'Specifies the destination filesystem format',
    args: [
      Arg(
      name: 'HFS+ | HFSX',
      description: 'Specify the destination filesystem format',
      isOptional: true
    )
    ]
  ),
  Option(
    name: '--noprompt',
    description: 'Suppresses the prompt which usually occurs before target'
  ),
  Option(
    name: '--timeout',
    description: 'Specifies num seconds that a multicast client should wait when no payload data has been received over a multicast stream before exiting',
    args: [
      Arg(
      name: 'num',
      description: 'Number of seconds that a multicast client should wait',
      defaultValue: '0',
      isOptional: true,
      suggestions: [

        FigSuggestion(name: '0')
      ]
    )
    ]
  ),
  Option(
    name: '--puppetstrings',
    description: 'Provide progress output that is easy for another program to parse'
  ),
  Option(
    name: '--noverify',
    description: 'Skips the verification steps normally taken to ensure that a volume has been properly restored'
  ),
  Option(
    name: '--allowfragmentedcatalog',
    description: 'Allows restores to proceed even if the source\'s catalog file is fragmented'
  ),
  Option(
    name: '--SHA256',
    description: 'Forces the restore to use the SHA-256 hash in the image during verification'
  ),
  Option(
    name: '--sourcevolumename',
    description: 'Tells asr which volume in the source container to invert when doing an APFS restore'
  ),
  Option(
    name: '--sourcevolumeUUID',
    description: 'Tells asr which volume in the source container to invert when doing an APFS restore'
  ),
  Option(
    name: '--useReplication',
    description: 'Forces asr to use replication for restoring APFS volumes'
  ),
  Option(
    name: '--useInverter',
    description: 'Forces asr to use the inverter for restoring APFS volumes'
  ),
  Option(
    name: '--toSnapshot',
    description: 'Specifies the snapshot on the source APFS volume to restore to the target APFS volume'
  ),
  Option(
    name: '--fromSnapshot',
    description: 'Names a snapshot on the source APFS volume to use in combination with --toSnapshot to specify a snapshot delta to restore to the target APFS volume'
  )
];

final List<Option> bufferingOptions = [

  Option(
    name: '--buffers',
    description: 'One of the options that control how asr uses memory',
    args: [
      Arg(
      name: 'num',
      description: 'Specifies the num buffers should be used'
    )
    ]
  ),
  Option(
    name: '--buffersize',
    description: 'One of the options that control how asr uses memory',
    args: [
      Arg(
      name: 'size',
      description: 'Specifies the size of each buffer'
    )
    ]
  ),
  Option(
    name: '--csumbuffers',
    description: 'One of the options that control how asr uses memory',
    args: [
      Arg(
      name: 'num',
      description: 'Specifies that num buffers should be used for checksumming operations'
    )
    ]
  ),
  Option(
    name: '--csumbuffersize',
    description: 'One of the options that control how asr uses memory',
    args: [
      Arg(
      name: 'size',
      description: 'Specifies the size of each buffer used for checksumming'
    )
    ]
  )
];

final List<Option> otherOptions = [

  Option(
    name: '--verbose',
    description: 'Enables verbose progress and error messages'
  ),
  Option(
    name: '--debug',
    description: 'Enables other progress and error messages'
  )
];

/// Completion spec for `asr` CLI
final FigSpec asrSpec = FigSpec(
  name: 'asr',
  description: 'Asr efficiently copies disk images onto volumes, either directly or via a multicast network stream',
  subcommands: [

    Subcommand(
      name: 'help',
      description: 'Displays asr usage information'
    ),
    Subcommand(
      name: 'version',
      description: 'Displays asr version'
    ),
    Subcommand(
      name: 'restore',
      description: 'Restores a disk image or volume to another volume',
      options: restoreRestoreExactOptions
    ),
    Subcommand(
      name: 'restoreexact',
      description: 'Same as restore verb, except that for an HFS Plus volume, the target partition is resized to match the size of the source partition/ volume',
      options: restoreRestoreExactOptions
    ),
    Subcommand(
      name: 'server',
      description: 'Multicasts source over the network',
      options: [

        Option(
          name: '--source',
          description: 'Source has to be a UDIF disk image',
          args: [
            Arg(
            name: 'source',
            description: 'UDIF disk image local/remote path',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--interface',
          description: 'The network interface to be used for multicasting',
          args: [
            Arg(
            name: 'interface',
            description: 'The network interface to be used for multicasting'
          )
          ]
        ),
        Option(
          name: '--config',
          description: 'Server requires a configuration file to be passed',
          args: [
            Arg(
            name: 'configuration',
            description: 'Configuration file in standard property list format'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'imagescan',
      description: 'Calculate checksums of the data in the provided image and store them in the image'
    ),
    Subcommand(
      name: 'info',
      description: 'Report the image metadata which was placed in the image by a previous use of the imagescan verb',
      options: [

        Option(
          name: '--plist',
          description: 'Writes its output as an XML-formatted plist'
        )
      ]
    )
  ],
  options: [

    ...bufferingOptions,
    ...otherOptions
  ]
);
