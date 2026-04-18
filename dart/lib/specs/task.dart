// AI-generated from TypeScript source: task.ts
import 'package:autocomplete/src/spec.dart';
import 'task/go_task.dart' as go_task;
import 'task/taskwarrior.dart';

FigSpec _taskRootFrom(FigSpec spec) => FigSpec(
      name: 'task',
      displayName: spec.displayName,
      description: spec.description,
      subcommands: spec.subcommands,
      options: spec.options,
      args: spec.args,
      icon: spec.icon,
      filterStrategy: spec.filterStrategy,
      hidden: spec.hidden,
      insertValue: spec.insertValue,
      replaceValue: spec.replaceValue,
      priority: spec.priority,
      deprecated: spec.deprecated,
      parserDirectives: spec.parserDirectives,
      requiresSubcommand: spec.requiresSubcommand,
      additionalSuggestions: spec.additionalSuggestions,
      loadSpec: spec.loadSpec,
    );

final FigSpec taskSpec = FigSpec(
  name: 'task',
  // loadSpec doesn't work for root commands; detect which `task` implementation is installed.
  generateSpec: (
    List<String> tokens,
    ExecuteCommandFunction executeShellCommand,
  ) async {
    try {
      final output = await executeShellCommand(
        const ExecuteCommandInput(
          command: 'task',
          args: ['--version'],
        ),
      );
      if (output.stdout.contains('Task')) {
        return _taskRootFrom(go_task.completionSpec);
      }
    } catch (_) {}

    return _taskRootFrom(taskwarriorSpec);
  },
  generateSpecCacheKey: 'version-detect',
);
