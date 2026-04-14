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

  /// Whether this token was wrapped in quotes or started with a quoted segment.
  ///
  /// When true, path suggestions should NOT be backslash-escaped because the
  /// surrounding quotes already handle any embedded spaces.
  final bool isQuoted;
}

class _LexToken {
  const _LexToken({
    required this.token,
    required this.tokenLength,
    required this.complete,
    required this.isOption,
    this.isQuoted = false,
    this.isQuoteContinued = false,
  });

  final String token;
  final int tokenLength;
  final bool complete;
  final bool isOption;
  final bool isQuoted;
  final bool isQuoteContinued;
}

/// Parse [command] and return tokens for the last command only (after any | or ;).
List<CommandToken> parseCommand(String command, Shell shell) {
  final lastPart = _extractLastCommandSegment(command, shell);
  if (lastPart.isEmpty) return [];
  return _sanitizeTokens(_lex(lastPart, shell), shell);
}

int _strLength(String s) {
  var width = 0;
  for (final rune in s.runes) {
    width += _runeWidth(rune);
  }
  return width;
}

int _runeWidth(int rune) {
  if (rune == 0) return 0;
  if (rune < 32 || (rune >= 0x7f && rune < 0xa0)) return 0;
  if (_isCombiningRune(rune)) return 0;
  if (_isWideRune(rune)) return 2;
  return 1;
}

bool _isCombiningRune(int rune) {
  return (rune >= 0x0300 && rune <= 0x036f) ||
      (rune >= 0x1ab0 && rune <= 0x1aff) ||
      (rune >= 0x1dc0 && rune <= 0x1dff) ||
      (rune >= 0x20d0 && rune <= 0x20ff) ||
      (rune >= 0xfe20 && rune <= 0xfe2f);
}

bool _isWideRune(int rune) {
  return (rune >= 0x1100 && rune <= 0x115f) ||
      (rune >= 0x2329 && rune <= 0x232a) ||
      (rune >= 0x2e80 && rune <= 0xa4cf) ||
      (rune >= 0xac00 && rune <= 0xd7a3) ||
      (rune >= 0xf900 && rune <= 0xfaff) ||
      (rune >= 0xfe10 && rune <= 0xfe19) ||
      (rune >= 0xfe30 && rune <= 0xfe6f) ||
      (rune >= 0xff00 && rune <= 0xff60) ||
      (rune >= 0xffe0 && rune <= 0xffe6) ||
      (rune >= 0x1f300 && rune <= 0x1f64f) ||
      (rune >= 0x1f900 && rune <= 0x1f9ff) ||
      (rune >= 0x20000 && rune <= 0x3fffd);
}

/// Returns true when the character at [idx] in [s] is preceded by an odd number
/// of consecutive backslashes (i.e. the character is escape-quoted).
bool _isEscapedAt(String s, int idx) {
  var count = 0;
  var j = idx - 1;
  while (j >= 0 && s[j] == '\\') {
    count++;
    j--;
  }
  return count.isOdd;
}

bool _isQuoteChar(String char, Shell shell) {
  if (char == "'" || char == '"') return true;
  return char == '`' && getShellWhitespaceEscapeChar(shell) != '`';
}

String _extractLastCommandSegment(String command, Shell shell) {
  if (command.isEmpty) return '';

  String? activeQuote;
  var lastStart = 0;

  for (var i = 0; i < command.length; i++) {
    final c = command[i];

    if (_isQuoteChar(c, shell) && !_isEscapedAt(command, i)) {
      if (activeQuote == null) {
        activeQuote = c;
      } else if (activeQuote == c) {
        activeQuote = null;
      }
      continue;
    }

    if (activeQuote != null || _isEscapedAt(command, i)) continue;

    if (c == ';') {
      lastStart = i + 1;
      continue;
    }

    if (c == '|') {
      if (i + 1 < command.length && command[i + 1] == '|') {
        lastStart = i + 2;
        i++;
      } else {
        lastStart = i + 1;
      }
      continue;
    }

    if (c == '&' && i + 1 < command.length && command[i + 1] == '&') {
      lastStart = i + 2;
      i++;
    }
  }

  return command.substring(lastStart).trimLeft();
}

List<CommandToken> _sanitizeTokens(List<_LexToken> tokens, Shell shell) {
  final escapeChar = getShellWhitespaceEscapeChar(shell);
  return tokens.map((token) {
    var value = token.token;
    if (!token.isQuoted && value.contains('$escapeChar ')) {
      value = value.replaceAll('$escapeChar ', ' ');
    }
    if (token.isQuoteContinued && value.isNotEmpty) {
      final quoteChar = value[0];
      const placeholder = '\u001b';
      value = value
          .replaceAll('$escapeChar$quoteChar', placeholder)
          .replaceAll(quoteChar, '')
          .replaceAll(placeholder, quoteChar);
    }
    return CommandToken(
      token: value,
      tokenLength: token.tokenLength,
      complete: token.complete,
      isOption: token.isOption,
      isQuoted: token.isQuoted,
    );
  }).toList(growable: false);
}

/// Lex [command] into tokens before quote-unwrapping / whitespace unescaping.
List<_LexToken> _lex(String command, Shell shell) {
  final tokens = <_LexToken>[];
  final escapeChar = getShellWhitespaceEscapeChar(shell);
  final spaceRegex = RegExp(r'\s');
  var readingQuotedString = false;
  var readingQuoteContinuedString = false;
  var readingFlag = false;
  var readingCmd = false;
  var readingIdx = 0;
  var readingQuoteChar = '';

  for (var i = 0; i < command.length; i++) {
    final char = command[i];
    final reading = readingQuotedString ||
        readingQuoteContinuedString ||
        readingFlag ||
        readingCmd;

    if (!reading && _isQuoteChar(char, shell)) {
      readingQuotedString = true;
      readingIdx = i;
      readingQuoteChar = char;
      continue;
    } else if (!reading && char == '-') {
      readingFlag = true;
      readingIdx = i;
      continue;
    } else if (!reading && !spaceRegex.hasMatch(char)) {
      readingCmd = true;
      readingIdx = i;
      continue;
    }

    if (readingQuotedString &&
        char == readingQuoteChar &&
        !_isEscapedAt(command, i) &&
        !spaceRegex.hasMatch(i + 1 < command.length ? command[i + 1] : ' ')) {
      readingQuotedString = false;
      readingQuoteContinuedString = true;
      continue;
    }

    if (readingQuotedString &&
        char == readingQuoteChar &&
        !_isEscapedAt(command, i)) {
      readingQuotedString = false;
      final raw = command.substring(readingIdx + 1, i);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw) + 2,
        complete: i + 1 < command.length && spaceRegex.hasMatch(command[i + 1]),
        isOption: false,
        isQuoted: true,
      ));
      continue;
    }

    if (readingQuoteContinuedString &&
        spaceRegex.hasMatch(char) &&
        !(i > 0 && command[i - 1] == escapeChar)) {
      readingQuoteContinuedString = false;
      final raw = command.substring(readingIdx, i);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw),
        complete: true,
        isOption: false,
        isQuoted: true,
        isQuoteContinued: true,
      ));
      continue;
    }

    if ((readingFlag &&
            spaceRegex.hasMatch(char) &&
            !(i > 0 && command[i - 1] == escapeChar)) ||
        (readingFlag && char == '=')) {
      readingFlag = false;
      final raw = command.substring(readingIdx, i);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw),
        complete: true,
        isOption: true,
      ));
      if (char == '=' && i + 1 >= command.length) {
        tokens.add(const _LexToken(
          token: '',
          tokenLength: 0,
          complete: false,
          isOption: false,
        ));
      }
      continue;
    }

    if (readingCmd &&
        spaceRegex.hasMatch(char) &&
        !(i > 0 && command[i - 1] == escapeChar)) {
      readingCmd = false;
      final raw = command.substring(readingIdx, i);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw),
        complete: true,
        isOption: false,
      ));
    }
  }

  final reading = readingQuotedString ||
      readingQuoteContinuedString ||
      readingFlag ||
      readingCmd;
  if (reading) {
    if (readingQuotedString) {
      final raw = command.substring(readingIdx + 1);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw) + 1,
        complete: false,
        isOption: false,
        isQuoted: true,
      ));
    } else if (readingQuoteContinuedString) {
      final raw = command.substring(readingIdx);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw),
        complete: false,
        isOption: false,
        isQuoted: true,
        isQuoteContinued: true,
      ));
    } else {
      final raw = command.substring(readingIdx);
      tokens.add(_LexToken(
        token: raw,
        tokenLength: _strLength(raw),
        complete: false,
        isOption: readingFlag,
      ));
    }
  }

  return tokens;
}
