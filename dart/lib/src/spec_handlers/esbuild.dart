// Hand-written dynamic handlers migrated from src/esbuild.ts.
//
// The esbuild JSON materializes the entire options array as a single dynamic
// `spec.options` handler reference, so this file provides that options list
// (mirroring every option declared in src/esbuild.ts).

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Handler referenced by the shipped esbuild JSON for the dynamic options list.
const esbuildOptionsHandler = 'manual.src_esbuild.spec.options';

const _icon =
    'data:image/png;base64,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';

/// Builds a single option suggestion, applying the shared esbuild icon.
FigSuggestion _option(
  String name,
  String description, {
  int priority = 50,
  String? insertValue,
  String? displayName,
}) {
  return FigSuggestion(
    name: name,
    description: description,
    icon: _icon,
    priority: priority,
    insertValue: insertValue,
    displayName: displayName,
  );
}

/// Every option declared in src/esbuild.ts, in source order.
final List<FigSuggestion> _allOptions = [
  // Simple options:
  _option('--bundle', 'Bundle all dependencies into the output files',
      priority: 51),
  _option(
      '--define',
      'Replace variable names with a literal value, eg. --define:DEBUG=true',
      priority: 51),
  _option('--external', 'Exclude modules from the build', priority: 51),
  _option('--format', 'The output format', priority: 51),
  _option('--loader', 'For a given file extension, specify a loader',
      priority: 51),
  _option('--minify', 'Minify the output (sets all the --minify-* options)',
      priority: 51),
  _option('--outdir', 'The output directory for multiple entrypoints',
      priority: 51),
  _option('--outfile', 'The output file for one entrypoint', priority: 51),
  _option('--platform', 'The platform target', priority: 51),
  _option('--serve', 'Start a local HTTP server on this host:port',
      priority: 51),
  _option('--splitting', 'Enable code splitting', priority: 51),
  _option(
      '--target',
      'Set the environment target. Can be a particular ES version or browser '
      'version, eg. chrome101',
      priority: 51),
  _option('--watch', 'Rebuild on file system changes'),
  // Advanced options:
  _option('--allow-overwrite', 'Allow output files to overwrite input files'),
  _option('--analyze', 'Print a report about the contents of the bundle'),
  _option('--asset-names', "Path template for 'file' loader files"),
  _option('--banner', 'Text to be prepended to each output file type'),
  _option(
    '--charset',
    'Use UTF-8 instead of escaped codepoints in ASCII',
    insertValue: '--charset=utf8',
    displayName: '--charset=utf8',
  ),
  _option('--chunk-names', 'Path template to use for code splitting chunks'),
  _option('--color', 'Force use of terminal colors'),
  _option('--drop', 'Remove certain constructs'),
  _option('--entry-names', 'Path template to use for entry point output paths'),
  _option('--footer', 'Text to be appended to each file type'),
  _option('--global-name', 'The name of the global if using --format=iife'),
  _option(
      '--ignore-annotations',
      'Enable this to work with packages that have incorrect tree-shaking '
      'annotations'),
  _option(
      '--inject',
      'Import the file into all input files, automatically replace matching '
      'globals'),
  _option('--jsx-factory', 'What to use for the JSX factory'),
  _option('--jsx-fragment', 'What to use for the JS Fragment factory'),
  _option('--jsx', 'Preserve JSX instead of transforming'),
  _option('--jsx-dev', 'Toggles development mode for the automatic runtime'),
  _option('--jsx-import-source',
      'Overrides the root import for runtime functions (default: react)'),
  _option('--keep-names', "Preserve 'name' on functions and classes"),
  _option('--legal-comments', 'Where to place legal comments'),
  _option('--log-level', 'Set the log level'),
  _option('--log-limit', 'Maximum message count, 0 to disable'),
  _option('--log-override', 'For a particular identifier, set the log level'),
  _option('--main-fields', 'Override the main file order in package.json'),
  _option('--mangle-cache', "Save 'mangle props' decisions to a JSON file"),
  _option('--mangle-props', 'Rename all properties matching a regular expression'),
  _option('--mangle-quoted', 'Enable mangling (renaming) quoted properties'),
  _option('--metafile', 'Write metadata about the build to a JSON file'),
  _option('--minify-whitespace', 'Remove unnecessary whitespace in output files'),
  _option('--minify-identifiers', 'Shorten identifiers in output files'),
  _option('--minify-syntax', 'Use equivalent but shorter syntax in output files'),
  _option('--out-extension', 'Use a custom output extension for each extension'),
  _option(
      '--outbase',
      'Base path used to determine entrypoint output paths, for multiple '
      'entrypoints'),
  _option('--preserve-symlinks', 'Disable symlink resolution'),
  _option('--public-path', "Set the base URL for the 'file' loader"),
  _option('--pure', 'Mark the name as a pure function for tree shaking'),
  _option('--reserve-props', 'Do not mangle these properties'),
  _option('--resolve-extensions', 'Comma-separated list of implicit extensions'),
  _option('--servedir', 'What to serve in addition to the generated output files'),
  _option('--source-root', 'Set the sourceRoot field in generated source maps'),
  _option(
      '--sourcefile',
      "Set the source file for the source map if there's no file name to use"),
  _option('--sourcemap', 'Generate source maps?', priority: 51),
  _option(
    '--sources-content',
    'Omit the sourcesContent field in generated source maps',
    insertValue: '--sources-content=false',
    displayName: '--sources-content=false',
  ),
  _option('--supported', 'Consider a given syntax to be supported'),
  _option('--tree-shaking', 'Force tree shaking on or off'),
  _option('--tsconfig', 'Use this TypeScript config instead of the default'),
  _option('--version', 'Print the current version and exit'),
];

/// The `spec.options` handler returns every esbuild option so the runtime can
/// suggest them once the user has typed a leading `--`. The options are static,
/// so the handler ignores the tokens, executeCommand, and context arguments.
Future<List<FigSuggestion>> _options(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _allOptions;
}

/// Registers the esbuild dynamic handlers referenced by the shipped esbuild
/// JSON.
void registerEsbuildHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(esbuildOptionsHandler, _options);
}
