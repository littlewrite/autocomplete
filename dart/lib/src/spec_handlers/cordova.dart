// Hand-written dynamic handlers migrated from src/cordova.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const cordovaPlatformGeneratorPostProcessHandler =
    'manual.src_cordova.definition.platformgenerator.postprocess';
const cordovaPluginGeneratorPostProcessHandler =
    'manual.src_cordova.definition.plugingenerator.postprocess';

const _pluginIcon = 'fig://icon?type=string';

/// `cat package.json` output: reads `cordova.platforms` and suggests each
/// platform with a "Platform" description. Empty output, unparseable JSON, or
/// a missing `cordova`/`platforms` field all yield an empty list.
List<FigSuggestion> _platforms(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  try {
    if (output.trim().isEmpty) return suggestions;
    final packageJson = jsonDecode(output) as Map<String, dynamic>;
    final cordova = packageJson['cordova'];
    if (cordova is Map) {
      final platforms = cordova['platforms'];
      if (platforms is List) {
        for (final platform in platforms) {
          suggestions.add(FigSuggestion(
            name: platform,
            description: 'Platform',
          ));
        }
      }
    }
  } catch (_) {
    // Malformed JSON or an unexpected shape: fall through to no suggestions.
  }
  return suggestions;
}

/// `cordova plugin list` output: one plugin name per line, each with the
/// generic string icon. Faithful to the TS `out.split('\n')` mapping, so an
/// empty or trailing-newline output keeps the resulting empty entry.
List<FigSuggestion> _plugins(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((pluginName) => FigSuggestion(
            name: pluginName,
            icon: _pluginIcon,
          ))
      .toList();
}

/// Registers the cordova generators referenced by the shipped cordova JSON.
void registerCordovaHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      cordovaPlatformGeneratorPostProcessHandler, _platforms);
  registry.registerPostProcess(
      cordovaPluginGeneratorPostProcessHandler, _plugins);
}
