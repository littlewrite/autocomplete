// Auto-generated from TypeScript source: mdls.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mdls` CLI
final FigSpec mdlsSpec = FigSpec(
  name: 'mdls',
  description: 'Lists the metadata attributes for the specified file',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  args: [
    Arg(
    name: 'file',
    template: 'filepaths',
    isVariadic: true
  )
  ],
  options: [
    Option(
      name: ['--name', '-name'],
      description: 'Print only the matching metadata attribute value.  Can be used multiple times',
      isRepeatable: true,
      exclusiveOn: ['--plist', '-plist'],
      args: [
        Arg(
        name: 'attributeName',
        description: 'Metadata attribute name',
        suggestions: [
          FigSuggestion(name: '_kMDItemDisplayNameWithExtensions'),
          FigSuggestion(name: 'kMDItemContentCreationDate'),
          FigSuggestion(name: 'kMDItemContentCreationDate_Ranking'),
          FigSuggestion(name: 'kMDItemContentModificationDate'),
          FigSuggestion(name: 'kMDItemContentModificationDate_Ranking'),
          FigSuggestion(name: 'kMDItemContentType'),
          FigSuggestion(name: 'kMDItemContentTypeTree'),
          FigSuggestion(name: 'kMDItemDateAdded'),
          FigSuggestion(name: 'kMDItemDateAdded_Ranking'),
          FigSuggestion(name: 'kMDItemDisplayName'),
          FigSuggestion(name: 'kMDItemDocumentIdentifier'),
          FigSuggestion(name: 'kMDItemFSContentChangeDate'),
          FigSuggestion(name: 'kMDItemFSCreationDate'),
          FigSuggestion(name: 'kMDItemFSCreatorCode'),
          FigSuggestion(name: 'kMDItemFSFinderFlags'),
          FigSuggestion(name: 'kMDItemFSHasCustomIcon'),
          FigSuggestion(name: 'kMDItemFSInvisible'),
          FigSuggestion(name: 'kMDItemFSIsExtensionHidden'),
          FigSuggestion(name: 'kMDItemFSIsStationery'),
          FigSuggestion(name: 'kMDItemFSLabel'),
          FigSuggestion(name: 'kMDItemFSName'),
          FigSuggestion(name: 'kMDItemFSNodeCount'),
          FigSuggestion(name: 'kMDItemFSOwnerGroupID'),
          FigSuggestion(name: 'kMDItemFSOwnerUserID'),
          FigSuggestion(name: 'kMDItemFSSize'),
          FigSuggestion(name: 'kMDItemFSTypeCode'),
          FigSuggestion(name: 'kMDItemInterestingDate_Ranking'),
          FigSuggestion(name: 'kMDItemKind'),
          FigSuggestion(name: 'kMDItemLogicalSize'),
          FigSuggestion(name: 'kMDItemPhysicalSize')
        ]
      )
      ]
    ),
    Option(
      name: ['--raw', '-raw'],
      description: 'Print raw attribute data in the order that was requested. Fields will be separated with a ASCII NUL character, suitable for piping to xargs(1) -0',
      exclusiveOn: ['--plist', '-plist']
    ),
    Option(
      name: ['--nullMarker', '-nullMarker'],
      description: 'Sets a marker string to be used when a requested attribute is null. Only used in -raw mode.  Default is \'(null)\'',
      dependsOn: ['--raw', '-raw'],
      exclusiveOn: ['--plist', '-plist']
    ),
    Option(
      name: ['--plist', '-plist'],
      description: 'Output attributes in XML format to file. Use - to write to stdout option. Incompatible with options -raw, -nullMarker, and -name',
      exclusiveOn: [
        '--raw',
        '-raw',
        '--nullMarker',
        '-nullMarker',
        '--name',
        '-name',
      ],
      args: [
        Arg(
          name: 'stdout or file',
          description: 'XML output location',
          template: 'filepaths',
          suggestions: [
            FigSuggestion(
              name: '-',
              description: 'Writes to stdout',
              priority: 77
            )
          ]
        ),
        Arg(
          name: 'file',
          description: 'File to read from',
          template: 'filepaths'
        )
      ]
    )
  ]
);
