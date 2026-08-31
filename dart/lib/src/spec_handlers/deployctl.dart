// Hand-written dynamic handlers migrated from src/deployctl.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const deployctlVersionsPostProcessHandler =
    'manual.src_deployctl.spec.subcommands_1_.args.generators.postprocess';

const _deployctlLatestIcon = '⭐️';
const _deployctlVersionIcon = '🦕';

/// `deployctl upgrade` versions JSON: `{ latest, versions }`.
/// Suggests every version, starring the latest one.
List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  tokens;
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    final latest = obj['latest'];
    final versions = obj['versions'] as List;
    return versions.map((version) {
      final name = version as String;
      return FigSuggestion(
        name: name,
        icon: name == latest ? _deployctlLatestIcon : _deployctlVersionIcon,
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the deployctl generator referenced by the shipped deployctl JSON.
void registerDeployctlHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(deployctlVersionsPostProcessHandler, _versions);
}
