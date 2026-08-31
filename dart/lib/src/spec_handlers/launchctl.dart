// Hand-written dynamic handlers migrated from src/launchctl.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const launchctlListPostProcessHandler =
    'manual.src_launchctl.definition.listgenerator.postprocess';

/// `launchctl list` output: three tab-separated columns `PID	Status	Label`.
/// Drop the header row (the first line), keep the label (column index 2) of
/// each remaining line, and drop lines that do not carry a label.
List<FigSuggestion> _list(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n').skip(1)) {
    final parts = line.split(RegExp(r'\s'));
    if (parts.length > 2 && parts[2].isNotEmpty) {
      suggestions.add(FigSuggestion(name: parts[2]));
    }
  }
  return suggestions;
}

/// Registers the launchctl generators referenced by the shipped launchctl JSON.
void registerLaunchctlHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(launchctlListPostProcessHandler, _list);
}
