// Hand-written dynamic handlers migrated from src/black.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const blackVersionsPostProcessHandler =
    'manual.src_black.spec.options_15_.args.generators.postprocess';

/// `gh release list --repo psf/black` output. Black keeps the run only when
/// the release table (which includes a "Latest" column) is present, then
/// suggests the version tag before the first tab on each line.
List<FigSuggestion> _blackVersions(String output, [List<String>? tokens]) {
  tokens;
  if (!output.contains('Latest')) return const [];
  return output.split('\n').map((line) {
    return FigSuggestion(
      name: line.split('\t').first,
      description: 'Version',
    );
  }).toList();
}

/// Registers the black generator referenced by the shipped black JSON.
void registerBlackHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(blackVersionsPostProcessHandler, _blackVersions);
}
