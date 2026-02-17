// Auto-generated from TypeScript source: pageres.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `pageres` CLI
final FigSpec pageresSpec = FigSpec(
  name: 'pageres',
  description: 'Capture website screenshots',
  options: [

    Option(
      name: ['--verbose', '-v'],
      description: 'Verbose output to see errors if you need to troubleshoot'
    ),
    Option(
      name: ['--crop', '-c'],
      description: 'Crop to the set height',
      exclusiveOn: ['--no-crop']
    ),
    Option(
      name: ['--delay', '-d'],
      description: 'Delay screenshot capture',
      args: [
        Arg(
        name: 'time'
      )
      ]
    ),
    Option(
      name: '--filename',
      description: 'Custom filename',
      args: [
        Arg(
        name: 'template',
        description: '--filename=\'<%= date %> - <%= url %>\''
      )
      ]
    ),
    Option(
      name: '--overwrite',
      description: 'Overwrite destination file if it exists. Defaults to appending (n) to the file name if --overwrite is not set'
    ),
    Option(
      name: '--selector',
      description: 'Capture DOM element',
      args: [
        Arg(
        name: 'element'
      )
      ]
    ),
    Option(
      name: '--hide',
      description: 'Hide DOM element. Can be set multiple times',
      args: [
        Arg(
        name: 'element'
      )
      ]
    ),
    Option(
      name: '--no-crop',
      description: 'Override a global crop option within a group',
      exclusiveOn: ['--crop', '-c']
    ),
    Option(
      name: '--css',
      description: 'Apply custom CSS to the webpage. Specify some CSS or the path to a CSS file',
      args: [
        Arg(
        name: 'string',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--cookie',
      description: 'Browser cookie. Can be set multiple times',
      args: [
        Arg(
        name: 'cookie'
      )
      ]
    ),
    Option(
      name: '--header',
      description: 'Custom HTTP request header. Can be set multiple times',
      args: [
        Arg(
        name: 'header'
      )
      ]
    ),
    Option(
      name: '--username',
      description: 'Username for HTTP auth',
      args: [
        Arg(
        name: 'username'
      )
      ]
    ),
    Option(
      name: '--password',
      description: 'Password for HTTP auth',
      args: [
        Arg(
        name: 'password'
      )
      ]
    ),
    Option(
      name: '--scale',
      description: 'Scale webpage n of times',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '--format',
      description: 'Image format. Either png (default) or jpg',
      args: [
        Arg(
        name: 'format',
        suggestions: [

          FigSuggestion(name: 'png'),
          FigSuggestion(name: 'jpg')
        ],
        defaultValue: 'png'
      )
      ]
    ),
    Option(
      name: '--user-agent',
      description: 'Custom user agent',
      args: [
        Arg(
        name: 'string'
      )
      ]
    ),
    Option(
      name: '--transparent',
      description: 'Set background color to transparent instead of white if no background is set'
    ),
    Option(
      name: '--darkMode',
      description: 'Emulate preference of dark color scheme'
    )
  ],
  args: [

    Arg(
      name: 'url | filepath',
      template: 'filepaths',
      isVariadic: true
    ),
    Arg(
      name: 'resolution',
      isVariadic: true
    )
  ]
);
