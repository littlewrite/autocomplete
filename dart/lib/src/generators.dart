// Generators: options and helpers for filepath-style generators.
// For listing files, use [CompleteAdapter.listDirectory] and map to [FigSuggestion] (see e.g. deno/generators.dart generateRunnableFiles).

/// Options for filepaths generator (aligned with @fig/autocomplete-generators filepaths).
class FilepathsOptions {
  const FilepathsOptions({
    this.showFolders = 'all', // 'all' | 'only' | 'never'
    this.extensions,
    this.editFolderSuggestions,
  });

  final String showFolders;
  final List<String>? extensions;
  final dynamic editFolderSuggestions;
}
