// Hand-written dynamic handlers migrated from src/spring.ts.
//
// `spring init` bootstraps a project from the Spring Initializr metadata
// service. The source generators fetch that metadata once (memoized, with a
// 24h `cache` TTL) by running:
//
//   curl -sfL -H "Accept: application/json" https://start.spring.io/metadata/client
//
// and then build suggestions from the `dependencies`, `javaVersion`, and
// `bootVersion` sections of the returned JSON. The `--dependencies` value is a
// comma-separated list, so the dependency generator carries a `getQueryTerm`,
// a `trigger`, and a `custom` callback.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const springVersionGeneratorCustomHandler =
    'manual.src_spring.definition.versiongenerator.custom';
const springJavaVersionGeneratorCustomHandler =
    'manual.src_spring.definition.javaversiongenerator.custom';
const springDependencyGeneratorGetQueryTermHandler =
    'manual.src_spring.definition.dependencygenerator.getqueryterm';
const springDependencyGeneratorTriggerHandler =
    'manual.src_spring.definition.dependencygenerator.trigger';
const springDependencyGeneratorCustomHandler =
    'manual.src_spring.definition.dependencygenerator.custom';

/// The comma delimiter separating dependency identifiers (`--dependencies`).
const _delimiter = ',';

/// The Initializr metadata endpoint fetched by the source generators.
const _metadataUrl = 'https://start.spring.io/metadata/client';

/// Memoized parsed metadata, mirroring the module-level `data` in
/// `memoizedFetchData` (src/spring.ts).
Map<String, dynamic>? _metadata;
bool _isFetchingMetadata = false;

/// Clears the memoized metadata so tests run deterministically.
void resetSpringHandlersCache() {
  _metadata = null;
  _isFetchingMetadata = false;
}

/// Fetches (once) and parses the Initializr metadata. Mirrors the source's
/// memoized `fetchData`: a failed request or parse yields no metadata (null),
/// and concurrent callers wait for the in-flight fetch.
Future<Map<String, dynamic>?> _fetchMetadata(
    ExecuteCommandFunction? executeCommand) async {
  if (_metadata != null) return _metadata;
  if (executeCommand == null) return null;
  if (_isFetchingMetadata) {
    await Future.delayed(const Duration(milliseconds: 4000));
    return _metadata;
  }
  _isFetchingMetadata = true;
  try {
    final result = await executeCommand(const ExecuteCommandInput(
      command: 'curl',
      args: ['-sfL', '-H', 'Accept: application/json', _metadataUrl],
    ));
    if (result.status == 0 && result.stdout.isNotEmpty) {
      _metadata = jsonDecode(result.stdout) as Map<String, dynamic>;
    }
  } catch (_) {
    // Mirror the source's try/catch: a failed fetch yields no suggestions.
  } finally {
    _isFetchingMetadata = false;
  }
  return _metadata;
}

/// `dependencyGenerator.custom` (src/spring.ts). Flattens every dependency
/// group, drops ids already typed (comma separated), sorts the remainder by
/// display name, and maps each to a suggestion.
Future<List<FigSuggestion>> _dependencyCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final data = await _fetchMetadata(executeCommand);
  if (data == null) return const [];

  final dependencies = data['dependencies'];
  if (dependencies is! Map) return const [];
  final groups = dependencies['values'];
  if (groups is! List) return const [];

  final lastToken = tokens.isEmpty ? '' : tokens.last;
  final seen = lastToken.split(_delimiter).toSet();

  final flat = <Map<String, dynamic>>[];
  for (final group in groups) {
    if (group is Map) {
      final values = group['values'];
      if (values is List) {
        flat.addAll(values.whereType<Map<String, dynamic>>());
      }
    }
  }
  flat.sort((a, b) {
    final left = a['name']?.toString() ?? '';
    final right = b['name']?.toString() ?? '';
    return left.compareTo(right);
  });

  final suggestions = <FigSuggestion>[];
  for (final dep in flat) {
    final id = dep['id']?.toString() ?? '';
    if (id.isEmpty || seen.contains(id)) continue;
    suggestions.add(FigSuggestion(
      name: id,
      displayName: dep['name']?.toString(),
      description: dep['description']?.toString(),
    ));
  }
  return suggestions;
}

/// Maps an `{ id, name }` value list (boot versions or java versions) to
/// suggestions, mirroring the source's version generators.
List<FigSuggestion> _versionSuggestions(
    Map<String, dynamic> data, String key) {
  final section = data[key];
  if (section is! Map) return const [];
  final values = section['values'];
  if (values is! List) return const [];
  return values.whereType<Map<String, dynamic>>().map((version) {
    return FigSuggestion(
      name: version['id']?.toString(),
      displayName: version['name']?.toString(),
    );
  }).toList();
}

/// `versionGenerator.custom` (src/spring.ts): Spring Boot versions.
Future<List<FigSuggestion>> _versionCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  context;
  final data = await _fetchMetadata(executeCommand);
  if (data == null) return const [];
  return _versionSuggestions(data, 'bootVersion');
}

/// `javaVersionGenerator.custom` (src/spring.ts): supported Java versions.
Future<List<FigSuggestion>> _javaVersionCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  context;
  final data = await _fetchMetadata(executeCommand);
  if (data == null) return const [];
  return _versionSuggestions(data, 'javaVersion');
}

/// `dependencyGenerator.getQueryTerm` (src/spring.ts): the token text after
/// the last comma. Registered as a custom handler because the Dart runtime
/// preserves function-valued `getQueryTerm` for API compatibility without
/// executing it; the emitted single suggestion carries the computed term.
Future<List<FigSuggestion>> _dependencyGetQueryTerm(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final token = tokens.isEmpty ? '' : tokens.last;
  final index = token.lastIndexOf(_delimiter);
  final term = index < 0 ? token : token.substring(index + _delimiter.length);
  return <FigSuggestion>[FigSuggestion(name: term)];
}

/// `dependencyGenerator.trigger` (src/spring.ts): re-run when the position of
/// the last comma changes.
bool _dependencyTrigger(String newToken, String oldToken) {
  return newToken.lastIndexOf(_delimiter) != oldToken.lastIndexOf(_delimiter);
}

/// Registers the Spring Initializr generators referenced by the shipped
/// spring JSON.
void registerSpringHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      springDependencyGeneratorCustomHandler, _dependencyCustom);
  registry.registerCustom(
      springVersionGeneratorCustomHandler, _versionCustom);
  registry.registerCustom(
      springJavaVersionGeneratorCustomHandler, _javaVersionCustom);
  registry.registerCustom(
      springDependencyGeneratorGetQueryTermHandler, _dependencyGetQueryTerm);
  registry.registerTrigger(
      springDependencyGeneratorTriggerHandler, _dependencyTrigger);
}
