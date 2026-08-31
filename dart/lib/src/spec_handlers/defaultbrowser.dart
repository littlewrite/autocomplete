// Hand-written dynamic handlers migrated from src/defaultbrowser.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const defaultbrowserInstalledBrowsersPostProcessHandler =
    'manual.src_defaultbrowser.spec.args.generators.postprocess';

/// `defaultbrowser` output: one browser per line, with the currently set
/// browser prefixed by `*`. Suggests every other browser name.
List<FigSuggestion> _installedBrowsers(String output, [List<String>? tokens]) {
  tokens;
  final browsers = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    // The already set browser is marked with `*` and ignored.
    if (line.startsWith('*')) continue;
    final browserName = line.trim();
    if (browserName.isEmpty) continue;
    browsers.add(FigSuggestion(name: browserName));
  }
  return browsers;
}

/// Registers the defaultbrowser generator referenced by the shipped JSON.
void registerDefaultbrowserHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      defaultbrowserInstalledBrowsersPostProcessHandler, _installedBrowsers);
}
