// Auto-generated from TypeScript source: asr.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

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
      description: 'Restores a disk image or volume to another volume'
    ),
    Subcommand(
      name: 'restoreexact',
      description: 'Same as restore verb, except that for an HFS Plus volume, the target partition is resized to match the size of the source partition/ volume'
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
  options: []
);
