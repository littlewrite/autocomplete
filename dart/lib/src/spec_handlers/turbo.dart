// Hand-written dynamic handlers migrated from src/turbo.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const turboTasksPostProcessHandler =
    'manual.src_turbo.spec.subcommands_6_.args.generators.postprocess';

/// `turbo run` tasks come from the `pipeline` map in turbo.json. Each pipeline
/// key is a task; `dependsOn`/`outputs` entries describe its dependencies and
/// cache outputs, mirroring the source's description builder.
List<FigSuggestion> _tasks(String output, [List<String>? tokens]) {
  dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } catch (_) {
    return const [];
  }
  if (decoded is! Map) return const [];
  final pipeline = decoded['pipeline'];
  if (pipeline is! Map) return const [];
  final tasks = <FigSuggestion>[];
  for (final entry in pipeline.entries) {
    final value = entry.value;
    final descriptionParts = <String>[];
    if (value is Map) {
      final dependsOn = value['dependsOn'];
      if (dependsOn is List) {
        descriptionParts.add(
            "depends on ${dependsOn.map((item) => '\'$item\'').join(', ')}");
      }
      final outputs = value['outputs'];
      if (outputs is List) {
        descriptionParts.add(
            "outputs ${outputs.map((item) => '\'$item\'').join(', ')}");
      }
    }
    tasks.add(FigSuggestion(
      name: entry.key.toString(),
      description: descriptionParts.isNotEmpty
          ? 'Task: ${descriptionParts.join(', ')}'
          : 'Task',
    ));
  }
  return tasks;
}

/// Registers the turbo generator referenced by the shipped turbo JSON.
void registerTurboHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(turboTasksPostProcessHandler, _tasks);
}
