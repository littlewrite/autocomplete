// Suggestion building: merge, filter, path handling (reference: inshellisense suggestion.ts).

import 'model.dart';
import 'parser.dart';
import 'spec.dart';

const String suggestionIconFile = '📄';
const String suggestionIconFolder = '📁';
const String suggestionIconSubcommand = '📦';
const String suggestionIconOption = '🔗';
const String suggestionIconArg = '💲';
const String suggestionIconShortcut = '🔥';
const String suggestionIconDefault = '📀';

String iconForType(SuggestionType? type) {
  switch (type) {
    case SuggestionType.arg:
      return suggestionIconArg;
    case SuggestionType.file:
      return suggestionIconFile;
    case SuggestionType.folder:
      return suggestionIconFolder;
    case SuggestionType.option:
      return suggestionIconOption;
    case SuggestionType.subcommand:
      return suggestionIconSubcommand;
    case SuggestionType.shortcut:
      return suggestionIconShortcut;
    default:
      return suggestionIconDefault;
  }
}

String longName(dynamic name) {
  if (name == null) return '';
  if (name is List)
    return (name as List<String>)
        .reduce((a, b) => a.length >= b.length ? a : b);
  return name as String;
}

/// Normalize dynamic (e.g. string 'fuzzy' from generated code) to FilterStrategy?.
FilterStrategy? normalizeFilterStrategy(dynamic s) {
  if (s == null) return null;
  if (s is FilterStrategy) return s;
  if (s is String) {
    switch (s) {
      case 'fuzzy':
        return FilterStrategy.fuzzy;
      case 'prefix':
        return FilterStrategy.prefix;
      case 'default':
        return FilterStrategy.defaultStrategy;
    }
  }
  return null;
}

/// Parse string (e.g. from JSON) to [SuggestionType]. Returns null if unknown.
SuggestionType? suggestionTypeFromString(dynamic v) {
  if (v == null || v is! String) return null;
  switch (v) {
    case 'arg':
      return SuggestionType.arg;
    case 'file':
      return SuggestionType.file;
    case 'folder':
      return SuggestionType.folder;
    case 'option':
      return SuggestionType.option;
    case 'subcommand':
      return SuggestionType.subcommand;
    case 'mixin':
      return SuggestionType.mixin;
    case 'shortcut':
      return SuggestionType.shortcut;
    case 'special':
      return SuggestionType.special;
    default:
      return null;
  }
}

SuggestionType? _suggestionTypeFromDynamic(dynamic v) {
  if (v is SuggestionType) return v;
  return suggestionTypeFromString(v);
}

int _priorityFromDynamic(dynamic p) {
  if (p is num) return p.toInt();
  return 50;
}

List<String>? _nameListFromDynamic(dynamic name) {
  if (name == null) return null;
  if (name is String) return [name];
  if (name is List<String>) return name.isEmpty ? null : name;
  if (name is List) {
    final out = <String>[];
    for (final e in name) {
      if (e == null) continue;
      final s = e.toString();
      if (s.isEmpty) continue;
      out.add(s);
    }
    return out.isEmpty ? null : out;
  }
  final s = name.toString();
  return s.isEmpty ? null : [s];
}

String? _descriptionFromDynamic(dynamic desc) {
  if (desc == null) return null;
  if (desc is String) return desc;
  if (desc is List<String>) {
    if (desc.isEmpty) return null;
    return desc.join('\n');
  }
  if (desc is List) {
    if (desc.isEmpty) return null;
    final buffer = StringBuffer();
    var first = true;
    for (final e in desc) {
      if (e == null) continue;
      final s = e.toString();
      if (s.isEmpty) continue;
      if (!first) buffer.write('\n');
      buffer.write(s);
      first = false;
    }
    return buffer.isEmpty ? null : buffer.toString();
  }
  final s = desc.toString();
  return s.isEmpty ? null : s;
}

String _primaryName(List<String> names) {
  if (names.length == 1) return names.first;
  var best = names.first;
  for (var i = 1; i < names.length; i++) {
    final n = names[i];
    if (n.length >= best.length) best = n;
  }
  return best;
}

/// Convert dynamic (FigSuggestion, Map from JSON, etc.) to [FigSuggestion]. Returns null if not convertible.
FigSuggestion? toFigSuggestion(dynamic s) {
  if (s == null) return null;
  if (s is FigSuggestion) return s;
  if (s is! Map) return null;
  final m = s as Map<Object?, Object?>;
  final nameVal = _nameListFromDynamic(m['name']);
  if (nameVal == null || nameVal.isEmpty) return null;
  final description = _descriptionFromDynamic(m['description']);
  return FigSuggestion(
    name: nameVal.length == 1 ? nameVal.single : nameVal,
    displayName: m['displayName']?.toString(),
    description: description,
    icon: m['icon']?.toString(),
    priority: _priorityFromDynamic(m['priority']),
    insertValue: m['insertValue']?.toString(),
    replaceValue: m['replaceValue']?.toString(),
    type: _suggestionTypeFromDynamic(m['type']),
    hidden: m['hidden'] == true,
    isDangerous: m['isDangerous'] == true,
    deprecated: m['deprecated'],
    previewComponent: m['previewComponent']?.toString(),
    loadSpec: m['loadSpec'],
  );
}

Suggestion? toSuggestionDynamic(dynamic s) {
  if (s == null) return null;
  if (s is Suggestion) return s;
  if (s is FigSuggestion) return toSuggestion(s);
  if (s is Map) {
    final m = s as Map<Object?, Object?>;
    final nameVal = _nameListFromDynamic(m['name']);
    if (nameVal == null || nameVal.isEmpty) return null;
    final description = _descriptionFromDynamic(m['description']);
    final type = _suggestionTypeFromDynamic(m['type']);
    final icon = m['icon']?.toString() ?? iconForType(type);
    return Suggestion(
      name: _primaryName(nameVal),
      allNames: nameVal,
      description: description,
      icon: icon,
      priority: _priorityFromDynamic(m['priority']),
      insertValue: m['insertValue']?.toString(),
      type: type,
      hidden: m['hidden'] == true,
    );
  }
  return null;
}

Suggestion? toSuggestion(FigSuggestion s,
    {SuggestionType? type, String? name}) {
  final n = name ?? longName(s.name);
  if (n.isEmpty) return null;
  final desc = s.description is List
      ? (s.description as List).join('\n')
      : s.description as String?;
  return Suggestion(
    name: n,
    allNames: s.nameList,
    description: desc,
    icon: s.icon ?? iconForType(type ?? s.type),
    priority: s.priority,
    insertValue: s.insertValue,
    type: type ?? s.type,
    hidden: s.hidden,
  );
}

Iterable<Suggestion> filterSuggestions(
  Iterable<FigSuggestion> suggestions,
  dynamic strategy,
  String? partial,
  SuggestionType? suggestionType,
) {
  if (partial == null || partial.isEmpty) {
    return suggestions
        .map((s) => toSuggestion(s, type: suggestionType))
        .whereType<Suggestion>();
  }
  final strat = normalizeFilterStrategy(strategy);
  final lower = partial.toLowerCase();
  switch (strat) {
    case FilterStrategy.fuzzy:
      return suggestions.map((s) {
        final names = s.nameList;
        final match = names.any((n) => n.toLowerCase().contains(lower));
        if (!match) return null;
        final name = names.cast<String?>().firstWhere(
            (n) => n!.toLowerCase().contains(lower),
            orElse: () => names.first);
        return toSuggestion(s, type: suggestionType, name: name);
      }).whereType<Suggestion>();
    case FilterStrategy.prefix:
    case FilterStrategy.defaultStrategy:
    case null:
      return suggestions.map((s) {
        final names = s.nameList;
        final match = names.any((n) => n.toLowerCase().startsWith(lower));
        if (!match) return null;
        final name = names.cast<String?>().firstWhere(
            (n) => n!.toLowerCase().startsWith(lower),
            orElse: () => names.first);
        return toSuggestion(s, type: suggestionType, name: name);
      }).whereType<Suggestion>();
  }
}

Iterable<Suggestion> filterSubcommandSuggestions(
    Iterable<FigSubcommand>? subcommands, dynamic strategy, String? partial) {
  if (subcommands == null || subcommands.isEmpty) return const [];
  final strat = normalizeFilterStrategy(strategy);
  final asSuggestions = subcommands.map((s) {
    return FigSuggestion(
        name: s.nameList,
        description: s.description,
        icon: s.icon,
        priority: 50,
        type: SuggestionType.subcommand);
  });
  return filterSuggestions(
      asSuggestions, strat, partial, SuggestionType.subcommand);
}

Iterable<Suggestion> filterOptionSuggestions(
  Iterable<FigOption>? options,
  Set<String> usedOptions,
  dynamic strategy,
  String? partial,
) {
  if (options == null) return const [];
  final strat = normalizeFilterStrategy(strategy);
  final valid = options.where((o) {
    if (o.exclusiveOn != null) {
      if (o.exclusiveOn!.any((e) => usedOptions.contains(e))) return false;
    }
    return true;
  });
  final asSuggestions = valid.map((o) {
    final desc = o.description is List
        ? (o.description as List).join('\n')
        : o.description as String?;
    return FigSuggestion(
      name: o.nameList,
      description: desc,
      priority: o.priority ?? 50,
      insertValue: o.insertValue,
      type: SuggestionType.option,
    );
  });
  return filterSuggestions(
      asSuggestions, strat, partial, SuggestionType.option);
}

Iterable<Suggestion> removeAccepted(
    Iterable<Suggestion> suggestions, List<CommandToken> acceptedTokens) {
  final seen = acceptedTokens.map((t) => t.token).toSet();
  return suggestions.where((s) => s.allNames.every((n) => !seen.contains(n)));
}

Iterable<Suggestion> removeHidden(
    Iterable<Suggestion> suggestions, CommandToken? partialToken) {
  return suggestions.where((s) =>
      !s.hidden || (partialToken != null && s.name == partialToken.token));
}

List<Suggestion> removeDuplicates(Iterable<Suggestion> suggestions) {
  final seen = <String>{};
  final result = <Suggestion>[];
  for (final s in suggestions) {
    if (!seen.contains(s.name)) {
      seen.add(s.name);
      result.add(s);
    }
  }
  return result;
}

List<Suggestion> sortByPriority(Iterable<Suggestion> suggestions) {
  final out = List<Suggestion>.from(suggestions);
  out.sort((a, b) => b.priority.compareTo(a.priority));
  return out;
}
