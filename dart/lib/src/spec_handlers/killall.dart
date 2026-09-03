// Hand-written dynamic handlers migrated from src/killall.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const killallProcessesPostProcessHandler =
    'manual.src_killall.spec.args.generators.postprocess';
const killallSignalOptionsHandler = 'manual.src_killall.spec.options_8_';
const killallUsersPostProcessHandler =
    'manual.src_killall.spec.options_9_.args.generators.postprocess';

/// The signal names accepted by `-SIG<NAME>`, mirroring the `signals` array in
/// src/killall.ts. TERM is excluded because it is the default signal.
const _signals = [
  'hup',
  'int',
  'quit',
  'ill',
  'trap',
  'abrt',
  'emt',
  'fpe',
  'kill',
  'bus',
  'segv',
  'sys',
  'pipe',
  'alrm',
  'urg',
  'stop',
  'tstp',
  'cont',
  'chld',
  'ttin',
  'ttou',
  'io',
  'xcpu',
  'xfsz',
  'vtalrm',
  'prof',
  'winch',
  'info',
  'usr1',
  'usr2',
];

const _gearIcon = 'fig://icon?type=gear';
const _userIcon = 'fig://template?badge=👤';

/// `ps -A -o comm | sort -u` output: one executable path per line. Suggests
/// the basename, described by the full path. App bundles get a `fig://` icon
/// pointing at the bundle and a higher priority when the name is clean
/// (no `(`, `_` or `.`); everything else uses the gear icon at priority 40.
List<FigSuggestion> _processes(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  for (final path in output.trim().split('\n')) {
    final appExtIndex = path.indexOf('.app/');
    final isApp = appExtIndex != -1;
    final name = path.substring(path.lastIndexOf('/') + 1);
    final nameChars = name.split('').toSet();
    const badChars = ['(', '_', '.'];
    final hasBadChar = badChars.any((char) => nameChars.contains(char));
    suggestions.add(FigSuggestion(
      name: name,
      description: path,
      priority: !hasBadChar && isApp ? 51 : 40,
      icon: isApp ? 'fig://${path.substring(0, appExtIndex + 4)}' : _gearIcon,
    ));
  }
  return suggestions;
}

/// The `-SIG*` flags produced by the `...signals.map(...)` spread in
/// src/killall.ts. The runtime has no option-generating slot, so this surfaces
/// the same names as suggestions; the shipped JSON keeps the original option
/// handler reference intact.
List<FigOption> _signalOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  tokens;
  return _signals.map((signal) {
    final upper = signal.toUpperCase();
    return FigOption(
      name: '-SIG$upper',
      description: 'Send $upper instead of TERM',
    );
  }).toList();
}

/// `dscl . -list /Users | grep -v '^_'` output: one username per line.
List<FigSuggestion> _users(String output, [List<String>? tokens]) {
  tokens;
  return output
      .trim()
      .split('\n')
      .map((username) => FigSuggestion(name: username, icon: _userIcon))
      .toList();
}

/// Registers the killall generators referenced by the shipped killall JSON.
void registerKillallHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(killallProcessesPostProcessHandler, _processes);
  registry.registerOptions(killallSignalOptionsHandler, _signalOptions);
  registry.registerPostProcess(killallUsersPostProcessHandler, _users);
}
