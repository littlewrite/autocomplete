// AI-generated from TypeScript source: task.ts
import 'package:autocomplete/src/spec.dart';
import 'task_go_task.dart';
import 'task_taskwarrior.dart';

final FigSpec taskSpec = FigSpec(
  name: 'task',
  description: 'Task runner',
  // The original TS spec uses generateSpec to dynamically switch between go-task and taskwarrior.
  // We prioritize go-task here as the default.
  // If the runtime supports generateSpec, logic similar to the following could be implemented:
  /*
  generateSpec: (dynamic context, dynamic executeShellCommand) async {
    try {
      final output = await executeShellCommand('task', ['--version']);
      if (output.contains('Go Task')) {
        return goTaskSpec;
      }
      return taskwarriorSpec;
    } catch (e) {
      return taskwarriorSpec;
    }
  },
  */
  // For now, we statically link to go-task properties, effectively making 'task' an alias for 'go-task'.
  icon: goTaskSpec.icon,
  args: goTaskSpec.args,
  options: goTaskSpec.options,
  subcommands: goTaskSpec.subcommands,
);
