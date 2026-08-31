// Hand-written dynamic handlers migrated from src/scc.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const sccCountAsCustomHandler = 'manual.src_scc.spec.options_5_.args.generators';
const sccFormatMultiCustomHandler =
    'manual.src_scc.spec.options_10_.args.generators';
const sccIncludeExtCustomHandler =
    'manual.src_scc.spec.options_14_.args.generators';
const sccRemapAllCustomHandler =
    'manual.src_scc.spec.options_34_.args.generators';
const sccRemapUnknownCustomHandler =
    'manual.src_scc.spec.options_35_.args.generators';

const _stringIcon = 'fig://icon?type=string';

/// The output formats `scc -f/--format` accepts. These are also the keys of the
/// `--format-multi` key:value pairs.
const _outputFormats = [
  FigSuggestion(name: 'tabular', icon: _stringIcon),
  FigSuggestion(name: 'wide', icon: _stringIcon),
  FigSuggestion(name: 'json', icon: _stringIcon),
  FigSuggestion(name: 'csv', icon: _stringIcon),
  FigSuggestion(name: 'csv-stream', icon: _stringIcon),
  FigSuggestion(name: 'cloc-yaml', icon: _stringIcon),
  FigSuggestion(name: 'html', icon: _stringIcon),
  FigSuggestion(name: 'html-table', icon: _stringIcon),
  FigSuggestion(name: 'sql', icon: _stringIcon),
  FigSuggestion(name: 'sql-insert', icon: _stringIcon),
];

/// The parsed `scc --language` output: a map of file extension to language name
/// plus the ordered list of language names.
class _SccLanguages {
  const _SccLanguages({required this.extensions, required this.languages});

  final Map<String, String> extensions;
  final List<String> languages;
}

/// Process the output of `scc --language`. Every line is of the form
/// `Languages (ext1,ext2,...)`; the regex mirrors the source's
/// `/^(.*) \((.*)\)$/gm`.
_SccLanguages _processSccLanguages(String output) {
  final extensions = <String, String>{};
  final languages = <String>[];
  final pattern = RegExp(r'^(.*) \((.*)\)$', multiLine: true);
  for (final match in pattern.allMatches(output)) {
    final language = match.group(1)!;
    languages.add(language);
    for (final extension in match.group(2)!.split(',')) {
      extensions[extension] = language;
    }
  }
  return _SccLanguages(extensions: extensions, languages: languages);
}

/// Runs `scc --language` and returns the parsed result, or null when the
/// command is unavailable or fails.
Future<_SccLanguages?> _sccLanguages(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(
      const ExecuteCommandInput(command: 'scc', args: ['--language']));
  if (result.status != 0) return null;
  return _processSccLanguages(result.stdout);
}

/// Extension suggestions for the keys of `--count-as`. Each carries the owning
/// language as its description, mirroring `Object.entries(extensions)`.
Future<List<FigSuggestion>> _extensionKeys(
    ExecuteCommandFunction executeCommand) async {
  final languages = await _sccLanguages(executeCommand);
  if (languages == null) return const [];
  return languages.extensions.entries
      .map((entry) => FigSuggestion(name: entry.key, description: entry.value))
      .toList();
}

/// Language-name suggestions produced by `generateLanguages` in the source.
Future<List<FigSuggestion>> _languageValues(
    ExecuteCommandFunction executeCommand) async {
  final languages = await _sccLanguages(executeCommand);
  if (languages == null) return const [];
  return languages.languages
      .map((language) => FigSuggestion(name: language))
      .toList();
}

/// Extension suggestions for `--include-ext`, which additionally set the string
/// icon.
Future<List<FigSuggestion>> _extensionValues(
    ExecuteCommandFunction executeCommand) async {
  final languages = await _sccLanguages(executeCommand);
  if (languages == null) return const [];
  return languages.extensions.entries
      .map((entry) => FigSuggestion(
          name: entry.key, description: entry.value, icon: _stringIcon))
      .toList();
}

/// The values of `--format-multi`: files in the current directory (from
/// `ls -lAF1`) plus the special `stdout` sink.
Future<List<FigSuggestion>> _formatMultiValues(
    ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(
      const ExecuteCommandInput(command: 'ls', args: ['-lAF1']));
  if (result.status != 0) return const [];
  final suggestions = result.stdout
      .split('\n')
      .map((path) => FigSuggestion(
            name: path.substring(path.lastIndexOf('/') + 1),
            icon: 'fig://path/$path',
          ))
      .toList();
  suggestions.add(const FigSuggestion(name: 'stdout', priority: 75));
  return suggestions;
}

/// The static `--format-multi` keys: the output formats.
Future<List<FigSuggestion>> _outputFormatKeys(
    ExecuteCommandFunction executeCommand) async {
  return _outputFormats;
}

/// The `--remap-all` / `--remap-unknown` keys are free-form marker strings, so
/// there are no key suggestions.
Future<List<FigSuggestion>> _noKeys(
    ExecuteCommandFunction executeCommand) async {
  return const [];
}

/// The final index of `a` or `b` in [haystack], mirroring the source's
/// `lastIndexOf` helper which takes the max over both needles.
int _lastIndexOf(String haystack, String a, String b) {
  final indexA = haystack.lastIndexOf(a);
  final indexB = haystack.lastIndexOf(b);
  return indexA > indexB ? indexA : indexB;
}

/// `chunk.slice(0, chunk.indexOf(separator))` from the source. JS `slice(0,-1)`
/// drops the trailing character when the separator is absent.
String _sliceBeforeSeparator(String chunk) {
  final separator = chunk.indexOf(':');
  if (separator == -1) {
    return chunk.isEmpty ? chunk : chunk.substring(0, chunk.length - 1);
  }
  return chunk.substring(0, separator);
}

/// Filters out suggestions whose name was already used, mirroring the source's
/// `removeRepeatSuggestions`.
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

/// Returns [suggestions] with [append] baked into each suggestion's insert
/// value unless it already has one, mirroring `appendToInsertValue`.
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

/// Shared `keyValueList` behavior from `@fig/autocomplete-generators` with the
/// options scc uses: separator `:`, delimiter `,`, insertSeparator on,
/// insertDelimiter off, repeated keys filtered, repeated values kept.
Future<List<FigSuggestion>> _keyValueList(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context, {
  required Future<List<FigSuggestion>> Function(ExecuteCommandFunction executeCommand)
      keys,
  required Future<List<FigSuggestion>> Function(ExecuteCommandFunction executeCommand)
      values,
}) async {
  if (executeCommand == null) return const [];
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final index = _lastIndexOf(finalToken, ':', ',');
  final isKey =
      index == -1 || finalToken.substring(index, index + 1) != ':';
  final append = isKey ? ':' : '';
  final out =
      _appendToInsertValue(append, await (isKey ? keys : values)(executeCommand));
  if (isKey) {
    final existingKeys =
        finalToken.split(',').map(_sliceBeforeSeparator).toList();
    return _removeRepeatSuggestions(existingKeys, out);
  }
  return out;
}

/// `--count-as`: extension keys, language values.
Future<List<FigSuggestion>> _countAs(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) =>
    _keyValueList(tokens, executeCommand, context,
        keys: _extensionKeys, values: _languageValues);

/// `--format-multi`: output-format keys, file/stdout values.
Future<List<FigSuggestion>> _formatMulti(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) =>
    _keyValueList(tokens, executeCommand, context,
        keys: _outputFormatKeys, values: _formatMultiValues);

/// `--include-ext`: a comma-separated list of extensions (a `valueList`).
Future<List<FigSuggestion>> _includeExt(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final out = await _extensionValues(executeCommand);
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final existingValues = finalToken.split(',');
  return _removeRepeatSuggestions(existingValues, out);
}

/// `--remap-all` / `--remap-unknown`: the key is a free-form marker string, so
/// only language values are suggested once a `:` separator has been typed.
Future<List<FigSuggestion>> _remap(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) =>
    _keyValueList(tokens, executeCommand, context,
        keys: _noKeys, values: _languageValues);

/// Registers the scc generators referenced by the shipped scc JSON.
void registerSccHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(sccCountAsCustomHandler, _countAs);
  registry.registerCustom(sccFormatMultiCustomHandler, _formatMulti);
  registry.registerCustom(sccIncludeExtCustomHandler, _includeExt);
  registry.registerCustom(sccRemapAllCustomHandler, _remap);
  registry.registerCustom(sccRemapUnknownCustomHandler, _remap);
}
