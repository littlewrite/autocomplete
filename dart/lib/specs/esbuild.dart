// AI-generated from TypeScript source: src/esbuild.ts
import 'package:autocomplete/src/spec.dart';

const esbuildIcon = 'asset://icons/esbuild.png';

const Set<String> ignoreExtensions = {'', 'sample', 'env'};

FigGenerator extensionsKeyValueGenerator({List<String>? values}) {
  return FigGenerator(
    script: [
      'bash',
      '-c',
      "find . -depth 3 -type f -name '*.*' -not -path '*/node_modules/*' | sed 's/.*\\.//' | sort -u"
    ],
    postProcess: (String out, [List<String>? tokens]) {
      final lines = out.split('\n');
      final suggestions = <FigSuggestion>[];
      for (final line in lines) {
        final ext = line.trim();
        if (ext.isEmpty || ignoreExtensions.contains(ext)) continue;
        final key = '.$ext';
        if (values != null && values.isNotEmpty) {
          for (final val in values) {
            suggestions
                .add(FigSuggestion(name: '$key=$val', icon: esbuildIcon));
          }
        } else {
          suggestions.add(FigSuggestion(name: '$key=', icon: esbuildIcon));
        }
      }
      return suggestions;
    },
    cache: const FigCache(strategy: 'stale-while-revalidate'),
  );
}

List<FigSuggestion> staticKeyValueSuggestions(
    List<String> keys, List<String> values) {
  final suggestions = <FigSuggestion>[];
  for (final key in keys) {
    for (final val in values) {
      suggestions.add(FigSuggestion(name: '$key=$val', icon: esbuildIcon));
    }
  }
  return suggestions;
}

final FigSpec esbuildSpec = FigSpec(
  name: 'esbuild',
  description: 'An extremely fast JavaScript bundler',
  icon: esbuildIcon,
  parserDirectives: ParserDirectives(optionArgSeparators: ['=', ':']),
  args: [
    FigArg(
      name: 'entry points',
      isVariadic: true,
      template: 'filepaths',
    ),
  ],
  options: [
    // Simple options:
    FigOption(
      name: ['--bundle'],
      description: 'Bundle all dependencies into the output files',
      priority: 51,
    ),
    FigOption(
      name: ['--define'],
      description:
          'Replace variable names with a literal value, eg. --define:DEBUG=true',
      requiresSeparator: ':',
      args: [FigArg(name: 'name=value')],
      priority: 51,
    ),
    FigOption(
      name: ['--external'],
      description: 'Exclude modules from the build',
      requiresSeparator: ':',
      args: [FigArg(name: 'module specifier')],
      priority: 51,
    ),
    FigOption(
      name: ['--format'],
      description: 'The output format',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'format',
          suggestions: [
            FigSuggestion(name: 'iife'),
            FigSuggestion(name: 'cjs'),
            FigSuggestion(name: 'esm')
          ],
        )
      ],
      priority: 51,
    ),
    FigOption(
      name: ['--loader'],
      description: 'For a given file extension, specify a loader',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'loaders',
          generators: [
            extensionsKeyValueGenerator(values: [
              'js',
              'jsx',
              'ts',
              'tsx',
              'css',
              'json',
              'text',
              'base64',
              'file',
              'dataurl',
              'binary',
              'copy'
            ])
          ],
        )
      ],
      priority: 51,
    ),
    FigOption(
      name: ['--minify'],
      description: 'Minify the output (sets all the --minify-* options)',
      priority: 51,
    ),
    FigOption(
      name: ['--outdir'],
      description: 'The output directory for multiple entrypoints',
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'folders')],
      priority: 51,
    ),
    FigOption(
      name: ['--outfile'],
      description: 'The output file for one entrypoint',
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'filepaths')],
      priority: 51,
    ),
    FigOption(
      name: ['--platform'],
      description: 'The platform target',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'name',
          suggestions: [
            FigSuggestion(name: 'browser'),
            FigSuggestion(name: 'node'),
            FigSuggestion(name: 'neutral')
          ],
        )
      ],
      priority: 51,
    ),
    FigOption(
      name: ['--serve'],
      description: 'Start a local HTTP server on this host:port',
      requiresSeparator: '=',
      args: [FigArg(name: '[address:]port', isOptional: true)],
      priority: 51,
    ),
    FigOption(
      name: ['--splitting'],
      description: 'Enable code splitting',
      priority: 51,
    ),
    FigOption(
      name: ['--target'],
      description:
          'Set the environment target. Can be a particular ES version or browser version, eg. chrome101',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'target',
          suggestions: [
            FigSuggestion(name: 'esnext'),
            FigSuggestion(name: 'es2016'),
            FigSuggestion(name: 'es2022'),
            FigSuggestion(name: 'chrome'),
            FigSuggestion(name: 'firefox'),
            FigSuggestion(name: 'ie'),
            FigSuggestion(name: 'node'),
            FigSuggestion(name: 'safari'),
            FigSuggestion(name: 'opera'),
          ],
        )
      ],
      priority: 51,
    ),
    FigOption(
      name: ['--watch'],
      description: 'Rebuild on file system changes',
      priority: 51,
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'forever',
          suggestions: [FigSuggestion(name: 'forever')],
          isOptional: true,
        )
      ],
    ),
    // Advanced options:
    FigOption(
      name: ['--allow-overwrite'],
      description: 'Allow output files to overwrite input files',
    ),
    FigOption(
      name: ['--analyze'],
      description: 'Print a report about the contents of the bundle',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'verbose',
          isOptional: true,
          suggestions: [FigSuggestion(name: 'verbose')],
        )
      ],
    ),
    FigOption(
      name: ['--asset-names'],
      description: "Path template for 'file' loader files",
      requiresSeparator: '=',
      args: [FigArg(name: 'template', defaultValue: '[name]-[hash]')],
    ),
    FigOption(
      name: ['--banner'],
      description: 'Text to be prepended to each output file type',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'ext=text[,ext=text...]',
          generators: [extensionsKeyValueGenerator()],
        )
      ],
    ),
    FigOption(
      name: ['--charset'],
      description: 'Use UTF-8 instead of escaped codepoints in ASCII',
      insertValue: '--charset=utf8',
      displayName: '--charset=utf8',
      requiresSeparator: '=',
      args: [],
    ),
    FigOption(
      name: ['--chunk-names'],
      description: 'Path template to use for code splitting chunks',
      requiresSeparator: '=',
      args: [FigArg(name: 'template', defaultValue: '[name]-[hash]')],
    ),
    FigOption(
      name: ['--color'],
      description: 'Force use of terminal colors',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'enabled',
          suggestions: [
            FigSuggestion(name: 'true'),
            FigSuggestion(name: 'false')
          ],
        )
      ],
    ),
    FigOption(
      name: ['--drop'],
      description: 'Remove certain constructs',
      requiresSeparator: ':',
      args: [
        FigArg(suggestions: [
          FigSuggestion(name: 'console'),
          FigSuggestion(name: 'debugger')
        ])
      ],
    ),
    FigOption(
      name: ['--entry-names'],
      description: 'Path template to use for entry point output paths',
      requiresSeparator: '=',
      args: [FigArg(name: 'template', defaultValue: '[dir]/[name]')],
    ),
    FigOption(
      name: ['--footer'],
      description: 'Text to be appended to each file type',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'ext=text',
          suggestions: [
            FigSuggestion(name: 'css=', icon: esbuildIcon),
            FigSuggestion(name: 'js=', icon: esbuildIcon),
          ],
        )
      ],
    ),
    FigOption(
      name: ['--global-name'],
      description: 'The name of the global if using --format=iife',
      requiresSeparator: '=',
      args: [FigArg(name: 'name')],
    ),
    FigOption(
      name: ['--ignore-annotations'],
      description:
          'Enable this to work with packages that have incorrect tree-shaking annotations',
    ),
    FigOption(
      name: ['--inject'],
      description:
          'Import the file into all input files, automatically replace matching globals',
      requiresSeparator: ':',
      args: [FigArg(name: 'import', template: 'filepaths')],
    ),
    FigOption(
      name: ['--jsx-factory'],
      description: 'What to use for the JSX factory',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'factory',
          suggestions: [
            FigSuggestion(name: 'React.createElement'),
            FigSuggestion(name: 'h'),
            FigSuggestion(name: 'preact.h')
          ],
        )
      ],
    ),
    FigOption(
      name: ['--jsx-fragment'],
      description: 'What to use for the JS Fragment factory',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'fragment',
          suggestions: [
            FigSuggestion(name: 'React.Fragment'),
            FigSuggestion(name: 'Fragment')
          ],
        )
      ],
    ),
    FigOption(
      name: ['--jsx'],
      description: 'Preserve JSX instead of transforming',
      requiresSeparator: '=',
      args: [
        FigArg(
          suggestions: [
            FigSuggestion(
                name: 'preserve',
                description: 'Preserve JSX instead of transforming'),
            FigSuggestion(
                name: 'automatic',
                description: "Use React's new automatic JSX transform"),
          ],
        )
      ],
    ),
    FigOption(
      name: ['--jsx-dev'],
      description: 'Toggles development mode for the automatic runtime',
    ),
    FigOption(
      name: ['--jsx-import-source'],
      description:
          'Overrides the root import for runtime functions (default: react)',
      requiresSeparator: '=',
      args: [FigArg(name: 'source', defaultValue: 'react')],
    ),
    FigOption(
      name: ['--keep-names'],
      description: "Preserve 'name' on functions and classes",
    ),
    FigOption(
      name: ['--legal-comments'],
      description: 'Where to place legal comments',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'location',
          suggestions: [
            FigSuggestion(name: 'none'),
            FigSuggestion(name: 'inline'),
            FigSuggestion(name: 'eof'),
            FigSuggestion(name: 'linked'),
            FigSuggestion(name: 'external'),
          ],
        )
      ],
    ),
    FigOption(
      name: ['--log-level'],
      description: 'Set the log level',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'level',
          suggestions: [
            FigSuggestion(name: 'verbose'),
            FigSuggestion(name: 'debug'),
            FigSuggestion(name: 'info'),
            FigSuggestion(name: 'warning'),
            FigSuggestion(name: 'error'),
            FigSuggestion(name: 'silent'),
          ],
          defaultValue: 'info',
        )
      ],
    ),
    FigOption(
      name: ['--log-limit'],
      description: 'Maximum message count, 0 to disable',
      requiresSeparator: '=',
      args: [FigArg(name: 'count', defaultValue: '6')],
    ),
    FigOption(
      name: ['--log-override'],
      description: 'For a particular identifier, set the log level',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'identifier:level',
          suggestions: staticKeyValueSuggestions(
            [
              // JS
              "assign-to-constant",
              "assign-to-import",
              "call-import-namespace",
              "commonjs-variable-in-esm",
              "delete-super-property",
              "direct-eval",
              "duplicate-case",
              "duplicate-object-key",
              "empty-import-meta",
              "equals-nan",
              "equals-negative-zero",
              "equals-new-object",
              "html-comment-in-js",
              "impossible-typeof",
              "indirect-require",
              "private-name-will-throw",
              "semicolon-after-return",
              "suspicious-boolean-not",
              "this-is-undefined-in-esm",
              "unsupported-dynamic-import",
              "unsupported-jsx-comment",
              "unsupported-regexp",
              "unsupported-require-call",

              // CSS
              "css-syntax-error",
              "invalid-@charset",
              "invalid-@import",
              "invalid-@nest",
              "invalid-@layer",
              "invalid-calc",
              "js-comment-in-css",
              "unsupported-@charset",
              "unsupported-@namespace",
              "unsupported-css-property",

              // Bundler
              "ambiguous-reexport",
              "different-path-case",
              "ignored-bare-import",
              "ignored-dynamic-import",
              "import-is-undefined",
              "require-resolve-not-external",

              // Source maps
              "invalid-source-mappings",
              "sections-in-source-map",
              "missing-source-map",
              "unsupported-source-map-comment",
            ],
            ["verbose", "debug", "info", "warning", "error", "silent"],
          ),
        )
      ],
    ),
    FigOption(
      name: ['--main-fields'],
      description: 'Override the main file order in package.json',
      requiresSeparator: '=',
      args: [FigArg(name: 'field order', defaultValue: 'browser,module,main')],
    ),
    FigOption(
      name: ['--mangle-cache'],
      description: "Save 'mangle props' decisions to a JSON file",
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
          suggestCurrentToken: true,
        )
      ],
    ),
    FigOption(
      name: ['--mangle-props'],
      description: 'Rename all properties matching a regular expression',
      requiresSeparator: '=',
      args: [FigArg(name: 'regex')],
    ),
    FigOption(
      name: ['--mangle-quoted'],
      description: 'Enable mangling (renaming) quoted properties',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'status',
          suggestions: [
            FigSuggestion(name: 'true'),
            FigSuggestion(name: 'false')
          ],
        )
      ],
    ),
    FigOption(
      name: ['--metafile'],
      description: 'Write metadata about the build to a JSON file',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'path',
          template: 'filepaths',
          suggestCurrentToken: true,
        )
      ],
    ),
    FigOption(
      name: ['--minify-whitespace'],
      description: 'Remove unnecessary whitespace in output files',
    ),
    FigOption(
      name: ['--minify-identifiers'],
      description: 'Shorten identifiers in output files',
    ),
    FigOption(
      name: ['--minify-syntax'],
      description: 'Use equivalent but shorter syntax in output files',
    ),
    FigOption(
      name: ['--out-extension'],
      description: 'Use a custom output extension for each extension',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'ext=new',
          generators: [extensionsKeyValueGenerator()],
        )
      ],
    ),
    FigOption(
      name: ['--outbase'],
      description:
          'Base path used to determine entrypoint output paths, for multiple entrypoints',
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'folders')],
    ),
    FigOption(
      name: ['--preserve-symlinks'],
      description: 'Disable symlink resolution',
    ),
    FigOption(
      name: ['--public-path'],
      description: "Set the base URL for the 'file' loader",
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'folders')],
    ),
    FigOption(
      name: ['--pure'],
      description: 'Mark the name as a pure function for tree shaking',
      requiresSeparator: ':',
      args: [FigArg(name: 'name')],
    ),
    FigOption(
      name: ['--reserve-props'],
      description: 'Do not mangle these properties',
      requiresSeparator: '=',
      args: [FigArg(name: 'properties')],
    ),
    FigOption(
      name: ['--resolve-extensions'],
      description: 'Comma-separated list of implicit extensions',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'extensions',
          generators: [extensionsKeyValueGenerator()],
        )
      ],
    ),
    FigOption(
      name: ['--servedir'],
      description: 'What to serve in addition to the generated output files',
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'folders')],
    ),
    FigOption(
      name: ['--source-root'],
      description: 'Set the sourceRoot field in generated source maps',
      requiresSeparator: '=',
      args: [FigArg(name: 'URL')],
    ),
    FigOption(
      name: ['--sourcefile'],
      description:
          "Set the source file for the source map if there's no file name to use",
      requiresSeparator: '=',
      args: [FigArg(name: 'name')],
    ),
    FigOption(
      name: ['--sourcemap'],
      description: 'Generate source maps?',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'options',
          isOptional: true,
          suggestions: [
            FigSuggestion(
                name: 'external',
                description:
                    'Generate a separate .map.js file with no comment'),
            FigSuggestion(
                name: 'inline', description: 'Append source maps to JS files'),
          ],
        )
      ],
      priority: 51,
    ),
    FigOption(
      name: ['--sources-content'],
      description: 'Omit the sourcesContent field in generated source maps',
      insertValue: '--sources-content=false',
      displayName: '--sources-content=false',
      requiresSeparator: '=',
      args: [
        FigArg(suggestions: [FigSuggestion(name: 'false')])
      ],
    ),
    FigOption(
      name: ['--supported'],
      description: 'Consider a given syntax to be supported',
      requiresSeparator: ':',
      args: [
        FigArg(
          name: 'syntax=status',
          suggestions: staticKeyValueSuggestions(
            [
              "arbitrary-module-namespace-names",
              "array-spread",
              "arrow",
              "async-await",
              "async-generator",
              "bigint",
              "class",
              "class-field",
              "class-private-accessor",
              "class-private-brand-check",
              "class-private-field",
              "class-private-method",
              "class-private-static-accessor",
              "class-private-static-field",
              "class-private-static-method",
              "class-static-blocks",
              "class-static-field",
              "const-and-let",
              "default-argument",
              "destructuring",
              "dynamic-import",
              "exponent-operator",
              "export-star-as",
              "for-await",
              "for-of",
              "generator",
              "hashbang",
              "import-assertions",
              "import-meta",
              "logical-assignment",
              "nested-rest-binding",
              "new-target",
              "node-colon-prefix-import",
              "node-colon-prefix-require",
              "nullish-coalescing",
              "object-accessors",
              "object-extensions",
              "object-rest-spread",
              "optional-catch-binding",
              "optional-chain",
              "regexp-dot-all-flag",
              "regexp-lookbehind-assertions",
              "regexp-match-indices",
              "regexp-named-capture-groups",
              "regexp-sticky-and-unicode-flags",
              "regexp-unicode-property-escapes",
              "rest-argument",
              "template-literal",
              "top-level-await",
              "typeof-exotic-object-is-object",
              "unicode-escapes",
              "hex-rgba",
              "rebecca-purple",
              "modern-rgb-hsl",
              "inset-property",
              "nesting",
            ],
            ["true", "false"],
          ),
        )
      ],
    ),
    FigOption(
      name: ['--tree-shaking'],
      description: 'Force tree shaking on or off',
      requiresSeparator: '=',
      args: [
        FigArg(
          name: 'status',
          suggestions: [
            FigSuggestion(name: 'true'),
            FigSuggestion(name: 'false')
          ],
        )
      ],
    ),
    FigOption(
      name: ['--tsconfig'],
      description: 'Use this TypeScript config instead of the default',
      requiresSeparator: '=',
      args: [FigArg(name: 'path', template: 'filepaths')],
    ),
    FigOption(
      name: ['--version'],
      description: 'Print the current version and exit',
    ),
  ],
);
