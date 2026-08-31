// Hand-written dynamic handlers migrated from src/kill.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const killPidsPostProcessHandler =
    'manual.src_kill.spec.args.generators.postprocess';
const killSignalNamesPostProcessHandler =
    'manual.src_kill.spec.options_0_.args.generators.postprocess';

/// Icon for a process's executable path. App bundles map to a `fig://` URL
/// pointing at the `.app` bundle; everything else gets a plain gear icon.
String _processIcon(String path) {
  final idx = path.indexOf('.app/');
  if (idx == -1) return 'fig://icon?type=gear';
  return 'fig://${path.substring(0, idx + 4)}';
}

/// `ps axo pid,comm | sed 1d` output: one `pid  /path/to/executable` per line.
/// Suggests the pid, described by the full path and displayed as
/// `pid (basename)`. Lines without a pid and a path are skipped so a trailing
/// newline (the shell's default) does not produce a bogus suggestion.
List<FigSuggestion> _processes(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final fields = line.trim().split(RegExp(r'\s+'));
    if (fields.length < 2) continue;
    final pid = fields[0];
    final path = fields[1];
    final name = path.substring(path.lastIndexOf('/') + 1);
    suggestions.add(FigSuggestion(
      name: pid,
      description: path,
      displayName: '$pid ($name)',
      icon: _processIcon(path),
    ));
  }
  return suggestions;
}

/// `env kill -l` output: the available signal names. Suggests each word,
/// describing it as an alternative to TERM.
List<FigSuggestion> _signalNames(String output, [List<String>? tokens]) {
  tokens;
  return RegExp(r'\w+')
      .allMatches(output)
      .map((match) {
        final name = match.group(0)!;
        return FigSuggestion(
          name: name,
          description: 'Send $name instead of TERM',
          icon: 'fig://icon?type=string',
        );
      })
      .toList();
}

/// Registers the kill generators referenced by the shipped kill JSON.
void registerKillHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(killPidsPostProcessHandler, _processes);
  registry.registerPostProcess(killSignalNamesPostProcessHandler, _signalNames);
}
