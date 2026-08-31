// Hand-written dynamic handlers migrated from src/man.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const manManualPagesTriggerHandler =
    'manual.src_man.spec.args.generators.trigger';
const manManualPagesCustomHandler =
    'manual.src_man.spec.args.generators.custom';
const manSectionsCustomHandler =
    'manual.src_man.spec.options_5_.args.generators';

const _stringIcon = 'fig://icon?type=string';

/// The manual page sections accepted by `-S`, mirroring the source's
/// `sections` map rendered with a page icon.
const _sections = <FigSuggestion>[
  FigSuggestion(name: '1', description: 'General commands', icon: '📑'),
  FigSuggestion(name: '2', description: 'System calls', icon: '📑'),
  FigSuggestion(name: '3', description: 'C library functions', icon: '📑'),
  FigSuggestion(name: '4', description: 'Devices and special files', icon: '📑'),
  FigSuggestion(name: '5', description: 'File formats and conventions', icon: '📑'),
  FigSuggestion(name: '6', description: 'Games, etc', icon: '📑'),
  FigSuggestion(name: '7', description: 'Miscellanea', icon: '📑'),
  FigSuggestion(name: '8', description: 'System admin and daemons', icon: '📑'),
];

/// Cache of page suggestions keyed by the first letter of the page name,
/// mirroring the module-level `pageSuggestionCache` in the source.
final Map<String, List<FigSuggestion>> _pageSuggestionCache = {};

/// Milliseconds since the epoch when the cache was last built, mirroring the
/// source's `lastCachedAt` (0 = never built).
int _lastCachedAt = 0;

/// One hour in milliseconds: the manual page cache TTL.
const _pageSuggestionCacheTTL = 1000 * 60 * 60;

/// Lock preventing concurrent `man -k .` invocations.
bool _isGeneratingSuggestions = false;

/// Clears the module-level manual page cache so tests run deterministically.
void resetManHandlersCache() {
  _pageSuggestionCache.clear();
  _lastCachedAt = 0;
  _isGeneratingSuggestions = false;
}

/// Mirrors `String.prototype.slice(start)` including negative index clamping so
/// out-of-range indices never throw.
String _jsSlice(String value, int start) {
  var index = start;
  if (index < 0) index = value.length + index;
  if (index >= value.length) return '';
  if (index < 0) index = 0;
  return value.substring(index);
}

/// Mirrors `String.prototype.slice(start, end)` with negative/clamped indices.
String _jsSliceRange(String value, int start, int end) {
  var from = start;
  var to = end;
  if (from < 0) from = value.length + from;
  if (to < 0) to = value.length + to;
  if (to > value.length) to = value.length;
  if (from < 0) from = 0;
  if (from >= to || from >= value.length) return '';
  return value.substring(from, to);
}

/// Mirrors the source `trigger`: run when the current token is empty, or when
/// it just became non-empty from an empty previous token.
bool _manualPagesTrigger(String newToken, String oldToken) {
  return newToken.isEmpty || (oldToken.isEmpty && newToken.isNotEmpty);
}

/// Builds the manual page cache by running `man -k .` (same as `apropos .`),
/// then returns the pages whose name starts with the final token's first
/// character. The cache is built once and reused for the TTL window.
Future<List<FigSuggestion>> _manualPages(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;

  // Clear the cache if the TTL has elapsed.
  final now = DateTime.now().millisecondsSinceEpoch;
  if (now - _lastCachedAt > _pageSuggestionCacheTTL) {
    _pageSuggestionCache.clear();
    _lastCachedAt = now;
  }

  if (!_isGeneratingSuggestions && _pageSuggestionCache.isEmpty) {
    if (executeCommand == null) return const [];
    _isGeneratingSuggestions = true;
    final result = await executeCommand(
        const ExecuteCommandInput(command: 'man', args: ['-k', '.']));
    if (result.status == 0) {
      final seenPageNames = <String>{};
      for (final line in result.stdout.split('\n')) {
        final splitIndex = line.indexOf(' - ');
        final pageNames = _jsSliceRange(line, 0, splitIndex);
        var description = _jsSlice(line, splitIndex + 3);
        if (description.isEmpty) description = 'Manual page';
        description = description[0].toUpperCase() + _jsSlice(description, 1);

        for (final page in pageNames.split(', ')) {
          final index = page.lastIndexOf('(');
          final name = _jsSliceRange(page, 0, index);
          final section = _jsSlice(page, index);
          if (seenPageNames.contains(name)) continue;
          seenPageNames.add(name);
          final suggestion = FigSuggestion(
            name: name,
            description: '$section $description',
            icon: _stringIcon,
          );
          final key = name.isEmpty ? '' : name[0];
          _pageSuggestionCache
              .putIfAbsent(key, () => <FigSuggestion>[])
              .add(suggestion);
        }
      }
    }
    _isGeneratingSuggestions = false;
  } else if (_isGeneratingSuggestions) {
    // Suggestions are being generated by a concurrent invocation; wait before
    // attempting to show the results.
    await Future.delayed(const Duration(milliseconds: 4000));
  }

  final key = finalToken.isEmpty ? 'a' : finalToken[0];
  return _pageSuggestionCache[key] ?? const [];
}

/// Appends [append] to each suggestion's insert value unless it already has
/// one, mirroring `appendToInsertValue` from `@fig/autocomplete-generators`.
List<FigSuggestion> _appendToInsertValue(
    String append, List<FigSuggestion> suggestions) {
  if (append.isEmpty) return suggestions;
  return suggestions.map((item) {
    if (item.insertValue != null && item.insertValue!.isNotEmpty) {
      return item;
    }
    return FigSuggestion(
      name: item.name,
      displayName: item.displayName,
      description: item.description,
      icon: item.icon,
      priority: item.priority,
      insertValue: '${item.nameSingle ?? ''}$append',
      replaceValue: item.replaceValue,
      type: item.type,
      hidden: item.hidden,
      isDangerous: item.isDangerous,
      deprecated: item.deprecated,
      previewComponent: item.previewComponent,
      loadSpec: item.loadSpec,
    );
  }).toList();
}

/// Drops suggestions whose name was already typed, mirroring
/// `removeRepeatSuggestions` from `@fig/autocomplete-generators`.
List<FigSuggestion> _removeRepeatSuggestions(
    List<String> alreadyUsed, List<FigSuggestion> suggestions) {
  final seen = alreadyUsed.toSet();
  return suggestions.where((suggestion) {
    final name = suggestion.name;
    if (name is String) return !seen.contains(name);
    if (name is List) {
      for (final item in name) {
        if (seen.contains(item)) return false;
      }
    }
    return true;
  }).toList();
}

/// The `-S` section suggestions, mirroring `valueList` from
/// `@fig/autocomplete-generators` with delimiter `:`, `insertDelimiter: true`,
/// and the static section values.
Future<List<FigSuggestion>> _sectionsCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final out = _appendToInsertValue(':', _sections);
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  return _removeRepeatSuggestions(finalToken.split(':'), out);
}

/// Registers the man generators referenced by the shipped man JSON.
void registerManHandlers(JsonHandlerRegistry registry) {
  registry.registerTrigger(manManualPagesTriggerHandler, _manualPagesTrigger);
  registry.registerCustom(manManualPagesCustomHandler, _manualPages);
  registry.registerCustom(manSectionsCustomHandler, _sectionsCustom);
}
