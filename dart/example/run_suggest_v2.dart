// Example: get suggestions using specs v2 (deferred load — only cd, git, ls, tree).
// Only the spec for the typed command is loaded. Run from dart/:
//
//   dart run example/run_suggest_v2.dart ls
//   dart run example/run_suggest_v2.dart "git sta"
//   dart run example/run_suggest_v2.dart "cd "
//
// Compare with run_suggest.dart which loads all specs up front (all_specs.dart).

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/specs/all_specs_v2.dart';

Shell _parseShell(String name) {
  switch (name.toLowerCase()) {
    case 'bash':
      return Shell.bash;
    case 'zsh':
      return Shell.zsh;
    case 'fish':
      return Shell.fish;
    case 'pwsh':
      return Shell.pwsh;
    case 'powershell':
      return Shell.powershell;
    case 'cmd':
      return Shell.cmd;
    case 'xonsh':
      return Shell.xonsh;
    case 'nushell':
      return Shell.nushell;
    default:
      return Shell.bash;
  }
}

void main(List<String> args) async {
  String? cmd;
  var shell = Shell.bash;

  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--shell' || args[i] == '-s') {
      if (i + 1 < args.length) {
        shell = _parseShell(args[++i]);
      }
    } else if (!args[i].startsWith('-')) {
      cmd = args[i];
      break;
    }
  }

  if (cmd == null || cmd.isEmpty) {
    print(
        'Usage: dart run example/run_suggest_v2.dart <command_line> [--shell bash]');
    print('Example: dart run example/run_suggest_v2.dart ls');
    print('Specs v2: only cd, git, ls, tree (loaded on demand).');
    exit(1);
  }

  registerBuiltinSpecsV2();
  final cwd = Directory.current.path;

  final blob = await getSuggestions(cmd, cwd, shell,
      ensureSpecLoaded: ensureSpecLoadedV2);
  if (blob == null) {
    print('(no spec or no suggestions)');
    exit(0);
  }

  if (blob.argumentDescription != null) {
    print('Argument: ${blob.argumentDescription}');
  }
  for (final s in blob.suggestions) {
    print('${s.name}\t${s.description ?? ""}');
  }
  print(
      '(${blob.suggestions.length} suggestions, charactersToDrop: ${blob.charactersToDrop})');
}
