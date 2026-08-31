// Hand-written dynamic handlers migrated from src/serverless.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';
import 'package:yaml/yaml.dart';

/// Root `generateSpec` from src/serverless.ts.
const serverlessGenerateSpecHandler = 'manual.src_serverless.spec.generatespec';

/// Parses `serverless-compose.yml` and returns the service names, or null when
/// the output is not valid YAML or lacks a `services` map.
List<String>? _serverlessServices(String output) {
  final dynamic parsed;
  try {
    parsed = loadYaml(output);
  } catch (_) {
    return null;
  }
  if (parsed is! YamlMap) return null;
  final services = parsed['services'];
  if (services is! YamlMap) return null;
  return services.keys.map((service) => service.toString()).toList();
}

/// Root `generateSpec` from src/serverless.ts: reads `serverless-compose.yml`
/// and turns each declared service into a `serverless` subcommand that loads
/// the serverless spec again. Returns null when there are no services or the
/// current token already names a service (avoiding infinite recursion).
Future<FigSpec?> _serverlessGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'cat', args: ['serverless-compose.yml']),
  );
  final services = _serverlessServices(result.stdout);
  if (services == null) return null;
  if (tokens.isNotEmpty && services.contains(tokens.first)) return null;
  if (services.isEmpty) return null;
  return FigSpec(
    name: 'serverless',
    subcommands: services
        .map((service) => FigSubcommand(
              name: service,
              description: tokens.join(','),
              priority: 100,
              loadSpec: 'serverless',
              icon: 'fig://icon?type=box',
            ))
        .toList(),
  );
}

/// Registers the dynamic handler referenced by the shipped serverless JSON.
void registerServerlessHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(
      serverlessGenerateSpecHandler, _serverlessGenerateSpec);
}
