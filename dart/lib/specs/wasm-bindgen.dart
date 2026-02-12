// Auto-generated from TypeScript source: wasm-bindgen.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wasm-bindgen` CLI
final FigSpec wasmBindgenSpec = FigSpec(
  name: 'wasm-bindgen',
  description: 'Generate bindings between WebAssembly and JavaScript',
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for wasm-bindgen'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Show version for wasm-bindgen'
    ),
    Option(
      name: '--out-dir',
      description: 'Output directory',
      args: [
        Arg(
        name: 'directory',
        description: 'Target directory to emit JS bindings, TS definitions, .wasm binaries, etc',
        template: ['folders']
      )
      ]
    ),
    Option(
      name: '--out-name',
      description: 'Set a custom output filename (Without extension. Defaults to crate name)',
      args: [
        Arg(
        name: 'filename',
        description: 'Output filename',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--target',
      description: 'What type of output to generate',
      args: [
        Arg(
        name: 'target',
        suggestions: [
          FigSuggestion(
            name: 'web',
            description: 'Directly loadable in a web browser'
          ),
          FigSuggestion(
            name: 'bundler',
            description: 'Suitable for loading in bundlers like Webpack'
          ),
          FigSuggestion(
            name: 'nodejs',
            description: 'Loadable via require as a Node.js module'
          ),
          FigSuggestion(
            name: 'no-modules',
            description: 'Like web, but older and doesn\'t use ES modules'
          ),
          FigSuggestion(
            name: 'deno',
            description: 'Loadable using imports from Deno modules'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--no-modules-global',
      description: 'Name of global to assign generated bindings to',
      args: [
        Arg(
        name: 'name'
      )
      ]
    ),
    Option(
      name: '--browser',
      description: 'Hint that JS should only be compatible with a browser'
    ),
    Option(
      name: '--typescript',
      description: 'Output a TypeScript definition file (on by default)'
    ),
    Option(
      name: '--no-typescript',
      description: 'Don\'t emit a *.d.ts file'
    ),
    Option(
      name: '--omit-imports',
      description: 'Don\'t emit imports in generated JavaScript'
    ),
    Option(
      name: '--debug',
      description: 'Include otherwise-extraneous debug checks in output'
    ),
    Option(
      name: '--no-demangle',
      description: 'Don\'t demangle Rust symbol names'
    ),
    Option(
      name: '--keep-debug',
      description: 'Keep debug sections in wasm files'
    ),
    Option(
      name: '--remove-name-section',
      description: 'Remove the debugging `name` section of the file'
    ),
    Option(
      name: '--remove-producers-section',
      description: 'Remove the telemetry `producers` section'
    ),
    Option(
      name: '--omit-default-module-path',
      description: 'Don\'t add WebAssembly fallback imports in generated JavaScript'
    ),
    Option(
      name: '--encode-into',
      description: 'Whether or not to use TextEncoder#encodeInto()',
      args: [
        Arg(
        name: 'option',
        suggestions: [
          FigSuggestion(
            name: 'test'
          ),
          FigSuggestion(
            name: 'always',
            description: 'Always use TextEncoder#encodeInto()'
          ),
          FigSuggestion(
            name: 'never',
            description: 'Never use TextEncoder#encodeInto()'
          )
        ]
      )
      ]
    ),
    Option(
      name: '--nodejs',
      description: 'Deprecated, use `--target nodejs`'
    ),
    Option(
      name: '--web',
      description: 'Deprecated, use `--target web`'
    ),
    Option(
      name: '--no-modules',
      description: 'Deprecated, use `--target no-modules`'
    ),
    Option(
      name: '--weak-refs',
      description: 'Enable usage of the JS weak references proposal'
    ),
    Option(
      name: '--reference-types',
      description: 'Enable usage of WebAssembly reference types'
    )
  ],
  args: [
    Arg(
    name: 'input',
    description: 'File name to output the compiled binary bindings'
  )
  ]
);
