// AI-generated from TypeScript source: taskwarrior.ts
// Generated at: 2026-02-17

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

final List<String> RECURRING_STRINGS = [
  "daily",
  "day",
  "1da",
  "2da",
  "weekdays",
  "weekly",
  "1wk",
  "2wk",
  "biweekly",
  "fortnight",
  "monthly",
  "month",
  "1mo",
  "2mo",
  "quarterly",
  "1qtr",
  "3qtr",
  "semiannual",
  "annual",
  "yearly",
  "1yr",
  "2yrs",
];

final String icon = "";

// 构建可用的重复字符串建议
List<FigSuggestion> buildRecurringSuggestions() {
  return RECURRING_STRINGS
      .map((recur) => FigSuggestion(
            name: 'recur:$recur',
            displayName: 'Recur: $recur',
            description: 'Recurring task',
          ))
      .toList();
}

// 构建可用的项目建议
List<FigSuggestion> buildProjectSuggestions(List<dynamic> tasks) {
  final projects = <String, int>{};

  for (final task in tasks) {
    if (task is Map<String, dynamic> &&
        task['status'] != 'completed' &&
        task['project'] != null) {
      final project = task['project'].toString();
      projects[project] = (projects[project] ?? 0) + 1;
    }
  }

  return projects.entries
      .map((entry) => FigSuggestion(
            name: 'project:${entry.key}',
            displayName: 'Project: ${entry.key}',
            description: '${entry.value} tasks',
            icon: '🗂',
          ))
      .toList();
}

final List<String> DEFAULT_TAGS = [
  "ACTIVE",
  "COMPLETED",
  "LATEST",
  "PENDING",
  "SCHEDULED",
  "UDA",
  "YEAR",
  "ANNOTATED",
  "DELETED",
  "MONTH",
  "PRIORITY",
  "TAGGED",
  "UNBLOCKED",
  "YESTERDAY",
  "BLOCKED",
  "DUE",
  "ORPHAN",
  "PROJECT",
  "TEMPLATE",
  "UNTIL",
  "BLOCKING",
  "DUETODAY",
  "OVERDUE",
  "QUARTER",
  "TODAY",
  "WAITING",
  "CHILD",
  "INSTANCE",
  "PARENT",
  "READY",
  "TOMORROW",
  "WEEK",
];

// 为过滤器构建默认标签建议
List<FigSuggestion> buildDefaultTagSuggestions() {
  return DEFAULT_TAGS
      .map((tag) => FigSuggestion(
            name: '+$tag',
            displayName: 'Tag: $tag',
            icon: '🏷',
          ))
      .toList();
}

// 构建可用的标签建议
List<FigSuggestion> buildTagSuggestions(List<dynamic> tasks) {
  final tags = <String>{};

  for (final task in tasks) {
    if (task is Map<String, dynamic> && task.containsKey('tags')) {
      final taskTags = task['tags'];
      if (taskTags is List) {
        for (final tag in taskTags) {
          if (tag != null) tags.add(tag.toString());
        }
      }
    }
  }

  return tags
      .map((tag) => FigSuggestion(
            name: '+$tag',
            displayName: 'Tag: $tag',
            icon: '🏷',
          ))
      .toList();
}

// 构建可用的取消标签建议
List<FigSuggestion> buildUnTagSuggestions(List<dynamic> tasks) {
  final tags = <String>{};

  for (final task in tasks) {
    if (task is Map<String, dynamic> && task.containsKey('tags')) {
      final taskTags = task['tags'];
      if (taskTags is List) {
        for (final tag in taskTags) {
          if (tag != null) tags.add(tag.toString());
        }
      }
    }
  }

  return tags
      .map((tag) => FigSuggestion(
            name: '-$tag',
            displayName: 'Untag: $tag',
            icon: '❌',
          ))
      .toList();
}

// 构建任务建议
List<FigSuggestion> buildTaskSuggestions(List<dynamic> tasks) {
  return tasks
      .where((task) =>
          task is Map<String, dynamic> && task['status'] != 'completed')
      .map<FigSuggestion?>((task) {
        if (task is! Map<String, dynamic>) return null;

        final id = task['id']?.toString() ?? '';
        final description = task['description']?.toString() ?? '';

        if (id.isEmpty) return null;

        return FigSuggestion(
          name: id,
          displayName: '$id - $description',
          description: description,
          icon: '☑️',
        );
      })
      .where((suggestion) => suggestion != null)
      .cast<FigSuggestion>()
      .toList();
}

// taskwarrior 默认日期字符串
final List<String> DATE_STRINGS = [
  "now",
  "today",
  "sod",
  "eod",
  "yesterday",
  "tomorrow",
  "monday",
  "tuesday",
  "wednesday",
  "thursday",
  "friday",
  "saturday",
  "sunday",
  "january",
  "february",
  "march",
  "april",
  "may",
  "june",
  "july",
  "august",
  "september",
  "october",
  "november",
  "december",
  "soy",
  "eoy",
  "eoq",
  "som",
  "socm",
  "eom",
  "ecom",
  "sow",
  "socw",
  "eow",
  "eocw",
  "soww",
  "eoww",
];

// 构建日期建议属性
List<FigSuggestion> buildDateSuggestions() {
  final suggestions = <FigSuggestion>[];

  // 为每个日期前缀创建建议
  final prefixes = [
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

  for (final prefix in prefixes) {
    for (final date in DATE_STRINGS) {
      suggestions.add(FigSuggestion(
        name: '$prefix:$date',
        displayName: '${prefix.replaceAll('.', ' ')}: $date',
        icon: '📅',
      ));
    }
  }

  return suggestions;
}

final List<String> PRIORITIES = ["H", "M", "L"];

// 构建可用的优先级建议
List<FigSuggestion> buildPrioritiesSuggestions() {
  final suggestions = <FigSuggestion>[];

  for (final priority in PRIORITIES) {
    suggestions.addAll([
      FigSuggestion(
        name: 'priority:$priority',
        displayName: 'Priority: $priority',
        description: 'Set priority to $priority',
        icon: '🔺',
      ),
      FigSuggestion(
        name: 'priority.is:$priority',
        displayName: 'Priority is: $priority',
        description: 'Filter by priority $priority',
        icon: '🔍',
      ),
      FigSuggestion(
        name: 'priority.not:$priority',
        displayName: 'Priority not: $priority',
        description: 'Exclude priority $priority',
        icon: '🚫',
      ),
    ]);
  }

  suggestions.add(FigSuggestion(
    name: 'priority.none:',
    displayName: 'No priority',
    description: 'Tasks with no priority',
    icon: '⚪',
  ));

  return suggestions;
}

// 使用任务构建过滤器列表
final FigGenerator filtersWithTasks = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    try {
      final tasks = json.decode(output) as List<dynamic>;
      final filters = <FigSuggestion>[
        ...buildTaskSuggestions(tasks),
        ...buildProjectSuggestions(tasks),
        ...buildTagSuggestions(tasks),
        ...buildDefaultTagSuggestions(),
        ...buildPrioritiesSuggestions(),
        ...buildDateSuggestions(),
      ];
      return filters;
    } catch (e) {
      print('Error parsing tasks: $e');
      return <FigSuggestion>[];
    }
  },
);

// 构建任务列表
final FigGenerator listTasks = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    try {
      final tasks = json.decode(output) as List<dynamic>;
      return buildTaskSuggestions(tasks);
    } catch (e) {
      print('Error parsing tasks for list: $e');
      return <FigSuggestion>[];
    }
  },
);

// 构建过滤器建议
final FigGenerator filters = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    try {
      final tasks = json.decode(output) as List<dynamic>;
      final filterSuggestions = <FigSuggestion>[
        ...buildProjectSuggestions(tasks),
        ...buildTagSuggestions(tasks),
        ...buildDefaultTagSuggestions(),
        ...buildPrioritiesSuggestions(),
        ...buildDateSuggestions(),
      ];
      return filterSuggestions;
    } catch (e) {
      print('Error parsing tasks for filters: $e');
      return <FigSuggestion>[];
    }
  },
);

// 构建修改建议
final FigGenerator modifications = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    try {
      final tasks = json.decode(output) as List<dynamic>;
      final modificationSuggestions = <FigSuggestion>[
        ...buildProjectSuggestions(tasks),
        ...buildTagSuggestions(tasks),
        ...buildUnTagSuggestions(tasks),
        ...buildDefaultTagSuggestions(),
        ...buildPrioritiesSuggestions(),
        ...buildDateSuggestions(),
        ...buildRecurringSuggestions(),
      ];
      return modificationSuggestions;
    } catch (e) {
      print('Error parsing tasks for modifications: $e');
      return <FigSuggestion>[];
    }
  },
);

/// Completion spec for `taskwarrior` CLI
final FigSpec taskwarriorSpec = FigSpec(
    name: 'taskwarrior',
    description: 'A command line todo manager',
    args: [
      Arg(
          name: 'filters',
          description: 'Search criteria that select tasks',
          isOptional: true,
          isVariadic: true,
          generators: filtersWithTasks)
    ],
    subcommands: [
      Subcommand(
          name: 'active',
          description:
              'Shows all tasks matching the filter, that are started but not completed',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'all',
          description:
              'Shows all tasks matching the filter, including parents of recurring tasks',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'blocked',
          description:
              'Shows all tasks matching the filter, that are currently blocked by other tasks',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'blocking',
          description:
              'Shows all tasks matching the filter, that block other tasks',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'burndown.daily',
          description:
              'Shows a graphical burndown chart, by day. Is affected by the context',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'burndown.weekly',
          description:
              'Shows a graphical burndown chart, by week.  Note that \'burndown\' is an alias to the \'burndown.weekly\' report. Is affected by the context',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'burndown.monthly',
          description:
              'Shows a graphical burndown chart, by month. Is affected by the context',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'calendar',
          description: 'Shows a monthly calendar with due tasks marked',
          args: [
            Arg(
                name: 'year',
                description: 'The year number',
                isOptional: true,
                isVariadic: true),
            Arg(
                name: 'month',
                description: 'The year number',
                isOptional: true,
                isVariadic: true),
            Arg(
                name: 'due',
                description: 'Show tasks that are due',
                isOptional: true,
                isVariadic: true)
          ]),
      Subcommand(
          name: 'commands',
          description:
              'Shows all the supported commands, with some details of each'),
      Subcommand(
          name: 'diagnostics',
          description:
              'Shows diagnostic information, of the kind needed when reporting a problem'),
      Subcommand(name: 'logo', description: 'Displays the Taskwarrior logo'),
      Subcommand(
          name: 'news',
          description:
              'Guides the user through important release notes anytime a new version of Taskwarrior is installed'),
      Subcommand(name: 'reports', description: 'Lists all supported reports'),
      Subcommand(
          name: 'completed',
          description: 'Shows all tasks matching the filter that are completed',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'count',
          description:
              'Display only a count of tasks matching the filter. Is affected by the context',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'export',
          description:
              'Exports all tasks in the JSON format matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ghistory.annual',
          description: 'Shows a graphical report of task status by year',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ghistory.monthly',
          description: 'Shows a graphical report of task status by month',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ghistory.weekly',
          description: 'Shows a graphical report of task status by week',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ghistory.daily',
          description: 'Shows a graphical report of task status by day',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(name: 'help', description: 'Shows the long usage text'),
      Subcommand(
          name: 'history.annual',
          description: 'Shows a report of task history by year',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'history.monthly',
          description: 'Shows a report of task history by month',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'history.weekly',
          description: 'Shows a report of task history by week',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'history.daily',
          description: 'Shows a report of task history by day',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ids',
          description:
              'Applies the filter then extracts only the task IDs and presents them as a space-separated list',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'uuids',
          description:
              'Applies the filter on all tasks (even deleted and completed tasks) then extracts only the task UUIDs and presents them as a space-separated list',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'udas',
          description:
              'Shows a list of UDAs that are defined, including their name, type, label, and allowed values'),
      Subcommand(
          name: 'information',
          description: 'Shows all data and metadata for the specified tasks',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'long',
          description:
              'Provides the most detailed listing of tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ls',
          description: 'Provides a short listing of tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'minimal',
          description:
              'Provides a minimal listing of tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'newest',
          description: 'Shows the newest tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'next',
          description:
              'Shows a page of the most urgent tasks, sorted by urgency, which is a calculated value',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'ready',
          description:
              'Shows a page of the most urgent ready tasks, sorted by urgency with started tasks first',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'oldest',
          description: 'Shows the oldest tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'overdue',
          description:
              'Shows all incomplete tasks matching the filter that are beyond their due date',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'projects',
          description:
              'Lists all project names that are current used by pending tasks, and the number of tasks for each',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'recurring',
          description: 'Shows all recurring tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'unblocked',
          description:
              'Shows all tasks that are not currently blocked by other tasks, matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'waiting',
          description: 'Shows all waiting tasks matching the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'add',
          description: 'Adds a new pending task to the task list',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'annotate',
          description: 'Adds an annotation to an existing task',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'append',
          description: 'Appends description text to an existing task',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: ['delete', 'rm'],
          description: 'Deletes the specified task from the task list',
          args: [
            Arg(
                name: 'Task',
                description: 'The task to delete',
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'denotate',
          description: 'Deletes an annotation for the specified task',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'done',
          description: 'Marks the specified task as done',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'duplicate',
          description: 'Duplicates the specified task and allows modifications',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'edit',
          description:
              'Launches a text editor to let you modify all aspects of a task directly',
          args: [
            Arg(
                name: 'Task',
                description: 'The task to edit',
                generators: listTasks)
          ]),
      Subcommand(
          name: 'log',
          description:
              'Adds a new task that is already completed, to the task list',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'modify',
          description: 'Modifies the existing task with provided information',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'prepend',
          description: 'Prepends description text to and existing task',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'purge',
          description:
              'Permanently removes the specified tasks from the data files',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'start',
          description: 'Marks the specified tasks as started',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'stop',
          description: 'Removes the start time from the specified task',
          args: [
            Arg(
                name: 'mods',
                description: 'Changes to apply to the selected tasks',
                isOptional: true,
                isVariadic: true,
                generators: modifications)
          ]),
      Subcommand(
          name: 'context',
          description: 'Sets the currently active context',
          subcommands: [
            Subcommand(
                name: 'delete',
                description: 'Deletes the context with the name',
                args: [Arg(name: 'name', isVariadic: true)]),
            Subcommand(
                name: 'define',
                description:
                    'Defines a new context with the name and definition filter',
                args: [
                  Arg(name: 'name', isVariadic: true),
                  Arg(
                      name: 'mods',
                      description: 'Changes to apply to the selected tasks',
                      isOptional: true,
                      isVariadic: true,
                      generators: filters)
                ]),
            Subcommand(
                name: 'list',
                description:
                    'Outputs a list of available contexts along with their definitions'),
            Subcommand(
                name: 'none',
                description:
                    'Clears the currently active context, if any was set'),
            Subcommand(
                name: 'show',
                description:
                    'Shows the currently active context, along with its definition')
          ],
          args: [
            Arg(name: 'name', isVariadic: true)
          ]),
      Subcommand(
          name: 'stats',
          description: 'Shows statistics of the tasks defined by the filter',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'summary',
          description: 'Shows a report of aggregated task status by project',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'tags',
          description: 'Show a list of all tags used',
          args: [
            Arg(
                name: 'filters',
                description: 'Task search criteria',
                isOptional: true,
                isVariadic: true,
                generators: filters)
          ]),
      Subcommand(
          name: 'timesheet',
          description: 'Shows a weekly report of tasks completed and started',
          args: [Arg(name: 'weeks', isOptional: true, isVariadic: true)]),
      Subcommand(name: 'undo', description: 'Reverts the most recent action'),
      Subcommand(
          name: 'version', description: 'Shows the Taskwarrior version number')
    ],
    options: [
      Option(
          name: '--version',
          description:
              'This is the only conventional command line argument that Taskwarrior supports, and is intended for add-on scripts to verify the version number of an installed Taskwarrior without invoking the mechanisms that create default files')
    ]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (filtersWithTasks)
// const filtersWithTasks: Fig.Generator = {
//   script: ["task", "export"],
//   postProcess: (output) => {
//     const tasks = JSON.parse(output);
//     const filters = [
//       ...buildTaskSuggestions(tasks),
//       ...buildProjectSuggestions(tasks),
//       ...buildTagSuggestions(tasks),
//       ...buildDefaultTagSuggestions(),
//       ...buildPrioritiesSuggestions(),
//       ...buildDateSuggestions(),
//     ];
//     return filters;
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (listTasks)
// const listTasks: Fig.Generator = {
//   script: ["task", "export"],
//   postProcess: (output) => {
//     const tasks = JSON.parse(output);
//     return buildTaskSuggestions(tasks);
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (filters)
// const filters: Fig.Generator = {
//   script: ["task", "export"],
//   postProcess: (output) => {
//     const tasks = JSON.parse(output);
//     const filters = [
//       ...buildProjectSuggestions(tasks),
//       ...buildTagSuggestions(tasks),
//       ...buildDefaultTagSuggestions(),
//       ...buildPrioritiesSuggestions(),
//       ...buildDateSuggestions(),
//     ];
//     return filters;
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (modifications)
// const modifications: Fig.Generator = {
//   script: ["task", "export"],
//   postProcess: (output) => {
//     const tasks = JSON.parse(output);
//     const filters = [
//       ...buildProjectSuggestions(tasks),
//       ...buildTagSuggestions(tasks),
//       ...buildUnTagSuggestions(tasks),
//       ...buildDefaultTagSuggestions(),
//       ...buildPrioritiesSuggestions(),
//       ...buildDateSuggestions(),
//       ...buildRecurringSuggestions(),
//     ];
//     return filters;
//   },
// };
// TS_GENERATOR_BLOCK_END
