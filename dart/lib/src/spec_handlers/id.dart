// Hand-written dynamic handlers migrated from src/id.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const idUsersPostProcessHandler =
    'manual.src_id.spec.args.generators.postprocess';

const _userIcon = 'fig://template?badge=👤';

/// `dscl . -list /Users | grep -v '^_'` output: one username per line.
/// Suggests each username, labeled with the person badge icon.
List<FigSuggestion> _users(String output, [List<String>? tokens]) {
  tokens;
  final users = <FigSuggestion>[];
  for (final line in output.trim().split('\n')) {
    final username = line.trim();
    if (username.isEmpty) continue;
    users.add(FigSuggestion(
      name: username,
      icon: _userIcon,
    ));
  }
  return users;
}

/// Registers the id generators referenced by the shipped id JSON.
void registerIdHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(idUsersPostProcessHandler, _users);
}
