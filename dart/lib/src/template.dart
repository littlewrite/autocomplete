// Templates: filepaths, folders (reference: inshellisense runtime/template.ts).

import 'adapter.dart';
import 'generators.dart';
import 'spec.dart';

/// One suggestion from a template (file/folder listing).
class TemplateSuggestion {
  const TemplateSuggestion({
    required this.name,
    this.priority = 55,
    this.type = SuggestionType.file,
    this.context,
  });

  final String name;
  final int priority;
  final SuggestionType type;
  final Map<String, String>? context;
}

const int _defaultPriority = 55;

/// List files and folders in [cwd] as template suggestions.
Future<List<TemplateSuggestion>> filepathsTemplate(String cwd,
    [CompleteAdapter? adapter]) async {
  if (adapter != null) {
    final entries = await adapter.listDirectory(cwd, foldersOnly: false);
    return entries
        .map((e) => TemplateSuggestion(
              name: e.name,
              priority: _defaultPriority,
              type: e.isDirectory ? SuggestionType.folder : SuggestionType.file,
            ))
        .toList();
  }
  final suggestions = await filepathsAsync(cwd, foldersOnly: false);
  return suggestions
      .map((s) => TemplateSuggestion(
            name: s.nameSingle ?? '',
            priority: s.priority,
            type: s.type ?? SuggestionType.file,
          ))
      .toList();
}

/// List only folders in [cwd].
Future<List<TemplateSuggestion>> foldersTemplate(String cwd,
    [CompleteAdapter? adapter]) async {
  if (adapter != null) {
    final entries = await adapter.listDirectory(cwd, foldersOnly: true);
    return entries
        .map((e) => TemplateSuggestion(
              name: e.name,
              priority: _defaultPriority,
              type: SuggestionType.folder,
            ))
        .toList();
  }
  final suggestions = await filepathsAsync(cwd, foldersOnly: true);
  return suggestions
      .map((s) => TemplateSuggestion(
            name: s.nameSingle ?? '',
            priority: s.priority,
            type: SuggestionType.folder,
          ))
      .toList();
}

/// Run templates (e.g. ["filepaths", "folders"]) and return combined suggestions.
Future<List<TemplateSuggestion>> runTemplates(
  dynamic template,
  String cwd, [
  CompleteAdapter? adapter,
]) async {
  final list = template is List ? template : [template];
  final results = <List<TemplateSuggestion>>[];
  for (final t in list) {
    try {
      if (t == 'filepaths') {
        results.add(await filepathsTemplate(cwd, adapter));
      } else if (t == 'folders') {
        results.add(await foldersTemplate(cwd, adapter));
      } else if (t == 'history' || t == 'help') {
        results.add([]);
      } else {
        results.add([]);
      }
    } catch (_) {
      results.add([]);
    }
  }
  return results.expand((x) => x).toList();
}
