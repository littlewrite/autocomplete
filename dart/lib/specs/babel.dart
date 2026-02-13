// Auto-generated from TypeScript source: babel.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `babel` CLI
final FigSpec babelSpec = FigSpec(
  name: 'babel',
  icon: 'https://raw.githubusercontent.com/babel/logo/master/babel.png',
  options: [

    Option(
      name: ['-f', '--filename'],
      description: 'The filename to use when reading from stdin. This will be used in source-maps, errors etc',
      args: [
        Arg(
        name: 'filenam'
      )
      ]
    ),
    Option(
      name: '--presets',
      description: 'A comma-separated list of preset names',
      args: [
        Arg(
        name: 'lis'
      )
      ]
    ),
    Option(
      name: '--plugins',
      description: 'A comma-separated list of plugin names',
      args: [
        Arg(
        name: 'lis'
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'Path to a .babelrc file to use',
      args: [
        Arg(
        name: 'path',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: '--env-name',
      description: 'The name of the \'env\' to use when loading configs and plugins. Defaults to the value of BABEL_ENV, or else NODE_ENV, or else \'development\'',
      args: [
        Arg(
        name: 'env',
        suggestions: [

          FigSuggestion(name: 'production'),
          FigSuggestion(name: 'development')
        ]
      )
      ]
    ),
    Option(
      name: '--root-mode',
      description: 'The project-root resolution mode',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(
            name: 'root',
            description: 'Passes the "root" value through as unchanged'
          ),
          FigSuggestion(
            name: 'upward',
            description: 'Walks upward from the "root" directory, looking for a directory containing a babel.config.json file, and throws an error if a babel.config.json is not found'
          ),
          FigSuggestion(
            name: 'upward-optional',
            description: 'Walk upward from the "root" directory, looking for a directory containing a babel.config.json file, and falls back to "root" if a babel.config.json is not found'
          )
        ],
        defaultValue: 'root'
      )
      ]
    ),
    Option(
      name: '--source-type',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(name: 'script'),
          FigSuggestion(name: 'module')
        ]
      )
      ]
    ),
    Option(
      name: '--no-babelrc',
      description: 'Whether or not to look up .babelrc and .babelignore files'
    ),
    Option(
      name: '--ignore',
      description: 'List of glob paths to **not** compile',
      args: [
        Arg(
        name: 'lis'
      )
      ]
    ),
    Option(
      name: '--only',
      description: 'List of glob paths to **only** compile',
      args: [
        Arg(
        name: 'lis'
      )
      ]
    ),
    Option(
      name: '--no-highlight-code',
      description: 'Enable or disable ANSI syntax highlighting of code frames'
    ),
    Option(
      name: '--no-comments',
      description: 'Write comments to generated output'
    ),
    Option(
      name: '--retain-lines',
      description: 'Retain line numbers. This will result in really ugly code'
    ),
    Option(
      name: '--compact',
      description: 'Do not include superfluous whitespace characters and line terminators',
      args: [
        Arg(
        name: 'mode',
        suggestions: [

          FigSuggestion(name: 'true'),
          FigSuggestion(name: 'false'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: '--minified',
      description: 'Save as many bytes when printing. (false by default)'
    ),
    Option(
      name: '--auxiliary-comment-before',
      description: 'Print a comment before any injected non-user code',
      args: [
        Arg(
        name: 'commen'
      )
      ]
    ),
    Option(
      name: '--auxiliary-comment-after',
      description: 'Print a comment after any injected non-user code',
      args: [
        Arg(
        name: 'commen'
      )
      ]
    ),
    Option(
      name: ['-s', '--source-maps'],
      args: [
        Arg(
        name: 'mode',
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
      description: 'Set `file` on returned source map',
      args: [
        Arg(
        name: 'strin'
      )
      ]
    ),
    Option(
      name: '--source-file-name',
      description: 'Set `sources[0]` on returned source map',
      args: [
        Arg(
        name: 'strin'
      )
      ]
    ),
    Option(
      name: '--source-root',
      description: 'The root from which all sources are relative',
      args: [
        Arg(
        name: 'filenam'
      )
      ]
    ),
    Option(
      name: ['-x', '--extensions'],
      description: 'Comma separated list of extensions to compile when a directory has been the input. [js,ts,jsx,tsx]',
      args: [
        Arg(
        name: 'extension'
      )
      ]
    ),
    Option(
      name: '--keep-file-extension',
      description: 'Preserve the file extensions of the input files'
    ),
    Option(
      name: ['-w', '--watch'],
      description: 'Recompile files on changes'
    ),
    Option(
      name: '--skip-initial-build',
      description: 'Do not compile files before watching'
    ),
    Option(
      name: ['-o', '--out-file'],
      description: 'Compile all input files into a single file',
      args: [
        Arg(
        name: 'file',
        template: 'filepath'
      )
      ]
    ),
    Option(
      name: ['-d', '--out-dir'],
      description: 'Compile an input directory of modules into an output directory',
      args: [
        Arg(
        name: 'directory',
        template: 'folder'
      )
      ]
    ),
    Option(
      name: '--relative',
      description: 'Compile into an output directory relative to input directory or file',
      dependsOn: ['--out-dir']
    ),
    Option(
      name: ['-D', '--copy-files'],
      description: 'When compiling a directory copy over non-compilable files'
    ),
    Option(
      name: '--include-dotfiles',
      description: 'Include dotfiles when compiling and copying non-compilable files'
    ),
    Option(
      name: '--no-copy-ignored',
      description: 'Exclude ignored files when copying non-compilable files'
    ),
    Option(
      name: '--verbose',
      description: 'Log everything. This option conflicts with --quiet',
      exclusiveOn: ['--quiet']
    ),
    Option(
      name: '--quiet',
      description: 'Don\'t log anything. This option conflicts with --verbose',
      exclusiveOn: ['--verbose']
    ),
    Option(
      name: '--delete-dir-on-start',
      description: 'Delete the out directory before compilation'
    ),
    Option(
      name: '--out-file-extension',
      description: 'Use a specific extension for the output files',
      args: [
        Arg(
        name: 'extension',
        suggestions: [

          FigSuggestion(name: '.es6'),
          FigSuggestion(name: '.js'),
          FigSuggestion(name: '.es'),
          FigSuggestion(name: '.jsx'),
          FigSuggestion(name: '.mjs')
        ]
      )
      ]
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Output usage information'
    )
  ]
);
