// AI-generated from TypeScript source: task/taskwarrior.ts
import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

const List<String> recurringStrings = [
  "daily", "day", "1da", "2da", "weekdays", "weekly", "1wk", "2wk",
  "biweekly", "fortnight", "monthly", "month", "1mo", "2mo", "quarterly",
  "1qtr", "3qtr", "semiannual", "annual", "yearly", "1yr", "2yrs"
];

const String icon = "https://f-droid.org/repo/icons-640/kvj.taskw.3.png";

List<String> buildRecurringSuggestions() {
  return recurringStrings.map((recur) => 'recur:$recur').toList();
}

List<FigSuggestion> buildProjectSuggestions(List<dynamic> tasks) {
  final projects = <String, int>{};
  for (final task in tasks) {
    if (task['status'] != 'completed' && task['project'] != null) {
      final project = task['project'] as String;
      projects[project] = (projects[project] ?? 0) + 1;
    }
  }

  return projects.entries.map((entry) {
    return FigSuggestion(
      name: 'project:${entry.key}',
      displayName: 'Project: ${entry.key}',
      description: '${entry.value} tasks',
      icon: '🗂',
    );
  }).toList();
}

const List<String> defaultTags = [
  "ACTIVE", "COMPLETED", "LATEST", "PENDING", "SCHEDULED", "UDA", "YEAR",
  "ANNOTATED", "DELETED", "MONTH", "PRIORITY", "TAGGED", "UNBLOCKED",
  "YESTERDAY", "BLOCKED", "DUE", "ORPHAN", "PROJECT", "TEMPLATE", "UNTIL",
  "BLOCKING", "DUETODAY", "OVERDUE", "QUARTER", "TODAY", "WAITING", "CHILD",
  "INSTANCE", "PARENT", "READY", "TOMORROW", "WEEK"
];

List<FigSuggestion> buildDefaultTagSuggestions() {
  return defaultTags.map((tag) {
    return FigSuggestion(
      name: '+$tag',
      displayName: 'Tag: $tag',
      icon: '🏷',
    );
  }).toList();
}

List<FigSuggestion> buildTagSuggestions(List<dynamic> tasks) {
  final tags = <String>{};
  for (final task in tasks) {
    if (task.containsKey('tags')) {
      final taskTags = task['tags'];
      if (taskTags is List) {
        tags.addAll(taskTags.cast<String>());
      }
    }
  }

  return tags.map((tag) {
    return FigSuggestion(
      name: '+$tag',
      displayName: 'Tag: $tag',
      icon: '🏷',
    );
  }).toList();
}

List<FigSuggestion> buildUnTagSuggestions(List<dynamic> tasks) {
  final tags = <String>{};
  for (final task in tasks) {
    if (task.containsKey('tags')) {
      final taskTags = task['tags'];
      if (taskTags is List) {
        tags.addAll(taskTags.cast<String>());
      }
    }
  }

  return tags.map((tag) {
    return FigSuggestion(
      name: '-$tag',
      displayName: 'Untag: $tag',
      icon: '❌',
    );
  }).toList();
}

List<FigSuggestion> buildTaskSuggestions(List<dynamic> tasks) {
  return tasks
      .where((task) => task['status'] != 'completed')
      .map((task) {
        return FigSuggestion(
          name: '${task['id']}',
          displayName: '${task['id']} - ${task['description']}',
          description: '${task['description']}',
          icon: '☑️',
        );
      })
      .toList();
}

const List<String> dateStrings = [
  "now", "today", "sod", "eod", "yesterday", "tomorrow", "monday", "tuesday",
  "wednesday", "thursday", "friday", "saturday", "sunday", "january",
  "february", "march", "april", "may", "june", "july", "august", "september",
  "october", "november", "december", "soy", "eoy", "eoq", "som", "socm",
  "eom", "ecom", "sow", "socw", "eow", "eocw", "soww", "eoww"
];

List<String> buildDateSuggestions() {
  final suggestions = <String>[];
  for (final date in dateStrings) {
    suggestions.add('due:$date');
    suggestions.add('due.by:$date');
    suggestions.add('due.before:$date');
    suggestions.add('due.after:$date');
    suggestions.add('scheduled:$date');
    suggestions.add('scheduled.by:$date');
    suggestions.add('scheduled.before:$date');
    suggestions.add('scheduled.after:$date');
    suggestions.add('until:$date');
    suggestions.add('until.by:$date');
    suggestions.add('until.before:$date');
    suggestions.add('until.after:$date');
    suggestions.add('wait:$date');
    suggestions.add('wait.by:$date');
    suggestions.add('wait.before:$date');
    suggestions.add('wait.after:$date');
    suggestions.add('entry:$date');
    suggestions.add('entry.by:$date');
    suggestions.add('entry.before:$date');
    suggestions.add('entry.after:$date');
  }
  return suggestions;
}

const List<String> priorities = ["H", "M", "L"];

List<String> buildPrioritiesSuggestions() {
  final suggestions = <String>[];
  for (final pr in priorities) {
    suggestions.add('priority:$pr');
    suggestions.add('priority.is:$pr');
    suggestions.add('priority.not:$pr');
  }
  suggestions.add('priority.none:');
  return suggestions;
}

final FigGenerator filtersWithTasks = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    final tasks = jsonDecode(output) as List<dynamic>;
    final filters = <FigSuggestion>[];
    filters.addAll(buildTaskSuggestions(tasks));
    filters.addAll(buildProjectSuggestions(tasks));
    filters.addAll(buildTagSuggestions(tasks));
    filters.addAll(buildDefaultTagSuggestions());
    for (final s in buildPrioritiesSuggestions()) {
        filters.add(FigSuggestion(name: s));
    }
    for (final s in buildDateSuggestions()) {
        filters.add(FigSuggestion(name: s));
    }
    return filters;
  },
);

final FigGenerator listTasks = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    final tasks = jsonDecode(output) as List<dynamic>;
    return buildTaskSuggestions(tasks);
  },
);

final FigGenerator filters = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    final tasks = jsonDecode(output) as List<dynamic>;
    final f = <FigSuggestion>[];
    f.addAll(buildProjectSuggestions(tasks));
    f.addAll(buildTagSuggestions(tasks));
    f.addAll(buildDefaultTagSuggestions());
    for (final s in buildPrioritiesSuggestions()) {
        f.add(FigSuggestion(name: s));
    }
    for (final s in buildDateSuggestions()) {
        f.add(FigSuggestion(name: s));
    }
    return f;
  },
);

final FigGenerator modifications = FigGenerator(
  script: ['task', 'export'],
  postProcess: (String output, [List<String>? tokens]) {
    final tasks = jsonDecode(output) as List<dynamic>;
    final f = <FigSuggestion>[];
    f.addAll(buildProjectSuggestions(tasks));
    f.addAll(buildTagSuggestions(tasks));
    f.addAll(buildUnTagSuggestions(tasks));
    f.addAll(buildDefaultTagSuggestions());
    for (final s in buildPrioritiesSuggestions()) {
        f.add(FigSuggestion(name: s));
    }
    for (final s in buildDateSuggestions()) {
        f.add(FigSuggestion(name: s));
    }
    for (final s in buildRecurringSuggestions()) {
        f.add(FigSuggestion(name: s));
    }
    return f;
  },
);

final FigArg commonFiltersArg = FigArg(
  name: 'filters',
  description: 'Task search criteria',
  isOptional: true,
  isVariadic: true,
  generators: [filters],
);

final FigArg modificationsArg = FigArg(
  name: 'mods',
  description: 'Changes to apply to the selected tasks',
  isOptional: true,
  isVariadic: true,
  generators: [modifications],
);

final FigSpec taskwarriorSpec = FigSpec(
  name: 'taskwarrior',
  description: 'A command line todo manager',
  args: [
    FigArg(
      name: 'filters',
      description: 'Search criteria that select tasks',
      isOptional: true,
      isVariadic: true,
      generators: [filtersWithTasks],
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'active',
      description: 'Shows all tasks matching the filter, that are started but not completed',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'all',
      description: 'Shows all tasks matching the filter, including parents of recurring tasks',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'blocked',
      description: 'Shows all tasks matching the filter, that are currently blocked by other tasks',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'blocking',
      description: 'Shows all tasks matching the filter, that block other tasks',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'burndown.daily',
      description: 'Shows a graphical burndown chart, by day. Is affected by the context',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'burndown.weekly',
      description: 'Shows a graphical burndown chart, by week.  Note that \'burndown\' is an alias to the \'burndown.weekly\' report. Is affected by the context',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'burndown.monthly',
      description: 'Shows a graphical burndown chart, by month. Is affected by the context',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'calendar',
      description: 'Shows a monthly calendar with due tasks marked',
      args: [
        FigArg(name: 'year', description: 'The year number', isOptional: true, isVariadic: true),
        FigArg(name: 'month', description: 'The year number', isOptional: true, isVariadic: true),
        FigArg(name: 'due', description: 'Show tasks that are due', isOptional: true, isVariadic: true),
      ],
    ),
    FigSubcommand(name: 'commands', description: 'Shows all the supported commands, with some details of each'),
    FigSubcommand(name: 'diagnostics', description: 'Shows diagnostic information, of the kind needed when reporting a problem'),
    FigSubcommand(name: 'logo', description: 'Displays the Taskwarrior logo'),
    FigSubcommand(name: 'news', description: 'Guides the user through important release notes anytime a new version of Taskwarrior is installed'),
    FigSubcommand(name: 'reports', description: 'Lists all supported reports'),
    FigSubcommand(
      name: 'completed',
      description: 'Shows all tasks matching the filter that are completed',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'count',
      description: 'Display only a count of tasks matching the filter. Is affected by the context',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'export',
      description: 'Exports all tasks in the JSON format matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ghistory.annual',
      description: 'Shows a graphical report of task status by year',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ghistory.monthly',
      description: 'Shows a graphical report of task status by month',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ghistory.weekly',
      description: 'Shows a graphical report of task status by week',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ghistory.daily',
      description: 'Shows a graphical report of task status by day',
      args: [commonFiltersArg],
    ),
    FigSubcommand(name: 'help', description: 'Shows the long usage text'),
    FigSubcommand(
      name: 'history.annual',
      description: 'Shows a report of task history by year',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'history.monthly',
      description: 'Shows a report of task history by month',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'history.weekly',
      description: 'Shows a report of task history by week',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'history.daily',
      description: 'Shows a report of task history by day',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ids',
      description: 'Applies the filter then extracts only the task IDs and presents them as a space-separated list',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'uuids',
      description: 'Applies the filter on all tasks (even deleted and completed tasks) then extracts only the task UUIDs and presents them as a space-separated list',
      args: [commonFiltersArg],
    ),
    FigSubcommand(name: 'udas', description: 'Shows a list of UDAs that are defined, including their name, type, label, and allowed values'),
    FigSubcommand(
      name: 'information',
      description: 'Shows all data and metadata for the specified tasks',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'long',
      description: 'Provides the most detailed listing of tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ls',
      description: 'Provides a short listing of tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'minimal',
      description: 'Provides a minimal listing of tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'newest',
      description: 'Shows the newest tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'next',
      description: 'Shows a page of the most urgent tasks, sorted by urgency, which is a calculated value',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'ready',
      description: 'Shows a page of the most urgent ready tasks, sorted by urgency with started tasks first',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'oldest',
      description: 'Shows the oldest tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'overdue',
      description: 'Shows all incomplete tasks matching the filter that are beyond their due date',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'projects',
      description: 'Lists all project names that are current used by pending tasks, and the number of tasks for each',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'recurring',
      description: 'Shows all recurring tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'unblocked',
      description: 'Shows all tasks that are not currently blocked by other tasks, matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'waiting',
      description: 'Shows all waiting tasks matching the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'add',
      icon: icon,
      description: 'Adds a new pending task to the task list',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'annotate',
      description: 'Adds an annotation to an existing task',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'append',
      description: 'Appends description text to an existing task',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: ['delete', 'rm'],
      description: 'Deletes the specified task from the task list',
      args: [
        FigArg(
          name: 'Task',
          description: 'The task to delete',
          isVariadic: true,
          generators: [modifications],
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
          generators: [modifications],
        ),
      ],
    ),
    FigSubcommand(
      name: 'done',
      description: 'Marks the specified task as done',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'duplicate',
      description: 'Duplicates the specified task and allows modifications',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'edit',
      description: 'Launches a text editor to let you modify all aspects of a task directly',
      args: [
        FigArg(
          name: 'Task',
          description: 'The task to edit',
          generators: [listTasks],
        ),
      ],
    ),
    FigSubcommand(
      name: 'log',
      description: 'Adds a new task that is already completed, to the task list',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'modify',
      description: 'Modifies the existing task with provided information',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'prepend',
      description: 'Prepends description text to and existing task',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'purge',
      description: 'Permanently removes the specified tasks from the data files',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'start',
      icon: icon,
      description: 'Marks the specified tasks as started',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'stop',
      icon: icon,
      description: 'Removes the start time from the specified task',
      args: [modificationsArg],
    ),
    FigSubcommand(
      name: 'context',
      description: 'Sets the currently active context',
      subcommands: [
        FigSubcommand(
          name: 'delete',
          description: 'Deletes the context with the name',
          args: [
            FigArg(name: 'name', isVariadic: true),
          ],
        ),
        FigSubcommand(
          name: 'define',
          description: 'Defines a new context with the name and definition filter',
          args: [
            FigArg(name: 'name', isVariadic: true),
            FigArg(name: 'mods', description: 'Changes to apply to the selected tasks', isOptional: true, isVariadic: true, generators: [filters]),
          ],
        ),
        FigSubcommand(name: 'list', description: 'Outputs a list of available contexts along with their definitions'),
        FigSubcommand(name: 'none', description: 'Clears the currently active context, if any was set'),
        FigSubcommand(name: 'show', description: 'Shows the currently active context, along with its definition'),
      ],
      args: [
        FigArg(name: 'name', isVariadic: true),
      ],
    ),
    FigSubcommand(
      name: 'stats',
      description: 'Shows statistics of the tasks defined by the filter',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'summary',
      description: 'Shows a report of aggregated task status by project',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'tags',
      description: 'Show a list of all tags used',
      args: [commonFiltersArg],
    ),
    FigSubcommand(
      name: 'timesheet',
      description: 'Shows a weekly report of tasks completed and started',
      args: [
        FigArg(name: 'weeks', isOptional: true, isVariadic: true),
      ],
    ),
    FigSubcommand(name: 'undo', description: 'Reverts the most recent action'),
    FigSubcommand(name: 'version', description: 'Shows the Taskwarrior version number'),
  ],
  options: [
    FigOption(
      name: ['--version'],
      description: 'This is the only conventional command line argument that Taskwarrior supports, and is intended for add-on scripts to verify the version number of an installed Taskwarrior without invoking the mechanisms that create default files',
    ),
  ],
);
