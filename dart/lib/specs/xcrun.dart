// Auto-generated from TypeScript source: xcrun.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `xcrun` CLI
final FigSpec xcrunSpec = FigSpec(
  name: 'xcrun',
  description: 'Find and execute the named command line tool from the active xCode developer directory',
  subcommands: [
    Subcommand(
      name: 'scntool',
      description: 'SceneKit CLI utilities',
      options: [
        Option(
          name: '--convert',
          description: 'File to convert',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--format',
          description: 'Format to convert to',
          args: [
            Arg(
            suggestions: [
              FigSuggestion(name: 'scn'),
              FigSuggestion(name: 'dae'),
              FigSuggestion(name: 'c3d')
            ],
            name: 'format'
          )
          ]
        ),
        Option(
          name: '--output',
          description: 'Path to the output file',
          args: [
            Arg(
            name: 'file',
            template: 'filepaths'
          )
          ]
        ),
        Option(
          name: '--force-y-up',
          description: 'Convert objects to use y axis up'
        ),
        Option(
          name: '--force-interleaved',
          description: 'Interleave the vertex data for multiple semantics in the same array to achieve better rendering performance'
        ),
        Option(
          name: '--prefer-compressed-textures',
          description: 'Use .ktx, .astc and .pvrtc files for textures if available in the asset catalog'
        ),
        Option(
          name: '--verbose',
          description: 'Get pretty error message'
        )
      ]
    ),
    Subcommand(
      name: 'xcodebuild',
      loadSpec: 'xcodebuild'
    ),
    Subcommand(
      name: 'simctl',
      loadSpec: 'simctl'
    )
  ],
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Help message'
    ),
    Option(
      name: '--version',
      description: 'Show the xcrun version'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Show verbose logging output'
    ),
    Option(
      name: '--sdk',
      description: 'Find the tool for the given SDK name',
      args: [
        Arg(
        name: 'sdk nam'
      )
      ]
    ),
    Option(
      name: '--toolchain',
      description: 'Find the tool for the given toolchain',
      args: [
        Arg(
        name: 'nam'
      )
      ]
    ),
    Option(
      name: ['-l', '--log'],
      description: 'Show command path to be executed (and --run)'
    ),
    Option(
      name: ['-f', '--find'],
      description: 'Find and print the tool path'
    ),
    Option(
      name: '--run',
      description: '(Default) find and execute the tool'
    ),
    Option(
      name: ['-n', '--no-cache'],
      description: 'Do not use the lookup cache'
    ),
    Option(
      name: ['-k', '--kill-cache'],
      description: 'Invalidate all existing cache entries',
      isDangerous: true
    ),
    Option(
      name: '--show-sdk-path',
      description: 'Show selected SDK install path'
    ),
    Option(
      name: '--show-sdk-version',
      description: 'Show selected SDK version'
    ),
    Option(
      name: '--show-sdk-build-version',
      description: 'Show selected SDK build version'
    ),
    Option(
      name: '--show-sdk-platform-path',
      description: 'Show selected SDK platform path'
    ),
    Option(
      name: '--show-sdk-platform-version',
      description: 'Show selected SDK platform version'
    )
  ]
);
