// Hand-written dynamic handlers migrated from src/passwd.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const passwdUsersPostProcessHandler =
    'manual.src_passwd.spec.options_2_.args.generators.postprocess';

/// macOS user icon shipped by src/passwd.ts.
const _userIcon = '👤';

/// `dscl . -list /Users | grep -E -v '^_'` output: one macOS user name per
/// line. Trim the whole output, then suggest each non-empty line, mirroring
/// the original TS post-processor.
List<FigSuggestion> _users(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final users = <FigSuggestion>[];
  for (final name in output.trim().split('\n')) {
    if (name.isEmpty) continue;
    users.add(FigSuggestion(name: name, icon: _userIcon));
  }
  return users;
}

/// Registers the passwd generator referenced by the shipped passwd JSON.
void registerPasswdHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(passwdUsersPostProcessHandler, _users);
}
