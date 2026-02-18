// AI-generated from TypeScript source: bun.ts
// Generated at: 2026-02-13
// WARNING: Manual changes may be overwritten!

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

const bunIcon = 'asset://icons/esbuild.png';

final FigGenerator npmScriptsGenerator = FigGenerator(
  script: ['cat', 'package.json'],
  postProcess: (out, [tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final Map<String, dynamic> packageJson = jsonDecode(out);
      final scripts = packageJson['scripts'];
      if (scripts is Map) {
        return scripts.entries.map((e) {
          return FigSuggestion(
            name: e.key,
            description: e.value is String ? e.value : null,
            icon: 'fig://icon?type=npm',
            priority: 76, // Prefer over filepaths
          );
        }).toList();
      }
    } catch (e) {
      // ignore
    }
    return [];
  },
);

final FigGenerator npmSearchGenerator = FigGenerator(
  trigger: (String token) {
    if (token.startsWith('@') && token.indexOf('@', 1) != -1) return true;
    if (!token.startsWith('@') && token.contains('@')) return true;
    return false;
  },
  script: (tokens) {
    final searchTerm = tokens.last;
    if (searchTerm.contains('@')) {
      final name = searchTerm.substring(0, searchTerm.lastIndexOf('@'));
      return ['npm', 'view', name, 'dist-tags', '--json'];
    } else {
      return [
        'curl',
        '-s',
        '-H',
        'Accept: application/json',
        'https://api.npms.io/v2/search/suggestions?q=$searchTerm&size=20'
      ];
    }
  },
  postProcess: (out, [tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final searchTerm = tokens?.last ?? '';
      final json = jsonDecode(out);

      if (searchTerm.contains('@')) {
        if (json is Map) {
          return json.entries.map((e) {
            return FigSuggestion(
              name: e.value is String ? e.value as String : e.value.toString(),
              description: 'Tag: ${e.key}',
              icon: 'fig://icon?type=version',
            );
          }).toList();
        }
      } else {
        if (json is List) {
          return json.map((item) {
            final pkg = item['package'];
            return FigSuggestion(
              name: pkg['name'] as String,
              description: pkg['description'] as String?,
              icon: '📦',
            );
          }).toList();
        }
      }
    } catch (e) {
      return [];
    }
    return [];
  },
  cache: const FigCache(ttl: 172800000),
);

final FigGenerator dependenciesGenerator = FigGenerator(
  script: ['cat', 'package.json'],
  postProcess: (out, [tokens]) {
    if (out.trim().isEmpty) return [];
    try {
      final Map<String, dynamic> packageJson = jsonDecode(out);
      final deps = <String>{};
      if (packageJson['dependencies'] is Map) {
        deps.addAll((packageJson['dependencies'] as Map).keys.cast<String>());
      }
      if (packageJson['devDependencies'] is Map) {
        deps.addAll(
            (packageJson['devDependencies'] as Map).keys.cast<String>());
      }
      return deps.map((dep) => FigSuggestion(name: dep, icon: '📦')).toList();
    } catch (e) {
      return [];
    }
  },
);

final FigArg inspectArgs = FigArg(
  name: '[host:]port',
  isOptional: true,
  suggestions: [
    const FigSuggestion(
      name: '3000',
      icon: 'fig://icon?type=box',
      description: 'Serve on port 3000',
    ),
    const FigSuggestion(
      name: '8080',
      icon: 'fig://icon?type=box',
      description: 'Serve on port 8080',
    ),
  ],
  description: 'Activate inspector on particular port and/or hostname',
);

const List<String> loaders = [
  'js',
  'jsx',
  'ts',
  'tsx',
  'json',
  'toml',
  'text',
  'file',
  'wasm',
  'napi',
];

final List<FigOption> sharedPublicParams = [
  FigOption(name: ['-h', '--help'], description: 'Display this help and exit'),
  FigOption(
      name: ['-b', '--bun'],
      description:
          'Force a script or package to use Bun\'s runtime instead of Node.js (via symlinking node)'),
  FigOption(name: '--cwd', args: [
    FigArg(
        name: 'path',
        description:
            'Absolute path to resolve files & entry points from. This just changes the process\' cwd')
  ]),
  FigOption(name: [
    '-c',
    '--config'
  ], args: [
    FigArg(
        name: 'path',
        template: 'filepaths',
        description: 'Config file to load Bun from (e.g. -c bunfig.toml)',
        isOptional: true)
  ], description: 'Load config (bunfig.toml)'),
  FigOption(name: '--extension-order', args: [
    FigArg(
        name: 'order',
        isVariadic: true,
        description: 'Defaults to: .tsx,.ts,.jsx,.js,.json')
  ]),
  FigOption(
      name: '--jsx-factory',
      args: [
        FigArg(name: 'name', suggestions: [
          const FigSuggestion(name: 'React.createElement'),
          const FigSuggestion(name: 'h'),
          const FigSuggestion(name: 'preact.h')
        ])
      ],
      description:
          'Changes the function called when compiling JSX elements using the classic JSX runtime'),
  FigOption(
      name: '--jsx-fragment',
      priority: 49,
      args: [FigArg(name: 'string', isOptional: true)],
      insertValue: '--jsx-fragment=\'{cursor}\'',
      description: 'Changes the function called when compiling JSX fragments'),
  FigOption(
      name: '--jsx-import-source',
      args: [
        FigArg(
            name: 'module', suggestions: [const FigSuggestion(name: 'react')])
      ],
      description:
          'Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: "react"'),
  FigOption(
      name: '--jsx-runtime',
      args: [
        FigArg(name: 'name', suggestions: [
          const FigSuggestion(name: 'automatic'),
          const FigSuggestion(name: 'classic')
        ])
      ],
      description: '"automatic" (default) or "classic"'),
  FigOption(name: [
    '-r',
    '--preload'
  ], args: [
    FigArg(
        name: 'args',
        isVariadic: true,
        description: 'Import a module before other modules are loaded')
  ]),
  FigOption(name: '--main-fields', args: [
    FigArg(
        name: 'args',
        isVariadic: true,
        description:
            'Main fields to lookup in package.json. Defaults to --target dependent')
  ]),
  FigOption(
      name: '--no-summary',
      description: 'Don\'t print a summary (when generating .bun)'),
  FigOption(name: ['-v', '--version'], description: 'Print version and exit'),
  FigOption(
      name: '--revision', description: 'Print version with revision and exit'),
  FigOption(name: '--tsconfig-override', args: [
    FigArg(
        name: 'overrides',
        description: 'Load tsconfig from path instead of cwd/tsconfig.json')
  ]),
  FigOption(name: [
    '-d',
    '--define'
  ], args: [
    FigArg(
        name: 'k=v',
        isVariadic: true,
        description:
            'Substitute key=value while parsing, e.g. --define process.env.NODE_ENV=development')
  ]),
  FigOption(name: [
    '-e',
    '--external'
  ], args: [
    FigArg(
        name: 'args',
        isVariadic: true,
        description:
            'Exclude module from transpilation (can use * wildcards). ex: -e react')
  ]),
  FigOption(name: [
    '-l',
    '--loader'
  ], args: [
    FigArg(
        name: 'args',
        isVariadic: true,
        description:
            'Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi',
        suggestions:
            loaders.map((loader) => FigSuggestion(name: '.$loader')).toList())
  ]),
  FigOption(name: [
    '-u',
    '--origin'
  ], args: [
    FigArg(
        name: 'args',
        description: 'Rewrite import URLs to start with --origin. Default: ""')
  ]),
  FigOption(name: [
    '-p',
    '--port'
  ], args: [
    FigArg(
        name: 'args',
        description: 'Port to serve Bun\'s dev server on. Default: "3000"')
  ]),
  FigOption(
      name: '--smol',
      description: 'Use less memory, but run garbage collection more often'),
  FigOption(
      name: '--minify', description: 'Minify (experimental)', priority: 50),
  FigOption(
      name: '--minify-syntax',
      description: 'Minify syntax and inline data (experimental)'),
  FigOption(
      name: '--minify-whitespace',
      description: 'Minify whitespace (experimental)'),
  FigOption(name: '--minify-identifiers', description: 'Minify identifiers'),
  FigOption(
      name: '--no-macros',
      description:
          'Disable macros from being executed in the bundler, transpiler and runtime'),
  FigOption(
      name: '--target',
      description: 'Target environment',
      priority: 50,
      args: [
        FigArg(suggestions: [
          const FigSuggestion(name: 'node'),
          const FigSuggestion(name: 'browser'),
          const FigSuggestion(name: 'bun')
        ])
      ]),
  FigOption(
      name: '--inspect',
      description: 'Activate Bun\'s debugger for a file',
      args: [inspectArgs]),
  FigOption(
      name: '--inspect-wait',
      description:
          'Activate Bun\'s Debugger, wait for a connection before executing',
      args: [inspectArgs]),
  FigOption(
      name: '--inspect-brk',
      description:
          'Activate Bun\'s Debugger, set breakpoint on first line of code and wait',
      args: [inspectArgs]),
  FigOption(
      name: '--if-present',
      description: 'Exit if the entrypoint does not exist')
];

final List<FigOption> notBunDevFlags = [
  FigOption(
      name: '--hot',
      description:
          'Enable auto reload in the Bun runtime, test runner, or bundler',
      priority: 50),
  FigOption(
      name: '--watch',
      description: 'Automatically restart the process on file change',
      priority: 50),
  FigOption(
      name: '--no-install',
      description: 'Disable auto install in the Bun runtime'),
  FigOption(
      name: '-i',
      description:
          'Automatically install dependencies and use global cache in Bun\'s runtime, equivalent to --install=fallback'),
  FigOption(name: '--install', args: [
    FigArg(
        name: 'arg',
        description:
            'Install dependencies automatically when no node_modules are present, default: "auto". "force" to ignore node_modules, fallback to install any missing',
        suggestions: [
          const FigSuggestion(name: 'auto'),
          const FigSuggestion(name: 'force'),
          const FigSuggestion(name: 'fallback'),
          const FigSuggestion(name: 'disable')
        ])
  ]),
  FigOption(
      name: '--prefer-offline',
      description:
          'Skip staleness checks for packages in the Bun runtime and resolve from disk'),
  FigOption(
      name: '--prefer-latest',
      description:
          'Use the latest matching versions of packages in the Bun runtime, always checking npm'),
  FigOption(
      name: '--silent', description: 'Don\'t repeat the command for bun run')
];

final List<FigOption> buildOnlyParams = [
  FigOption(
      name: 'compile',
      description:
          'Generate a standalone Bun executable containing your bundled code',
      priority: 50),
  FigOption(
      name: '--format',
      description:
          'Specifies the module format to build to. Only esm is supported currently',
      args: [
        FigArg(name: 'args', suggestions: [const FigSuggestion(name: 'esm')])
      ]),
  FigOption(
      name: '--outdir',
      description: 'Default to "dist" if multiple files',
      priority: 50,
      args: [FigArg(name: 'path')]),
  FigOption(
      name: '--outfile',
      description: 'Write to a file',
      priority: 50,
      args: [FigArg(name: 'path')]),
  FigOption(
      name: '--root',
      description: 'Root directory used for multiple entry points',
      args: [FigArg(name: 'path')]),
  FigOption(
      name: '--splitting', description: 'Enable code splitting', priority: 50),
  FigOption(
      name: '--public-path',
      description:
          'A prefix to be appended to any import paths in bundled code',
      args: [FigArg(name: 'args')]),
  FigOption(
      name: '--sourcemap',
      description:
          'Build with sourcemaps - \'inline\', \'external\', or \'none\'',
      priority: 50,
      args: [
        FigArg(name: 'args', isOptional: true, suggestions: [
          const FigSuggestion(name: 'inline'),
          const FigSuggestion(name: 'external'),
          const FigSuggestion(name: 'none')
        ])
      ]),
  FigOption(
      name: '--entry-naming',
      description:
          'Customize entry point filenames. Defaults to "[dir]/[name].[ext]"',
      args: [FigArg(name: 'args')]),
  FigOption(
      name: '--chunk-naming',
      description:
          'Customize chunk filenames. Defaults to "[name]-[hash].[ext]"',
      args: [FigArg(name: 'args')]),
  FigOption(
      name: '--asset-naming',
      description:
          'Customize asset filenames. Defaults to "[name]-[hash].[ext]"',
      args: [FigArg(name: 'args')]),
  FigOption(
      name: '--server-components',
      description: 'Enable React Server Components (experimental)'),
  FigOption(
      name: '--no-bundle', description: 'Transpile file only, do not bundle')
];

final List<FigOption> testOnlyParams = [
  FigOption(
      name: '--timeout',
      description: 'Set the per-test timeout in milliseconds, default is 5000',
      args: [FigArg(name: 'number')]),
  FigOption(name: '--update-snapshots', description: 'Update snapshot files'),
  FigOption(
      name: '--rerun-each',
      description:
          'Re-run each test file <NUMBER> times, helps catch certain bugs',
      args: [FigArg(name: 'number')]),
  FigOption(
      name: '--only',
      description: 'Only run tests that are marked with "test.only()"'),
  FigOption(
      name: '--todo',
      description: 'Include tests that are marked with "test.todo()"'),
  FigOption(name: '--coverage', description: 'Generate a coverage profile'),
  FigOption(
      name: '--bail',
      description:
          'Exit the test suite after <NUMBER> failures. If you do not specify a number, it defaults to 1',
      args: [FigArg(name: 'number', isOptional: true)]),
  FigOption(
      name: ['-t', '--test-name-pattern'],
      description: 'Run only tests with a name that matches the given regex',
      args: [FigArg(name: 'pattern')])
];

final List<FigOption> debugParams = [
  FigOption(
      name: '--dump-environment-variables',
      description:
          'Dump environment variables from .env and process as JSON and quit. Useful for debugging',
      priority: 49),
  FigOption(
      name: '--dump-limits',
      description: 'Dump system limits. Useful for debugging',
      priority: 49)
];

final List<FigOption> dependencyOptions = [
  FigOption(
      name: ['-c', '--config'],
      args: [FigArg(name: 'path', template: 'filepaths', isOptional: true)],
      description: 'Load config (bunfig.toml)'),
  FigOption(
      name: ['-y', '--yarn'], description: 'Write a yarn.lock file (yarn v1)'),
  FigOption(
      name: ['-p', '--production'],
      description: 'Don\'t install devDependencies'),
  FigOption(name: '--no-save', description: 'Don\'t save a lockfile'),
  FigOption(name: '--save', description: 'Save to package.json'),
  FigOption(name: '--dry-run', description: 'Don\'t install anything'),
  FigOption(
      name: '--frozen-lockfile', description: 'Disallow changes to lockfile'),
  FigOption(
      name: ['-f', '--force'],
      description:
          'Always request the latest versions from the registry & reinstall all dependencies'),
  FigOption(
      name: '--cache-dir',
      args: [FigArg(name: 'path', template: 'folder')],
      description: 'Store & load cached data from a specific directory path'),
  FigOption(name: '--no-cache', description: 'Ignore manifest cache entirely'),
  FigOption(name: '--silent', description: 'Don\'t log anything'),
  FigOption(name: '--verbose', description: 'Excessively verbose logging'),
  FigOption(name: ['-g', '--global'], description: 'Install globally'),
  FigOption(
      name: '--cwd',
      args: [FigArg(name: 'path', template: 'folder')],
      description: 'Set a specific cwd'),
  FigOption(
      name: '--backend',
      args: [
        FigArg(name: 'syscall', suggestions: [
          const FigSuggestion(name: 'clonefile'),
          const FigSuggestion(name: 'copyfile')
        ])
      ],
      description:
          'Platform-specific optimizations for installing dependencies. For macOS, \'clonefile\' (default), \'copyfile\''),
  FigOption(
      name: '--link-native-bins',
      args: [FigArg(name: 'str', isVariadic: true)],
      description:
          'Link \'bin\' from a matching platform-specific \'optionalDependencies\' instead. Default: esbuild, turbo'),
  FigOption(name: '--help', description: 'Print the help menu'),
  FigOption(name: '--no-progress', description: 'Disable the progress bar'),
  FigOption(name: '--no-summary', description: 'Don\'t print a summary'),
  FigOption(
      name: '--no-verify',
      description: 'Skip verifying integrity of newly downloaded packages'),
  FigOption(
      name: '--ignore-scripts',
      description:
          'Skip lifecycle scripts in the project\'s package.json (dependency scripts are never run)'),
  FigOption(
      name: ['-d', '--dev', '-D', '--development'],
      description: 'Install as devDependency',
      priority: 75,
      isRepeatable: false),
  FigOption(name: '--exact', description: 'Install exact version'),
  FigOption(name: '--optional', description: 'Install as optionalDependency')
];

/// Completion spec for `bun` CLI
final FigSpec bunSpec = FigSpec(
    name: 'bun',
    icon: 'asset://bun.png',
    description:
        'A fast bundler, transpiler, JavaScript Runtime and package manager for web software',
    args: [
      FigArg(name: 'file', generators: [
        const FigGenerator(template: 'filepaths'),
        npmScriptsGenerator
      ]),
      FigArg(name: 'args')
    ],
    options: [
      ...sharedPublicParams.where((p) {
        final name = p.name;
        if (name is String) {
          return name.contains('--inspect') ||
              name.contains('--hot') ||
              name.contains('--watch');
        }
        if (name is List) {
          return name.any((n) =>
              n.contains('--inspect') ||
              n.contains('--hot') ||
              n.contains('--watch'));
        }
        return false;
      }),
    ],
    subcommands: [
      FigSubcommand(
          name: ['c', 'create'],
          icon: 'asset://bun.png',
          description: 'Start a new project from a template',
          args: [
            FigArg(
                name: 'template',
                description:
                    'Package from @bun-examples, GitHub repo, or local file',
                suggestions: [
                  const FigSuggestion(name: 'react'),
                  const FigSuggestion(name: 'next'),
                  const FigSuggestion(name: 'hono'),
                  const FigSuggestion(name: 'discord-interactions'),
                  const FigSuggestion(name: 'blank'),
                  const FigSuggestion(name: 'bun-bakery'),
                  // Note: npxSuggestions are not easily portable without npx.dart logic.
                  // Placeholder for now.
                  const FigSuggestion(name: 'create-react-app', priority: 76),
                  const FigSuggestion(name: 'create-next-app', priority: 76),
                ],
                generators: [
                  const FigGenerator(template: 'folders'),
                  const FigGenerator(
                      script: ['command', 'ls', '-1', '.bun-create'],
                      splitOn: '\n'),
                  // createCLIsGenerator logic would go here
                ]),
            FigArg(name: 'name', template: 'folders')
          ],
          options: [
            FigOption(name: '--force', description: 'Overwrite existing files'),
            FigOption(
                name: '--no-install',
                description: 'Don\'t install node_modules'),
            FigOption(
                name: '--no-git',
                description: 'Don\'t create a git repository'),
            FigOption(name: '--verbose', description: 'Too many logs'),
            FigOption(
                name: '--no-package-json',
                description: 'Disable package.json transforms'),
            FigOption(
                name: '--open',
                description: 'On finish, start bun and open in browser')
          ]),
      FigSubcommand(
          name: 'run',
          icon: 'asset://bun.png',
          description: 'Run a package.json script or executable',
          args: [
            FigArg(name: 'script', filterStrategy: 'fuzzy', generators: [
              const FigGenerator(template: 'filepaths'),
              npmScriptsGenerator
            ])
          ]),
      FigSubcommand(
          name: ['i', 'install'],
          icon: '📦',
          description: 'Install dependencies for a package.json',
          options: dependencyOptions),
      FigSubcommand(
          name: ['a', 'add'],
          icon: '📦',
          description: 'Add a dependency to package.json',
          options: dependencyOptions,
          args: [
            FigArg(
                name: 'package',
                isVariadic: true,
                generators: [npmSearchGenerator],
                filterStrategy: 'fuzzy')
          ]),
      FigSubcommand(
          name: ['rm', 'remove'],
          icon: '📦',
          description: 'Remove a dependency from package.json',
          options: dependencyOptions,
          args: [
            FigArg(
                name: 'package',
                filterStrategy: 'fuzzy',
                generators: [dependenciesGenerator],
                isVariadic: true)
          ]),
      FigSubcommand(
          name: ['build', 'bun'],
          icon: 'asset://bun.png',
          description: 'Bundle files using Bun\'s native bundler',
          args: [
            FigArg(
                name: 'entrypoints',
                isVariadic: true,
                generators: [const FigGenerator(template: 'filepaths')],
                description:
                    'Entrypoint to bundle. If multiple entrypoints provided, must specify --outdir')
          ],
          options: [...buildOnlyParams, ...sharedPublicParams]),
      FigSubcommand(
          name: 'update',
          icon: 'asset://bun.png',
          description: 'Update outdated dependencies',
          options: dependencyOptions,
          args: [
            FigArg(
                name: 'package',
                filterStrategy: 'fuzzy',
                isOptional: true,
                generators: [dependenciesGenerator],
                isVariadic: true)
          ]),
      FigSubcommand(
          name: 'link',
          icon: '📦',
          description: 'Link a package',
          args: [
            FigArg(name: 'package', generators: [
              dependenciesGenerator, // Approximate for local link
            ])
          ]),
      FigSubcommand(
          name: 'unlink',
          icon: '📦',
          description: 'Unlink a package',
          args: [
            FigArg(name: 'package', generators: [dependenciesGenerator])
          ]),
      FigSubcommand(
          name: 'pm',
          icon: 'asset://bun.png',
          description: 'Package manager utilities',
          subcommands: [
            FigSubcommand(
                name: 'bin',
                description: 'Print the path to the bin directory',
                options: [
                  FigOption(
                      name: '-g', description: 'Print the global bin directory')
                ]),
            FigSubcommand(
                name: 'ls',
                description: 'List installed dependencies',
                options: [
                  FigOption(name: '--all', description: 'List all dependencies')
                ]),
            FigSubcommand(
                name: 'cache',
                description: 'Manage the cache',
                subcommands: [
                  FigSubcommand(
                    name: 'rm',
                    description: 'Clear the cache',
                  )
                ])
          ]),
      FigSubcommand(name: 'test', description: 'Run tests', options: [
        ...testOnlyParams,
        ...notBunDevFlags
      ], args: [
        FigArg(
            name: 'files',
            isVariadic: true,
            generators: [const FigGenerator(template: 'filepaths')])
      ]),
      FigSubcommand(
          name: 'x',
          icon: 'asset://bun.png',
          description: 'Execute a package binary (dlx)',
          args: [
            FigArg(name: 'package', generators: [npmSearchGenerator]),
            FigArg(name: 'args', isVariadic: true)
          ]),
      FigSubcommand(
          name: 'repl',
          icon: 'asset://bun.png',
          description: 'Start the Bun REPL'),
      FigSubcommand(
          name: 'init',
          icon: 'asset://bun.png',
          description: 'Start a new empty Bun project'),
      FigSubcommand(
          name: 'upgrade',
          icon: 'asset://bun.png',
          description: 'Upgrade Bun',
          options: [
            FigOption(
                name: '--canary', description: 'Upgrade to the canary build')
          ])
    ]);
