// Hand-written dynamic handlers migrated from src/ipatool.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const ipatoolDownloadScriptHandler =
    'manual.src_ipatool.spec.subcommands_2_.options_0_.args.generators.script';
const ipatoolDownloadPostProcessHandler =
    'manual.src_ipatool.spec.subcommands_2_.options_0_.args.generators.postprocess';
const ipatoolPurchaseScriptHandler =
    'manual.src_ipatool.spec.subcommands_4_.options_0_.args.generators.script';
const ipatoolPurchasePostProcessHandler =
    'manual.src_ipatool.spec.subcommands_4_.options_0_.args.generators.postprocess';

/// Runs `ipatool search` for the token being typed so the matching app's
/// bundle identifier can be suggested for `--bundle-identifier`.
List<String> _searchScript(List<String> tokens) {
  final identifier = tokens.isEmpty ? '' : tokens.last;
  if (identifier.isEmpty) return const [];
  return [
    'ipatool',
    'search',
    identifier,
    '--limit',
    '10',
    '--format',
    'json',
  ];
}

/// `ipatool search --format json` output maps each app entry to its bundle
/// identifier with a `name - version` description.
List<FigSuggestion> _searchPostProcess(String output, [List<String>? tokens]) {
  tokens;
  if (output.isEmpty) return const [];
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! Map) return const [];
  final apps = decoded['apps'];
  if (apps is! List) return const [];
  return apps.whereType<Map>().map((app) {
    return FigSuggestion(
      name: app['bundleID']?.toString() ?? '',
      description: '${app['name'] ?? ''} - ${app['version'] ?? ''}',
    );
  }).toList();
}

/// Registers the ipatool generators referenced by the shipped ipatool JSON.
/// Both the download and purchase subcommands reference the same search-based
/// generator under distinct handler IDs.
void registerIpatoolHandlers(JsonHandlerRegistry registry) {
  registry.registerScript(ipatoolDownloadScriptHandler, _searchScript);
  registry.registerPostProcess(
      ipatoolDownloadPostProcessHandler, _searchPostProcess);
  registry.registerScript(ipatoolPurchaseScriptHandler, _searchScript);
  registry.registerPostProcess(
      ipatoolPurchasePostProcessHandler, _searchPostProcess);
}
