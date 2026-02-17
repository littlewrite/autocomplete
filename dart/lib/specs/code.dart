// Auto-generated from TypeScript source: code.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> commonOptions = [

  Option(
    name: '-',
    description: 'Read from stdin (e.g. \'ps aux | grep code | code -\')'
  ),
  Option(
    name: ['-d', '--diff'],
    description: 'Compare two files with each other',
    args: [

      Arg(
        name: 'file',
        template: 'filepaths'
      ),
      Arg(
        name: 'file',
        template: 'filepaths'
      )
    ]
  ),
  Option(
    name: ['-m', '--merge'],
    description: 'Perform a three-way merge by providing paths for two modified versions of a file, the common origin of both modified versions and the output file to save merge results',
    args: [

      Arg(
        name: 'path1',
        template: 'filepaths'
      ),
      Arg(
        name: 'path2',
        template: 'filepaths'
      ),
      Arg(
        name: 'base',
        template: 'filepaths'
      ),
      Arg(
        name: 'result',
        template: 'filepaths'
      )
    ]
  ),
  Option(
    name: ['-a', '--add'],
    description: 'Add folder(s) to the last active window',
    args: [
      Arg(
      name: 'folder',
      template: 'folders',
      isVariadic: true
    )
    ]
  ),
  Option(
    name: ['-g', '--goto'],
    description: 'Open a file at the path on the specified line and character position',
    args: [
      Arg(
      name: 'file:line[:character]',
      template: 'filepaths'
    )
    ]
  ),
  Option(
    name: ['-n', '--new-window'],
    description: 'Force to open a new window'
  ),
  Option(
    name: ['-r', '--reuse-window'],
    description: 'Force to open a file or folder in an already opened window'
  ),
  Option(
    name: ['-w', '--wait'],
    description: 'Wait for the files to be closed before returning'
  ),
  Option(
    name: '--locale',
    description: 'The locale to use (e.g. en-US or zh-TW)',
    args: [
      Arg(
      name: 'locale',
      suggestions: [

        FigSuggestion(
          name: 'zh-CN',
          icon: '🇨🇳',
          description: 'Simplified Chinese'
        ),
        FigSuggestion(
          name: 'zh-TW',
          icon: '🇹🇼',
          description: 'Traditional Chinese'
        ),
        FigSuggestion(
          name: 'fr',
          icon: '🇫🇷',
          description: 'French'
        ),
        FigSuggestion(
          name: 'de',
          icon: '🇩🇪',
          description: 'German'
        ),
        FigSuggestion(
          name: 'it',
          icon: '🇮🇹',
          description: 'Italian'
        ),
        FigSuggestion(
          name: 'es',
          icon: '🇪🇸',
          description: 'Spanish'
        ),
        FigSuggestion(
          name: 'ja',
          icon: '🇯🇵',
          description: 'Japanese'
        ),
        FigSuggestion(
          name: 'ko',
          icon: '🇰🇷',
          description: 'Korean'
        ),
        FigSuggestion(
          name: 'ru',
          icon: '🇷🇺',
          description: 'Russian'
        ),
        FigSuggestion(
          name: 'bg',
          icon: '🇧🇬',
          description: 'Bulgarian'
        ),
        FigSuggestion(
          name: 'hu',
          icon: '🇭🇺',
          description: 'Hungarian'
        ),
        FigSuggestion(
          name: 'pt-br',
          icon: '🇧🇷',
          description: 'Portuguese (Brazil)'
        ),
        FigSuggestion(
          name: 'tr',
          icon: '🇹🇷',
          description: 'Turkish'
        )
      ]
    )
    ]
  ),
  Option(
    name: '--user-data-dir',
    description: 'Specifies the directory that user data is kept in. Can be used to open multiple distinct instances of Code',
    args: [
      Arg(
      name: 'dir',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--profile',
    description: 'Opens the provided folder or workspace with the given profile and associates the profile with the workspace. If the profile does not exist, a new empty one is created. A folder or workspace must be provided for the profile to take effect',
    args: [
      Arg(
      name: 'settingsProfileName'
    )
    ]
  ),
  Option(
    name: ['-h', '--help'],
    description: 'Print usage'
  )
];

final List<Option> extensionManagementOptions = [

  Option(
    name: '--extensions-dir',
    description: 'Set the root path for extensions',
    args: [
      Arg(
      name: 'dir',
      template: 'folders'
    )
    ]
  ),
  Option(
    name: '--list-extensions',
    description: 'List the installed extensions'
  ),
  Option(
    name: '--show-versions',
    description: 'Show versions of installed extensions, when using --list-extensions'
  ),
  Option(
    name: '--category',
    description: 'Filters installed extensions by provided category, when using --list-extensions',
    args: [
      Arg(
      name: 'category',
      suggestions: [

        FigSuggestion(name: 'azure'),
        FigSuggestion(name: 'data science'),
        FigSuggestion(name: 'debuggers'),
        FigSuggestion(name: 'extension packs'),
        FigSuggestion(name: 'education'),
        FigSuggestion(name: 'formatters'),
        FigSuggestion(name: 'keymaps'),
        FigSuggestion(name: 'language packs'),
        FigSuggestion(name: 'linters'),
        FigSuggestion(name: 'machine learning'),
        FigSuggestion(name: 'notebooks'),
        FigSuggestion(name: 'programming languages'),
        FigSuggestion(name: 'scm providers'),
        FigSuggestion(name: 'snippets'),
        FigSuggestion(name: 'testing'),
        FigSuggestion(name: 'themes'),
        FigSuggestion(name: 'visualization'),
        FigSuggestion(name: 'other')
      ]
    )
    ]
  ),
  Option(
    name: '--install-extension',
    description: 'Installs or updates an extension. The argument is either an extension id or a path to a VSIX. The identifier of an extension is \'\${publisher}.\${name}\'. Use \'--force\' argument to update to latest version. To install a specific version provide \'@\${version}\'. For example: \'vscode.csharp@1.2.3\'',
    args: [
      Arg(
      name: 'extension-id[@version] | path-to-vsix'
    )
    ]
  ),
  Option(
    name: '--pre-release',
    description: 'Installs the pre-release version of the extension, when using --install-extension'
  ),
  Option(
    name: '--uninstall-extension',
    description: 'Uninstalls an extension',
    args: [
      Arg(
      name: 'extension-id'
    )
    ]
  ),
  Option(
    name: '--enable-proposed-api',
    description: 'Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually'
  )
];

final List<Option> troubleshootingOptions = [

  Option(
    name: ['-v', '--version'],
    description: 'Print version'
  ),
  Option(
    name: '--verbose',
    description: 'Print verbose output (implies --wait)'
  ),
  Option(
    name: '--log',
    description: 'Log level to use. Default is \'info\' when unspecified',
    args: [
      Arg(
      name: 'level',
      defaultValue: 'info',
      suggestions: [

        FigSuggestion(name: 'critical'),
        FigSuggestion(name: 'error'),
        FigSuggestion(name: 'warn'),
        FigSuggestion(name: 'info'),
        FigSuggestion(name: 'debug'),
        FigSuggestion(name: 'trace'),
        FigSuggestion(name: 'off')
      ]
    )
    ]
  ),
  Option(
    name: ['-s', '--status'],
    description: 'Print process usage and diagnostics information'
  ),
  Option(
    name: '--prof-startup',
    description: 'Run CPU profiler during startup'
  ),
  Option(
    name: '--disable-extensions',
    description: 'Disable all installed extensions'
  ),
  Option(
    name: '--disable-extension',
    description: 'Disable an extension',
    args: [
      Arg(
      name: 'extension-id'
    )
    ]
  ),
  Option(
    name: '--sync',
    description: 'Turn sync on or off',
    args: [
      Arg(
      name: 'sync',
      description: 'Whether to enable sync',
      suggestions: [

        FigSuggestion(name: 'on'),
        FigSuggestion(name: 'off')
      ]
    )
    ]
  ),
  Option(
    name: '--inspect-extensions',
    description: 'Allow debugging and profiling of extensions. Check the developer tools for the connection URI',
    args: [
      Arg(
      name: 'port'
    )
    ]
  ),
  Option(
    name: '--inspect-brk-extensions',
    description: 'Allow debugging and profiling of extensions with the extension host being paused after start. Check the developer tools for the connection URI',
    args: [
      Arg(
      name: 'port'
    )
    ]
  ),
  Option(
    name: '--disable-gpu',
    description: 'Disable GPU hardware acceleration'
  ),
  Option(
    name: '--max-memory',
    description: 'Max memory size for a window (in Mbytes)',
    args: [
      Arg(
      name: 'memory',
      description: 'Memory in megabytes'
    )
    ]
  ),
  Option(
    name: '--telemetry',
    description: 'Shows all telemetry events which VS code collects'
  )
];

/// Completion spec for `code` CLI
final FigSpec codeSpec = FigSpec(
  name: 'code',
  description: 'Visual Studio Code',
  args: [
    Arg(
    template: ['filepaths', 'folders'],
    isVariadic: true
  )
  ],
  options: [

    ...commonOptions,
    ...extensionManagementOptions,
    ...troubleshootingOptions
  ]
);
