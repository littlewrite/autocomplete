// Runtime model: suggestion output (aligned with inshellisense model.ts).

import 'spec.dart';

/// A single suggestion shown to the user.
class Suggestion {
  const Suggestion({
    required this.name,
    required this.allNames,
    this.description,
    this.icon = '📀',
    this.priority = 50,
    this.insertValue,
    this.type,
    this.hidden = false,
    this.pathy = false,
  });

  final String name;
  final List<String> allNames;
  final String? description;
  final String icon;
  final int priority;
  final String? insertValue;
  final SuggestionType? type;
  final bool hidden;

  /// Whether this suggestion represents a file or folder path.
  ///
  /// When true and the current token is NOT quoted, spaces in [name]/[insertValue]
  /// will be backslash-escaped by [adjustPathSuggestions] before presenting to the user.
  final bool pathy;
}

/// Result of getSuggestions: list of suggestions and optional metadata.
class SuggestionBlob {
  const SuggestionBlob({
    required this.suggestions,
    this.argumentDescription,
    this.charactersToDrop = 0,
  });

  final Iterable<Suggestion> suggestions;
  final String? argumentDescription;
  final int charactersToDrop;
}
