// Example: get suggestions for a command line. Run from dart/:
//
//   dart run example/example.dart ls
//   dart run example/example.dart "git sta"
//   dart run example/example.dart "cd " --shell zsh
//
// First argument = command line string to complete.
// --shell (or -s) = shell name (bash|zsh|fish|pwsh|powershell|cmd|xonsh|nushell). Default: bash.
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
    print('Usage: dart run example/example.dart <command_line> [--shell bash]');
    print('Example: dart run example/example.dart ls');
    print('         dart run example/example.dart "git sta" -s zsh');
    exit(1);
  }

  registerBuiltinSpecs();
  final cwd = Directory.current.path;

  final blob = await getSuggestions(cmd, cwd, shell);
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
