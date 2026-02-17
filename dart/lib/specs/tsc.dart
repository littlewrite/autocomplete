// Auto-generated from TypeScript source: tsc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `tsc` CLI
final FigSpec tscSpec = FigSpec(
  name: 'tsc',
  description: 'CLI tool for TypeScript compiler',
  options: [

    Option(
      name: '--all',
      description: 'Show all compiler options'
    ),
    Option(
      name: '--generateTrace',
      description: 'Generates an event trace and a list of types'
    ),
    Option(
      name: '--help',
      description: 'Gives local information for help on the CLI'
    ),
    Option(
      name: '--init',
      description: 'Initializes a TypeScript project and creates a tsconfig.json file'
    ),
    Option(
      name: '--listFilesOnly',
      description: 'Print names of files that are part of the compilation and then stop processing'
    ),
    Option(
      name: '--locale',
      description: 'Set the language of the messaging from TypeScript. This does not affect emit'
    ),
    Option(
      name: '--project',
      description: 'Compile the project given the path to its configuration file, or to a folder with a tsconfig.json',
      args: [
        Arg(
        name: 'path',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: '--showConfig',
      description: 'Print the final configuration instead of building'
    ),
    Option(
      name: '--version',
      description: 'Print the compiler\'s version'
    ),
    Option(
      name: '--build',
      description: 'Build one or more projects and their dependencies, if out of date'
    ),
    Option(
      name: '--clean',
      description: 'Delete the outputs of all projects'
    ),
    Option(
      name: '--dry',
      description: 'Show what would be built (or deleted, if specified with \'--clean\')'
    ),
    Option(
      name: '--force',
      description: 'Build all projects, including those that appear to be up to date'
    ),
    Option(
      name: '--verbose',
      description: 'Enable verbose logging'
    ),
    Option(
      name: '--excludeDirectories',
      description: 'Remove a list of directories from the watch process',
      args: [
        Arg(
        name: 'dir',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--excludeFiles',
      description: 'Remove a list of files from the watch mode\'s processing',
      args: [
        Arg(
        name: 'files',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--fallbackPolling',
      description: 'Specify what approach the watcher should use if the system runs out of native file watchers',
      args: [
        Arg(
        name: 'approach',
        suggestions: [

          FigSuggestion(name: 'fixedPollingInterval'),
          FigSuggestion(name: 'priorityPollingInterval'),
          FigSuggestion(name: 'dynamicPriorityPolling')
        ]
      )
      ]
    ),
    Option(
      name: '--synchronousWatchDirectory',
      description: 'Synchronously call callbacks and update the state of directory watchers on platforms that don`t support recursive watching natively'
    ),
    Option(
      name: '--watch',
      description: 'Watch input files'
    ),
    Option(
      name: '--watchDirectory',
      description: 'Specify how directories are watched on systems that lack recursive file-watching functionality',
      args: [
        Arg(
        name: 'approach',
        suggestions: [

          FigSuggestion(name: 'fixedPollingInterval'),
          FigSuggestion(name: 'dynamicPriorityPolling'),
          FigSuggestion(name: 'useFsEvents')
        ]
      )
      ]
    ),
    Option(
      name: '--watchFile',
      description: 'Specify how the TypeScript watch mode works',
      args: [
        Arg(
        name: 'approach',
        suggestions: [

          FigSuggestion(name: 'fixedPollingInterval'),
          FigSuggestion(name: 'priorityPollingInterval'),
          FigSuggestion(name: 'dynamicPriorityPolling'),
          FigSuggestion(name: 'useFsEvents'),
          FigSuggestion(name: 'useFsEventsOnParentDirectory')
        ]
      )
      ]
    ),
    Option(
      name: '--allowJs',
      description: 'Allow JavaScript files to be a part of your program. Use the checkJS option to get errors from these files'
    ),
    Option(
      name: '--allowSyntheticDefaultImports',
      description: 'Allow \'import x from y\' when a module doesn\'t have a default export'
    ),
    Option(
      name: '--allowUmdGlobalAccess',
      description: 'Allow accessing UMD globals from modules'
    ),
    Option(
      name: '--allowUnreachableCode',
      description: 'Disable error reporting for unreachable code'
    ),
    Option(
      name: '--allowUnusedLabels',
      description: 'Disable error reporting for unused label'
    ),
    Option(
      name: '--alwaysStrict',
      description: 'Ensure \'use strict\' is always emitted'
    ),
    Option(
      name: '--assumeChangesOnlyAffectDirectDependencies',
      description: 'Have recompiles in projects that use incremental and watch mode assume that changes within a file will only affect files directly depending on it'
    ),
    Option(
      name: '--baseUrl',
      description: 'Specify the base directory to resolve non-relative module names',
      args: [
        Arg(
        name: 'directory',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--checkJs',
      description: 'Enable error reporting in type-checked JavaScript files'
    ),
    Option(
      name: '--composite',
      description: 'Enable constraints that allow a TypeScript project to be used with project references'
    ),
    Option(
      name: '--declaration',
      description: 'Generate .d.ts files from TypeScript and JavaScript files in your project'
    ),
    Option(
      name: '--declarationDir',
      description: 'Specify the output directory for generated declaration files',
      args: [
        Arg(
        name: 'string',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--declarationMap',
      description: 'Create sourcemaps for d.ts files'
    ),
    Option(
      name: '--diagnostics',
      description: 'Output compiler performance information after building'
    ),
    Option(
      name: '--disableReferencedProjectLoad',
      description: 'Reduce the number of projects loaded automatically by TypeScript'
    ),
    Option(
      name: '--disableSizeLimit',
      description: 'Remove the 20mb cap on total source code size for JavaScript files in the TypeScript language server'
    ),
    Option(
      name: '--disableSolutionSearching',
      description: 'Opt a project out of multi-project reference checking when editing'
    ),
    Option(
      name: '--disableSourceOfProjectReferenceRedirect',
      description: 'Disable preferring source files instead of declaration files when referencing composite projects'
    ),
    Option(
      name: '--downlevelIteration',
      description: 'Emit more compliant, but verbose and less performant JavaScript for iteration'
    ),
    Option(
      name: '--emitBOM',
      description: 'Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files'
    ),
    Option(
      name: '--emitDeclarationOnly',
      description: 'Only output d.ts files and not JavaScript files'
    ),
    Option(
      name: '--emitDecoratorMetadata',
      description: 'Emit design-type metadata for decorated declarations in source files'
    ),
    Option(
      name: '--esModuleInterop',
      description: 'Emit additional JavaScript to ease support for importing CommonJS modules. This enables allowSyntheticDefaultImports for type compatibility'
    ),
    Option(
      name: '--exactOptionalPropertyTypes',
      description: 'Differentiate between undefined and not present when type checking'
    ),
    Option(
      name: '--experimentalDecorators',
      description: 'Enable experimental support for TC39 stage 2 draft decorators'
    ),
    Option(
      name: '--explainFiles',
      description: 'Print files read during the compilation including why it was included'
    ),
    Option(
      name: '--extendedDiagnostics',
      description: 'Output more detailed compiler performance information after building'
    ),
    Option(
      name: '--forceConsistentCasingInFileNames',
      description: 'Ensure that casing is correct in imports'
    ),
    Option(
      name: '--generateCpuProfile',
      description: 'Emit a v8 CPU profile of the compiler run for debugging'
    ),
    Option(
      name: '--importHelpers',
      description: 'Allow importing helper functions from tslib once per project, instead of including them per-file'
    ),
    Option(
      name: '--importsNotUsedAsValues',
      description: 'Specify emit/checking behavior for imports that are only used for types',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(name: 'remove'),
          FigSuggestion(name: 'preserve'),
          FigSuggestion(name: 'error')
        ]
      )
      ]
    ),
    Option(
      name: '--incremental',
      description: 'Save .tsbuildinfo files to allow for incremental compilation of projects'
    ),
    Option(
      name: '--inlineSourceMap',
      description: 'Include sourcemap files inside the emitted JavaScript'
    ),
    Option(
      name: '--inlineSources',
      description: 'Include source code in the sourcemaps inside the emitted JavaScript'
    ),
    Option(
      name: '--isolatedModules',
      description: 'Ensure that each file can be safely transpiled without relying on other imports'
    ),
    Option(
      name: '--jsx',
      description: 'Specify what JSX code is generated',
      args: [
        Arg(
        name: 'type',
        suggestions: [

          FigSuggestion(name: 'react'),
          FigSuggestion(name: 'react-jsx'),
          FigSuggestion(name: 'react-jsxdev'),
          FigSuggestion(name: 'react-native'),
          FigSuggestion(name: 'preserve')
        ]
      )
      ]
    ),
    Option(
      name: '--jsxFactory',
      description: 'Specify the JSX factory function used when targeting React JSX emit, e.g. \'React.createElement\' or \'h\'',
      args: [
        Arg(
        name: 'JSX factory function',
        defaultValue: 'React.createElement'
      )
      ]
    ),
    Option(
      name: '--jsxFragmentFactory',
      description: 'Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. \'React.Fragment\' or \'Fragment\'',
      args: [
        Arg(
        name: 'JSX fragment'
      )
      ]
    ),
    Option(
      name: '--jsxImportSource',
      description: 'Specify module specifier used to import the JSX factory functions when using jsx: react-jsx*',
      args: [
        Arg(
        name: 'string',
        defaultValue: 'react'
      )
      ]
    ),
    Option(
      name: '--keyofStringsOnly',
      description: 'Make keyof only return strings instead of string, numbers or symbols. Legacy option'
    ),
    Option(
      name: '--lib',
      description: 'Specify a set of bundled library declaration files that describe the target runtime environment',
      args: [
        Arg(
        name: 'list',
        template: 'filepaths',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--listEmittedFiles',
      description: 'Print the names of emitted files after a compilation'
    ),
    Option(
      name: '--listFiles',
      description: 'Print all of the files read during the compilation'
    ),
    Option(
      name: '--mapRoot',
      description: 'Specify the location where debugger should locate map files instead of generated locations',
      args: [
        Arg(
        name: 'string',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--maxNodeModuleJsDepth',
      description: 'Specify the maximum folder depth used for checking JavaScript files from node_modules. Only applicable with allowJs',
      dependsOn: ['--allowJs'],
      args: [
        Arg(
        name: 'number',
        defaultValue: '0'
      )
      ]
    ),
    Option(
      name: '--module',
      description: 'Specify what module code is generated',
      args: [
        Arg(
        name: 'module',
        defaultValue: 'CommonJS',
        suggestions: [

          FigSuggestion(name: 'ES6'),
          FigSuggestion(name: 'ES2015'),
          FigSuggestion(name: 'ES2020'),
          FigSuggestion(name: 'None'),
          FigSuggestion(name: 'UMD'),
          FigSuggestion(name: 'AMD'),
          FigSuggestion(name: 'System'),
          FigSuggestion(name: 'ESNext'),
          FigSuggestion(name: 'CommonJS')
        ]
      )
      ]
    ),
    Option(
      name: '--moduleResolution',
      description: 'Specify how TypeScript looks up a file from a given module specifier',
      args: [
        Arg(
        name: 'module'
      )
      ]
    ),
    Option(
      name: '--newLine',
      description: 'Set the newline character for emitting files',
      args: [
        Arg(
        name: 'character'
      )
      ]
    ),
    Option(
      name: '--noEmit',
      description: 'Disable emitting file from a compilation'
    ),
    Option(
      name: '--noEmitHelpers',
      description: 'Disable generating custom helper functions like __extends in compiled output'
    ),
    Option(
      name: '--noEmitOnError',
      description: 'Disable emitting files if any type checking errors are reported'
    ),
    Option(
      name: '--noErrorTruncation',
      description: 'Disable truncating types in error messages'
    ),
    Option(
      name: '--noFallthroughCasesInSwitch',
      description: 'Enable error reporting for fallthrough cases in switch statements'
    ),
    Option(
      name: '--noImplicitAny',
      description: 'Enable error reporting for expressions and declarations with an implied any type'
    ),
    Option(
      name: '--noImplicitOverride',
      description: 'Ensure overriding members in derived classes are marked with an override modifier'
    ),
    Option(
      name: '--noImplicitReturns',
      description: 'Enable error reporting for codepaths that do not explicitly return in a function'
    ),
    Option(
      name: '--noImplicitThis',
      description: 'Enable error reporting when this is given the type any'
    ),
    Option(
      name: '--noImplicitUseStrict',
      description: 'Disable adding \'use strict\' directives in emitted JavaScript files'
    ),
    Option(
      name: '--noLib',
      description: 'Disable including any library files, including the default lib.d.ts'
    ),
    Option(
      name: '--noPropertyAccessFromIndexSignature',
      description: 'Enforces using indexed accessors for keys declared using an indexed type'
    ),
    Option(
      name: '--noResolve',
      description: 'Disallow imports, requires or <reference>s from expanding the number of files TypeScript should add to a project'
    ),
    Option(
      name: '--noStrictGenericChecks',
      description: 'Disable strict checking of generic signatures in function types'
    ),
    Option(
      name: '--noUncheckedIndexedAccess',
      description: 'Add undefined to a type when accessed using an index'
    ),
    Option(
      name: '--noUnusedLocals',
      description: 'Enable error reporting when a local variables aren\'t read'
    ),
    Option(
      name: '--noUnusedParameters',
      description: 'Raise an error when a function parameter isn\'t read'
    ),
    Option(
      name: '--outDir',
      description: 'Specify an output folder for all emitted files',
      args: [
        Arg(
        name: 'string',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--outFile',
      description: 'Specify a file that bundles all outputs into one JavaScript file. If declaration is true, also designates a file that bundles all .d.ts output',
      args: [
        Arg(
        name: 'string',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--paths',
      description: 'Specify a set of entries that re-map imports to additional lookup locations',
      args: [
        Arg(
        name: 'object'
      )
      ]
    ),
    Option(
      name: '--plugins',
      description: 'Specify a list of language service plugins to include',
      args: [
        Arg(
        name: 'plugins',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--preserveConstEnums',
      description: 'Disable erasing const enum declarations in generated code'
    ),
    Option(
      name: '--preserveSymlinks',
      description: 'Disable resolving symlinks to their realpath. This correlates to the same flag in node'
    ),
    Option(
      name: '--preserveWatchOutput',
      description: 'Disable wiping the console in watch mode'
    ),
    Option(
      name: '--pretty',
      description: 'Enable color and formatting in output to make compiler errors easier to read'
    ),
    Option(
      name: '--reactNamespace',
      description: 'Specify the object invoked for createElement. This only applies when targeting react JSX emit',
      args: [
        Arg(
        name: 'object',
        defaultValue: 'React'
      )
      ]
    ),
    Option(
      name: '--removeComments',
      description: 'Disable emitting comments'
    ),
    Option(
      name: '--resolveJsonModule',
      description: 'Enable importing .json files'
    ),
    Option(
      name: '--rootDir',
      description: 'Specify the root folder within your source files',
      args: [
        Arg(
        name: 'string',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--rootDirs',
      description: 'Allow multiple folders to be treated as one when resolving modules',
      args: [
        Arg(
        name: 'string',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--skipDefaultLibCheck',
      description: 'Skip type checking .d.ts files that are included with TypeScript'
    ),
    Option(
      name: '--skipLibCheck',
      description: 'Skip type checking all .d.ts files'
    ),
    Option(
      name: '--sourceMap',
      description: 'Create source map files for emitted JavaScript files'
    ),
    Option(
      name: '--sourceRoot',
      description: 'Specify the root path for debuggers to find the reference source code',
      args: [
        Arg(
        name: 'string',
        template: ['filepaths', 'folders']
      )
      ]
    ),
    Option(
      name: '--strict',
      description: 'Enable all strict type checking options'
    ),
    Option(
      name: '--strictBindCallApply',
      description: 'Check that the arguments for bind, call, and apply methods match the original function'
    ),
    Option(
      name: '--strictFunctionTypes',
      description: 'When assigning functions, check to ensure parameters and the return values are subtype-compatible'
    ),
    Option(
      name: '--strictNullChecks',
      description: 'When type checking, take into account null and undefined'
    ),
    Option(
      name: '--strictPropertyInitialization',
      description: 'Check for class properties that are declared but not set in the constructor'
    ),
    Option(
      name: '--stripInternal',
      description: 'Disable emitting declarations that have @internal in their JSDoc comments'
    ),
    Option(
      name: '--suppressExcessPropertyErrors',
      description: 'Disable reporting of excess property errors during the creation of object literals'
    ),
    Option(
      name: '--suppressImplicitAnyIndexErrors',
      description: 'Suppress noImplicitAny errors when indexing objects that lack index signatures'
    ),
    Option(
      name: '--target',
      description: 'Set the JavaScript language version for emitted JavaScript and include compatible library declarations',
      args: [
        Arg(
        defaultValue: 'ES3',
        suggestions: [

          FigSuggestion(name: 'ES3'),
          FigSuggestion(name: 'ES5'),
          FigSuggestion(name: 'ES6'),
          FigSuggestion(name: 'ES2015'),
          FigSuggestion(name: 'ES7'),
          FigSuggestion(name: 'ES2016'),
          FigSuggestion(name: 'ES2017'),
          FigSuggestion(name: 'ES2018'),
          FigSuggestion(name: 'ES2019'),
          FigSuggestion(name: 'ES2020'),
          FigSuggestion(name: 'ESNext')
        ]
      )
      ]
    ),
    Option(
      name: '--traceResolution',
      description: 'Log paths used during the moduleResolution process'
    ),
    Option(
      name: '--tsBuildInfoFile',
      description: 'Specify the folder for .tsbuildinfo incremental compilation files',
      args: [
        Arg(
        name: 'string',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--typeRoots',
      description: 'Specify multiple folders that act like ./node_modules/@types',
      args: [
        Arg(
        name: 'folders',
        template: 'folders',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--types',
      description: 'Specify type package names to be included without being referenced in a source file',
      args: [
        Arg(
        name: 'package names',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--useDefineForClassFields',
      description: 'Emit ECMAScript-standard-compliant class fields'
    ),
    Option(
      name: '--useUnknownInCatchVariables',
      description: 'Default catch clause variables as unknown instead of any'
    )
  ],
  args: [
    Arg(
    name: 'tsc script'
  )
  ]
);
