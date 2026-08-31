// Hand-written dynamic handlers migrated from src/bundle.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const bundleGemfileGemsPostProcessHandler =
    'manual.src_bundle.definition.gemfilegemsgenerator.postprocess';

/// `bundle list --name-only` output: one gem name per line. The source splits
/// on `\n` and keeps every entry (including a trailing empty one when the
/// output ends in a newline), tagging each line with the package icon.
List<FigSuggestion> _gemfileGems(String output, [List<String>? tokens]) {
  return output.split('\n').map((gem) {
    return FigSuggestion(
      name: gem,
      icon: '📦',
      description: 'Gem',
    );
  }).toList();
}

/// Registers the bundle generators referenced by the shipped bundle JSON.
void registerBundleHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(bundleGemfileGemsPostProcessHandler, _gemfileGems);
}
