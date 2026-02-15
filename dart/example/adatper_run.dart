// Example: get suggestions for a command line. Run from dart/:
//
//   dart run example/run_suggest.dart ls
//   dart run example/run_suggest.dart "git sta"
//   dart run example/run_suggest.dart "cd " --shell zsh
//   dart run example/run_suggest.dart "cd " --use-adapter   # same result via CompleteAdapter
//
// First argument = command line string to complete.
// --shell (or -s) = shell name (bash|zsh|fish|pwsh|powershell|cmd|xonsh|nushell). Default: bash.
// --use-adapter = use LocalCompleteAdapter (exercises adapter path; result should match default).
// cwd = current working directory.

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

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

/// Run suggestions for [cmd] in [cwd] with optional [adapter].
/// When [useAdapter] is true, uses [LocalCompleteAdapter] so the adapter path is exercised
/// (e.g. for integration test: output should match the default path).
Future<void> runSuggest(
  String cmd,
  String cwd,
  Shell shell, {
  bool useAdapter = false,
}) async {
  registerBuiltinSpecs();
  final blob = useAdapter
      ? await getSuggestions(cmd, cwd, shell, adapter: LocalCompleteAdapter())
      : await getSuggestions(cmd, cwd, shell);
  if (blob == null) {
    print('(no spec or no suggestions)');
    return;
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

void main(List<String> args) async {
  String? cmd;
  var shell = Shell.bash;
  var useAdapter = false;

  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--shell' || args[i] == '-s') {
      if (i + 1 < args.length) {
        shell = _parseShell(args[++i]);
      }
    } else if (args[i] == '--use-adapter') {
      useAdapter = true;
    } else if (!args[i].startsWith('-')) {
      cmd = args[i];
      break;
    }
  }

  if (cmd == null || cmd.isEmpty) {
    print(
        'Usage: dart run example/run_suggest.dart <command_line> [--shell bash] [--use-adapter]');
    print('Example: dart run example/run_suggest.dart ls');
    print('         dart run example/run_suggest.dart "git sta" -s zsh');
    print('         dart run example/run_suggest.dart "cd " --use-adapter');
    exit(1);
  }

  final cwd = Directory.current.path;
  await runSuggest(cmd, cwd, shell, useAdapter: useAdapter);
}
