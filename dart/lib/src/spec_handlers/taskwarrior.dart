// Hand-written dynamic handlers migrated from src/task/taskwarrior.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const taskwarriorFiltersWithTasksPostProcessHandler =
    'manual.src_task_taskwarrior.definition.filterswithtasks.postprocess';
const taskwarriorModificationsPostProcessHandler =
    'manual.src_task_taskwarrior.definition.modifications.postprocess';
const taskwarriorListTasksPostProcessHandler =
    'manual.src_task_taskwarrior.definition.listtasks.postprocess';

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

const _priorities = ['H', 'M', 'L'];

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

/// `recur:<keyword>` suggestions for every supported recurrence value.
List<FigSuggestion> _buildRecurringSuggestions() {
  return _recurringStrings
      .map((recur) => FigSuggestion(name: 'recur:$recur'))
      .toList();
}

/// `project:<name>` suggestions, counting non-completed tasks per project.
List<FigSuggestion> _buildProjectSuggestions(
    List<Map<String, dynamic>> tasks) {
  final counts = <String, int>{};
  for (final task in tasks) {
    if (task['status'] == 'completed') continue;
    // JS keys an object by String(task.project); a missing project becomes
    // the literal key "undefined".
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

/// `id - description` task suggestions (completed tasks excluded).
List<FigSuggestion> _buildTaskSuggestions(
    List<Map<String, dynamic>> tasks) {
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

/// Root-level filters generator: tasks, projects, tags, built-in tags,
/// priorities, and dates.
List<FigSuggestion> _filtersWithTasks(String output, [List<String>? tokens]) {
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

/// Modifications generator: projects, tags, untags, built-in tags,
/// priorities, dates, and recurrences (no task suggestions).
List<FigSuggestion> _modifications(String output, [List<String>? tokens]) {
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

/// Task-list generator: only the task suggestions.
List<FigSuggestion> _listTasks(String output, [List<String>? tokens]) {
  try {
    final tasks = _parseTasks(output);
    return _buildTaskSuggestions(tasks);
  } catch (_) {
    return const [];
  }
}

/// Registers the taskwarrior generators referenced by the shipped taskwarrior
/// JSON.
void registerTaskwarriorHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      taskwarriorFiltersWithTasksPostProcessHandler, _filtersWithTasks);
  registry.registerPostProcess(
      taskwarriorModificationsPostProcessHandler, _modifications);
  registry.registerPostProcess(
      taskwarriorListTasksPostProcessHandler, _listTasks);
}
