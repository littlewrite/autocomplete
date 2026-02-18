// Generators: options and helpers for filepath-style generators.
// Aligned with @fig/autocomplete-generators filepaths (see node_modules/@fig/autocomplete-generators/lib/src/filepaths.js).
// For listing files, use [CompleteAdapter.listDirectory] and map to [FigSuggestion] (see e.g. deno/generators.dart generateRunnableFiles).

import 'spec.dart';

/// Options for filepaths generator (aligned with @fig/autocomplete-generators filepaths).
class FilepathsOptions {
  const FilepathsOptions({
    this.showFolders = 'always', // 'always' | 'never' | 'only'
    this.extensions,
    this.editFileSuggestions,
    this.editFolderSuggestions,
  });

  /// How to display folders: `always` (default), `never`, or `only` (folders only).
  final String showFolders;
  /// Show only files with these extensions (no leading dot), e.g. ['exs', 'ex'].
  final List<String>? extensions;
  /// Overrides applied to file suggestions (e.g. { 'priority': 76 }).
  final Map<String, dynamic>? editFileSuggestions;
  /// Overrides applied to folder suggestions.
  final Map<String, dynamic>? editFolderSuggestions;
}

bool _matchesExtension(String name, Set<String> extensions) {
  final parts = name.split('.');
  if (parts.length < 2) return false;
  for (var i = 1; i < parts.length; i++) {
    final ext = parts.sublist(i).join('.');
    if (extensions.contains(ext)) return true;
  }
  return false;
}

/// Sugar over the `filepaths` template with filtering and suggestion overrides.
/// Mirrors @fig/autocomplete-generators filepaths().
///
/// Example:
/// ```dart
/// generators: filepaths(FilepathsOptions(
///   extensions: ['exs'],
///   editFileSuggestions: {'priority': 76},
/// ));
/// ```
FigGenerator filepaths([FilepathsOptions? options]) {
  final opts = options ?? const FilepathsOptions();
  final extensionsSet = opts.extensions != null && opts.extensions!.isNotEmpty
      ? opts.extensions!.toSet()
      : null;
  final hasFilter = extensionsSet != null;
  final extSet = extensionsSet; // capture for closure
  final editFile = opts.editFileSuggestions;
  final editFolder = opts.editFolderSuggestions;
  final hasEdit = editFile != null || editFolder != null;

  return FigGenerator(
    template: 'filepaths',
    filterTemplateSuggestions: (List<FigSuggestion> suggestions) {
      var list = suggestions;
      if (hasFilter && extSet != null) {
        list = list.where((s) {
          final type = s.type;
          if (type == SuggestionType.folder) return true;
          final name = s.nameSingle ?? '';
          return _matchesExtension(name, extSet);
        }).toList();
      }
      if (!hasEdit) return list;
      return list.map((s) {
        final overrides = s.type == SuggestionType.file ? editFile : editFolder;
        if (overrides == null || overrides.isEmpty) return s;
        return FigSuggestion(
          name: s.name,
          displayName: s.displayName,
          description: s.description,
          icon: s.icon,
          priority: overrides['priority'] as int? ?? s.priority,
          insertValue: s.insertValue,
          replaceValue: s.replaceValue,
          type: s.type,
          hidden: s.hidden,
          isDangerous: s.isDangerous,
          deprecated: s.deprecated,
          previewComponent: s.previewComponent,
          loadSpec: s.loadSpec,
        );
      }).toList();
    },
  );
}
