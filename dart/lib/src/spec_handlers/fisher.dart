// Hand-written dynamic handlers migrated from src/fisher.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const fisherInstalledPluginsRemovePostProcessHandler =
    'manual.src_fisher.spec.subcommands_1_.args.generators.postprocess';
const fisherInstalledPluginsUpdatePostProcessHandler =
    'manual.src_fisher.spec.subcommands_2_.args.generators.postprocess';

/// `fisher list` output: `fisher` prints a right-aligned `plugins` column
/// header, so the first 19 characters of the output are leading indentation.
/// Mirrors src/fisher.ts: drop the offset, then turn each trimmed line into a
/// plugin suggestion. Empty output yields no suggestions.
List<FigSuggestion> _installedPlugins(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.isEmpty) return const [];
  // Dart's substring throws past the end of a short string, unlike JS which
  // clamps; treat any output shorter than the header offset as having no body.
  final body = output.length > 19 ? output.substring(19) : '';
  final suggestions = <FigSuggestion>[];
  for (final line in body.split('\n')) {
    suggestions.add(FigSuggestion(
      name: line.trim(),
      icon: 'fig://icon?type=package',
      description: 'Plugin',
    ));
  }
  return suggestions;
}

/// Registers the fisher generators referenced by the shipped fisher JSON.
void registerFisherHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      fisherInstalledPluginsRemovePostProcessHandler, _installedPlugins);
  registry.registerPostProcess(
      fisherInstalledPluginsUpdatePostProcessHandler, _installedPlugins);
}
