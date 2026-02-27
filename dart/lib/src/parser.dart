// Command parser: split input into tokens (reference: inshellisense runtime/parser.ts).
//
// This file is intentionally standalone — it only depends on [shell.dart] and
// no other autocomplete internals, so it can be tested in isolation.

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
    this.isQuoted = false,
  });

  final String token;

  /// Display/original length of the token (used for charactersToDrop in suggestions).
  final int tokenLength;

  /// Whether this token was followed by whitespace (i.e. the user has moved past it).
  final bool complete;

  final bool isOption;
  final bool isPersistent;
  final bool isPath;
  final bool isPathComplete;

  /// Whether this token was wrapped in single or double quotes.
  ///
  /// When true, path suggestions should NOT be backslash-escaped because the
  /// surrounding quotes already handle any embedded spaces.
  final bool isQuoted;
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
  // Simple length; for wcswidth (CJK wide chars) a package could be used if needed.
  return s.length;
}

/// Lex [command] into [CommandToken]s.
///
/// Supports:
/// - Single-quoted strings: `'file name'`
/// - Double-quoted strings: `"file name"`
/// - Shell escape sequences for spaces: `file\ name`
/// - Option flags starting with `-`
/// - `=` splits option from its value: `--flag=value`
List<CommandToken> _lex(String command, Shell shell) {
  final tokens = <CommandToken>[];
  final escapeChar = getShellWhitespaceEscapeChar(shell);
  final spaceRegex = RegExp(r'\s');
  var i = 0;

  while (i < command.length) {
    // Skip leading whitespace between tokens.
    while (i < command.length && spaceRegex.hasMatch(command[i])) {
      i++;
    }
    if (i >= command.length) break;

    final char = command[i];

    // ── Quoted string (single or double quote) ─────────────────────────────
    if (char == "'" || char == '"') {
      final quoteChar = char;
      i++; // skip the opening quote
      final start = i;

      // Scan until an unescaped closing quote (or end of input).
      // At the first iteration i >= 1, so command[i-1] is always valid.
      while (i < command.length) {
        if (command[i] == quoteChar && command[i - 1] != r'\') break;
        i++;
      }

      final token = command.substring(start, i);
      final hasClosingQuote = i < command.length && command[i] == quoteChar;
      if (hasClosingQuote) i++; // consume closing quote

      // Token is "complete" only when there is trailing whitespace after the
      // closing quote — same semantics as unquoted tokens.
      final complete =
          hasClosingQuote && i < command.length && spaceRegex.hasMatch(command[i]);

      tokens.add(CommandToken(
        token: token,
        tokenLength: _strLength(token),
        complete: complete,
        isOption: false,
        isQuoted: true,
      ));
      continue;
    }

    // ── Option flag or regular word ─────────────────────────────────────────
    final isOption = char == '-';
    final start = i;
    if (isOption) i++; // skip the leading '-'

    while (i < command.length) {
      final c = command[i];
      // Stop at unescaped whitespace.
      if (spaceRegex.hasMatch(c) && (i == 0 || command[i - 1] != escapeChar)) break;
      // Stop at '=' when parsing an option (splits --flag=value into two tokens).
      if (c == '=' && isOption) break;
      i++;
    }

    final raw = command.substring(start, i);
    // Replace escaped spaces (e.g. `\ ` → ` `).
    final token = raw.replaceAll('$escapeChar ', ' ');
    final atEnd = i >= command.length;
    // Last token without trailing space is "incomplete": show suggestions for it.
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
