// Suggestion building: merge, filter, path handling (reference: inshellisense suggestion.ts).

import 'dart:collection' show UnmodifiableListView;

import 'model.dart';
import 'parser.dart' show CommandToken;
import 'shell.dart';
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
      priority:
          _priorityFromDynamic(m['priority'], defaultPriority: defaultPriority),
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
  final desc = _descriptionFromDynamic(s.description);
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
    pathy: resolvedType == SuggestionType.file ||
        resolvedType == SuggestionType.folder,
  );
}

bool _matchesPrefix(String candidate, String patternLower) {
  return candidate.toLowerCase().startsWith(patternLower);
}

enum _FuzzyMatchKind {
  none,
  contains,
  subsequence,
}

_FuzzyMatchKind _matchesFuzzy(String candidate, String patternLower) {
  if (patternLower.isEmpty) return _FuzzyMatchKind.contains;
  final lower = candidate.toLowerCase();
  if (lower.contains(patternLower)) return _FuzzyMatchKind.contains;

  var patternIndex = 0;
  for (var i = 0; i < lower.length; i++) {
    if (lower.codeUnitAt(i) != patternLower.codeUnitAt(patternIndex)) {
      continue;
    }
    patternIndex++;
    if (patternIndex >= patternLower.length) {
      return _FuzzyMatchKind.subsequence;
    }
  }
  return _FuzzyMatchKind.none;
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

String? _copyMatchedSuggestionName(Suggestion suggestion, String matchedName) {
  if (matchedName == suggestion.name) return null;
  return matchedName;
}

Suggestion _copySuggestionWithMatchedName(
  Suggestion suggestion,
  String matchedName,
) {
  final copiedName = _copyMatchedSuggestionName(suggestion, matchedName);
  if (copiedName == null) return suggestion;
  return Suggestion(
    name: copiedName,
    allNames: suggestion.allNames,
    description: suggestion.description,
    icon: suggestion.icon,
    priority: suggestion.priority,
    insertValue: suggestion.insertValue,
    type: suggestion.type,
    hidden: suggestion.hidden,
    pathy: suggestion.pathy,
  );
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
  final allowFuzzy = strat != FilterStrategy.prefix;
  final prefixMatches = <Suggestion>[];
  final containsMatches = <Suggestion>[];
  final subsequenceMatches = <Suggestion>[];

  for (final suggestion in suggestions) {
    final names = suggestion.allNames.isNotEmpty
        ? suggestion.allNames
        : [suggestion.name];
    final prefixMatch = _firstMatchingName(names, lower, _matchesPrefix);
    if (prefixMatch != null) {
      prefixMatches.add(
        _copySuggestionWithMatchedName(suggestion, prefixMatch),
      );
      continue;
    }
    if (!allowFuzzy) continue;

    String? containsMatch;
    String? subsequenceMatch;
    for (final name in names) {
      final matchKind = _matchesFuzzy(name, lower);
      if (matchKind == _FuzzyMatchKind.contains) {
        containsMatch = name;
        break;
      }
      if (matchKind == _FuzzyMatchKind.subsequence &&
          subsequenceMatch == null) {
        subsequenceMatch = name;
      }
    }
    if (containsMatch != null) {
      containsMatches.add(
        _copySuggestionWithMatchedName(suggestion, containsMatch),
      );
      continue;
    }
    if (subsequenceMatch != null) {
      subsequenceMatches.add(
        _copySuggestionWithMatchedName(suggestion, subsequenceMatch),
      );
    }
  }

  return prefixMatches
      .followedBy(containsMatches)
      .followedBy(subsequenceMatches);
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

/// Convert subcommand-like nodes directly to [Suggestion]s and filter by
/// [strategy] / [partial].
///
/// Accepts both public [FigSubcommand] objects and internal runtime command
/// nodes. This keeps the suggestion layer decoupled from the runtime's
/// traversal model while still avoiding intermediate [FigSuggestion] objects.
Iterable<Suggestion> filterSubcommandSuggestions(
    Iterable<Object>? subcommands, dynamic strategy, String? partial) {
  if (subcommands == null || subcommands.isEmpty) return const [];
  final asSuggestions = subcommands.map((s) {
    final names = _subcommandNameList(s);
    if (names.isEmpty) return null;
    final desc = _descriptionFromDynamic(_subcommandDescription(s));
    return Suggestion(
      name: _primaryName(names),
      allNames: names,
      description: desc,
      icon: _subcommandIcon(s) ?? iconForType(SuggestionType.subcommand),
      priority: _subcommandPriority(s) ?? 50,
      type: SuggestionType.subcommand,
      hidden: _subcommandHidden(s),
      pathy: false,
    );
  }).whereType<Suggestion>();
  return filterSuggestionList(asSuggestions, strategy, partial);
}

List<String> _subcommandNameList(Object subcommand) {
  final dynamic value = subcommand;
  final raw = value.nameList;
  return raw is List<String> ? raw : List<String>.from(raw as List);
}

dynamic _subcommandDescription(Object subcommand) {
  final dynamic value = subcommand;
  return value.description;
}

String? _subcommandIcon(Object subcommand) {
  final dynamic value = subcommand;
  return value.icon as String?;
}

int? _subcommandPriority(Object subcommand) {
  final dynamic value = subcommand;
  return value.priority as int?;
}

bool _subcommandHidden(Object subcommand) {
  final dynamic value = subcommand;
  return value.hidden == true;
}

/// Convert [FigOption]s directly to [Suggestion]s and filter by [strategy] / [partial].
///
/// Previously went FigOption → FigSuggestion → Suggestion (two object allocations
/// per entry). Now converts in a single pass. Also correctly preserves option
/// [FigOption.icon] and [FigOption.hidden] which the old intermediate FigSuggestion
/// construction was silently dropping.
Iterable<Suggestion> filterOptionSuggestions(
  Iterable<FigOption>? options,
  Map<String, int> usedOptions,
  dynamic strategy,
  String? partial,
) {
  if (options == null) return const [];
  final usedOptionNames = usedOptions.keys.toSet();
  final valid =
      options.where((o) => _isOptionVisible(o, usedOptionNames, usedOptions));
  final asSuggestions = valid.map((o) {
    final names = o.nameList;
    if (names.isEmpty) return null;
    final desc = _descriptionFromDynamic(o.description);
    final resolvedInsertValue =
        o.insertValue ?? _defaultOptionInsertValue(o, names);
    return Suggestion(
      name: _primaryName(names),
      allNames: names,
      description: desc,
      icon: o.icon ?? iconForType(SuggestionType.option),
      priority: o.priority ?? 50,
      insertValue: resolvedInsertValue,
      type: SuggestionType.option,
      hidden: o.hidden,
      pathy: false,
    );
  }).whereType<Suggestion>();
  return filterSuggestionList(asSuggestions, strategy, partial);
}

bool _isOptionVisible(
  FigOption option,
  Set<String> usedOptionNames,
  Map<String, int> usedOptionCounts,
) {
  if (option.dependsOn != null &&
      option.dependsOn!.any((name) => !usedOptionNames.contains(name))) {
    return false;
  }

  if (option.exclusiveOn != null &&
      option.exclusiveOn!.any(usedOptionNames.contains)) {
    return false;
  }

  final repeatLimit = _repeatLimit(option.isRepeatable);
  if (repeatLimit != null) {
    final usedCount = option.nameList
        .fold<int>(0, (sum, name) => sum + (usedOptionCounts[name] ?? 0));
    if (usedCount >= repeatLimit) return false;
  }

  return true;
}

int? _repeatLimit(dynamic isRepeatable) {
  if (isRepeatable == true) return null;
  if (isRepeatable is num) {
    final limit = isRepeatable.toInt();
    return limit <= 0 ? 1 : limit;
  }
  return 1;
}

String? _defaultOptionInsertValue(FigOption option, List<String> names) {
  if (option.args == null || option.args!.isEmpty) return null;
  final separator = _requiredOptionSeparator(option);
  if (separator == null) return null;
  return '${_primaryName(names)}$separator';
}

String? _requiredOptionSeparator(FigOption option) {
  final separator = option.requiresSeparator;
  if (separator is String) return separator;
  // ignore: deprecated_member_use_from_same_package
  if (separator == true || option.requiresEquals == true) return '=';
  return null;
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
  final indexed = suggestions.toList(growable: false);
  final order = <Suggestion, int>{};
  for (var i = 0; i < indexed.length; i++) {
    order[indexed[i]] = i;
  }
  final out = List<Suggestion>.from(indexed);
  out.sort((a, b) {
    final priorityComparison = b.priority.compareTo(a.priority);
    if (priorityComparison != 0) return priorityComparison;
    return order[a]!.compareTo(order[b]!);
  });
  return out;
}

/// Accumulates and sorts suggestions from a streaming request.
///
/// Designed for consumers that display partial results between
/// [SuggestionEventKind.staticPartial] / [sourcePartial] events and the final
/// [finalResult].  Usage:
///
/// ```dart
/// final acc = AccumulatedSuggestions();
/// await for (final event in handle.stream) {
///   if (event.blob != null) {
///     acc.add(event.blob!);                      // merge + dedup + sort
///     ui.render(acc.suggestions);                // current-best view
///   }
///   if (event.kind == SuggestionEventKind.finalResult) {
///     ui.render(event.blob!.suggestions);        // authoritative final
///   }
/// }
/// ```
///
/// Selection state follows by [Suggestion.name] so that incremental updates
/// don't jump the highlight.  Before the user presses direction keys the
/// selection is inactive ([selectedIndex] is -1), so incremental data arrival
/// produces no visible selection drift.
class AccumulatedSuggestions {
  final List<Suggestion> _items = [];
  final Set<String> _seen = {};
  int _selectedIndex = -1;
  String? _selectedName;
  bool _selectionActive = false;

  /// Merge [blob] items into the accumulated list (dedup + stable sort).
  void add(SuggestionBlob blob) {
    for (final s in blob.suggestions) {
      if (_seen.add(s.name)) _items.add(s);
    }
    _resort();
    _restoreSelection();
  }

  /// Replace the entire list with [blob] items.
  ///
  /// Meant for the [SuggestionEventKind.finalResult] event — the blob
  /// carries the authoritative fully-processed list.
  void replace(SuggestionBlob blob) {
    _items
      ..clear()
      ..addAll(blob.suggestions);
    _seen
      ..clear()
      ..addAll(blob.suggestions.map((s) => s.name));
    _restoreSelection();
  }

  /// Clear all accumulated state.  Typing a new command should call this.
  void clear() {
    _items.clear();
    _seen.clear();
    _selectedIndex = -1;
    _selectedName = null;
    _selectionActive = false;
  }

  // ── Selection tracking (name-based) ────────────────────────────────────

  /// Move the selection highlight to the next item.
  void selectNext() {
    if (_items.isEmpty) return;
    if (!_selectionActive) {
      _selectionActive = true;
      _selectedIndex = 0;
    } else {
      _selectedIndex = (_selectedIndex + 1).clamp(0, _items.length - 1);
    }
    _selectedName = _items[_selectedIndex].name;
  }

  /// Move the selection highlight to the previous item.
  void selectPrevious() {
    if (_items.isEmpty) return;
    if (!_selectionActive) {
      _selectionActive = true;
      _selectedIndex = 0;
    } else {
      _selectedIndex = (_selectedIndex - 1).clamp(0, _items.length - 1);
    }
    _selectedName = _items[_selectedIndex].name;
  }

  /// The currently-highlighted item, or `null` when selection is inactive.
  Suggestion? get selectedSuggestion =>
      _selectedIndex >= 0 ? _items[_selectedIndex] : null;

  // ── Sort ───────────────────────────────────────────────────────────────

  /// Stable sort by [Suggestion.priority] descending.
  void _resort() {
    final order = <Suggestion, int>{};
    for (var i = 0; i < _items.length; i++) {
      order[_items[i]] = i;
    }
    _items.sort((a, b) {
      final c = b.priority.compareTo(a.priority);
      return c != 0 ? c : order[a]!.compareTo(order[b]!);
    });
  }

  /// Re-find [selectedName] in the current list after a mutation.
  void _restoreSelection() {
    if (!_selectionActive) {
      _selectedIndex = -1;
      return;
    }
    if (_selectedName == null) {
      _selectedIndex = _items.isNotEmpty ? 0 : -1;
      return;
    }
    _selectedIndex =
        _items.indexWhere((s) => s.name == _selectedName).clamp(-1, _items.length - 1);
    if (_selectedIndex >= 0) _selectedName = _items[_selectedIndex].name;
  }

  // ── Read ───────────────────────────────────────────────────────────────

  /// Current best list of suggestions (accumulated, deduped, sorted).
  List<Suggestion> get suggestions => UnmodifiableListView(_items);

  /// Number of accumulated suggestions.
  int get length => _items.length;

  /// Index of the currently selected item, or -1.
  int get selectedIndex => _selectedIndex;

  /// Whether the user has activated selection via [selectNext]/[selectPrevious].
  bool get hasSelection => _selectionActive && _selectedIndex >= 0;
}

// ── Path escaping ─────────────────────────────────────────────────────────────

String? _escapePath(String? value, Shell shell) =>
    value == null ? null : escapeWhitespace(value, shell);

/// Escape spaces in path suggestions when the current token is NOT quoted.
///
/// Mirrors inshellisense `adjustPathSuggestions`: for every [Suggestion] that
/// is [Suggestion.pathy], spaces in [Suggestion.insertValue] (and [Suggestion.name]
/// when there is no insertValue) are escaped for the active [shell] so the
/// resulting command is valid without surrounding quotes.
///
/// No-op when [partialToken] is null or [CommandToken.isQuoted] is true —
/// quoted tokens handle spaces on their own.
Iterable<Suggestion> adjustPathSuggestions(
  Iterable<Suggestion> suggestions,
  CommandToken? partialToken,
  Shell shell,
) {
  if (partialToken == null || partialToken.isQuoted) return suggestions;
  return suggestions.map((s) {
    if (!s.pathy) return s;
    final isBareHomeToken = partialToken.isPath && partialToken.token == '~';
    final pathSeparator = primaryPathSeparator(shell);
    final rawInsert = s.insertValue ?? s.name;
    final normalizedInsert = s.type == SuggestionType.folder
        ? _normalizeFolderSeparator(rawInsert, pathSeparator)
        : rawInsert;
    final prefixedInsert =
        isBareHomeToken ? '~$pathSeparator$normalizedInsert' : normalizedInsert;
    final escapedInsert = _escapePath(prefixedInsert, shell);
    final escapedName = s.insertValue == null
        ? (_escapePath(prefixedInsert, shell) ?? s.name)
        : s.name;
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

String _normalizeFolderSeparator(String value, String separator) {
  if (value.isEmpty) return value;
  if (value.endsWith('/') || value.endsWith(r'\')) {
    return '${value.substring(0, value.length - 1)}$separator';
  }
  return value;
}
