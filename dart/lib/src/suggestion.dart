// Suggestion building: merge, filter, path handling (reference: inshellisense suggestion.ts).

import 'model.dart';
import 'parser.dart' show CommandToken;
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
  if (name is List) {
    final list = name as List<String>;
    if (list.isEmpty) return '';
    return list.reduce((a, b) => a.length >= b.length ? a : b);
  }
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

int _priorityFromDynamic(dynamic p, {int defaultPriority = 50}) {
  if (p is num) return p.toInt();
  return defaultPriority;
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

Suggestion? toSuggestionDynamic(dynamic s, {int defaultPriority = 50}) {
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
      priority: _priorityFromDynamic(m['priority'], defaultPriority: defaultPriority),
      insertValue: m['insertValue']?.toString(),
      type: type,
      hidden: m['hidden'] == true,
      pathy: type == SuggestionType.file || type == SuggestionType.folder,
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
  final resolvedType = type ?? s.type;
  return Suggestion(
    name: n,
    allNames: s.nameList,
    description: desc,
    icon: s.icon ?? iconForType(resolvedType),
    priority: s.priority,
    insertValue: s.insertValue,
    type: resolvedType,
    hidden: s.hidden,
    pathy: resolvedType == SuggestionType.file || resolvedType == SuggestionType.folder,
  );
}

bool _matchesPrefix(String candidate, String patternLower) {
  return candidate.toLowerCase().startsWith(patternLower);
}

bool _matchesFuzzy(String candidate, String patternLower) {
  if (patternLower.isEmpty) return true;
  final lower = candidate.toLowerCase();
  var j = 0;
  for (var i = 0; i < lower.length; i++) {
    if (lower[i] == patternLower[j]) {
      j++;
      if (j >= patternLower.length) return true;
    }
  }
  return false;
}

String? _firstMatchingName(
  Iterable<String> names,
  String patternLower,
  bool Function(String, String) matcher,
) {
  for (final n in names) {
    if (matcher(n, patternLower)) return n;
  }
  return null;
}

/// Filter [Suggestion]s by [strategy] and [partial] prefix/fuzzy text.
///
/// When [partial] is null or empty all suggestions pass through.
/// The matched name (which may differ from [Suggestion.name]) is used as the
/// display name so users see the alias that actually matched.
Iterable<Suggestion> filterSuggestionList(
  Iterable<Suggestion> suggestions,
  dynamic strategy,
  String? partial,
) {
  if (partial == null || partial.isEmpty) return suggestions;
  final strat = normalizeFilterStrategy(strategy);
  final lower = partial.toLowerCase();

  final matcher = strat == FilterStrategy.fuzzy ? _matchesFuzzy : _matchesPrefix;

  return suggestions.map((s) {
    final names = s.allNames.isNotEmpty ? s.allNames : [s.name];
    final matched = _firstMatchingName(names, lower, matcher);
    if (matched == null) return null;
    if (matched == s.name) return s;
    return Suggestion(
      name: matched,
      allNames: s.allNames,
      description: s.description,
      icon: s.icon,
      priority: s.priority,
      insertValue: s.insertValue,
      type: s.type,
      hidden: s.hidden,
      pathy: s.pathy,
    );
  }).whereType<Suggestion>();
}

/// Convert [FigSuggestion]s to [Suggestion]s and filter by [strategy] / [partial].
///
/// Thin wrapper around [filterSuggestionList]: converts the spec-level objects
/// first (applying [suggestionType]), then delegates all filter logic there.
Iterable<Suggestion> filterSuggestions(
  Iterable<FigSuggestion> suggestions,
  dynamic strategy,
  String? partial,
  SuggestionType? suggestionType,
) {
  final asSuggestions = suggestions
      .map((s) => toSuggestion(s, type: suggestionType))
      .whereType<Suggestion>();
  return filterSuggestionList(asSuggestions, strategy, partial);
}

/// Convert [FigSubcommand]s directly to [Suggestion]s and filter by [strategy] / [partial].
///
/// Previously went FigSubcommand → FigSuggestion → Suggestion (two object allocations
/// per entry). Now converts in a single pass to reduce GC pressure when specs have
/// many subcommands (e.g. git with 150+ subcommands).
Iterable<Suggestion> filterSubcommandSuggestions(
    Iterable<FigSubcommand>? subcommands, dynamic strategy, String? partial) {
  if (subcommands == null || subcommands.isEmpty) return const [];
  final asSuggestions = subcommands.map((s) {
    final names = s.nameList;
    if (names.isEmpty) return null;
    final desc = s.description is List
        ? (s.description as List).join('\n')
        : s.description as String?;
    return Suggestion(
      name: _primaryName(names),
      allNames: names,
      description: desc,
      icon: s.icon ?? iconForType(SuggestionType.subcommand),
      priority: s.priority ?? 50,
      type: SuggestionType.subcommand,
      hidden: s.hidden,
      pathy: false,
    );
  }).whereType<Suggestion>();
  return filterSuggestionList(asSuggestions, strategy, partial);
}

/// Convert [FigOption]s directly to [Suggestion]s and filter by [strategy] / [partial].
///
/// Previously went FigOption → FigSuggestion → Suggestion (two object allocations
/// per entry). Now converts in a single pass. Also correctly preserves option
/// [FigOption.icon] and [FigOption.hidden] which the old intermediate FigSuggestion
/// construction was silently dropping.
Iterable<Suggestion> filterOptionSuggestions(
  Iterable<FigOption>? options,
  Set<String> usedOptions,
  dynamic strategy,
  String? partial,
) {
  if (options == null) return const [];
  final valid = options.where((o) {
    if (o.exclusiveOn != null) {
      if (o.exclusiveOn!.any((e) => usedOptions.contains(e))) return false;
    }
    return true;
  });
  final asSuggestions = valid.map((o) {
    final names = o.nameList;
    if (names.isEmpty) return null;
    final desc = o.description is List
        ? (o.description as List).join('\n')
        : o.description as String?;
    return Suggestion(
      name: _primaryName(names),
      allNames: names,
      description: desc,
      icon: o.icon ?? iconForType(SuggestionType.option),
      priority: o.priority ?? 50,
      insertValue: o.insertValue,
      type: SuggestionType.option,
      hidden: o.hidden,
      pathy: false,
    );
  }).whereType<Suggestion>();
  return filterSuggestionList(asSuggestions, strategy, partial);
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

// ── Path escaping ─────────────────────────────────────────────────────────────

String? _escapePath(String? value) => value?.replaceAll(' ', r'\ ');

/// Escape spaces in path suggestions when the current token is NOT quoted.
///
/// Mirrors inshellisense `adjustPathSuggestions`: for every [Suggestion] that
/// is [Suggestion.pathy], spaces in [Suggestion.insertValue] (and [Suggestion.name]
/// when there is no insertValue) are replaced with `\ ` so the resulting shell
/// command is valid without surrounding quotes.
///
/// No-op when [partialToken] is null or [CommandToken.isQuoted] is true —
/// quoted tokens handle spaces on their own.
Iterable<Suggestion> adjustPathSuggestions(
  Iterable<Suggestion> suggestions,
  CommandToken? partialToken,
) {
  if (partialToken == null || partialToken.isQuoted) return suggestions;
  return suggestions.map((s) {
    if (!s.pathy) return s;
    final escapedInsert = _escapePath(s.insertValue);
    final escapedName =
        s.insertValue == null ? (_escapePath(s.name) ?? s.name) : s.name;
    return Suggestion(
      name: escapedName,
      allNames: s.allNames,
      description: s.description,
      icon: s.icon,
      priority: s.priority,
      insertValue: escapedInsert,
      type: s.type,
      hidden: s.hidden,
      pathy: s.pathy,
    );
  });
}
