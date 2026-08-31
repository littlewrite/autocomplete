// Hand-written dynamic handlers migrated from src/ng.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `ng generate component --project` generator post-processor.
const ngComponentProjectsPostProcessHandler =
    'manual.src_ng.spec.subcommands_1_.subcommands_1_.options_0_.args.generators.postprocess';

/// `ng generate class --project` generator post-processor.
const ngClassProjectsPostProcessHandler =
    'manual.src_ng.spec.subcommands_1_.subcommands_3_.options_0_.args.generators.postprocess';

/// `ng config projects` output: a JSON object whose keys are the project names
/// and whose values carry a `projectType`. Suggests each project name,
/// described by its project type.
List<FigSuggestion> _projects(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    return obj.entries.map((entry) {
      final details = entry.value as Map<String, dynamic>;
      return FigSuggestion(
        name: entry.key,
        description: details['projectType'],
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the ng generators referenced by the shipped ng JSON.
void registerNgHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      ngComponentProjectsPostProcessHandler, _projects);
  registry.registerPostProcess(ngClassProjectsPostProcessHandler, _projects);
}
