// Hand-written dynamic handlers migrated from src/kind.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const kindClusterGeneratorPostProcessHandler =
    'manual.src_kind.definition.clustergenerator.postprocess';
const kindNodeGeneratorPostProcessHandler =
    'manual.src_kind.definition.nodegenerator.postprocess';

/// `kind get clusters` output: one cluster name per line. Faithful to the TS
/// `out.split('\n')` mapping, so an empty or trailing-newline output keeps the
/// resulting empty entry (matching the original Fig spec).
List<FigSuggestion> _clusters(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((cluster) => FigSuggestion(
            name: cluster,
            description: 'Cluster',
          ))
      .toList();
}

/// `kind get nodes -A` output: one node name per line. Faithful to the TS
/// `out.split('\n')` mapping, so an empty or trailing-newline output keeps the
/// resulting empty entry (matching the original Fig spec).
List<FigSuggestion> _nodes(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((node) => FigSuggestion(
            name: node,
            description: 'Node',
          ))
      .toList();
}

/// Registers the kind generators referenced by the shipped kind JSON.
void registerKindHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      kindClusterGeneratorPostProcessHandler, _clusters);
  registry.registerPostProcess(kindNodeGeneratorPostProcessHandler, _nodes);
}
