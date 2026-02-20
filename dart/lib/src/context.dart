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

  /// Current index in [allTokens].
  int currentIndex;

  /// Tokens that have been successfully matched/consumed so far.
  final List<CommandToken> acceptedTokens = [];

  /// Options that persist down the tree (e.g. global flags).
  final List<FigOption> persistentOptions = [];

  CompletionContext({
    required this.allTokens,
    required this.cwd,
    required this.shell,
    required this.adapter,
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

  /// Add persistent options to the context.
  void addPersistentOptions(List<FigOption>? options) {
    if (options != null) {
      persistentOptions.addAll(options);
    }
  }
}
