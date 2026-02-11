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
  if (name is List) return (name as List<String>).reduce((a, b) => a.length >= b.length ? a : b);
  return name as String;
}

Suggestion? toSuggestion(FigSuggestion s, {SuggestionType? type, String? name}) {
  final n = name ?? longName(s.name);
  if (n.isEmpty) return null;
  return Suggestion(
    name: n,
    allNames: s.nameList,
    description: s.description,
    icon: s.icon ?? iconForType(type ?? s.type),
    priority: s.priority,
    insertValue: s.insertValue,
    type: type ?? s.type,
    hidden: s.hidden,
  );
}

List<Suggestion> filterSuggestions(
  List<FigSuggestion> suggestions,
  FilterStrategy? strategy,
  String? partial,
  SuggestionType? suggestionType,
) {
  if (partial == null || partial.isEmpty) {
    return suggestions.map((s) => toSuggestion(s, type: suggestionType)).whereType<Suggestion>().toList();
  }
  final lower = partial.toLowerCase();
  switch (strategy) {
    case FilterStrategy.fuzzy:
      return suggestions
          .map((s) {
            final names = s.nameList;
            final match = names.any((n) => n.toLowerCase().contains(lower));
            if (!match) return null;
            final name = names.cast<String?>().firstWhere((n) => n!.toLowerCase().contains(lower), orElse: () => names.first);
            return toSuggestion(s, type: suggestionType, name: name);
          })
          .whereType<Suggestion>()
          .toList();
    case FilterStrategy.prefix:
    case FilterStrategy.defaultStrategy:
    case null:
      return suggestions
          .map((s) {
            final names = s.nameList;
            final match = names.any((n) => n.toLowerCase().startsWith(lower));
            if (!match) return null;
            final name = names.cast<String?>().firstWhere((n) => n!.toLowerCase().startsWith(lower), orElse: () => names.first);
            return toSuggestion(s, type: suggestionType, name: name);
          })
          .whereType<Suggestion>()
          .toList();
  }
}

List<Suggestion> filterSubcommandSuggestions(List<FigSubcommand>? subcommands, FilterStrategy? strategy, String? partial) {
  if (subcommands == null || subcommands.isEmpty) return [];
  final asSuggestions = subcommands.map((s) {
    return FigSuggestion(name: s.nameList, description: s.description, icon: s.icon, priority: 50, type: SuggestionType.subcommand);
  }).toList();
  return filterSuggestions(asSuggestions, strategy, partial, SuggestionType.subcommand);
}

List<Suggestion> filterOptionSuggestions(
  List<FigOption>? options,
  Set<String> usedOptions,
  FilterStrategy? strategy,
  String? partial,
) {
  if (options == null) return [];
  final valid = options.where((o) {
    if (o.exclusiveOn != null) {
      if (o.exclusiveOn!.any((e) => usedOptions.contains(e))) return false;
    }
    return true;
  });
  final asSuggestions = valid.map((o) {
    return FigSuggestion(
      name: o.nameList,
      description: o.description,
      priority: o.priority ?? 50,
      insertValue: o.insertValue,
      type: SuggestionType.option,
    );
  }).toList();
  return filterSuggestions(asSuggestions, strategy, partial, SuggestionType.option);
}

List<Suggestion> removeAccepted(List<Suggestion> suggestions, List<CommandToken> acceptedTokens) {
  final seen = acceptedTokens.map((t) => t.token).toSet();
  return suggestions.where((s) => s.allNames.every((n) => !seen.contains(n))).toList();
}

List<Suggestion> removeHidden(List<Suggestion> suggestions, CommandToken? partialToken) {
  return suggestions.where((s) => !s.hidden || (partialToken != null && s.name == partialToken.token)).toList();
}

List<Suggestion> removeDuplicates(List<Suggestion> suggestions) {
  final seen = <String>{};
  return suggestions.where((s) {
    if (seen.contains(s.name)) return false;
    seen.add(s.name);
    return true;
  }).toList();
}

List<Suggestion> sortByPriority(List<Suggestion> suggestions) {
  final out = List<Suggestion>.from(suggestions);
  out.sort((a, b) => b.priority.compareTo(a.priority));
  return out;
}
