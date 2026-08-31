// Hand-written dynamic handlers migrated from src/expressots.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const expressotsTemplatesPostProcessHandler =
    'manual.src_expressots.spec.subcommands_0_.options_0_.args.generators.postprocess';
const expressotsPackageManagerPostProcessHandler =
    'manual.src_expressots.spec.subcommands_0_.options_1_.args.generators.postprocess';

/// `expressots new --template <tab>`: the script output carries no useful
/// payload, so suggest the two supported templates directly.
List<FigSuggestion> _templates(String output, [List<String>? tokens]) {
  tokens;
  return const [
    FigSuggestion(
      name: 'opinionated',
      description: 'An opinionated ExpressoTS application',
    ),
    FigSuggestion(
      name: 'non-opinionated',
      description: 'An ExpressoTS application',
    ),
  ];
}

/// `expressots new --package-manager <tab>`: suggest the supported package
/// managers.
List<FigSuggestion> _packageManagers(String output, [List<String>? tokens]) {
  tokens;
  return const [
    FigSuggestion(name: 'npm', description: ''),
    FigSuggestion(name: 'yarn', description: ''),
    FigSuggestion(name: 'pnpm', description: ''),
  ];
}

/// Registers the expressots generators referenced by the shipped expressots JSON.
void registerExpressotsHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      expressotsTemplatesPostProcessHandler, _templates);
  registry.registerPostProcess(
      expressotsPackageManagerPostProcessHandler, _packageManagers);
}
