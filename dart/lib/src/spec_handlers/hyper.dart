// Hand-written dynamic handlers migrated from src/hyper.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const hyperInstalledPluginsPostProcessHandler =
    'manual.src_hyper.spec.subcommands_6_.args.generators.postprocess';

/// `hyper list` output: one installed plugin name per line. Suggest each
/// non-empty line, described as a plugin name. Blank lines (including the
/// trailing newline artifact) are skipped.
List<FigSuggestion> _installedPlugins(String output, [List<String>? tokens]) {
  tokens;
  final plugins = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final plugin = line.trim();
    if (plugin.isEmpty) continue;
    plugins.add(FigSuggestion(
      name: plugin,
      description: 'Plugin name',
    ));
  }
  return plugins;
}

/// Registers the hyper generator referenced by the shipped hyper JSON.
void registerHyperHandlers(JsonHandlerRegistry registry) {
  registry
      .registerPostProcess(hyperInstalledPluginsPostProcessHandler,
          _installedPlugins);
}
