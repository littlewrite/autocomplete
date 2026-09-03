// Dynamic handlers migrated from the dotnet add/new/tool specs.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const _addPackageScript =
    'manual.src_dotnet_dotnet-add.definition.packagesearchgenerator.script';
const _addPackagePost =
    'manual.src_dotnet_dotnet-add.definition.packagesearchgenerator.postprocess';
const _addVersionScript =
    'manual.src_dotnet_dotnet-add.definition.versionsearchgenerator.script';
const _addVersionPost =
    'manual.src_dotnet_dotnet-add.definition.versionsearchgenerator.postprocess';
const _newTemplatePost =
    'manual.src_dotnet_dotnet-new.spec.args.generators.postprocess';
const _newSearchScript =
    'manual.src_dotnet_dotnet-new.definition.searchgenerator.script';
const _newSearchPost =
    'manual.src_dotnet_dotnet-new.definition.searchgenerator.postprocess';
const _toolPackageScript =
    'manual.src_dotnet_dotnet-tool.definition.packagegenerator.script';
const _toolPackagePost =
    'manual.src_dotnet_dotnet-tool.definition.packagegenerator.postprocess';
const _toolVersionScript =
    'manual.src_dotnet_dotnet-tool.definition.versionsearchgenerator.script';
const _toolVersionPost =
    'manual.src_dotnet_dotnet-tool.definition.versionsearchgenerator.postprocess';
const _toolTrigger =
    'manual.src_dotnet_dotnet-tool.definition.toollistgenerator.trigger';
const _toolListScript =
    'manual.src_dotnet_dotnet-tool.definition.toollistgenerator.script';
const _toolListPost =
    'manual.src_dotnet_dotnet-tool.definition.toollistgenerator.postprocess';

List<String> _searchCommand(List<String> tokens, String packageType) {
  final term = tokens.isEmpty ? '' : tokens.last;
  return [
    'curl',
    '-s',
    '-H',
    'Accept: application/json',
    'https://azuresearch-usnc.nuget.org/query?packageType=$packageType&q=$term',
  ];
}

List<String> _versionCommand(List<String> tokens, Iterable<String> commands) {
  final positional = tokens.where((token) => !token.startsWith('-')).toList();
  final index = positional.indexWhere(commands.contains);
  final package = index >= 0 && index + 1 < positional.length
      ? positional[index + 1].toLowerCase()
      : '';
  return [
    'curl',
    '-s',
    '-H',
    'Accept: application/json',
    'https://api.nuget.org/v3-flatcontainer/$package/index.json',
  ];
}

List<FigSuggestion> _searchResults(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    final data = decoded is Map ? decoded['data'] : null;
    if (data is! List) return const [];
    return data
        .whereType<Map>()
        .map((value) => FigSuggestion(
              name: value['title']?.toString() ?? '',
              insertValue: value['id']?.toString(),
              description: value['description']?.toString(),
            ))
        .where((item) => item.nameSingle?.isNotEmpty == true)
        .toList();
  } on FormatException {
    return const [];
  }
}

List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    final versions = decoded is Map ? decoded['versions'] : null;
    if (versions is! List) return const [];
    return versions.reversed
        .whereType<String>()
        .map((version) => FigSuggestion(name: version))
        .toList();
  } on FormatException {
    return const [];
  }
}

List<FigSuggestion> _newTemplates(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n').skip(4)) {
    final fields = RegExp(r'[a-zA-Z .\[\]#,/:][^ ]{1,}')
        .allMatches(line)
        .map((match) => match.group(0)!.trim())
        .toList();
    if (fields.length < 2) continue;
    suggestions.add(FigSuggestion(
      name: fields[0],
      insertValue: fields[1],
      description: fields.length > 3 ? fields[3] : null,
    ));
  }
  return suggestions;
}

List<FigSuggestion> _toolList(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n').skip(2)) {
    final fields = RegExp(r'[a-zA-Z .\[\]#,/:][^ ]{1,}')
        .allMatches(line)
        .map((match) => match.group(0)!.trim())
        .toList();
    if (fields.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: fields[0],
      insertValue: fields[0],
      description: fields.length > 2 ? fields[2] : null,
    ));
  }
  return suggestions;
}

bool _alwaysTrigger(String newToken, String oldToken) => true;

void registerDotnetDynamicHandlers(JsonHandlerRegistry registry) {
  registry.registerScript(
      _addPackageScript, (tokens) => _searchCommand(tokens, 'Dependency'));
  registry.registerPostProcess(_addPackagePost, _searchResults);
  registry.registerScript(_addVersionScript,
      (tokens) => _versionCommand(tokens, const ['package']));
  registry.registerPostProcess(_addVersionPost, _versions);

  registry.registerPostProcess(_newTemplatePost, _newTemplates);
  registry.registerScript(
      _newSearchScript, (tokens) => _searchCommand(tokens, 'Template'));
  registry.registerPostProcess(_newSearchPost, _searchResults);

  registry.registerScript(
      _toolPackageScript, (tokens) => _searchCommand(tokens, 'DotnetTool'));
  registry.registerPostProcess(_toolPackagePost, _searchResults);
  registry.registerScript(_toolVersionScript,
      (tokens) => _versionCommand(tokens, const ['install', 'update']));
  registry.registerPostProcess(_toolVersionPost, _versions);
  registry.registerTrigger(_toolTrigger, _alwaysTrigger);
  registry.registerScript(
      _toolListScript,
      (tokens) => tokens.any((token) => token == '-g' || token == '--global')
          ? const ['dotnet', 'tool', 'list', '--global']
          : const ['dotnet', 'tool', 'list']);
  registry.registerPostProcess(_toolListPost, _toolList);
}
