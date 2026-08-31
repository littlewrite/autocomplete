// Hand-written dynamic handlers migrated from src/vite.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const viteEnvModePostProcessHandler =
    'manual.src_vite.spec.options_14_.args.generators.postprocess';

/// `vite --mode <name>` suggestions from `ls -l1A` output: keeps only entries
/// starting with `.env.` (for example `.env.development`). Mirrors
/// `src/vite.ts` (`line.startsWith(".env.")`).
List<FigSuggestion> _envMode(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .where((line) => line.startsWith('.env.'))
      .map((line) => FigSuggestion(name: line))
      .toList();
}

/// Registers the vite generators referenced by the shipped vite JSON.
void registerViteHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(viteEnvModePostProcessHandler, _envMode);
}
