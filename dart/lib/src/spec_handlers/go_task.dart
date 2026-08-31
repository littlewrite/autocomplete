// Hand-written dynamic handlers migrated from src/task/go-task.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const goTaskTasksPostProcessHandler =
    'manual.src_task_go-task.spec.args.generators.postprocess';

/// `task -a` lists tasks one per line, each starting with `* `. The task name
/// precedes `: ` and any description follows it; a trailing colon on the name
/// is stripped (a task with no description still names itself).
List<FigSuggestion> _tasks(String output, [List<String>? tokens]) {
  if (output.contains('task: No Taskfile found')) return const [];
  final tasks = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.startsWith('*')) continue;
    final taskInfo = line.length > 2 ? line.substring(2).trim() : '';
    final parts = taskInfo.split(': ');
    var name = parts.isEmpty ? '' : parts[0];
    if (name.endsWith(':')) name = name.substring(0, name.length - 1);
    final description = parts.length > 1 ? parts[1].trim() : null;
    tasks.add(
        FigSuggestion(name: name, description: description, priority: 80));
  }
  return tasks;
}

/// Registers the go-task generator referenced by the shipped go-task JSON.
void registerGoTaskHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(goTaskTasksPostProcessHandler, _tasks);
}
