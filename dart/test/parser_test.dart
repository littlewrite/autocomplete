// Tests for the command-line parser (parser.dart).
//
// Run from dart/:
//   dart test test/parser_test.dart

import 'package:autocomplete/src/parser.dart';
import 'package:autocomplete/src/shell.dart';
import 'package:test/test.dart';

/// Shorthand: parse with bash shell.
List<CommandToken> parse(String cmd) => parseCommand(cmd, Shell.bash);

void main() {
  // ── 1. 空输入 ────────────────────────────────────────────────────────────────
  group('empty input', () {
    test('empty string returns empty list', () {
      expect(parse(''), isEmpty);
    });

    test('whitespace-only returns empty list', () {
      expect(parse('   '), isEmpty);
    });
  });

  // ── 2. 基础 token ─────────────────────────────────────────────────────────────
  group('basic token', () {
    test('single word is one incomplete token', () {
      final tokens = parse('ls');
      expect(tokens.length, 1);
      expect(tokens[0].token, 'ls');
      expect(tokens[0].complete, isFalse);
      expect(tokens[0].isOption, isFalse);
    });

    test('two words separated by space', () {
      final tokens = parse('git commit');
      expect(tokens.length, 2);
      expect(tokens[0].token, 'git');
      expect(tokens[1].token, 'commit');
    });
  });

  // ── 3. complete vs incomplete ────────────────────────────────────────────────
  group('complete vs incomplete token', () {
    test('token without trailing space is incomplete', () {
      final tokens = parse('git sta');
      expect(tokens.last.complete, isFalse);
    });

    test('token with trailing space is complete', () {
      final tokens = parse('git status ');
      expect(tokens[0].complete, isTrue);
      expect(tokens[1].complete, isTrue);
    });

    test('first token complete, second incomplete', () {
      final tokens = parse('git commit');
      expect(tokens[0].complete, isTrue);
      expect(tokens[1].complete, isFalse);
    });
  });

  // ── 4. 选项解析 ──────────────────────────────────────────────────────────────
  group('option flags', () {
    test('short option -f has isOption=true', () {
      final tokens = parse('ls -f');
      expect(tokens[1].isOption, isTrue);
      expect(tokens[1].token, '-f');
    });

    test('long option --verbose has isOption=true', () {
      final tokens = parse('git --verbose');
      expect(tokens[1].isOption, isTrue);
      expect(tokens[1].token, '--verbose');
    });

    test('plain word has isOption=false', () {
      final tokens = parse('git commit');
      expect(tokens[1].isOption, isFalse);
    });
  });

  // ── 5. --flag=value 分割 ──────────────────────────────────────────────────────
  group('--flag=value splitting', () {
    test('--output=file splits into option token and =value token', () {
      // The lexer stops the option token at '=', leaving '=file' as the next token.
      // runtime.dart handles '=file' as the argument value for the option.
      final tokens = parse('cmd --output=file');
      expect(tokens.length, 3);
      expect(tokens[1].token, '--output');
      expect(tokens[1].isOption, isTrue);
      expect(tokens[2].token, '=file');
      expect(tokens[2].isOption, isFalse);
    });

    test('value token after = is incomplete when at end', () {
      final tokens = parse('cmd --output=file');
      expect(tokens.last.complete, isFalse);
    });
  });

  // ── 6. 单引号 ────────────────────────────────────────────────────────────────
  group('single-quoted strings', () {
    test('single-quoted token with space', () {
      final tokens = parse("ls 'my file'");
      expect(tokens.length, 2);
      expect(tokens[1].token, 'my file');
      expect(tokens[1].isQuoted, isTrue);
    });

    test('unclosed single quote is incomplete', () {
      final tokens = parse("ls 'foo");
      expect(tokens[1].token, 'foo');
      expect(tokens[1].complete, isFalse);
    });

    test('closed single quote without trailing space is incomplete', () {
      final tokens = parse("ls 'foo'");
      expect(tokens[1].complete, isFalse);
    });

    test('closed single quote with trailing space is complete', () {
      final tokens = parse("ls 'foo' ");
      expect(tokens[1].complete, isTrue);
    });
  });

  // ── 7. 双引号 ────────────────────────────────────────────────────────────────
  group('double-quoted strings', () {
    test('double-quoted token with space', () {
      final tokens = parse('ls "my file"');
      expect(tokens.length, 2);
      expect(tokens[1].token, 'my file');
      expect(tokens[1].isQuoted, isTrue);
    });

    test('unclosed double quote is incomplete', () {
      final tokens = parse('ls "foo');
      expect(tokens[1].token, 'foo');
      expect(tokens[1].complete, isFalse);
    });

    test('closed double quote with trailing space is complete', () {
      final tokens = parse('ls "foo" ');
      expect(tokens[1].complete, isTrue);
    });
  });

  // ── 8. isQuoted ──────────────────────────────────────────────────────────────
  group('isQuoted flag', () {
    test('non-quoted token has isQuoted=false', () {
      final tokens = parse('git status');
      expect(tokens[0].isQuoted, isFalse);
      expect(tokens[1].isQuoted, isFalse);
    });

    test('single-quoted token has isQuoted=true', () {
      expect(parse("ls 'file'")[1].isQuoted, isTrue);
    });

    test('double-quoted token has isQuoted=true', () {
      expect(parse('ls "file"')[1].isQuoted, isTrue);
    });
  });

  // ── 9. 转义空格 ──────────────────────────────────────────────────────────────
  group('escaped space', () {
    test(r'backslash-space becomes a single token', () {
      final tokens = parse(r'ls file\ name');
      expect(tokens.length, 2);
      expect(tokens[1].token, 'file name');
    });

    test(r'escaped space token is not marked as quoted', () {
      final tokens = parse(r'ls file\ name');
      expect(tokens[1].isQuoted, isFalse);
    });
  });

  // ── 10. 命令分隔符 ────────────────────────────────────────────────────────────
  group('command delimiters', () {
    test('pipe | takes the last segment', () {
      final tokens = parse('echo foo | grep bar');
      expect(tokens.length, 2);
      expect(tokens[0].token, 'grep');
      expect(tokens[1].token, 'bar');
    });

    test('&& takes the last segment', () {
      final tokens = parse('mkdir tmp && cd tmp');
      expect(tokens[0].token, 'cd');
      expect(tokens[1].token, 'tmp');
    });

    test('; takes the last segment', () {
      final tokens = parse('echo a; echo b');
      expect(tokens[0].token, 'echo');
      expect(tokens[1].token, 'b');
    });

    test('|| takes the last segment', () {
      final tokens = parse('cmd1 || cmd2 arg');
      expect(tokens[0].token, 'cmd2');
      expect(tokens[1].token, 'arg');
    });
  });

  // ── 11. 双反斜杠引号（Bug2 修复验证）────────────────────────────────────────
  group('double-backslash before quote', () {
    test(r'even backslashes before closing quote: quote closes normally', () {
      // Input: "foo\\" — two backslashes then closing double-quote.
      // The two backslashes cancel each other; the " is a real closing quote.
      final tokens = parse(r'cmd "foo\\"');
      expect(tokens.length, 2);
      // Token value is the raw content between quotes: foo\\
      expect(tokens[1].isQuoted, isTrue);
    });

    test(r'odd backslash before closing quote: quote is escaped (unclosed)', () {
      // Input: "foo\" — one backslash then " — the quote is escaped, string unclosed.
      final tokens = parse(r'cmd "foo\"');
      expect(tokens[1].complete, isFalse);
    });
  });
}
