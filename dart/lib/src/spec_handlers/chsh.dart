// Hand-written dynamic handlers migrated from src/chsh.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const chshShellsPostProcessHandler =
    'manual.src_chsh.spec.options_0_.args.generators.postprocess';

/// `chsh -l` output: bail out on the `fatal:` preamble, then map each line to a
/// shell path, stripping the `*` that marks the current shell.
List<FigSuggestion> _shells(String output, [List<String>? tokens]) {
  tokens;
  if (output.startsWith('fatal:')) {
    return const [];
  }
  final shells = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final name = line.replaceFirst('*', '').trim();
    if (name.isEmpty) continue;
    shells.add(FigSuggestion(name: name));
  }
  return shells;
}

/// Registers the chsh generators referenced by the shipped chsh JSON.
void registerChshHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(chshShellsPostProcessHandler, _shells);
}
