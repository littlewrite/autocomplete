// Shell alias loading and expansion (reference: inshellisense alias.ts).
//
// Mirrors the TS loadBashAliases / loadZshAliases / aliasExpand logic:
//   - run `<shell> -i -c alias` via the CompleteAdapter
//   - parse output into a name→expanded-tokens map
//   - expose aliasExpand() to replace the root token of a command

import 'adapter.dart';
import 'parser.dart';
import 'shell.dart';

/// Parse the stdout of `alias` for bash or zsh into a map of alias name →
/// [CommandToken] list (i.e. the parsed expansion).
///
/// bash output:  `alias name='value'`   (has `alias ` prefix)
/// zsh  output:  `name=value`           (no prefix; value is quoted or bare)
Map<String, List<CommandToken>> parseAliasOutput(String stdout, Shell shell) {
  final result = <String, List<CommandToken>>{};
  for (var line in stdout.trim().split('\n')) {
    line = line.trim();
    if (line.isEmpty) continue;

    // bash lines start with "alias "; strip it if present.
    if (line.startsWith('alias ')) {
      line = line.substring(6);
    }

    // Replace escaped single-quotes (bash/zsh escape ' inside single-quoted
    // strings as '\'').
    line = line.replaceAll("'\\''", "'");

    final eqIdx = line.indexOf('=');
    if (eqIdx <= 0) continue;

    final alias = line.substring(0, eqIdx).trim();
    if (alias.isEmpty) continue;

    var value = line.substring(eqIdx + 1);

    // Strip surrounding single or double quotes.
    if (value.length >= 2 &&
        ((value.startsWith("'") && value.endsWith("'")) ||
            (value.startsWith('"') && value.endsWith('"')))) {
      value = value.substring(1, value.length - 1);
    }

    if (value.trim().isEmpty) continue;

    // Append a trailing space so the parser treats the last word as complete
    // (mirrors the TS `+ " "` suffix).
    final tokens = parseCommand('$value ', shell);
    if (tokens.isNotEmpty) {
      result[alias] = tokens;
    }
  }
  return result;
}

/// Load shell aliases for [shell] by running `<shell> -i -c alias` via
/// [adapter].  Returns an empty map on failure or for unsupported shells.
///
/// Only bash and zsh are supported (matching TS alias.ts).
///
/// [log] receives diagnostic messages at each step so callers can trace
/// whether alias loading succeeded and what was parsed.
Future<Map<String, List<CommandToken>>> loadShellAliases(
  Shell shell,
  CompleteAdapter adapter,
) async {
  final String executable;
  switch (shell) {
    case Shell.bash:
      executable = 'bash';
      break;
    case Shell.zsh:
      executable = 'zsh';
      break;
    default:
      return {};
  }

  // workingDirectory is intentionally omitted: `alias` is a shell builtin and
  // does not depend on cwd. More importantly, some adapters wrap the command as
  // `sh -c "cd '<cwd>' && ..."`, which would fail when cwd is an unexpanded
  // tilde (e.g. `~`) because single-quotes suppress tilde expansion in sh.
  try {
    final result = await adapter.runProcess(
      executable,
      ['-i', '-c', 'alias'],
    );
    if (result.exitCode != 0) return {};
    if (result.stdout.trim().isEmpty) return {};
    return parseAliasOutput(result.stdout, shell);
  } catch (_) {
    return {};
  }
}

/// Expand the first token of [tokens] using [aliases].
///
/// Mirrors TS `aliasExpand`: if the first (complete) token matches a known
/// alias, splice the expanded tokens in front of the remaining tokens.
/// Returns null when no expansion applies.
List<CommandToken>? aliasExpand(
  List<CommandToken> tokens,
  Map<String, List<CommandToken>> aliases,
) {
  if (tokens.isEmpty) return null;
  final first = tokens.first;
  if (!first.complete) return null;

  final expanded = aliases[first.token];
  if (expanded == null || expanded.isEmpty) return null;

  return [...expanded, ...tokens.sublist(1)];
}
