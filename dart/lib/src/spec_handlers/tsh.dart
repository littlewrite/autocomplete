// Hand-written dynamic handlers migrated from src/tsh.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const tshSshNodesPostProcessHandler =
    'manual.src_tsh.spec.subcommands_1_.args.generators.postprocess';
const tshClustersPostProcessHandler =
    'manual.src_tsh.definition.globaloptions_1_.args.generators.postprocess';
const tshActiveUserPostProcessHandler =
    'manual.src_tsh.definition.globaloptions_2_.args.generators.postprocess';

/// `tsh ls --format=json` output: every SSH node becomes a suggestion named by
/// its hostname with an "Access expires" description from its metadata.
List<FigSuggestion> _sshNodes(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  return decoded.whereType<Map>().map((elm) {
    final spec = elm['spec'];
    final metadata = elm['metadata'];
    final hostname = spec is Map ? spec['hostname'] : null;
    final expires = metadata is Map ? metadata['expires'] : null;
    return FigSuggestion(
      name: hostname?.toString() ?? '',
      description: 'Access expires: ${expires ?? ''}',
    );
  }).toList();
}

/// `tsh clusters --format=json` output: every Teleport cluster becomes a
/// suggestion named by its cluster_name.
List<FigSuggestion> _clusters(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  return decoded
      .whereType<Map>()
      .map((elm) => FigSuggestion(name: elm['cluster_name']?.toString() ?? ''))
      .toList();
}

/// `tsh status --format json` output: a single suggestion carrying the active
/// proxy username.
List<FigSuggestion> _activeUser(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! Map) return const [];
  final active = decoded['active'];
  if (active is! Map) return const [];
  final username = active['username'];
  if (username == null) return const [];
  return [FigSuggestion(name: username.toString())];
}

/// Registers the tsh generators referenced by the shipped tsh JSON.
void registerTshHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(tshSshNodesPostProcessHandler, _sshNodes);
  registry.registerPostProcess(tshClustersPostProcessHandler, _clusters);
  registry.registerPostProcess(tshActiveUserPostProcessHandler, _activeUser);
}
