// Hand-written dynamic handlers migrated from src/yalc.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const yalcGeneratePackagesPostProcessHandler =
    'manual.src_yalc.definition.generatepackages.postprocess';
const yalcGetRemovablePackagesPostProcessHandler =
    'manual.src_yalc.definition.getremovablepackages.postprocess';

const _yalcIcon = '📦';

/// `find ~/.yalc/packages -maxdepth 4 -iname 'package.json'` output: one
/// package.json path per line. Rebuilds `name@version` from the path segment
/// after `packages/` joined with `/`, plus the version directory (the
/// second-to-last path segment). Faithful to the TS source, which keeps every
/// line including the empty entry produced by a trailing newline.
List<FigSuggestion> _generatePackages(String output, [List<String>? tokens]) {
  final packages = <FigSuggestion>[];
  for (final path in output.split('\n')) {
    final pathArr = path.split('/');
    final packagesIndex = pathArr.indexOf('packages');
    // JS Array.slice(start, end) yields [] when start > end and clamps the
    // negative end (length - 2) to zero; a missing "packages" segment makes
    // findIndex return -1, so slice(0, length - 2).
    final start = packagesIndex < 0 ? 0 : packagesIndex + 1;
    final end = pathArr.length - 2;
    final subPath = start <= end ? pathArr.sublist(start, end) : <String>[];
    // Dart has no `undefined`; a missing version segment renders as empty,
    // so a malformed/empty line becomes `@` (the TS source renders `@undefined`).
    final version = pathArr.length >= 2 ? pathArr[pathArr.length - 2] : '';
    final name = '${subPath.join('/')}@$version';
    packages.add(FigSuggestion(name: name, icon: _yalcIcon, description: name));
  }
  return packages;
}

/// `ls .yalc` output: one entry per line, kept verbatim (including the empty
/// entry from a trailing newline).
List<FigSuggestion> _removablePackages(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((path) =>
          FigSuggestion(name: path, icon: _yalcIcon, description: path))
      .toList();
}

/// Registers the yalc generators referenced by the shipped yalc JSON.
void registerYalcHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      yalcGeneratePackagesPostProcessHandler, _generatePackages);
  registry.registerPostProcess(
      yalcGetRemovablePackagesPostProcessHandler, _removablePackages);
}
