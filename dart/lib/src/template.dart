// Templates: filepaths, folders (reference: inshellisense runtime/template.ts).

import 'adapter.dart';
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

String _templateNameForEntry(FileSystemEntry entry) {
  if (!entry.isDirectory || entry.name.endsWith('/')) {
    return entry.name;
  }
  return '${entry.name}/';
}

/// List files and folders in [cwd] as template suggestions.
Future<List<TemplateSuggestion>> filepathsTemplate(
  String cwd,
  CompleteAdapter adapter, {
  List<String>? extensions,
}) async {
  final entries = await adapter.listDirectory(
    cwd,
    foldersOnly: false,
    extensions: extensions,
  );
  return entries
      .map((e) => TemplateSuggestion(
            name: _templateNameForEntry(e),
            priority: _defaultPriority,
            type: e.isDirectory ? SuggestionType.folder : SuggestionType.file,
          ))
      .toList();
}

/// List only folders in [cwd].
Future<List<TemplateSuggestion>> foldersTemplate(
    String cwd, CompleteAdapter adapter) async {
  final entries = await adapter.listDirectory(cwd, foldersOnly: true);
  return entries
      .map((e) => TemplateSuggestion(
            name: _templateNameForEntry(e),
            priority: _defaultPriority,
            type: SuggestionType.folder,
          ))
      .toList();
}

/// Run templates (e.g. ["filepaths", "folders"]) and return combined suggestions.
Future<Iterable<TemplateSuggestion>> runTemplates(
  dynamic template,
  String cwd,
  CompleteAdapter adapter,
) async {
  final list = template is List ? template : [template];
  final results = <Iterable<TemplateSuggestion>>[];
  for (final rawTemplate in list) {
    try {
      final descriptor = rawTemplate is Map ? rawTemplate : null;
      final template = descriptor?['name'] ?? rawTemplate;
      final extensions = descriptor?['extensions'];
      final extensionList = extensions is List
          ? extensions.whereType<String>().toList()
          : extensions is String
              ? [extensions]
              : null;
      Iterable<TemplateSuggestion> entries;
      if (template == 'filepaths') {
        entries = await filepathsTemplate(
          cwd,
          adapter,
          extensions: extensionList,
        );
      } else if (template == 'folders') {
        entries = await foldersTemplate(cwd, adapter);
      } else if (template == 'history' || template == 'help') {
        entries = const [];
      } else {
        entries = const [];
      }
      final equals = descriptor?['equals'];
      final matchPattern = descriptor?['matches'];
      RegExp? matcher;
      if (matchPattern is String) {
        matcher = RegExp(
          matchPattern,
          caseSensitive:
              descriptor?['matchFlags']?.toString().contains('i') != true,
        );
      }
      results.add(entries.where((entry) {
        final name = entry.name.endsWith('/')
            ? entry.name.substring(0, entry.name.length - 1)
            : entry.name;
        return (equals == null || name == equals) &&
            (matcher == null || matcher.hasMatch(name));
      }));
    } catch (_) {
      results.add(const []);
    }
  }
  return results.expand((x) => x);
}
