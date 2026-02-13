// Auto-generated from TypeScript source: eleventy.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `eleventy` CLI
final FigSpec eleventySpec = FigSpec(
  name: 'eleventy',
  icon: 'https://www.11ty.dev/favicon.ico',
  description: 'Eleventy is a simpler static site generator',
  args: [
    Arg(
    template: 'folders'
  )
  ],
  options: [

    Option(
      description: 'Show help message and exit',
      name: ['-h', '--help']
    ),
    Option(
      description: 'Show program\'s version number and exit',
      name: ['-v', '--version']
    ),
    Option(
      description: 'Don’t print all written files',
      name: '--quiet'
    ),
    Option(
      description: 'Wait for files to change and automatically rewrite',
      name: '--watch'
    ),
    Option(
      description: 'Don’t write any files',
      name: '--dryrun'
    ),
    Option(
      description: 'Input template files',
      name: '--input',
      args: [
        Arg(
        name: 'Template File',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      description: 'Write HTML output to this folder',
      name: '--output',
      args: [
        Arg(
        template: 'folders'
      )
      ]
    ),
    Option(
      description: 'Run web server on port and watch them too',
      name: '--serve',
      dependsOn: ['--port']
    ),
    Option(
      description: 'Run Web Server on specified port',
      name: '--port',
      args: [
        Arg(
        name: 'port',
        defaultValue: '8080'
      )
      ]
    ),
    Option(
      description: 'Whitelist only certain template types',
      name: '--formats',
      args: [
        Arg(
        name: 'Template Names Separated by ,',
        suggestions: [

          FigSuggestion(name: 'md'),
          FigSuggestion(name: 'html'),
          FigSuggestion(name: 'ejs')
        ]
      )
      ]
    ),
    Option(
      description: 'Override the eleventy config file path',
      name: '--config',
      args: [
        Arg(
        name: 'Config File',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      description: 'Change all url template filters to use this subdirectory',
      name: '--pathprefix',
      args: [
        Arg(
        name: 'Subdirectory',
        template: 'folders'
      )
      ]
    )
  ]
);
