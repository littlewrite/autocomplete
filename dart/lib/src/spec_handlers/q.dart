// Hand-written dynamic handlers migrated from src/q.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const qThemesPostProcessHandler =
    'manual.src_q.spec.subcommands_9_.args.generators.postprocess';

/// `q theme --list` prints the installed theme names, one per line. The source
/// appends the three builtin themes (system/light/dark) after the listed ones.
List<FigSuggestion> _themes(String output, [List<String>? tokens]) {
  final themes = <FigSuggestion>[];
  for (final name in output.split('\n')) {
    if (name.isEmpty) continue;
    themes.add(FigSuggestion(name: name, icon: '🎨'));
  }
  if (themes.isEmpty) return const [];
  themes.addAll(const [
    FigSuggestion(name: 'system', icon: '💻', priority: 51),
    FigSuggestion(
        name: 'light',
        icon: 'fig://template?color=ffffff&badge=☀️',
        priority: 51),
    FigSuggestion(
        name: 'dark',
        icon: 'fig://template?color=000000&badge=🌙',
        priority: 51),
  ]);
  return themes;
}

/// Registers the q generator referenced by the shipped q JSON.
void registerQHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(qThemesPostProcessHandler, _themes);
}
