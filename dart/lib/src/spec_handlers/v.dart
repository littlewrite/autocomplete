// Hand-written dynamic handlers migrated from src/v.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const vHelpTopicsPostProcessHandler =
    'manual.src_v.spec.subcommands_15_.args.generators.postprocess';

/// `v help topics` output: a single "Known help topics: a, b, c." line.
/// Strips the 19-char leading phrase and the trailing dot, splits on ", ",
/// drops the implicit `other` topic and suggests the rest. Mirrors
/// `src/v.ts` (`out.trim().slice(19, -1)`).
List<FigSuggestion> _helpTopics(String output, [List<String>? tokens]) {
  final trimmed = output.trim();
  if (trimmed.length < 20) return const [];
  final body = trimmed.substring(19, trimmed.length - 1);
  final topics = <FigSuggestion>[];
  for (final topic in body.split(', ')) {
    if (topic == 'other' || topic.isEmpty) continue;
    topics.add(FigSuggestion(
      priority: 0,
      name: topic,
      description: 'Display help for: "$topic"',
    ));
  }
  return topics;
}

/// Registers the v generators referenced by the shipped v JSON.
void registerVHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(vHelpTopicsPostProcessHandler, _helpTopics);
}
