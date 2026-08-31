// Hand-written dynamic handlers migrated from src/login.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const loginPostProcessHandler = 'manual.src_login.spec.args.generators.postprocess';

const _loginIcon = '👤';

/// `cat /etc/passwd` output: each line is `name:...:shell`. Suggest the first
/// `:`-delimited field as the username. Blank lines are dropped.
List<FigSuggestion> _usernames(String output, [List<String>? tokens]) {
  tokens;
  final usernames = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final username = line.split(':').first;
    if (username.isEmpty) continue;
    usernames.add(FigSuggestion(name: username, icon: _loginIcon));
  }
  return usernames;
}

/// Registers the login generator referenced by the shipped login JSON.
void registerLoginHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(loginPostProcessHandler, _usernames);
}
