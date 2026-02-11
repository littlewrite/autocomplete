// Command parser: split input into tokens (reference: inshellisense runtime/parser.ts).

import 'shell.dart';

/// A single token from the command line (command name, subcommand, option, or argument).
class CommandToken {
  const CommandToken({
    required this.token,
    required this.tokenLength,
    required this.complete,
    this.isOption = false,
    this.isPersistent = false,
    this.isPath = false,
    this.isPathComplete = false,
  });

  final String token;
  final int tokenLength;
  final bool complete;
  final bool isOption;
  final bool isPersistent;
  final bool isPath;
  final bool isPathComplete;
}

/// Delimiters that separate multiple commands (pipe, semicolon, etc.).
final _cmdDelim = RegExp(r'(\|\|)|(&&)|(;)|(\|)');

/// Parse [command] and return tokens for the last command only (after any | or ;).
List<CommandToken> parseCommand(String command, Shell shell) {
  final parts = command.split(_cmdDelim);
  final lastPart = parts.isNotEmpty ? parts.last.trimLeft() : '';
  if (lastPart.isEmpty) return [];
  return _lex(lastPart, shell);
}

int _strLength(String s) {
  // Simple length; for wcswidth we could use package if needed.
  return s.length;
}

List<CommandToken> _lex(String command, Shell shell) {
  final tokens = <CommandToken>[];
  var i = 0;
  final escapeChar = getShellWhitespaceEscapeChar(shell);
  final spaceRegex = RegExp(r'\s');

  while (i < command.length) {
    // Skip whitespace
    while (i < command.length && spaceRegex.hasMatch(command[i])) i++;
    if (i >= command.length) break;

    final start = i;
    var isOption = false;
    if (command[i] == '-') {
      isOption = true;
      i++;
    }
    while (i < command.length) {
      final c = command[i];
      if (spaceRegex.hasMatch(c) && (i == 0 || command[i - 1] != escapeChar)) break;
      if (c == '=' && isOption) break;
      i++;
    }
    final token = command.substring(start, i).replaceAll('$escapeChar ', ' ');
    // Last token with no trailing space is "incomplete" so we can show suggestions for it.
    final atEnd = i >= command.length;
    final complete = atEnd ? false : spaceRegex.hasMatch(command[i]);
    tokens.add(CommandToken(
      token: token,
      tokenLength: _strLength(token),
      complete: complete,
      isOption: isOption,
    ));
  }
  return tokens;
}
