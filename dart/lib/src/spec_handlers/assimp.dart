// Hand-written dynamic handlers migrated from src/assimp.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const assimpImportExtPostProcessHandler =
    'manual.src_assimp.definition.importextgenerator.postprocess';
const assimpExportExtPostProcessHandler =
    'manual.src_assimp.definition.exportextgenerator.postprocess';

/// `assimp listext` output: a `;`-separated list of importable extensions.
///
/// Ported from `importExtGenerator.postProcess`, which splits on `;` and keeps
/// any trailing empty entry exactly as Fig does.
List<FigSuggestion> _importExtensions(String output, [List<String>? tokens]) {
  return output
      .split(';')
      .map((ext) => FigSuggestion(name: ext, description: 'Extension'))
      .toList();
}

/// `assimp listexport` output: a `\n`-separated list of export formats.
///
/// Ported from `exportExtGenerator.postProcess`, which splits on `\n` and keeps
/// any trailing empty entry exactly as Fig does.
List<FigSuggestion> _exportExtensions(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((ext) => FigSuggestion(name: ext, description: 'Extension'))
      .toList();
}

/// Registers the assimp generators referenced by the shipped assimp JSON.
void registerAssimpHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      assimpImportExtPostProcessHandler, _importExtensions);
  registry.registerPostProcess(
      assimpExportExtPostProcessHandler, _exportExtensions);
}
