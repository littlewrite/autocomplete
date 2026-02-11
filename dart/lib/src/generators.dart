// Generators: filepaths, folders, and script-based. Pure Dart using dart:io.

import 'dart:io';

import 'spec.dart';

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

/// Synchronously list file/folder suggestions for [cwd].
/// [foldersOnly] true => only directories (e.g. for cd).
List<FigSuggestion> filepathsSync(String cwd, {bool foldersOnly = false, List<String>? extensions}) {
  final dir = Directory(cwd);
  if (!dir.existsSync()) return [];
  final list = dir.listSync(followLinks: false);
  final out = <FigSuggestion>[];
  for (final e in list) {
    final name = e.path.split(Platform.pathSeparator).last;
    if (name.isEmpty || name == '.') continue;
    if (foldersOnly && e is! Directory) continue;
    if (e is Directory) {
      out.add(FigSuggestion(name: name, type: SuggestionType.folder, priority: 55));
    } else {
      if (extensions != null && extensions.isNotEmpty) {
        final ext = name.contains('.') ? name.split('.').last : '';
        if (!extensions.any((x) => x == ext)) continue;
      }
      out.add(FigSuggestion(name: name, type: SuggestionType.file, priority: 55));
    }
  }
  return out;
}

/// Async version for use from runtime (no blocking).
Future<List<FigSuggestion>> filepathsAsync(String cwd, {bool foldersOnly = false, List<String>? extensions}) async {
  final dir = Directory(cwd);
  if (!await dir.exists()) return [];
  final list = dir.list(followLinks: false);
  final out = <FigSuggestion>[];
  await for (final e in list) {
    final name = e.path.split(Platform.pathSeparator).last;
    if (name.isEmpty || name == '.') continue;
    if (foldersOnly && e is! Directory) continue;
    if (e is Directory) {
      out.add(FigSuggestion(name: name, type: SuggestionType.folder, priority: 55));
    } else {
      if (extensions != null && extensions.isNotEmpty) {
        final ext = name.contains('.') ? name.split('.').last : '';
        if (!extensions.any((x) => x == ext)) continue;
      }
      out.add(FigSuggestion(name: name, type: SuggestionType.file, priority: 55));
    }
  }
  return out;
}
