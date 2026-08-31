// Hand-written dynamic handlers migrated from src/mamba.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const mambaEnvsPostProcessHandler =
    'manual.src_mamba.definition.getmambaenvs.postprocess';
const mambaInstalledPackagesPostProcessHandler =
    'manual.src_mamba.definition.getinstalledpackages.postprocess';
const mambaSearchScriptHandler =
    'manual.src_mamba.definition.condasearchgenerator.script';
const mambaSearchPostProcessHandler =
    'manual.src_mamba.definition.condasearchgenerator.postprocess';

const _packageIcon = 'fig://icon?type=package';

/// `conda env list` output: skip the two header lines, then split each line
/// into non-empty parts. The first part is the env name, the last is its
/// prefix, and a `*` marks the active environment.
List<FigSuggestion> _envs(String output, [List<String>? tokens]) {
  final envs = <FigSuggestion>[];
  for (final line in output.split('\n').skip(2)) {
    final parts = line.split(' ').where((part) => part.isNotEmpty).toList();
    if (parts.isEmpty) continue;
    final isActive = parts.length > 1 && parts[1] == '*';
    envs.add(FigSuggestion(
      name: parts.first,
      description: parts.last,
      priority: isActive ? 100 : 50,
      icon: isActive ? '✅' : '🐍',
    ));
  }
  return envs;
}

/// `conda list --json` output parsed into package suggestions.
List<FigSuggestion> _installedPackages(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  return decoded.whereType<Map>().map((pkg) {
    return FigSuggestion(
      name: pkg['name']?.toString() ?? '',
      description: '${pkg['version'] ?? ''} - ${pkg['platform'] ?? ''}',
      icon: _packageIcon,
    );
  }).toList();
}

/// Builds the `conda search` command for the current token, so mamba proxies
/// the search to conda the same way the static generators do.
List<String> _searchScript(List<String> tokens) {
  final searchTerm = tokens.isEmpty ? '' : tokens.last;
  return ['conda', 'search', searchTerm, '--json'];
}

/// `conda search <term> --json` output maps each package key to the version
/// and subdir of its newest build.
List<FigSuggestion> _searchPostProcess(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! Map) return const [];
  final results = <FigSuggestion>[];
  decoded.forEach((name, versions) {
    if (versions is! List) return;
    final builds = versions.whereType<Map>().toList();
    if (builds.isEmpty) return;
    final last = builds.last;
    results.add(FigSuggestion(
      name: name.toString(),
      icon: _packageIcon,
      description: '${last['version'] ?? ''} - ${last['subdir'] ?? ''}',
    ));
  });
  return results;
}

/// Registers the mamba generators referenced by the shipped mamba JSON.
void registerMambaHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(mambaEnvsPostProcessHandler, _envs);
  registry.registerPostProcess(
      mambaInstalledPackagesPostProcessHandler, _installedPackages);
  registry.registerScript(mambaSearchScriptHandler, _searchScript);
  registry.registerPostProcess(
      mambaSearchPostProcessHandler, _searchPostProcess);
}
