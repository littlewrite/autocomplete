// Auto-generated from TypeScript source: splash.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `splash-cli` CLI
final FigSpec splashCliSpec = FigSpec(
  name: 'splash-cli',
  displayName: 'Splash',
  description: 'Get stunning wallpapers from Unsplash',
  subcommands: [
    Subcommand(
      name: 'settings',
      description: 'Manage settings',
      icon: '⚙️',
      subcommands: [
        Subcommand(
          name: 'get',
          args: [
            Arg(
            name: 'config key',
            description: 'Config key',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Setup the configuration'
        ),
        Subcommand(
          name: 'restore',
          description: 'Restore default settings'
        )
      ]
    ),
    Subcommand(
      name: 'aliases',
      description: 'Manage aliases',
      icon: '🔗',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get an alias',
          args: [
            Arg(
            name: 'alias'
          )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set an alias',
          args: [
            Arg(
              name: 'key'
            ),
            Arg(
              name: 'value'
            )
          ]
        ),
        Subcommand(
          name: 'help',
          description: 'Show help menu'
        )
      ]
    ),
    Subcommand(
      name: 'collection',
      description: 'Manage collections',
      icon: '🗃',
      subcommands: [
        Subcommand(
          name: 'get',
          description: 'Get a collection',
          args: [
            Arg(
            name: 'collection id'
          )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a collection',
          args: [
            Arg(
            name: 'collection id'
          )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a collection'
        ),
        Subcommand(
          name: 'photos:add',
          description: 'Add photos to a collection'
        ),
        Subcommand(
          name: 'photos:remove',
          description: 'Remove photos to a collection'
        ),
        Subcommand(
          name: 'help',
          description: 'Show help for this command'
        )
      ]
    ),
    Subcommand(
      name: 'dir',
      description: 'Manage SplashCLI download directory',
      icon: '📁',
      subcommands: [
        Subcommand(
          name: 'get',
          icon: '📁',
          description: 'Get the download directory path'
        ),
        Subcommand(
          name: 'set',
          icon: '📁',
          description: 'Set the download directory path',
          args: [
            Arg(
            name: 'path'
          )
          ]
        ),
        Subcommand(
          name: 'clean',
          description: 'Delete all the downloaded photos',
          icon: '🗑️'
        ),
        Subcommand(
          name: 'count',
          description: 'Count all the downloaded photos',
          icon: '📈'
        ),
        Subcommand(
          name: 'help',
          description: 'Show help for this command'
        )
      ]
    ),
    Subcommand(
      name: 'user',
      subcommands: [
        Subcommand(
          name: 'login',
          description: 'Login with your Unsplash account'
        ),
        Subcommand(
          name: 'logout',
          description: 'Removes all user data'
        ),
        Subcommand(
          name: 'liked',
          description: 'List last 10 liked photos',
          icon: '❤️'
        ),
        Subcommand(
          name: 'collections',
          description: 'List all user\'s collections',
          icon: '🗃'
        ),
        Subcommand(
          name: 'get',
          description: 'Get user infos',
          icon: '🔍'
        ),
        Subcommand(
          name: ['edit', 'update'],
          description: 'Update user infos',
          icon: '🧪'
        ),
        Subcommand(
          name: 'help',
          description: 'Help Menu'
        )
      ]
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Help Message'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Prints `splash-cli` version'
    ),
    Option(
      name: '--scale',
      description: 'Scale of the image',
      args: [
        Arg(
        name: 'scale',
        defaultValue: 'auto',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'fill'),
          FigSuggestion(name: 'fit'),
          FigSuggestion(name: 'stretch'),
          FigSuggestion(name: 'center')
        ]
      )
      ]
    ),
    Option(
      name: '--screen',
      description: 'Set wallpaper on selected screen',
      args: [
        Arg(
        name: 'screen',
        defaultValue: 'all',
        suggestions: [
          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'main')
        ]
      )
      ]
    ),
    Option(
      name: ['-s', '--save'],
      description: 'Save photo without setting as wallpaper',
      args: [
        Arg(
        isOptional: true,
        name: 'path',
        defaultValue: '.',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--set',
      description: 'Set wallpaper from local file',
      args: [
        Arg(
        name: 'filepath',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-i', '--info'],
      description: 'Show image exif data'
    ),
    Option(
      name: ['-q', '--quiet'],
      description: 'Hide output'
    ),
    Option(
      name: '--rotate',
      description: 'Rotate image',
      args: [
        Arg(
        name: 'degrees',
        suggestions: [
          FigSuggestion(name: '90'),
          FigSuggestion(name: '180'),
          FigSuggestion(name: '270')
        ]
      )
      ]
    ),
    Option(
      name: '--colorspace',
      description: 'Define image colorspace',
      args: [
        Arg(
        name: 'colorspace',
        defaultValue: 'srgb',
        suggestions: [
          FigSuggestion(name: 'srgb'),
          FigSuggestion(name: 'rgb'),
          FigSuggestion(name: 'cmyk'),
          FigSuggestion(name: 'lab'),
          FigSuggestion(name: 'b-w')
        ]
      )
      ]
    ),
    Option(
      name: '--flip',
      description: 'Flip image on the Y axis'
    ),
    Option(
      name: ['-f', '--featured'],
      isRepeatable: false,
      description: 'Limit to only featured photos'
    ),
    Option(
      name: '--query',
      isRepeatable: false,
      description: 'Filter by keywords',
      args: [
        Arg(
        name: 'querystring'
      )
      ]
    ),
    Option(
      name: '--orientation',
      description: 'Filter by orientation',
      args: [
        Arg(
        name: 'orientation',
        defaultValue: 'landscape',
        suggestions: [
          FigSuggestion(name: 'landscape'),
          FigSuggestion(name: 'portrait'),
          FigSuggestion(name: 'squarish')
        ]
      )
      ]
    ),
    Option(
      name: ['-c', '--curated'],
      description: 'Random Curated photo'
    ),
    Option(
      name: ['-u', '--user'],
      description: 'Random photo from user',
      args: [
        Arg(
        name: 'username'
      )
      ]
    ),
    Option(
      name: '--collection',
      description: 'Random photo from collection',
      args: [
        Arg(
        name: 'collection id'
      )
      ]
    ),
    Option(
      name: '--id',
      description: 'Get photo by ID',
      args: [
        Arg(
        name: 'photo_id'
      )
      ]
    ),
    Option(
      name: '--day',
      description: 'Photo of the day'
    )
  ]
);
