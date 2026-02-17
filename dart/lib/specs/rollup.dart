// Auto-generated from TypeScript source: rollup.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `rollup` CLI
final FigSpec rollupSpec = FigSpec(
  name: 'rollup',
  description: 'Next-generation ES module bundler',
  options: [

    Option(
      name: ['-c', '--config'],
      description: 'Use this config file (if argument is used but value is unspecified, defaults to rollup.config.js)',
      args: [
        Arg(
        name: 'filename'
      )
      ]
    ),
    Option(
      name: ['-d', '--dir'],
      args: [
        Arg(
        name: 'dirname',
        description: 'Directory for chunks (if absent, prints to stdout)',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['-e', '--external'],
      args: [
        Arg(
        name: 'ids',
        description: 'Comma-separate list of module IDs to exclude'
      )
      ]
    ),
    Option(
      name: ['-f', '--format'],
      args: [
        Arg(
        name: 'format',
        description: 'Type of output (amd, cjs, es, iife, umd, system)',
        suggestions: [

          FigSuggestion(name: 'amd'),
          FigSuggestion(name: 'cjs'),
          FigSuggestion(name: 'es'),
          FigSuggestion(name: 'iife'),
          FigSuggestion(name: 'umd'),
          FigSuggestion(name: 'system')
        ]
      )
      ]
    ),
    Option(
      name: ['-g', '--globals'],
      args: [
        Arg(
        name: 'pairs',
        description: 'Comma-separate list of `moduleID:Global` pairs'
      )
      ]
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help message'
    ),
    Option(
      name: ['-i', '--input'],
      args: [
        Arg(
        name: 'filename',
        description: 'Input (alternative to <entry file>)',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['-m', '--sourcemap'],
      description: 'Generate sourcemap (`-m inline` for inline map)'
    ),
    Option(
      name: ['-n', '--name'],
      args: [
        Arg(
        name: 'name',
        description: 'Name for UMD export'
      )
      ]
    ),
    Option(
      name: ['-o', '--file'],
      args: [
        Arg(
        name: 'output',
        description: 'Single output file (if absent, prints to stdout)'
      )
      ]
    ),
    Option(
      name: ['-p', '--plugin'],
      args: [
        Arg(
        name: 'plugin',
        description: 'Use the plugin specified (may be repeated)'
      )
      ]
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show version number'
    ),
    Option(
      name: ['-w', '--watch'],
      description: 'Watch files in bundle and rebuild on changes'
    ),
    Option(
      name: '--amd.id',
      args: [
        Arg(
        name: 'id',
        description: 'ID for AMD module (default is anonymous)'
      )
      ]
    ),
    Option(
      name: '--amd.autoId',
      description: 'Generate the AMD ID based off the chunk name'
    ),
    Option(
      name: '--amd.basePath',
      args: [
        Arg(
        name: 'prefix',
        description: 'Path to prepend to auto generated AMD ID'
      )
      ]
    ),
    Option(
      name: '--amd.define',
      args: [
        Arg(
        name: 'name',
        description: 'Function to use in place of \'define\''
      )
      ]
    ),
    Option(
      name: '--assetFileNames',
      args: [
        Arg(
        name: 'pattern',
        description: 'Name pattern for emitted assets'
      )
      ]
    ),
    Option(
      name: '--banner',
      args: [
        Arg(
        name: 'text',
        description: 'Code to insert at top of bundle (outside wrapper)'
      )
      ]
    ),
    Option(
      name: '--chunkFileNames',
      args: [
        Arg(
        name: 'pattern',
        description: 'Name pattern for emitted secondary chunks'
      )
      ]
    ),
    Option(
      name: '--compact',
      description: 'Minify wrapper code'
    ),
    Option(
      name: '--context',
      args: [
        Arg(
        name: 'variable',
        description: 'Specify top-level \'this\' value'
      )
      ]
    ),
    Option(
      name: '--entryFileNames',
      args: [
        Arg(
        name: 'pattern',
        description: 'Name pattern for emitted entry chunks'
      )
      ]
    ),
    Option(
      name: '--environment',
      args: [
        Arg(
        name: 'values',
        description: 'Settings passed to config file'
      )
      ]
    ),
    Option(
      name: '--no-esModule',
      description: 'Do not add __esmodule property'
    ),
    Option(
      name: '--exports',
      args: [
        Arg(
        name: 'mode',
        description: 'Specify export mode (auto, default, named, none)'
      )
      ]
    ),
    Option(
      name: '--extend',
      description: 'Extend global variable defined by --name'
    ),
    Option(
      name: '--no-externalLiveBindings',
      description: 'Do not generate code to support live bindings'
    ),
    Option(
      name: '--failAfterWarnings',
      description: 'Exit with an error if the build produced warnings'
    ),
    Option(
      name: '--footer',
      args: [
        Arg(
        name: 'text',
        description: 'Code to insert at end of bundle (outside wrapper)'
      )
      ]
    ),
    Option(
      name: '--no-freeze',
      description: 'Do not freeze namespace objects'
    ),
    Option(
      name: '--no-hoistTransistiveImports',
      description: 'Do not hoist transistive imports into entry chunks'
    ),
    Option(
      name: '--no-indent',
      description: 'Don\'t indent result'
    ),
    Option(
      name: '--no-interop',
      description: 'Do not include interop block'
    ),
    Option(
      name: '--inlineDynamicImports',
      description: 'Create a single bundle when using dynamic imports'
    ),
    Option(
      name: '--intro',
      args: [
        Arg(
        name: 'text',
        description: 'Code to insert at top of bundle (inside wrapper)'
      )
      ]
    ),
    Option(
      name: '--minifyInternalImports',
      description: 'Force or disable minification of internal imports'
    ),
    Option(
      name: '--namespaceToStringTag',
      description: 'Create proper \'.toString\' methods for namespaces'
    ),
    Option(
      name: '--noConflict',
      description: 'Generate a noConflict method for UMD globals'
    ),
    Option(
      name: '--outro',
      args: [
        Arg(
        name: 'text',
        description: 'Code to insert at end of bundle (inside wrapper)'
      )
      ]
    ),
    Option(
      name: '--preferConst',
      description: 'Use \'const\' instead of \'var\' for exports'
    ),
    Option(
      name: '--no-preserveEntrySignatures',
      description: 'Avoid facade chunks for entry points'
    ),
    Option(
      name: '--preserveModules',
      description: 'Preserve module structure'
    ),
    Option(
      name: '--preserveModulesRoot',
      description: 'Put preserved modules under this path at root level'
    ),
    Option(
      name: '--preserveSymlinks',
      description: 'Do not follow symlinks when resolving files'
    ),
    Option(
      name: '--no-sanitizeFileName',
      description: 'Do not replace invalid characters in file names'
    ),
    Option(
      name: '--shimMissingExports',
      description: 'Create shim variables for missing exports'
    ),
    Option(
      name: '--silent',
      description: 'Don\'t print warnings'
    ),
    Option(
      name: '--sourcemapExcludeSources',
      description: 'Do not include source code in source maps'
    ),
    Option(
      name: '--sourcemapFile',
      description: 'Specify bundle position for source maps',
      args: [
        Arg(
        name: 'file'
      )
      ]
    ),
    Option(
      name: '--stdin=ext',
      description: 'Specify file extension used for stdin input'
    ),
    Option(
      name: '--no-stdin',
      description: 'Do not read "-" from stdin'
    ),
    Option(
      name: '--no-strict',
      description: 'Don\'t emit \'"use strict"; in the generated modules'
    ),
    Option(
      name: '--strictDeprecations',
      description: 'Throw errors for deprecated features'
    ),
    Option(
      name: '--systemNullSetters',
      description: 'Replace empty SystemJS setters with \'null\''
    ),
    Option(
      name: '--no-treeshake',
      description: 'Disable tree-shaking optimizations'
    ),
    Option(
      name: '--no-treeshake.annotations',
      description: 'Ignore pure call annotations'
    ),
    Option(
      name: '--no-treeshake.moduleSideEffects',
      description: 'Assume modules have no side effects'
    ),
    Option(
      name: '--no-treeshake.propertyReadSideEffects',
      description: 'Ignore property access side-effects'
    ),
    Option(
      name: '--no-treeshake.tryCatchDeoptimization',
      description: 'Do not turn off try-catch-tree-shaking'
    ),
    Option(
      name: '--no-treeshake.unknownGlobalSideEffects',
      description: 'Assume unknown globals do not throw'
    ),
    Option(
      name: '--waitForBuildInput',
      description: 'Wait for bundle input files'
    ),
    Option(
      name: '--watch.buildDelay',
      description: 'Throttle watch rebuilds',
      args: [
        Arg(
        name: 'number'
      )
      ]
    ),
    Option(
      name: '--no-watch.clearScreen',
      description: 'Do not clear the screen when rebuilding'
    ),
    Option(
      name: '--watch.skipWrite',
      description: 'Do not write files to disk when watching'
    ),
    Option(
      name: '--watch.exclude',
      description: 'Exclude files from being watched',
      args: [
        Arg(
        name: 'files'
      )
      ]
    ),
    Option(
      name: '--watch.include',
      description: 'Limit watching to specified files',
      args: [
        Arg(
        name: 'files'
      )
      ]
    ),
    Option(
      name: '--validate',
      description: 'Validate output'
    )
  ]
);
