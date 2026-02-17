// AI-generated from TypeScript source: hugo.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 创建帮助选项的工厂函数
FigOption help(String name) {
  return FigOption(
    name: ['-h', '--help'],
    description: 'help for $name',
  );
}

/// 全局选项列表
final List<FigOption> globalOptions = [
  FigOption(
    name: '--config',
    description: 'Config file (default is path/config.yaml|json|toml)',
    priority: 50,
    args: [
      FigArg(
        name: 'file',
        description: 'Default is path/config.yaml|json|toml',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: '--configDir',
    description: 'Config dir (default \'config\')',
    priority: 50,
    args: [
      FigArg(
        name: 'directory path',
        description: 'Default is \'config\'',
        template: 'folders',
      ),
    ],
  ),
  FigOption(
    name: '--debug',
    description: 'Debug output (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
  FigOption(
    name: ['-e', '--environment'],
    description: 'Build environment',
    priority: 50,
    args: [
      FigArg(
        name: 'environment',
      ),
    ],
  ),
  FigOption(
    name: '--ignoreVendor',
    description: 'Ignores any _vendor directory (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
  FigOption(
    name: '--ignoreVendorPaths',
    description:
        'Ignores any _vendor for module paths matching the given Glob pattern',
    priority: 50,
    args: [
      FigArg(
        name: 'glob pattern',
      ),
    ],
  ),
  FigOption(
    name: '--log',
    description: 'Enable Logging (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
  FigOption(
    name: '--logFile',
    description: 'Log File path (if set, logging enabled automatically)',
    priority: 50,
    args: [
      FigArg(
        name: 'file',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: '--quiet',
    description: 'Build in quiet mode (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
  FigOption(
    name: ['-s', '--source'],
    description: 'Filesystem path to read files relative from',
    priority: 50,
    args: [
      FigArg(
        name: 'file',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: '--themesDir',
    description: 'Filesystem path to themes directory',
    priority: 50,
    args: [
      FigArg(
        name: 'file',
        description: 'Default is path/config.yaml|json|toml',
        template: 'filepaths',
      ),
    ],
  ),
  FigOption(
    name: ['-v', '--verbose'],
    description: 'Verbose output (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
  FigOption(
    name: '--verboseLog',
    description: 'Verbose logging (default false)',
    priority: 50,
    args: [
      FigArg(
        name: 'boolean',
      ),
    ],
  ),
];

final List<Option> commonOptions = [
  Option(
      name: ['-b', '--baseURL'],
      description: 'Hostname (and path) to the root, e.g. http://spf13.com/',
      args: [Arg(name: 'hostname and path')]),
  Option(
      name: ['-D', '--buildDrafts'],
      description: 'Include content marked as draft (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: ['-E', '--buildExpired'],
      description: 'Include expired content (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: ['-F', '--buildFuture'],
      description:
          'Include content with publishdate in the future (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--cacheDir',
      description:
          'Filesystem path to cache directory. Defaults: \$TMPDIR/hugo_cache/',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '--cleanDestinationDir',
      description:
          'Remove files from destination not found in static directories (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: ['-c', '--contentDir'],
      description: 'Filesystem path to content directory',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: ['-d', '--destination'],
      description: 'Filesystem path to write files to',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '--disableKinds',
      description: 'Disable different kind of pages (home, RSS etc.)',
      args: [
        Arg(name: 'kind,kind', suggestions: [
          FigSuggestion(name: 'page'),
          FigSuggestion(name: 'home'),
          FigSuggestion(name: 'section'),
          FigSuggestion(name: 'taxonomy'),
          FigSuggestion(name: 'term'),
          FigSuggestion(name: 'RSS'),
          FigSuggestion(name: 'sitemap'),
          FigSuggestion(name: 'robotsTXT'),
          FigSuggestion(name: '404')
        ])
      ]),
  Option(
      name: '--enableGitInfo',
      description:
          'Add Git revision, date and author info to the pages (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--forceSyncStatic',
      description: 'Copy all files when static is changed (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--gc',
      description:
          'Enable to run some cleanup tasks (remove unused cache files) after the build (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--i18n-warnings',
      description: 'Print missing translations (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--ignoreCache',
      description: 'Ignores the cache directory (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: ['-l', '--layoutDir'],
      description: 'Filesystem path to layout directory',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '--minify',
      description:
          'Minify any supported output format (HTML, XML etc.) (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--noChmod',
      description: 'Don\'t sync permission mode of files (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--noTimes',
      description: 'Don\'t sync modification time of files (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--path-warnings',
      description:
          'Print warnings on duplicate target paths etc (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--poll',
      description:
          'Set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes',
      args: [Arg(name: 'milliseconds')]),
  Option(
      name: '--print-mem',
      description: 'Print memory usage to screen at intervals (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--templateMetrics',
      description: 'Display metrics about template executions (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: '--templateMetricsHints',
      description:
          'Calculate some improvement hints when combined with --templateMetrics (default false)',
      args: [Arg(name: 'boolean')]),
  Option(
      name: ['-t', '--theme'],
      description: 'Themes to use (located in /themes/THEMENAME/)',
      args: [Arg(name: 'theme nam')]),
  Option(
      name: '--trace',
      description: 'Write trace to file (not useful in general)',
      args: [Arg(name: 'file', template: 'filepaths')])
];

// options common to 'hugo' and 'hugo server' commands

final FigOption watch = FigOption(
  name: ['-w', '--watch'],
  description:
      'Watch filesystem for changes and recreate as needed (default true)',
  args: [
    FigArg(
      name: 'boolean',
    ),
  ],
);

final List<Option> convertOptions = [
  Option(
      name: ['-o', '--output'],
      description: 'Filesystem path to write files to',
      args: [Arg(name: 'path', template: 'folders')]),
  Option(
      name: '--unsafe',
      description: 'Enable less safe operations, please backup first',
      isDangerous: true)
];

/// Completion spec for `hugo` CLI
final FigSpec hugoSpec =
    FigSpec(name: 'hugo', description: 'Hugo builds your site', subcommands: [
  Subcommand(
      name: 'check',
      description: 'Contains some verification checks',
      args: [
        Arg(name: 'command')
      ],
      subcommands: [
        Subcommand(
            name: 'ulimit',
            description: 'Check system ulimit settings',
            options: [help('ulimit')])
      ],
      options: [
        help('check'),
        ...globalOptions
      ]),
  Subcommand(
      name: 'config',
      description: 'Print the site configuration',
      subcommands: [
        Subcommand(
            name: 'mounts',
            description: 'Print the configured file mounts',
            options: [help('mounts')])
      ],
      options: [
        help('config'),
        ...globalOptions
      ]),
  Subcommand(
      name: 'convert',
      description: 'Convert your content to different formats',
      args: [
        Arg(name: 'command')
      ],
      subcommands: [
        Subcommand(
            name: 'toJSON',
            description: 'Convert front matter to JSON',
            options: [help('toJSON'), ...convertOptions]),
        Subcommand(
            name: 'toTOML',
            description: 'Convert front matter to TOML',
            options: [help('toTOML'), ...convertOptions]),
        Subcommand(
            name: 'toYAML',
            description: 'Convert front matter to YAML',
            options: [help('toYAML'), ...convertOptions])
      ],
      options: [
        help('convert'),
        ...globalOptions
      ]),
  Subcommand(
      name: 'deploy',
      description: 'Deploy your site to a Cloud provider',
      options: [
        help("deploy"),
        ...globalOptions,
        Option(
            name: '--confirm',
            description:
                'Ask for confirmation before making changes to the target'),
        Option(name: '--dryRun', description: 'Dry run'),
        Option(name: '--force', description: 'Force upload of all files'),
        Option(
            name: '--invalidateCDN',
            description:
                'Invalidate the CDN cache listed in the deployment target (default true)'),
        Option(
            name: '--maxDeletes',
            description:
                'Maximum # of files to delete, or -1 to disable (default 256)',
            args: [Arg(name: 'int')]),
        Option(
            name: '--target',
            description:
                'Target deployment from deployments section in config file; defaults to the first one',
            args: [Arg(name: 'target')])
      ]),
  Subcommand(
      name: 'env',
      description: 'Print Hugo version and environment info',
      options: [
        help("env"),
        ...globalOptions,
        Option(name: '-v', description: 'Get a full dependency list')
      ]),
  Subcommand(
      name: 'gen',
      description: 'A collection of several useful generators',
      args: [
        Arg(name: 'command')
      ],
      subcommands: [
        Subcommand(
            name: 'autocomplete',
            description:
                'Generate shell autocompletion script for Hugo (default outputs to stdout)',
            options: [
              help("autocomplete"),
              Option(
                  name: ['-f', '--completionfile'],
                  description: 'Autocompletion file, defaults to stdout',
                  args: [Arg(name: 'file', template: 'filepaths')]),
              Option(
                  name: ['-t', '--type'],
                  description:
                      'Autocompletion type (bash, zsh, fish, or powershell) (default \'bash\')',
                  args: [
                    Arg(name: 'type', defaultValue: 'bash', suggestions: [
                      FigSuggestion(name: 'bash', description: 'Default'),
                      FigSuggestion(name: 'zsh'),
                      FigSuggestion(name: 'fish'),
                      FigSuggestion(name: 'powershell')
                    ])
                  ])
            ]),
        Subcommand(
            name: 'chromastyles',
            description:
                'Generate CSS stylesheet for the Chroma code highlighter (default outputs to stdout)',
            options: [
              help("chromastyles"),
              Option(
                  name: '--highlightStyle',
                  description:
                      'Style used for highlighting lines (see https://github.com/alecthomas/chroma) (default \'bg:#ffffcc\')',
                  args: [Arg(name: 'hex triplet')]),
              Option(
                  name: '--linesStyle',
                  description:
                      'Style used for line numbers (see https://github.com/alecthomas/chroma)',
                  args: [Arg(name: 'hex triplet')]),
              Option(
                  name: '--style',
                  description:
                      'Highlighter style (see https://help.farbox.com/pygments.html) (default \'friendly\')',
                  args: [
                    Arg(name: 'style name', suggestions: [
                      FigSuggestion(name: 'friendly', description: 'Default'),
                      FigSuggestion(name: 'abap'),
                      FigSuggestion(name: 'algol'),
                      FigSuggestion(name: 'algol_nu'),
                      FigSuggestion(name: 'api'),
                      FigSuggestion(name: 'arduino'),
                      FigSuggestion(name: 'autumn'),
                      FigSuggestion(name: 'base16-snazzy'),
                      FigSuggestion(name: 'borland'),
                      FigSuggestion(name: 'bw'),
                      FigSuggestion(name: 'colorful'),
                      FigSuggestion(name: 'doom-one'),
                      FigSuggestion(name: 'doom-one2'),
                      FigSuggestion(name: 'dracula'),
                      FigSuggestion(name: 'emacs'),
                      FigSuggestion(name: 'fruity'),
                      FigSuggestion(name: 'github'),
                      FigSuggestion(name: 'hr_dark'),
                      FigSuggestion(name: 'hr_high_contrast'),
                      FigSuggestion(name: 'igor'),
                      FigSuggestion(name: 'lovelace'),
                      FigSuggestion(name: 'manni'),
                      FigSuggestion(name: 'monokai'),
                      FigSuggestion(name: 'monokailight'),
                      FigSuggestion(name: 'murphy'),
                      FigSuggestion(name: 'native'),
                      FigSuggestion(name: 'nord'),
                      FigSuggestion(name: 'paraiso-dark'),
                      FigSuggestion(name: 'paraiso-light'),
                      FigSuggestion(name: 'pastie'),
                      FigSuggestion(name: 'perldoc'),
                      FigSuggestion(name: 'pygments'),
                      FigSuggestion(name: 'rainbow_dash'),
                      FigSuggestion(name: 'rrt'),
                      FigSuggestion(name: 'solarized-dark'),
                      FigSuggestion(name: 'solarized-dark256'),
                      FigSuggestion(name: 'solarized-light'),
                      FigSuggestion(name: 'swapoff'),
                      FigSuggestion(name: 'tango'),
                      FigSuggestion(name: 'trac'),
                      FigSuggestion(name: 'vim'),
                      FigSuggestion(name: 'vs'),
                      FigSuggestion(name: 'vulcan'),
                      FigSuggestion(name: 'xcode-dark'),
                      FigSuggestion(name: 'xcode')
                    ])
                  ])
            ]),
        Subcommand(
            name: 'doc',
            description:
                'Generate Markdown documentation for the Hugo CLI (default \'/tmp/hugodoc/\')',
            options: [
              help("doc"),
              Option(
                  name: '--dir',
                  description:
                      'The directory to write the doc. (default \'/tmp/hugodoc/\')',
                  args: [Arg(name: 'path', template: 'folders')])
            ]),
        Subcommand(
            name: 'man',
            description:
                'Generate man pages for the Hugo CLI (default \'man/\')',
            options: [
              help("man"),
              Option(
                  name: '--dir',
                  description:
                      'The directory to write the man pages. (default \'man/\')',
                  args: [Arg(name: 'path', template: 'folders')])
            ])
      ],
      options: [
        help('gen'),
        ...globalOptions
      ]),
  Subcommand(name: 'help', description: 'Help about any command', args: [
    Arg(name: 'command', suggestions: [
      FigSuggestion(name: 'check'),
      FigSuggestion(name: 'config'),
      FigSuggestion(name: 'convert'),
      FigSuggestion(name: 'deploy'),
      FigSuggestion(name: 'env'),
      FigSuggestion(name: 'gen'),
      FigSuggestion(name: 'help'),
      FigSuggestion(name: 'import'),
      FigSuggestion(name: 'list'),
      FigSuggestion(name: 'mod'),
      FigSuggestion(name: 'new'),
      FigSuggestion(name: 'server'),
      FigSuggestion(name: 'version')
    ])
  ]),
  Subcommand(
      name: 'import',
      description: 'Import your site from others',
      args: [
        Arg(name: 'command')
      ],
      subcommands: [
        Subcommand(
            name: 'jekyll',
            description:
                'Import from Jekyll requires two paths, e.g. ` + `hugo import jekyll jekyll_root_path target_path`',
            args: [
              Arg(name: 'jekyll_root_path', template: 'folders'),
              Arg(name: 'target_path', template: 'folders')
            ],
            options: [
              help("jekyll"),
              Option(
                  name: '--force',
                  description: 'Allow import into non-empty target directory',
                  isDangerous: true)
            ])
      ],
      options: [
        help('import'),
        ...globalOptions
      ]),
  Subcommand(
      name: 'list',
      description: 'Listing out various types of content',
      args: [
        Arg(name: 'command')
      ],
      subcommands: [
        Subcommand(
            name: 'drafts',
            description: 'List all drafts',
            options: [help('drafts')]),
        Subcommand(
            name: 'future',
            description: 'List all posts dated in the future',
            options: [help('future')]),
        Subcommand(
            name: 'expired',
            description: 'List all posts already expired',
            options: [help('expired')]),
        Subcommand(
            name: 'all', description: 'List all posts', options: [help('all')])
      ],
      options: [
        help('list'),
        ...globalOptions
      ]),
  Subcommand(name: 'mod', description: 'Various Hugo Modules helpers', args: [
    Arg(name: 'command')
  ], subcommands: [
    Subcommand(
        name: 'clean',
        description: 'Delete the Hugo Module cache for the current project',
        options: [
          help("clean"),
          Option(name: '--all', description: 'Clean entire module cache'),
          Option(
              name: '--pattern',
              description:
                  'Pattern matching module paths to clean (all if not set)", "e.g. "**hugo*"',
              args: [Arg(name: 'path')])
        ]),
    Subcommand(
        name: 'get',
        description: 'Resolves dependencies in your current Hugo Project',
        options: [
          help("get"),
          Option(
              name: '-d',
              description: 'Download packages only and do not install'),
          Option(
              name: '-f',
              description:
                  'Valid only when -u is set, forces get -u not to verify that each package has been checked out from the source control repository implied by its import path. This can be useful if the source is a local fork of the original'),
          Option(
              name: '-fix',
              description:
                  'Run the fix tool on downloaded packages before resolving dependencies or building the code'),
          Option(
              name: '-insecure',
              description:
                  'Permits fetching from repositories and resolving custom domains using insecure schemes such as HTTP. Use with caution'),
          Option(
              name: '-t',
              description:
                  'Also download the packages required to build the tests for the specified packages'),
          Option(
              name: '-u',
              description:
                  'Recursively update modules. Use network to update the named packages and their dependencies. By default, get uses the network to check out missing packages but does not use it to look for updates to existing packages'),
          Option(
              name: '-v',
              description: 'Enables verbose progress and debug output')
        ]),
    Subcommand(
        name: 'graph',
        description:
            'Use `hugo mod graph` from the relevant module directory and it will print the dependency graph, including vendoring, module replacement or disabled status',
        options: [help('graph')]),
    Subcommand(
        name: 'init',
        description: 'Initialize this project as a Hugo Module',
        options: [help('init')]),
    Subcommand(name: 'npm', description: 'Various npm helpers', subcommands: [
      Subcommand(
          name: 'pack',
          description:
              'Experimental: Prepares and writes a composite package.json file for your project',
          options: [help('pack')])
    ], options: [
      help('npm')
    ]),
    Subcommand(
        name: 'tidy',
        description: 'Remove unused entries in go.mod and go.sum',
        options: [help('tidy')]),
    Subcommand(
        name: 'vendor',
        description:
            'Vendor all module dependencies into the _vendor directory',
        options: [help('vendor')]),
    Subcommand(name: 'verify', description: 'Verify dependencies', options: [
      help("verify"),
      Option(
          name: '--clean',
          description:
              'Delete module cache for dependencies that fail verification')
    ])
  ], options: [
    help('mod'),
    ...commonOptions,
    ...globalOptions
  ]),
  Subcommand(
      name: 'new',
      description: 'Create new content for your site',
      args: [
        Arg(name: 'content-section/file-name.md')
      ],
      subcommands: [
        Subcommand(
            name: 'site',
            description: 'Create a new site (skeleton)',
            args: [
              Arg(name: 'path', template: 'folders')
            ],
            options: [
              help("site"),
              Option(
                  name: '--force',
                  description: 'Init inside non-empty directory',
                  isDangerous: true),
              Option(
                  name: ['-f', '--format'],
                  description: 'Config & frontmatter format (default "toml")',
                  args: [
                    Arg(name: 'format', suggestions: [
                      FigSuggestion(name: 'toml', description: 'Default'),
                      FigSuggestion(name: 'yaml'),
                      FigSuggestion(name: 'json')
                    ])
                  ])
            ]),
        Subcommand(
            name: 'theme',
            description: 'Create a new theme',
            args: [Arg(name: 'name')],
            options: [help('theme')])
      ],
      options: [
        help("new"),
        ...commonOptions,
        ...globalOptions,
        Option(
            name: ['-k', '--kind'],
            description: 'Content type to create',
            args: [
              Arg(
                  name: 'archetype|default',
                  generators: Generator(
                      script: ['ls', './archetypes/'],
                      // TS_UNCONVERTED_START (postProcess)
// (output) =>
//                   output.split("\n").map((fileName) => ({
//                     name: fileName.slice(0
// TS_UNCONVERTED_END
                      postProcess: null)),
              Arg(name: 'content-section/file-name.md')
            ]),
        Option(
            name: '--editor',
            description: 'Edit new content with this editor, if provided',
            args: [Arg(name: 'editor')])
      ]),
  Subcommand(
      name: 'server',
      description: 'A high performance webserver',
      options: [
        help("server"),
        ...commonOptions,
        ...globalOptions,
        watch,
        Option(
            name: '--appendPort',
            description: 'Append port to baseURL (default true)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: '--bind',
            description:
                'Interface to which the server will bind (default \'127.0.0.1\')',
            args: [Arg(name: 'ip address')]),
        Option(
            name: '--disableBrowserError',
            description:
                'Do not show build errors in the browser (default false)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: '--disableFastRender',
            description: 'Enables full re-renders on changes (default false)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: '--disableLiveReload',
            description:
                'Watch without enabling live browser reload on rebuild (default false)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: '--liveReloadPort',
            description:
                'Port for live reloading (i.e. 443 in HTTPS proxy situations) (default -1)',
            args: [Arg(name: 'port')]),
        Option(
            name: '--meminterval',
            description:
                'Interval to poll memory usage (requires --memstats), valid time units are \'ns\', \'us\' (or \'µs\'), \'ms\', \'s\', \'m\', \'h\'. (default \'100ms\')',
            args: [Arg(name: 'time unit')]),
        Option(
            name: '--memstats',
            description: 'Log memory usage to this file',
            args: [Arg(name: 'file', template: 'filepaths')]),
        Option(
            name: '--navigateToChanged',
            description:
                'Navigate to changed content file on live browser reload (default false)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: '--noHTTPCache',
            description: 'Prevent HTTP caching (default false)',
            args: [Arg(name: 'boolean')]),
        Option(
            name: ['-p', '--port'],
            description: 'Port on which the server will listen (default 1313)',
            args: [Arg(name: 'port')]),
        Option(
            name: '--renderToDisk',
            description:
                'Render to Destination path (default is false: render to memory & serve from there)',
            args: [Arg(name: 'boolean')])
      ]),
  Subcommand(
      name: 'version',
      description: 'Print the version number of Hugo',
      options: [help('version'), ...globalOptions])
], options: [
  help("hugo"),
  ...commonOptions,
  ...globalOptions,
  watch,
  Option(
      name: '--renderToMemory',
      description: 'Render to memory (only useful for benchmark testing)')
]);
