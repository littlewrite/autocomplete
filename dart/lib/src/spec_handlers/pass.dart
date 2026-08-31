// Hand-written dynamic handlers migrated from src/pass.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const passListPasswordsCustomHandler =
    'manual.src_pass.definition.listpasswords.custom';
const passListDirectoriesCustomHandler =
    'manual.src_pass.definition.listdirectories.custom';

const _passwordIcon = '🔐';
const _directoryIcon = '📁';

String? _home(FigGeneratorContext? context) {
  if (context == null) return null;
  return context.environmentVariables['HOME'];
}

/// Strips the password-store prefix and the `.gpg` suffix from a path line,
/// mirroring `path.split(".password-store/").pop().replace(".gpg", "")`.
String _passwordName(String line) =>
    line.split('.password-store/').last.replaceFirst('.gpg', '');

/// Strips the password-store prefix from a directory line, mirroring
/// `dir.split(".password-store/").pop()`.
String _directoryName(String line) =>
    line.split('.password-store/').last;

/// Greps the password store for every file (`grep -l ""` matches all lines)
/// and turns each path into a password suggestion.
Future<List<FigSuggestion>> _listPasswords(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'grep',
    args: [
      '-r',
      '-l',
      '',
      '${_home(context)}/.password-store',
      '--exclude-dir=.git',
    ],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .map((line) => FigSuggestion(
            name: _passwordName(line),
            icon: _passwordIcon,
          ))
      .toList();
}

/// Recursively lists the password-store directories (`ls -dR1a`) and turns
/// each entry into a folder suggestion.
Future<List<FigSuggestion>> _listDirectories(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'ls',
    args: ['-dR1a', '${_home(context)}/.password-store'],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .map((line) => FigSuggestion(
            name: _directoryName(line),
            icon: _directoryIcon,
          ))
      .toList();
}

/// Registers the pass generators referenced by the shipped pass JSON.
void registerPassHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(passListPasswordsCustomHandler, _listPasswords);
  registry.registerCustom(passListDirectoriesCustomHandler, _listDirectories);
}
