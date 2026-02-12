// Auto-generated from TypeScript source: swc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `swc` CLI
final FigSpec swcSpec = FigSpec(
  name: 'swc',
  description: 'SWC is a super-fast compiler written in rust; producing widely-supported javascript from modern standards and typescript',
  options: [
    Option(
      name: ['--filename', '-f'],
      description: 'Filename to use when reading from stdin. This will be used in source maps and errors',
      args: [
        Arg(
        name: 'FILE',
        description: 'Path to the file',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'Path to a .swcrc file to use',
      args: [
        Arg(
        name: 'CONFIG_FILE',
        description: 'Path to a .swcrc file to use',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--env-name',
      description: 'The name of the \'env\' to use when loading configs and plugins. Defaults to the value of SWC_ENV, or else NODE_ENV, or else development',
      args: [
        Arg(
        name: 'ENV_NAME',
        suggestions: [
          FigSuggestion(name: 'production'),
          FigSuggestion(name: 'development'),
          FigSuggestion(name: 'test')
        ],
        description: 'The name of the \'env\' to use when loading configs and plugins. Defaults to the value of SWC_ENV, or else NODE_ENV, or else development'
      )
      ]
    ),
    Option(
      name: '--no-swcrc',
      description: 'Whether or not to look up .swcrc files'
    ),
    Option(
      name: '--ignore',
      description: 'List of glob paths to not compile',
      args: [
        Arg(
        name: 'PATH',
        description: 'A glob path to not compile',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: '--only',
      description: 'List of glob paths to only compile',
      args: [
        Arg(
        name: 'PATH',
        description: 'A glob path to only compile',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: ['--watch', '-w'],
      description: 'Watch for changes and recompile'
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Suppress compilation output'
    ),
    Option(
      name: ['--source-maps', '-s'],
      description: 'Generate source maps',
      args: [
        Arg(
        name: 'SOURCE_MAP',
        description: 'Source map type',
        suggestions: [
          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false'),
          FigSuggestion(name: 'inline'),
          FigSuggestion(name: 'both')
        ]
      )
      ]
    ),
    Option(
      name: '--source-map-target',
      description: 'Define the file for the source map',
      args: [
        Arg(
        name: 'FILE',
        description: 'The file for the source map',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--source-file-name',
      description: 'Set sources[0] on returned source map'
    ),
    Option(
      name: '--source-root',
      description: 'The root from which all sources are relative'
    ),
    Option(
      name: ['--out-file', '-o'],
      description: 'Compile all input files into a single file',
      args: [
        Arg(
        name: 'OUTPUT_FILE',
        description: 'The output file',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: ['--out-dir', '-d'],
      description: 'Compile an input directory of modules into an output directory',
      args: [
        Arg(
        name: 'OUTPUT_DIR',
        description: 'The output directory',
        template: ['folders']
      )
      ]
    ),
    Option(
      name: ['--copy-files', '-D'],
      description: 'When compiling a directory, copy over non-compilable files'
    ),
    Option(
      name: '--include-dotfiles',
      description: 'Include dotfiles when compiling and copying non-compilable files'
    ),
    Option(
      name: ['--config', '-C'],
      description: 'Override a config from .swcrc file',
      args: [
        Arg(
        name: 'CONFIG_FILE',
        description: 'Path to .swcrc file',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--sync',
      description: 'Invoke swc synchronously. Useful for debugging'
    ),
    Option(
      name: '--log-watch-compilation',
      description: 'Log a message when a watched file is successfully compiled'
    ),
    Option(
      name: '--extensions',
      description: 'Log a message when a watched file is successfully compiled'
    )
  ]
);
