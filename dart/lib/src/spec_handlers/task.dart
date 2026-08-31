// Hand-written dynamic handlers migrated from src/task.ts (which dispatches to
// src/task/go-task.ts and src/task/taskwarrior.ts).
//
// The task JSON export keeps a single dynamic root: the `generateSpec` callback.
// It runs `task --version` and picks the go-task spec (the "Task runner /
// simpler Make alternative") when the output mentions "Task", otherwise the
// taskwarrior spec (a command line todo manager). Both candidate specs are
// reconstructed here exactly as their TS sources describe them, including the
// `task -a` tasks generator and the `task export` filters/modifications
// generators.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/task.ts.
const taskGenerateSpecHandler = 'manual.src_task.spec.generatespec';

/// go-task task suggestion priority.
const _tasksPriority = 80;

/// Taskwarrior recurrence keywords accepted by the `recur:` attribute.
const _recurringStrings = [
  'daily',
  'day',
  '1da',
  '2da',
  'weekdays',
  'weekly',
  '1wk',
  '2wk',
  'biweekly',
  'fortnight',
  'monthly',
  'month',
  '1mo',
  '2mo',
  'quarterly',
  '1qtr',
  '3qtr',
  'semiannual',
  'annual',
  'yearly',
  '1yr',
  '2yrs',
];

/// Taskwarrior built-in tags usable as `+TAG` filter suggestions.
const _defaultTags = [
  'ACTIVE',
  'COMPLETED',
  'LATEST',
  'PENDING',
  'SCHEDULED',
  'UDA',
  'YEAR',
  'ANNOTATED',
  'DELETED',
  'MONTH',
  'PRIORITY',
  'TAGGED',
  'UNBLOCKED',
  'YESTERDAY',
  'BLOCKED',
  'DUE',
  'ORPHAN',
  'PROJECT',
  'TEMPLATE',
  'UNTIL',
  'BLOCKING',
  'DUETODAY',
  'OVERDUE',
  'QUARTER',
  'TODAY',
  'WAITING',
  'CHILD',
  'INSTANCE',
  'PARENT',
  'READY',
  'TOMORROW',
  'WEEK',
];

/// Taskwarrior date keywords accepted by date attributes.
const _dateStrings = [
  'now',
  'today',
  'sod',
  'eod',
  'yesterday',
  'tomorrow',
  'monday',
  'tuesday',
  'wednesday',
  'thursday',
  'friday',
  'saturday',
  'sunday',
  'january',
  'february',
  'march',
  'april',
  'may',
  'june',
  'july',
  'august',
  'september',
  'october',
  'november',
  'december',
  'soy',
  'eoy',
  'eoq',
  'som',
  'socm',
  'eom',
  'ecom',
  'sow',
  'socw',
  'eow',
  'eocw',
  'soww',
  'eoww',
];

/// Date attribute prefixes, each combined with every [_dateStrings] keyword.
const _datePrefixes = [
  'due',
  'due.by',
  'due.before',
  'due.after',
  'scheduled',
  'scheduled.by',
  'scheduled.before',
  'scheduled.after',
  'until',
  'until.by',
  'until.before',
  'until.after',
  'wait',
  'wait.by',
  'wait.before',
  'wait.after',
  'entry',
  'entry.by',
  'entry.before',
  'entry.after',
];

const _priorities = ['H', 'M', 'L'];

/// Taskwarrior command icon (shared by add/start/stop).
const _taskwarriorIcon = 'https://f-droid.org/repo/icons-640/kvj.taskw.3.png';

// ============================================================================
// go-task
// ============================================================================

/// `tasksGenerator` from src/task/go-task.ts: `task -a` output lines starting
/// with `*` become task suggestions (`name: description`), honoring the
/// "No Taskfile found" guard.
List<FigSuggestion> _tasksPostProcess(String output, [List<String>? tokens]) {
  tokens;
  if (output.contains('task: No Taskfile found')) return const [];
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.startsWith('*')) continue;
    final taskInfo = line.substring(2).trim();
    final parts = taskInfo.split(': ');
    if (parts.isEmpty) continue;
    final name = parts.first.replaceAll(RegExp(r':$'), '');
    final description = parts.length > 1 ? parts[1].trim() : null;
    suggestions.add(FigSuggestion(
      name: name,
      description: description,
      icon: 'fig://icon?type=command',
      priority: _tasksPriority,
    ));
  }
  return suggestions;
}

FigGenerator _tasksGenerator() => FigGenerator(
      script: ['task', '-a'],
      postProcess: _tasksPostProcess,
    );

/// The go-task spec selected when `task --version` mentions "Task".
FigSpec _goTaskSpec() {
  return FigSpec(
    name: 'go-task',
    description: 'A task runner / simpler Make alternative written in Go',
    icon: 'https://taskfile.dev/favicon.ico',
    args: [
      FigArg(
        generators: [_tasksGenerator()],
        isVariadic: true,
        isOptional: true,
      ),
    ],
    options: _goTaskOptions(),
  );
}

List<FigOption> _goTaskOptions() => [
      FigOption(
        name: ['-a', '--list-all'],
        description: 'Lists tasks with or without a description',
      ),
      FigOption(
        name: ['-c', '--color'],
        description: 'Colored output. Enabled by default. Set flag to false '
            'or use NO_COLOR=1 to disable (default true)',
        requiresSeparator: true,
        args: [
          FigArg(name: 'color', suggestions: ['true', 'false']),
        ],
      ),
      FigOption(
        name: ['-C', '--concurrency'],
        description: 'Limit number tasks to run concurrently',
        args: [FigArg(name: 'number')],
      ),
      FigOption(
        name: ['-d', '--dir'],
        description: 'Sets directory of execution',
        exclusiveOn: ['-t', '--taskfile'],
        args: [FigArg(name: 'path', template: ['folders'])],
      ),
      FigOption(
        name: '--dry',
        description: 'Compiles and prints tasks in the order that they would '
            'be run, without executing them',
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
            suggestions: ['interleaved', 'group', 'prefixed'],
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
        name: '--status',
        description: 'Exits with non-zero exit code if any of the given tasks '
            'is not up-to-date',
      ),
      FigOption(
        name: '--summary',
        description: 'Show summary about a task',
      ),
      FigOption(
        name: ['-t', '--taskfile'],
        description: 'Choose which Taskfile to run',
        exclusiveOn: ['-d', '--dir'],
        args: [
          FigArg(
            name: 'taskfile',
            defaultValue: 'Taskfile.yml',
            template: ['filepaths'],
          ),
        ],
      ),
      FigOption(
        name: ['-v', '--verbose'],
        description: 'Enables verbose mode',
      ),
      FigOption(
        name: '--version',
        description: 'Show Task version',
      ),
      FigOption(
        name: ['-w', '--watch'],
        description: 'Enables watch of the given task',
      ),
      FigOption(
        name: '--',
        description: 'Pass variables to the task',
        args: [
          FigArg(
            name: 'variables',
            isVariadic: true,
            optionsCanBreakVariadicArg: false,
          ),
        ],
      ),
    ];

// ============================================================================
// taskwarrior
// ============================================================================

/// Decodes `task export` output into a list of task objects. Throws when the
/// output is not a JSON array of objects.
List<Map<String, dynamic>> _parseTasks(String output) {
  final decoded = jsonDecode(output);
  if (decoded is! List) {
    throw const FormatException('Expected a JSON array of tasks');
  }
  return decoded.map((task) {
    if (task is! Map) {
      throw const FormatException('Expected a JSON object per task');
    }
    return Map<String, dynamic>.from(task);
  }).toList();
}

/// `id - description` task suggestions (completed tasks excluded).
List<FigSuggestion> _buildTaskSuggestions(List<Map<String, dynamic>> tasks) {
  final suggestions = <FigSuggestion>[];
  for (final task in tasks) {
    if (task['status'] == 'completed') continue;
    final id = task['id']?.toString() ?? 'undefined';
    final description = task['description']?.toString() ?? 'undefined';
    suggestions.add(FigSuggestion(
      name: id,
      displayName: '$id - $description',
      description: description,
      icon: '☑️',
    ));
  }
  return suggestions;
}

/// `project:<name>` suggestions, counting non-completed tasks per project.
List<FigSuggestion> _buildProjectSuggestions(
    List<Map<String, dynamic>> tasks) {
  final counts = <String, int>{};
  for (final task in tasks) {
    if (task['status'] == 'completed') continue;
    final project = task['project']?.toString() ?? 'undefined';
    counts[project] = (counts[project] ?? 0) + 1;
  }
  return counts.entries.map((entry) {
    return FigSuggestion(
      name: 'project:${entry.key}',
      displayName: 'Project: ${entry.key}',
      description: '${entry.value} tasks',
      icon: '🗂',
    );
  }).toList();
}

/// Distinct tag strings present on any task, in first-seen order.
Set<String> _collectTags(List<Map<String, dynamic>> tasks) {
  final tags = <String>{};
  for (final task in tasks) {
    final taskTags = task['tags'];
    if (taskTags is List) {
      for (final tag in taskTags) {
        tags.add(tag.toString());
      }
    }
  }
  return tags;
}

/// `+TAG` suggestions for the distinct tags used across the tasks.
List<FigSuggestion> _buildTagSuggestions(List<Map<String, dynamic>> tasks) {
  return _collectTags(tasks)
      .map((tag) => FigSuggestion(
            name: '+$tag',
            displayName: 'Tag: $tag',
            icon: '🏷',
          ))
      .toList();
}

/// `-TAG` suggestions for the distinct tags used across the tasks.
List<FigSuggestion> _buildUnTagSuggestions(
    List<Map<String, dynamic>> tasks) {
  return _collectTags(tasks)
      .map((tag) => FigSuggestion(
            name: '-$tag',
            displayName: 'Untag: $tag',
            icon: '❌',
          ))
      .toList();
}

/// `+TAG` suggestions for the built-in Taskwarrior tags.
List<FigSuggestion> _buildDefaultTagSuggestions() {
  return _defaultTags
      .map((tag) => FigSuggestion(
            name: '+$tag',
            displayName: 'Tag: $tag',
            icon: '🏷',
          ))
      .toList();
}

/// `priority:`, `priority.is:`, `priority.not:`, and `priority.none:` filters.
List<FigSuggestion> _buildPrioritiesSuggestions() {
  final suggestions = <FigSuggestion>[];
  for (final pr in _priorities) {
    suggestions.add(FigSuggestion(name: 'priority:$pr'));
  }
  for (final pr in _priorities) {
    suggestions.add(FigSuggestion(name: 'priority.is:$pr'));
  }
  for (final pr in _priorities) {
    suggestions.add(FigSuggestion(name: 'priority.not:$pr'));
  }
  suggestions.add(const FigSuggestion(name: 'priority.none:'));
  return suggestions;
}

/// `<attr>:<date>` suggestions for every date attribute prefix and keyword.
List<FigSuggestion> _buildDateSuggestions() {
  final suggestions = <FigSuggestion>[];
  for (final prefix in _datePrefixes) {
    for (final date in _dateStrings) {
      suggestions.add(FigSuggestion(name: '$prefix:$date'));
    }
  }
  return suggestions;
}

/// `recur:<keyword>` suggestions for every supported recurrence value.
List<FigSuggestion> _buildRecurringSuggestions() {
  return _recurringStrings
      .map((recur) => FigSuggestion(name: 'recur:$recur'))
      .toList();
}

/// Root-level filters generator: tasks, projects, tags, built-in tags,
/// priorities, and dates.
List<FigSuggestion> _filtersWithTasksPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  try {
    final tasks = _parseTasks(output);
    return [
      ..._buildTaskSuggestions(tasks),
      ..._buildProjectSuggestions(tasks),
      ..._buildTagSuggestions(tasks),
      ..._buildDefaultTagSuggestions(),
      ..._buildPrioritiesSuggestions(),
      ..._buildDateSuggestions(),
    ];
  } catch (_) {
    return const [];
  }
}

/// Filters generator for subcommand args: projects, tags, built-in tags,
/// priorities, and dates (no task suggestions).
List<FigSuggestion> _filtersPostProcess(String output, [List<String>? tokens]) {
  tokens;
  try {
    final tasks = _parseTasks(output);
    return [
      ..._buildProjectSuggestions(tasks),
      ..._buildTagSuggestions(tasks),
      ..._buildDefaultTagSuggestions(),
      ..._buildPrioritiesSuggestions(),
      ..._buildDateSuggestions(),
    ];
  } catch (_) {
    return const [];
  }
}

/// Task-list generator: only the task suggestions.
List<FigSuggestion> _listTasksPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  try {
    final tasks = _parseTasks(output);
    return _buildTaskSuggestions(tasks);
  } catch (_) {
    return const [];
  }
}

/// Modifications generator: projects, tags, untags, built-in tags,
/// priorities, dates, and recurrences.
List<FigSuggestion> _modificationsPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  try {
    final tasks = _parseTasks(output);
    return [
      ..._buildProjectSuggestions(tasks),
      ..._buildTagSuggestions(tasks),
      ..._buildUnTagSuggestions(tasks),
      ..._buildDefaultTagSuggestions(),
      ..._buildPrioritiesSuggestions(),
      ..._buildDateSuggestions(),
      ..._buildRecurringSuggestions(),
    ];
  } catch (_) {
    return const [];
  }
}

FigGenerator _filtersWithTasksGenerator() => FigGenerator(
      script: ['task', 'export'],
      postProcess: _filtersWithTasksPostProcess,
    );

FigGenerator _filtersGenerator() => FigGenerator(
      script: ['task', 'export'],
      postProcess: _filtersPostProcess,
    );

FigGenerator _listTasksGenerator() => FigGenerator(
      script: ['task', 'export'],
      postProcess: _listTasksPostProcess,
    );

FigGenerator _modificationsGenerator() => FigGenerator(
      script: ['task', 'export'],
      postProcess: _modificationsPostProcess,
    );

/// A report/status subcommand carrying a variadic optional `filters` argument.
FigSubcommand _reportSubcommand(String name, String description) {
  return FigSubcommand(
    name: name,
    description: description,
    args: [
      FigArg(
        name: 'filters',
        description: 'Task search criteria',
        isOptional: true,
        isVariadic: true,
        generators: [_filtersGenerator()],
      ),
    ],
  );
}

/// An action subcommand carrying a variadic optional `mods` argument.
FigSubcommand _modsSubcommand(String name, String description, {String? icon}) {
  return FigSubcommand(
    name: name,
    description: description,
    icon: icon,
    args: [
      FigArg(
        name: 'mods',
        description: 'Changes to apply to the selected tasks',
        isOptional: true,
        isVariadic: true,
        generators: [_modificationsGenerator()],
      ),
    ],
  );
}

List<FigSubcommand> _taskWarriorSubcommands() => [
      _reportSubcommand('active',
          'Shows all tasks matching the filter, that are started but not completed'),
      _reportSubcommand('all',
          'Shows all tasks matching the filter, including parents of recurring tasks'),
      _reportSubcommand('blocked',
          'Shows all tasks matching the filter, that are currently blocked by other tasks'),
      _reportSubcommand('blocking',
          'Shows all tasks matching the filter, that block other tasks'),
      _reportSubcommand('burndown.daily',
          'Shows a graphical burndown chart, by day. Is affected by the context'),
      _reportSubcommand('burndown.weekly',
          "Shows a graphical burndown chart, by week.  Note that 'burndown' is an "
          "alias to the 'burndown.weekly' report. Is affected by the context"),
      _reportSubcommand('burndown.monthly',
          'Shows a graphical burndown chart, by month. Is affected by the context'),
      FigSubcommand(
        name: 'calendar',
        description: 'Shows a monthly calendar with due tasks marked',
        args: [
          FigArg(
              name: 'year',
              description: 'The year number',
              isOptional: true,
              isVariadic: true),
          FigArg(
              name: 'month',
              description: 'The year number',
              isOptional: true,
              isVariadic: true),
          FigArg(
              name: 'due',
              description: 'Show tasks that are due',
              isOptional: true,
              isVariadic: true),
        ],
      ),
      FigSubcommand(
        name: 'commands',
        description: 'Shows all the supported commands, with some details of each',
      ),
      FigSubcommand(
        name: 'diagnostics',
        description: 'Shows diagnostic information, of the kind needed when '
            'reporting a problem',
      ),
      FigSubcommand(
        name: 'logo',
        description: 'Displays the Taskwarrior logo',
      ),
      FigSubcommand(
        name: 'news',
        description: 'Guides the user through important release notes anytime '
            'a new version of Taskwarrior is installed',
      ),
      FigSubcommand(
        name: 'reports',
        description: 'Lists all supported reports',
      ),
      _reportSubcommand('completed',
          'Shows all tasks matching the filter that are completed'),
      _reportSubcommand('count',
          'Display only a count of tasks matching the filter. Is affected by the context'),
      _reportSubcommand('export',
          'Exports all tasks in the JSON format matching the filter'),
      _reportSubcommand('ghistory.annual',
          'Shows a graphical report of task status by year'),
      _reportSubcommand('ghistory.monthly',
          'Shows a graphical report of task status by month'),
      _reportSubcommand('ghistory.weekly',
          'Shows a graphical report of task status by week'),
      _reportSubcommand('ghistory.daily',
          'Shows a graphical report of task status by day'),
      FigSubcommand(
        name: 'help',
        description: 'Shows the long usage text',
      ),
      _reportSubcommand('history.annual',
          'Shows a report of task history by year'),
      _reportSubcommand('history.monthly',
          'Shows a report of task history by month'),
      _reportSubcommand('history.weekly',
          'Shows a report of task history by week'),
      _reportSubcommand('history.daily',
          'Shows a report of task history by day'),
      _reportSubcommand('ids',
          'Applies the filter then extracts only the task IDs and presents them '
          'as a space-separated list'),
      _reportSubcommand('uuids',
          'Applies the filter on all tasks (even deleted and completed tasks) '
          'then extracts only the task UUIDs and presents them as a '
          'space-separated list'),
      FigSubcommand(
        name: 'udas',
        description: 'Shows a list of UDAs that are defined, including their '
            'name, type, label, and allowed values',
      ),
      _reportSubcommand('information',
          'Shows all data and metadata for the specified tasks'),
      _reportSubcommand('long',
          'Provides the most detailed listing of tasks matching the filter'),
      _reportSubcommand('ls',
          'Provides a short listing of tasks matching the filter'),
      _reportSubcommand('minimal',
          'Provides a minimal listing of tasks matching the filter'),
      _reportSubcommand('newest',
          'Shows the newest tasks matching the filter'),
      _reportSubcommand('next',
          'Shows a page of the most urgent tasks, sorted by urgency, which is '
          'a calculated value'),
      _reportSubcommand('ready',
          'Shows a page of the most urgent ready tasks, sorted by urgency with '
          'started tasks first'),
      _reportSubcommand('oldest',
          'Shows the oldest tasks matching the filter'),
      _reportSubcommand('overdue',
          'Shows all incomplete tasks matching the filter that are beyond '
          'their due date'),
      _reportSubcommand('projects',
          'Lists all project names that are current used by pending tasks, and '
          'the number of tasks for each'),
      _reportSubcommand('recurring',
          'Shows all recurring tasks matching the filter'),
      _reportSubcommand('unblocked',
          'Shows all tasks that are not currently blocked by other tasks, '
          'matching the filter'),
      _reportSubcommand('waiting',
          'Shows all waiting tasks matching the filter'),
      _modsSubcommand('add',
          'Adds a new pending task to the task list',
          icon: _taskwarriorIcon),
      _modsSubcommand('annotate', 'Adds an annotation to an existing task'),
      _modsSubcommand('append',
          'Appends description text to an existing task'),
      FigSubcommand(
        name: ['delete', 'rm'],
        description: 'Deletes the specified task from the task list',
        args: [
          FigArg(
            name: 'Task',
            description: 'The task to delete',
            isVariadic: true,
            generators: [_modificationsGenerator()],
          ),
        ],
      ),
      FigSubcommand(
        name: 'denotate',
        description: 'Deletes an annotation for the specified task',
        args: [
          FigArg(
            name: 'mods',
            description: 'Changes to apply to the selected tasks',
            isOptional: true,
            generators: [_modificationsGenerator()],
          ),
        ],
      ),
      _modsSubcommand('done', 'Marks the specified task as done'),
      _modsSubcommand('duplicate',
          'Duplicates the specified task and allows modifications'),
      FigSubcommand(
        name: 'edit',
        description: 'Launches a text editor to let you modify all aspects of '
            'a task directly',
        args: [
          FigArg(
            name: 'Task',
            description: 'The task to edit',
            generators: [_listTasksGenerator()],
          ),
        ],
      ),
      _modsSubcommand('log',
          'Adds a new task that is already completed, to the task list'),
      _modsSubcommand('modify',
          'Modifies the existing task with provided information'),
      _modsSubcommand('prepend',
          'Prepends description text to and existing task'),
      _modsSubcommand('purge',
          'Permanently removes the specified tasks from the data files'),
      _modsSubcommand('start',
          'Marks the specified tasks as started',
          icon: _taskwarriorIcon),
      _modsSubcommand('stop',
          'Removes the start time from the specified task',
          icon: _taskwarriorIcon),
      FigSubcommand(
        name: 'context',
        description: 'Sets the currently active context',
        subcommands: [
          FigSubcommand(
            name: 'delete',
            description: 'Deletes the context with the name',
            args: [FigArg(name: 'name', isVariadic: true)],
          ),
          FigSubcommand(
            name: 'define',
            description:
                'Defines a new context with the name and definition filter',
            args: [
              FigArg(name: 'name', isVariadic: true),
              FigArg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: [_filtersGenerator()],
              ),
            ],
          ),
          FigSubcommand(
            name: 'list',
            description:
                'Outputs a list of available contexts along with their '
                'definitions',
          ),
          FigSubcommand(
            name: 'none',
            description: 'Clears the currently active context, if any was set',
          ),
          FigSubcommand(
            name: 'show',
            description:
                'Shows the currently active context, along with its definition',
          ),
        ],
        args: [FigArg(name: 'name', isVariadic: true)],
      ),
      _reportSubcommand('stats',
          'Shows statistics of the tasks defined by the filter'),
      _reportSubcommand('summary',
          'Shows a report of aggregated task status by project'),
      _reportSubcommand('tags', 'Show a list of all tags used'),
      FigSubcommand(
        name: 'timesheet',
        description: 'Shows a weekly report of tasks completed and started',
        args: [FigArg(name: 'weeks', isOptional: true, isVariadic: true)],
      ),
      FigSubcommand(
        name: 'undo',
        description: 'Reverts the most recent action',
      ),
      FigSubcommand(
        name: 'version',
        description: 'Shows the Taskwarrior version number',
      ),
    ];

/// The taskwarrior spec selected when `task --version` does not mention "Task".
FigSpec _taskWarriorSpec() {
  return FigSpec(
    name: 'taskwarrior',
    description: 'A command line todo manager',
    args: [
      FigArg(
        name: 'filters',
        description: 'Search criteria that select tasks',
        isOptional: true,
        isVariadic: true,
        generators: [_filtersWithTasksGenerator()],
      ),
    ],
    subcommands: _taskWarriorSubcommands(),
    options: [
      FigOption(
        name: '--version',
        description: 'This is the only conventional command line argument that '
            'Taskwarrior supports, and is intended for add-on scripts to verify '
            'the version number of an installed Taskwarrior without invoking '
            'the mechanisms that create default files',
      ),
    ],
  );
}

// ============================================================================
// generateSpec
// ============================================================================

/// Root `generateSpec` from src/task.ts: run `task --version` and pick the
/// go-task spec when the output mentions "Task", otherwise taskwarrior.
Future<FigSpec?> _taskGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(
      ExecuteCommandInput(command: 'task', args: ['--version']));
  if (result.stdout.contains('Task')) {
    return _goTaskSpec();
  }
  return _taskWarriorSpec();
}

/// Registers the task dynamic handlers referenced by the shipped task JSON.
void registerTaskHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(taskGenerateSpecHandler, _taskGenerateSpec);
}
