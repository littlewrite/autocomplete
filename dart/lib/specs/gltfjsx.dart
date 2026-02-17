// Auto-generated from TypeScript source: gltfjsx.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `gltfjsx` CLI
final FigSpec gltfjsxSpec = FigSpec(
  name: 'gltfjsx',
  description: 'GLTF to JSX converter',
  args: [
    Arg(
    name: 'file',
    template: 'filepaths'
  )
  ],
  options: [

    Option(
      name: ['-t', '--types'],
      description: 'Add Typescript definitions'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Verbose output w/ names and empty groups'
    ),
    Option(
      name: ['-m', '--meta'],
      description: 'Include metadata (as userData)'
    ),
    Option(
      name: ['-s', '--shadows'],
      description: 'Let meshes cast and receive shadows'
    ),
    Option(
      name: ['-w', '--printwidth'],
      description: 'Prettier printWidth (default: 120)',
      args: [
        Arg(
        name: 'width'
      )
      ]
    ),
    Option(
      name: ['-p', '--precision'],
      description: 'Number of fractional digits (default: 2)',
      args: [
        Arg(
        name: 'digits'
      )
      ]
    ),
    Option(
      name: ['-d', '--draco'],
      description: 'Draco binary path',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-r', '--root'],
      description: 'Sets directory from which .gltf file is served',
      args: [
        Arg(
        name: 'root',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-D', '--debug'],
      description: 'Debug output'
    )
  ]
);
