// Hand-written dynamic handlers migrated from src/rake.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const rakeTasksPostProcessHandler =
    'manual.src_rake.spec.args.generators.postprocess';

/// `rake --tasks --silent` output: one `rake <task>    # <description>` line
/// per task. The source splits each line on `#`, trims the left part, then
/// slices off the leading `rake ` prefix; the right part becomes the
/// description. Lines without a `#` separator keep the task name with no
/// description instead of throwing.
List<FigSuggestion> _tasks(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  return output.split('\n').map((line) {
    final parts = line.split('#');
    final name = parts.first.trim();
    final taskName = name.length >= 'rake '.length
        ? name.substring('rake '.length)
        : '';
    final description = parts.length > 1 ? parts[1].trim() : null;
    return FigSuggestion(name: taskName, description: description);
  }).toList();
}

/// Registers the rake generators referenced by the shipped rake JSON.
void registerRakeHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(rakeTasksPostProcessHandler, _tasks);
}
