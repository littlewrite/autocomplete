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
  });

  final String name;
  final List<String> allNames;
  final String? description;
  final String icon;
  final int priority;
  final String? insertValue;
  final SuggestionType? type;
  final bool hidden;
}

/// Result of getSuggestions: list of suggestions and optional metadata.
class SuggestionBlob {
  const SuggestionBlob({
    required this.suggestions,
    this.argumentDescription,
    this.charactersToDrop = 0,
  });

  final List<Suggestion> suggestions;
  final String? argumentDescription;
  final int charactersToDrop;
}
