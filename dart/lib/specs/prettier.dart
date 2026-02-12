// Auto-generated from TypeScript source: prettier.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `prettier` CLI
final FigSpec prettierSpec = FigSpec(
  name: 'prettier',
  description: 'Run Prettier from the command line',
  icon: 'https://prettier.io/icon.png',
  options: [
    Option(
      name: ['-c', '--check'],
      description: 'Check if your files are formatted',
      args: [
        Arg(
        name: 'file, dir, or glob',
        template: ['filepaths', 'folders'],
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-l', '--list-different'],
      description: 'Print the names of files that are different from Prettier\'s formatting'
    ),
    Option(
      name: ['-w', '--write'],
      description: 'Edit files in-place',
      isDangerous: true
    ),
    Option(
      name: '--arrow-parens',
      description: 'Include parentheses around a sole arrow function parameter',
      args: [
        Arg(
        name: 'mode',
        defaultValue: 'always',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'avoid')
        ]
      )
      ]
    ),
    Option(
      name: '--no-bracket-spacing',
      description: 'Do not print spaces between brackets'
    ),
    Option(
      name: '--embedded-language-formatting',
      description: 'Control how Prettier formats quoted code embedded in the file',
      args: [
        Arg(
        name: 'mode',
        defaultValue: 'auto',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'off')
        ]
      )
      ]
    ),
    Option(
      name: '--end-of-line',
      description: 'Which end of line characters to apply',
      args: [
        Arg(
        name: 'choice',
        defaultValue: 'lf',
        suggestions: [
          FigSuggestion(name: 'lf'),
          FigSuggestion(name: 'crlf'),
          FigSuggestion(name: 'cr'),
          FigSuggestion(name: 'auto')
        ]
      )
      ]
    ),
    Option(
      name: '--html-whitespace-sensitivity',
      description: 'How to handle whitespaces in HTML',
      args: [
        Arg(
        name: 'choice',
        defaultValue: 'css',
        suggestions: [
          FigSuggestion(name: 'css'),
          FigSuggestion(name: 'strict'),
          FigSuggestion(name: 'ignore')
        ]
      )
      ]
    ),
    Option(
      name: '--jsx-bracket-same-line',
      description: 'Put > on the last line instead of at a new line'
    ),
    Option(
      name: '--jsx-single-quote',
      description: 'Use single quotes in JSX'
    ),
    Option(
      name: '--parser',
      description: 'Which parser to use',
      args: [
        Arg(
        name: 'parser',
        suggestions: [
          FigSuggestion(name: 'flow'),
          FigSuggestion(name: 'babel'),
          FigSuggestion(name: 'babel-flow'),
          FigSuggestion(name: 'babel-ts'),
          FigSuggestion(name: 'typescript'),
          FigSuggestion(name: 'espree'),
          FigSuggestion(name: 'meriyah'),
          FigSuggestion(name: 'css'),
          FigSuggestion(name: 'less'),
          FigSuggestion(name: 'scss'),
          FigSuggestion(name: 'json'),
          FigSuggestion(name: 'json5'),
          FigSuggestion(name: 'json-stringify'),
          FigSuggestion(name: 'graphql'),
          FigSuggestion(name: 'markdown'),
          FigSuggestion(name: 'mdx'),
          FigSuggestion(name: 'vue'),
          FigSuggestion(name: 'yaml'),
          FigSuggestion(name: 'html'),
          FigSuggestion(name: 'angular'),
          FigSuggestion(name: 'lwc')
        ]
      )
      ]
    ),
    Option(
      name: '--print-width',
      description: 'The line length where Prettier will try wrap',
      args: [
        Arg(
        name: 'int',
        defaultValue: '80'
      )
      ]
    ),
    Option(
      name: '--prose-wrap',
      description: 'How to wrap prose',
      args: [
        Arg(
        defaultValue: 'preserve',
        suggestions: [
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never'),
          FigSuggestion(name: 'preserve')
        ]
      )
      ]
    ),
    Option(
      name: '--quote-props',
      description: 'Change when properties in objects are quoted',
      args: [
        Arg(
        name: 'when',
        defaultValue: 'as-needed',
        suggestions: [
          FigSuggestion(name: 'as-needed'),
          FigSuggestion(name: 'consistent'),
          FigSuggestion(name: 'preserve')
        ]
      )
      ]
    ),
    Option(
      name: '--no-semi',
      description: 'Do not print semicolons, except at the beginning of lines which may need them'
    ),
    Option(
      name: '--single-quote',
      description: 'Use single quotes instead of double quotes'
    ),
    Option(
      name: '--tab-width',
      description: 'Number of spaces per indentation level',
      args: [
        Arg(
        name: 'int',
        defaultValue: '2'
      )
      ]
    ),
    Option(
      name: '--trailing-comma',
      description: 'Print trailing commas wherever possible when multi-line',
      args: [
        Arg(
        name: 'type',
        defaultValue: 'es5',
        suggestions: [
          FigSuggestion(name: 'es5'),
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'all')
        ]
      )
      ]
    ),
    Option(
      name: '--use-tabs',
      description: 'Indent with tabs instead of spaces'
    ),
    Option(
      name: '--vue-indent-script-and-style',
      description: 'Indent script and style tags in Vue files'
    ),
    Option(
      name: '--config',
      description: 'Path to a Prettier configuration file (.prettierrc, package.json, prettier.config.js)',
      exclusiveOn: ['--no-config'],
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--no-config',
      description: 'Do not look for a configuration file',
      exclusiveOn: ['--config']
    ),
    Option(
      name: '--config-precedence',
      description: 'Define in which order config files and CLI options should be evaluated',
      args: [
        Arg(
        name: 'precedence',
        defaultValue: 'cli-override',
        suggestions: [
          FigSuggestion(name: 'cli-override'),
          FigSuggestion(name: 'file-override'),
          FigSuggestion(name: 'prefer-file')
        ]
      )
      ]
    ),
    Option(
      name: '--no-editorconfig',
      description: 'Don\'t take .editorconfig into account when parsing configuration'
    ),
    Option(
      name: '--find-config-path',
      description: 'Finds a path to the configuration file for the given input file',
      args: [
        Arg(
        name: 'file',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ignore-path',
      description: 'Path to a file with patterns describing files to ignore',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths',
        defaultValue: '.prettierignore'
      )
      ]
    ),
    Option(
      name: '--plugin',
      description: 'Add a plugin',
      args: [
        Arg(
        name: 'path',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--plugin-search-dir',
      description: 'Custom directory that contains prettier plugins in node_modules subdirectory',
      args: [
        Arg(
        name: 'path',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--with-node-modules',
      description: 'Process files inside \'node_modules\' directory'
    ),
    Option(
      name: '--cursor-offset',
      description: 'Print (to stderr) where a cursor at the given position would move to after formatting',
      exclusiveOn: ['--range-start', '--range-end'],
      args: [
        Arg(
        name: 'int',
        defaultValue: '-1'
      )
      ]
    ),
    Option(
      name: '--range-end',
      description: 'Format code ending at a given character offset (exclusive)',
      exclusiveOn: ['--cursor-offset'],
      args: [
        Arg(
        name: 'int',
        defaultValue: 'Infinity'
      )
      ]
    ),
    Option(
      name: '--range-start',
      description: 'Format code starting at a given character offset',
      args: [
        Arg(
        name: 'int',
        defaultValue: '0'
      )
      ]
    ),
    Option(
      name: '--no-color',
      description: 'Do not colorize error messages'
    ),
    Option(
      name: '--file-info',
      description: 'Extract the following info (as JSON) for a given file path',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show CLI usage, or details about the given flag',
      args: [
        Arg(
        name: 'flag',
        isOptional: true
      )
      ]
    ),
    Option(
      name: ['-u', '--ignore-unknown'],
      description: 'Ignore unknown files'
    ),
    Option(
      name: '--insert-pragma',
      description: 'Insert @format pragma into file\'s first docblock comment'
    ),
    Option(
      name: '--loglevel',
      description: 'What level of logs to report',
      args: [
        Arg(
        name: 'level',
        defaultValue: 'log',
        suggestions: [
          FigSuggestion(name: 'silent'),
          FigSuggestion(name: 'error'),
          FigSuggestion(name: 'warn'),
          FigSuggestion(name: 'log'),
          FigSuggestion(name: 'debug')
        ]
      )
      ]
    ),
    Option(
      name: '--require-pragma',
      description: 'Require either \'@prettier\' or \'@format\' to be present in the file\'s first docblock comment in order for it to be formatted'
    ),
    Option(
      name: '--stdin-filepath',
      description: 'Path to the file to pretend that stdin comes from',
      args: [
        Arg(
        name: 'path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--support-info',
      description: 'Print support information as JSON'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Print Prettier version'
    ),
    Option(
      name: '--debug-check',
      description: 'This will cause Prettier to print an error message if it detects that code correctness might have changed'
    ),
    Option(
      name: '--no-error-on-unmatched-pattern',
      description: 'Prevent errors when pattern is unmatched'
    )
  ],
  args: [
    Arg(
    name: 'file, dir or glob',
    template: ['filepaths', 'folders'],
    isOptional: true,
    isVariadic: true
  )
  ]
);
