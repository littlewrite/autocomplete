// Hand-written dynamic handlers migrated from src/dapr.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const daprRunningAppsPostProcessHandler =
    'manual.src_dapr.definition.runningappsgenerator.postprocess';
const daprRuntimeVersionsCustomHandler =
    'manual.src_dapr.definition.runtimeversionsgenerator.custom';

/// `dapr list -A -o json` output: an array of `{appId, httpPort, age}`
/// objects. Suggests the app id, described by its HTTP port and age.
List<FigSuggestion> _runningApps(String output, [List<String>? tokens]) {
  try {
    final appList = jsonDecode(output) as List;
    return appList.map((app) {
      final item = app as Map<String, dynamic>;
      return FigSuggestion(
        name: item['appId'],
        description: 'HTTP Port: ${item['httpPort']} age: ${item['age']}',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Queries the Docker Hub registry for the Dapr runtime image tags and
/// suggests each tag, described by its last update timestamp.
Future<List<FigSuggestion>> _runtimeVersions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  try {
    final result = await executeCommand(ExecuteCommandInput(
      command: 'curl',
      args: const [
        '-s',
        '-H',
        'Accept: application/json',
        'https://hub.docker.com/v2/namespaces/daprio/repositories/daprd/tags?page_size=100',
      ],
    ));
    if (result.status != 0) return const [];
    final data = jsonDecode(result.stdout) as Map<String, dynamic>;
    final results = data['results'] as List;
    return results.map((item) {
      final map = item as Map<String, dynamic>;
      return FigSuggestion(
        name: map['name'],
        description: 'Updated: ${map['last_updated']}',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the dapr generators referenced by the shipped dapr JSON.
void registerDaprHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(daprRunningAppsPostProcessHandler, _runningApps);
  registry.registerCustom(daprRuntimeVersionsCustomHandler, _runtimeVersions);
}
