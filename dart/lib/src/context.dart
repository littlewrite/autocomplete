import 'adapter.dart';
import 'parser.dart';
import 'shell.dart';
import 'spec.dart';

/// Context object to avoid passing many parameters and creating intermediate lists during completion traversal.
class CompletionContext {
  final List<CommandToken> allTokens;
  final String cwd;
  final Shell shell;
  final CompleteAdapter adapter;

  /// Optional callback to ensure a spec is loaded on demand (e.g. for subcommand loadSpec resolution).
  final Future<void> Function(String command)? ensureSpecLoaded;

  /// When non-null, overrides spec-level [FigSpec.filterStrategy] / [FigSubcommand.filterStrategy] for this call.
  /// Lets callers (e.g. FaTerm) always use fuzzy matching without changing specs.
  final FilterStrategy? filterStrategyOverride;

  /// Current index in [allTokens].
  int currentIndex;

  /// Tokens that have been successfully matched/consumed so far.
  final List<CommandToken> acceptedTokens = [];

  /// Options that persist down the tree (e.g. global flags).
  final List<FigOption> persistentOptions = [];

  /// Cache for resolved loadSpec subcommands within this completion traversal.
  /// Key: loadSpec string (e.g. "git"); value: the resolved [FigSubcommand] data.
  /// Avoids repeated registry lookups and object allocations when the same
  /// subcommand is visited more than once within a single getSuggestions call.
  final Map<String, FigSubcommand> resolvedSubcommandCache = {};

  CompletionContext({
    required this.allTokens,
    required this.cwd,
    required this.shell,
    required this.adapter,
    this.ensureSpecLoaded,
    this.filterStrategyOverride,
    this.currentIndex = 0,
  });

  bool get isAtEnd => currentIndex >= allTokens.length;

  CommandToken get currentToken => allTokens[currentIndex];

  /// Advance to the next token.
  void advance() {
    if (!isAtEnd) {
      acceptedTokens.add(currentToken);
      currentIndex++;
    }
  }

  /// Add persistent options to the context, skipping duplicates by option name.
  ///
  /// Unlike a plain [List.addAll], this method checks existing [persistentOptions]
  /// names first so that the same persistent option is never added twice even
  /// when the same subcommand is visited on multiple recursive paths.
  void addPersistentOptionsDeduped(List<FigOption>? options) {
    if (options == null || options.isEmpty) return;
    if (persistentOptions.isEmpty) {
      for (final o in options) {
        if (o.isPersistent) persistentOptions.add(o);
      }
      return;
    }
    final existingNames =
        persistentOptions.expand((o) => o.nameList).toSet();
    for (final o in options) {
      if (!o.isPersistent) continue;
      if (o.nameList.every((n) => !existingNames.contains(n))) {
        persistentOptions.add(o);
        existingNames.addAll(o.nameList);
      }
    }
  }

  /// Add persistent options to the context (legacy, no dedup).
  void addPersistentOptions(List<FigOption>? options) {
    if (options != null) {
      persistentOptions.addAll(options);
    }
  }
}
