// Hand-written dynamic handlers migrated from src/rustup.ts.
//
// The focused rustup JSON export recovered three dynamic generator families:
//   * the local toolchain generator (`rustup toolchain list`), with and
//     without the deduplicated short channel names;
//   * the target triple generator (`rustup target list`), with and without the
//     `(installed)` marker filter;
//   * the remote releases generator (GitHub API) kept as a `script` +
//     `postProcess` pair; and
//   * the root `generateSpec` callback.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `rustup update` toolchain argument (src/rustup.ts `toolchainLocalGenertor()`).
const rustupUpdateArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_1_.args.generators';

/// `rustup default` toolchain argument.
const rustupDefaultArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_3_.args.generators';

/// `rustup target add --toolchain` argument.
const rustupTargetAddToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_4_.subcommands_1_.options_2_.args.generators';

/// `rustup target add` target triple argument (`tripleGenerator()`).
const rustupTargetAddArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_4_.subcommands_1_.args.generators';

/// `rustup target remove --toolchain` argument.
const rustupTargetRemoveToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_4_.subcommands_2_.options_2_.args.generators';

/// `rustup target remove` target triple argument
/// (`tripleGenerator({ installed: true })`).
const rustupTargetRemoveArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_4_.subcommands_2_.args.generators';

/// `rustup toolchain install --target` argument (`tripleGenerator()`).
const rustupToolchainInstallTargetArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_5_.subcommands_1_.options_1_.args.generators';

/// The GitHub releases generator postProcess (`toolchainAllGenerator`).
const rustupToolchainAllPostProcessHandler =
    'manual.src_rustup.definition.toolchainallgenerator.postprocess';

/// `rustup toolchain uninstall` argument
/// (`toolchainLocalGenertor({ excludeShort: true })`).
const rustupToolchainUninstallArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_5_.subcommands_2_.args.generators';

/// `rustup override set` toolchain argument.
const rustupOverrideSetArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_7_.subcommands_1_.args.generators';

/// `rustup run` toolchain argument.
const rustupRunToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_8_.args_0_.generators';

/// `rustup which --toolchain` argument.
const rustupWhichToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_9_.options_1_.args.generators';

/// `rustup doc --toolchain` argument.
const rustupDocToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_10_.options_17_.args.generators';

/// `rustup man --toolchain` argument.
const rustupManToolchainArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_11_.options_1_.args.generators';

/// `rustup set default-host` host triple argument (`tripleGenerator()`).
const rustupSetDefaultHostArgGeneratorsHandler =
    'manual.src_rustup.spec.subcommands_13_.subcommands_1_.args.generators';

/// Root `generateSpec` from src/rustup.ts: surfaces installed toolchains as
/// `cargo` options prefixed with `+`.
const rustupGenerateSpecHandler = 'manual.src_rustup.spec.generatespec';

const _toolchainIcon = '🧰';
const _rustupToolchainListCommand = 'rustup';
const _rustupToolchainListArgs = ['toolchain', 'list'];
const _rustupTargetListArgs = ['target', 'list'];

/// `rustup toolchain list` output: take the first space-delimited token of
/// each line. When [includeShort] is set (the default generator), prepend the
/// deduplicated short channel names (the part before the first `-`).
///
/// The source splits on `\n` and keeps empty entries, and only de-duplicates
/// within the short-name list (short names still repeat the full names below
/// them).
List<FigSuggestion> _toolchainListSuggestions(
  String output, {
  required bool includeShort,
}) {
  final toolchains = output
      .split('\n')
      .map((toolchain) => toolchain.split(' ').first)
      .toList();
  final suggestions = <FigSuggestion>[];
  if (includeShort) {
    final seen = <String>{};
    for (final toolchain in toolchains) {
      final short = toolchain.split('-').first;
      if (seen.add(short)) {
        suggestions.add(FigSuggestion(name: short));
      }
    }
  }
  suggestions.addAll(toolchains.map((name) => FigSuggestion(name: name)));
  return suggestions;
}

/// Runs `rustup toolchain list` and applies [_toolchainListSuggestions].
Future<List<FigSuggestion>> _toolchainListCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context, {
  required bool includeShort,
}) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: _rustupToolchainListCommand,
    args: _rustupToolchainListArgs,
  ));
  if (result.status != 0) return const [];
  if (result.stdout.isEmpty) return const [];
  return _toolchainListSuggestions(result.stdout, includeShort: includeShort);
}

/// `rustup target list` output: take the first token of each line, optionally
/// keeping only the lines carrying the exact `(installed)` marker.
List<FigSuggestion> _targetListSuggestions(
  String output, {
  required bool installed,
}) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final parts = line.split(' ');
    if (installed && !parts.contains('(installed)')) continue;
    suggestions.add(FigSuggestion(name: parts.first));
  }
  return suggestions;
}

/// Runs `rustup target list` and applies [_targetListSuggestions].
Future<List<FigSuggestion>> _targetListCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context, {
  required bool installed,
}) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: _rustupToolchainListCommand,
    args: _rustupTargetListArgs,
  ));
  if (result.status != 0) return const [];
  if (result.stdout.isEmpty) return const [];
  return _targetListSuggestions(result.stdout, installed: installed);
}

/// Formats an ISO-8601 `published_at` timestamp as a deterministic en-US-style
/// `M/D/YYYY` date, mirroring JS `new Date(...).toLocaleDateString()` (whose
/// exact rendering is locale dependent in the source).
String _formatReleaseDate(dynamic publishedAt) {
  final raw = publishedAt?.toString();
  if (raw == null || raw.isEmpty) return '';
  final parsed = DateTime.tryParse(raw);
  if (parsed == null) return '';
  return '${parsed.month}/${parsed.day}/${parsed.year}';
}

/// `toolchainAllGenerator.postProcess` (src/rustup.ts): the GitHub releases
/// JSON. Always leads with `stable`, `beta`, and `nightly`, then one release
/// per `tag_name` described by its `name` and publish date.
List<FigSuggestion> _toolchainAllPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  if (output.isEmpty) return const [];
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  final suggestions = <FigSuggestion>[
    const FigSuggestion(name: 'stable'),
    const FigSuggestion(name: 'beta'),
    const FigSuggestion(name: 'nightly'),
  ];
  for (final release in decoded) {
    if (release is! Map) continue;
    suggestions.add(FigSuggestion(
      name: release['tag_name']?.toString() ?? '',
      description: '${release['name']?.toString() ?? ''} - '
          '${_formatReleaseDate(release['published_at'])}',
    ));
  }
  return suggestions;
}

/// Root `generateSpec` from src/rustup.ts. Runs `rustup toolchain list` and
/// exposes each installed toolchain as a `cargo` option named `+<channel>`.
Future<FigSpec?> _rustupGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: _rustupToolchainListCommand,
    args: _rustupToolchainListArgs,
  ));
  if (result.stdout.isEmpty) {
    return FigSpec(name: 'cargo', options: const []);
  }
  final options = result.stdout
      .split('\n')
      .map((toolchain) => FigOption(
            icon: _toolchainIcon,
            name: '+${toolchain.split('-').first}',
            description: toolchain,
          ))
      .toList();
  return FigSpec(name: 'cargo', options: options);
}

/// Registers the dynamic handlers referenced by the shipped rustup JSON.
void registerRustupHandlers(JsonHandlerRegistry registry) {
  // toolchainLocalGenertor() with the short channel names.
  registry.registerCustom(
    rustupUpdateArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupDefaultArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupTargetAddToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupTargetRemoveToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupToolchainUninstallArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: false),
  );
  registry.registerCustom(
    rustupOverrideSetArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupRunToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupWhichToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupDocToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );
  registry.registerCustom(
    rustupManToolchainArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _toolchainListCustom(tokens, executeCommand, context,
            includeShort: true),
  );

  // tripleGenerator() without a marker filter.
  registry.registerCustom(
    rustupTargetAddArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _targetListCustom(tokens, executeCommand, context, installed: false),
  );
  registry.registerCustom(
    rustupToolchainInstallTargetArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _targetListCustom(tokens, executeCommand, context, installed: false),
  );
  registry.registerCustom(
    rustupSetDefaultHostArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _targetListCustom(tokens, executeCommand, context, installed: false),
  );

  // tripleGenerator({ installed: true }).
  registry.registerCustom(
    rustupTargetRemoveArgGeneratorsHandler,
    (tokens, executeCommand, context) =>
        _targetListCustom(tokens, executeCommand, context, installed: true),
  );

  // The GitHub releases generator kept as script + postProcess.
  registry.registerPostProcess(
      rustupToolchainAllPostProcessHandler, _toolchainAllPostProcess);

  registry.registerGenerateSpec(rustupGenerateSpecHandler, _rustupGenerateSpec);
}
