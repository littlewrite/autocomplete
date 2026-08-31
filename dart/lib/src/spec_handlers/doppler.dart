// Hand-written dynamic handlers migrated from src/doppler.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const dopplerConfigsPostProcessHandler =
    'manual.src_doppler.definition.configgenerators.postprocess';
const dopplerEnvironmentsPostProcessHandler =
    'manual.src_doppler.definition.enviornmentsgenerator.postprocess';
const dopplerProjectsPostProcessHandler =
    'manual.src_doppler.definition.projectsgenerator.postprocess';
const dopplerSecretsPostProcessHandler =
    'manual.src_doppler.definition.secretsgenerator.postprocess';

/// `doppler environments --json` output: an array of `{id, name}` objects.
/// Suggests the environment id, described by its name.
List<FigSuggestion> _environments(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as List;
    return obj.map((o) {
      final item = o as Map<String, dynamic>;
      return FigSuggestion(
        name: item['id'],
        description: item['name'],
        priority: 100,
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// `doppler configs --json` output: an array of `{name, environment}` objects.
/// Suggests the config name, described by its environment.
List<FigSuggestion> _configs(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as List;
    return obj.map((o) {
      final item = o as Map<String, dynamic>;
      return FigSuggestion(
        name: item['name'],
        description: item['environment'],
        priority: 100,
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// `doppler projects --json` output: an array of `{id, name}` objects.
/// Suggests the project id, described by its name.
List<FigSuggestion> _projects(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as List;
    return obj.map((o) {
      final item = o as Map<String, dynamic>;
      return FigSuggestion(
        name: item['id'],
        description: item['name'],
        priority: 100,
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// `doppler secrets --only-names --json` output: an object whose keys are the
/// secret names. Suggests each key in the object's insertion order.
List<FigSuggestion> _secrets(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    return obj.keys
        .map((name) => FigSuggestion(name: name, priority: 100))
        .toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the doppler generators referenced by the shipped doppler JSON.
void registerDopplerHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      dopplerConfigsPostProcessHandler, _configs);
  registry.registerPostProcess(
      dopplerEnvironmentsPostProcessHandler, _environments);
  registry.registerPostProcess(
      dopplerProjectsPostProcessHandler, _projects);
  registry.registerPostProcess(
      dopplerSecretsPostProcessHandler, _secrets);
}
