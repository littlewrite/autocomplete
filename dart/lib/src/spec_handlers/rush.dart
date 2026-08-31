// Hand-written dynamic handlers migrated from src/rush.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const rushNpmSearchHandler =
    'manual.src_rush.generator.npmsearchgenerator';
const rushProjectsPostProcessHandler =
    'manual.src_rush.definition.projectgenerator.postprocess';

int _countAtSigns(String value) => '@'.allMatches(value).length;

/// Strips `//` line comments and `/* ... */` block comments from JSON text,
/// mirroring the npm `strip-json-comments` package used by the Rush source.
/// Comments inside string literals are preserved.
String _stripJsonComments(String input) {
  final output = StringBuffer();
  var inString = false;
  var inLineComment = false;
  var inBlockComment = false;
  var i = 0;
  while (i < input.length) {
    final char = input[i];
    if (inLineComment) {
      if (char == '\n' || char == '\r') {
        inLineComment = false;
        output.write(char);
      }
      i++;
      continue;
    }
    if (inBlockComment) {
      if (char == '*' && i + 1 < input.length && input[i + 1] == '/') {
        inBlockComment = false;
        i += 2;
        output.write(' ');
      } else {
        i++;
      }
      continue;
    }
    if (inString) {
      output.write(char);
      if (char == '\\' && i + 1 < input.length) {
        output.write(input[i + 1]);
        i += 2;
        continue;
      }
      if (char == '"') {
        inString = false;
      }
      i++;
      continue;
    }
    if (char == '"') {
      inString = true;
      output.write(char);
      i++;
      continue;
    }
    if (char == '/' && i + 1 < input.length && input[i + 1] == '/') {
      inLineComment = true;
      i += 2;
      continue;
    }
    if (char == '/' && i + 1 < input.length && input[i + 1] == '*') {
      inBlockComment = true;
      i += 2;
      continue;
    }
    output.write(char);
    i++;
  }
  return output.toString();
}

/// `rush.json` (config file) project generator: strip comments, then emit each
/// project's `packageName` as a suggestion.
List<FigSuggestion> _rushProjects(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  try {
    final decoded = jsonDecode(_stripJsonComments(output.trim()));
    if (decoded is! Map) return const [];
    final projects = decoded['projects'];
    if (projects is! List) return const [];
    final suggestions = <FigSuggestion>[];
    for (final project in projects) {
      if (project is! Map) continue;
      suggestions.add(FigSuggestion(
        name: project['packageName']?.toString(),
        description: 'Projects',
      ));
    }
    return suggestions;
  } on FormatException {
    return const [];
  }
}

/// NPM registry search (imported by Rush as `npmSearchGenerator`). Without
/// keywords it queries the npms.io suggestions endpoint for package names, and
/// switches to the registry install endpoint when the current token asks for
/// versions (a trailing `@`, or a second `@` inside a scoped name).
Future<List<FigSuggestion>> _npmSearch(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || tokens.isEmpty) return const [];
  final searchTerm = tokens.last;
  if (searchTerm.isEmpty) return const [];

  final wantsVersions = searchTerm.startsWith('@')
      ? _countAtSigns(searchTerm) > 1
      : searchTerm.contains('@');
  final versionRequest = searchTerm.endsWith('@');
  final request = versionRequest
      ? ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/vnd.npm.install-v1+json',
            'https://registry.npmjs.org/${searchTerm.substring(0, searchTerm.length - 1)}',
          ],
        )
      : ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/json',
            'https://api.npms.io/v2/search/suggestions?q=$searchTerm&size=20',
          ],
        );
  final response = await executeCommand(request);
  if (response.status != 0) return const [];

  try {
    final data = jsonDecode(response.stdout);
    if (wantsVersions && data is Map) {
      final suggestions = <FigSuggestion>[];
      final tags = data['dist-tags'];
      if (tags is Map) {
        for (final entry in tags.entries) {
          suggestions.add(FigSuggestion(
            name: entry.key.toString(),
            description: entry.value?.toString(),
          ));
        }
      }
      final versions = data['versions'];
      if (versions is Map) {
        for (final version in versions.keys.toList().reversed) {
          suggestions.add(FigSuggestion(name: version.toString()));
        }
      }
      return suggestions;
    }
    if (data is! List) return const [];
    return data
        .whereType<Map>()
        .map((item) => item['package'])
        .whereType<Map>()
        .map((package) => FigSuggestion(
              name: package['name']?.toString(),
              description: package['description']?.toString(),
            ))
        .where((suggestion) => suggestion.nameSingle != null)
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Registers the Rush generators referenced by the shipped rush JSON.
void registerRushHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(rushNpmSearchHandler, _npmSearch);
  registry.registerPostProcess(rushProjectsPostProcessHandler, _rushProjects);
}
