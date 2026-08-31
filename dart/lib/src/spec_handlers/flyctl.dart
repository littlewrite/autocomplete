// Hand-written dynamic handlers migrated from src/flyctl.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const flyctlFlyAppsPostProcessHandler =
    'manual.src_flyctl.definition.flyappsgenerator.postprocess';
const flyctlFlyOrgsPostProcessHandler =
    'manual.src_flyctl.definition.flyorgsgenerator.postprocess';

/// `flyctl apps list --json` output parsed into app suggestions.
///
/// Each entry is a FlyApp with `ID`, `Status`, and `Organization.Slug`. The
/// icon reflects the deployment status: green for running/deployed, yellow for
/// pending, red otherwise.
List<FigSuggestion> _apps(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! List) return const [];
  final apps = <FigSuggestion>[];
  for (final entry in decoded.whereType<Map>()) {
    final status = entry['Status']?.toString();
    final String icon;
    if (status == 'running' || status == 'deployed') {
      icon = '🟢';
    } else if (status == 'pending') {
      icon = '🟡';
    } else {
      icon = '🔴';
    }
    final organization = entry['Organization'];
    apps.add(FigSuggestion(
      name: entry['ID']?.toString() ?? '',
      description:
          'Organization: ${organization is Map ? organization['Slug'] : ''}',
      icon: icon,
    ));
  }
  return apps;
}

/// `fly orgs list --json` output parsed into organization suggestions.
///
/// The JSON maps organization id to name. The `personal` organization is
/// always sorted first, then the rest alphabetically by name. The personal
/// organization gets a person icon and the others a building icon.
List<FigSuggestion> _orgs(String output, [List<String>? tokens]) {
  final dynamic decoded;
  try {
    decoded = jsonDecode(output);
  } on FormatException {
    return const [];
  }
  if (decoded is! Map) return const [];
  final entries = decoded.entries
      .map((entry) => MapEntry<String, String>(
          entry.key.toString(), entry.value?.toString() ?? ''))
      .toList();
  entries.sort((a, b) {
    if (a.key == 'personal') return -1;
    if (b.key == 'personal') return 1;
    return a.value.compareTo(b.value);
  });
  return entries.map((entry) {
    return FigSuggestion(
      name: entry.key,
      description: entry.value,
      icon: entry.key == 'personal' ? '👤' : '🏢',
    );
  }).toList();
}

/// Registers the flyctl generators referenced by the shipped flyctl JSON.
void registerFlyctlHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(flyctlFlyAppsPostProcessHandler, _apps);
  registry.registerPostProcess(flyctlFlyOrgsPostProcessHandler, _orgs);
}
