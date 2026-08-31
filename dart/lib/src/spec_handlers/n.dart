// Hand-written dynamic handlers migrated from src/n.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const nVersionArgGeneratorPostProcessHandler =
    'manual.src_n.definition.versionarg.generators.postprocess';

/// `n lsr --all` output post-processor.
///
/// Drops the first (header) line, then for every remaining version line adds
/// the full version, the major.minor prefix and the bare major, deduplicated
/// in first-seen order. Each suggestion is offered under both the bare version
/// and the `v`-prefixed form.
List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  final set = <String>{};
  final versions = output.split('\n').skip(1);
  for (final version in versions) {
    set.add(version); // 16.1.2
    final split = version.split('.');
    // TS: split[1] is undefined for a bare major, and string concatenation
    // renders it as "undefined" (e.g. ".undefined" for an empty line).
    set.add('${split[0]}.${split.length > 1 ? split[1] : 'undefined'}'); // 16.1
    set.add(split[0]); // 16
  }
  return set.map((version) {
    return FigSuggestion(
      name: [version, 'v$version'],
      description: 'Node.js $version',
    );
  }).toList();
}

/// Registers the n generators referenced by the shipped n JSON.
void registerNHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      nVersionArgGeneratorPostProcessHandler, _versions);
}
