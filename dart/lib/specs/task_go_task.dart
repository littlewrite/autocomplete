// AI-generated from TypeScript source: task/go-task.ts
import 'package:autocomplete/src/spec.dart';

const int tasksPriority = 80;
const List<String> taskfileFlags = ['-t', '--taskfile'];
const List<String> directoryFlags = ['-d', '--dir'];

final FigGenerator tasksGenerator = FigGenerator(
  script: ['task', '-a'],
  postProcess: (String output, [List<String>? tokens]) {
    if (output.contains('task: No Taskfile found')) {
      return [];
    }

    return output
        .split('\n')
        .where((task) => task.startsWith('*'))
        .map((task) {
          final taskInfo = task.substring(2).trim();
          final parts = taskInfo.split(': ');
          final name = parts[0];
          final description = parts.length > 1 ? parts[1] : null;

          return FigSuggestion(
            name: name.replaceAll(RegExp(r':$'), ''),
            description: description?.trim(),
            icon: 'fig://icon?type=command',
            priority: tasksPriority,
          );
        })
        .toList();
  },
);

final FigSpec goTaskSpec = FigSpec(
  name: 'go-task',
  description: 'A task runner / simpler Make alternative written in Go',
  icon: 'https://taskfile.dev/favicon.ico',
  args: [
    FigArg(
      generators: [tasksGenerator],
      isVariadic: true,
      isOptional: true,
    ),
  ],
  options: [
    FigOption(
      name: ['-a', '--list-all'],
      description: 'Lists tasks with or without a description',
    ),
    FigOption(
      name: ['-c', '--color'],
      description: 'Colored output. Enabled by default. Set flag to false or use NO_COLOR=1 to disable (default true)',
      requiresEquals: true,
      args: [
        FigArg(
          name: 'color',
          suggestions: [
            FigSuggestion(name: 'true'),
            FigSuggestion(name: 'false'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-C', '--concurrency'],
      description: 'Limit number tasks to run concurrently',
      args: [
        FigArg(
          name: 'number',
        ),
      ],
    ),
    FigOption(
      name: directoryFlags,
      description: 'Sets directory of execution',
      exclusiveOn: taskfileFlags,
      args: [
        FigArg(
          name: 'path',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--dry'],
      description: 'Compiles and prints tasks in the order that they would be run, without executing them',
    ),
    FigOption(
      name: ['-f', '--force'],
      description: 'Forces execution even when the task is up-to-date',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Shows Task usage',
    ),
    FigOption(
      name: ['-i', '--init'],
      description: 'Creates a new Taskfile.yml in the current folder',
    ),
    FigOption(
      name: ['-l', '--list'],
      description: 'Lists tasks with description of current Taskfile',
    ),
    FigOption(
      name: ['-o', '--output'],
      description: 'Sets output style',
      args: [
        FigArg(
          name: 'output',
          suggestions: [
            FigSuggestion(name: 'interleaved'),
            FigSuggestion(name: 'group'),
            FigSuggestion(name: 'prefixed'),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-p', '--parallel'],
      description: 'Executes tasks provided on command line in parallel',
    ),
    FigOption(
      name: ['-s', '--silent'],
      description: 'Disables echoing',
    ),
    FigOption(
      name: ['--status'],
      description: 'Exits with non-zero exit code if any of the given tasks is not up-to-date',
    ),
    FigOption(
      name: ['--summary'],
      description: 'Show summary about a task',
    ),
    FigOption(
      name: taskfileFlags,
      description: 'Choose which Taskfile to run',
      exclusiveOn: directoryFlags,
      args: [
        FigArg(
          name: 'taskfile',
          defaultValue: 'Taskfile.yml',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Enables verbose mode',
    ),
    FigOption(
      name: ['--version'],
      description: 'Show Task version',
    ),
    FigOption(
      name: ['-w', '--watch'],
      description: 'Enables watch of the given task',
    ),
    FigOption(
      name: ['--'],
      description: 'Pass variables to the task',
      args: [
        FigArg(
          name: 'variables',
          isVariadic: true,
          optionsCanBreakVariadicArg: false,
        ),
      ],
    ),
  ],
);
