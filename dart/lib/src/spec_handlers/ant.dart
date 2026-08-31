// Hand-written dynamic handlers migrated from src/ant.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const antTasksPostProcessHandler =
    'manual.src_ant.spec.args.generators.postprocess';

/// `ant -p` project-help output: one indented task name per line. The script
/// already strips the leading whitespace (`grep '^\s' | tr -d ' '`), so each
/// non-empty line becomes a suggestion named after the task.
List<FigSuggestion> _tasks(String output, [List<String>? tokens]) {
  tokens;
  final tasks = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.isEmpty) continue;
    tasks.add(FigSuggestion(
      name: line,
      description: 'Execute $line task',
      type: SuggestionType.arg,
    ));
  }
  return tasks;
}

/// Registers the ant generator referenced by the shipped ant JSON.
void registerAntHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(antTasksPostProcessHandler, _tasks);
}
