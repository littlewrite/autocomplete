// Hand-written dynamic handlers migrated from src/trex.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const trexDependenciesPostProcessHandler =
    'manual.src_trex.definition.dependenciesgenerator.postprocess';
const trexScriptsPostProcessHandler =
    'manual.src_trex.definition.scriptsgenerator.postprocess';

const _trexDependencyIcon = '🦖';
const _trexScriptIcon = '🚀';

/// `cat import_map.json` output: a JSON object whose `imports` field maps an
/// import alias to its URL. Suggests each alias, described by its URL.
List<FigSuggestion> _dependencies(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  try {
    final deps = jsonDecode(output) as Map<String, dynamic>;
    final imports = deps['imports'];
    if (imports is Map) {
      return imports.entries.map((entry) {
        return FigSuggestion(
          name: entry.key,
          icon: _trexDependencyIcon,
          description: entry.value,
        );
      }).toList();
    }
  } catch (_) {
    return const [];
  }
  return const [];
}

/// `cat run.json` output: a JSON object whose `scripts` field maps a script
/// alias to its command. Suggests each alias with a fixed description.
List<FigSuggestion> _scripts(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  try {
    final scriptsObj = jsonDecode(output) as Map<String, dynamic>;
    final scripts = scriptsObj['scripts'];
    if (scripts is Map) {
      return scripts.entries.map((entry) {
        return FigSuggestion(
          name: entry.key,
          icon: _trexScriptIcon,
          description: 'trex script',
        );
      }).toList();
    }
  } catch (_) {
    return const [];
  }
  return const [];
}

/// Registers the trex generators referenced by the shipped trex JSON.
void registerTrexHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      trexDependenciesPostProcessHandler, _dependencies);
  registry.registerPostProcess(trexScriptsPostProcessHandler, _scripts);
}
