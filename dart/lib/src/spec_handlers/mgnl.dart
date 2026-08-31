// Hand-written dynamic handlers migrated from src/mgnl.ts.
//
// `mgnl install` and `mgnl search` share the light-module generator, which is
// `npmSearchGenerator` restricted to the `magnolia-light-module` keyword
// (createNpmSearchHandler(["magnolia-light-module"]) in src/mgnl.ts).

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Generator behind `mgnl install` (subcommand index 9).
const mgnlInstallLightModuleHandler =
    'manual.src_mgnl.spec.subcommands_9_.args.generators.custom';

/// Generator behind `mgnl search` (subcommand index 12).
const mgnlSearchLightModuleHandler =
    'manual.src_mgnl.spec.subcommands_12_.args.generators.custom';

int _countAtSigns(String value) => '@'.allMatches(value).length;

/// Searches the npm registry for light modules, mirroring the npm search
/// handler but pinned to the `magnolia-light-module` keyword.
///
/// With a keyword the npms.io endpoint is the search API (not the suggestion
/// endpoint) and the response object carries a `results` array. A token ending
/// in `@` switches to the registry version endpoint, matching Fig's behavior.
Future<List<FigSuggestion>> _lightModuleSearch(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null || tokens.isEmpty) return const [];
  final searchTerm = tokens.last;
  if (searchTerm.isEmpty) return const [];

  final wantsVersions = searchTerm.startsWith('@')
      ? _countAtSigns(searchTerm) > 1
      : searchTerm.contains('@');
  final versionRequest = searchTerm.endsWith('@');
  final request = versionRequest
      ? ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/vnd.npm.install-v1+json',
            'https://registry.npmjs.org/${searchTerm.substring(0, searchTerm.length - 1)}',
          ],
        )
      : ExecuteCommandInput(
          command: 'curl',
          args: [
            '-s',
            '-H',
            'Accept: application/json',
            'https://api.npms.io/v2/search?size=20&q=$searchTerm'
                '+keywords:magnolia-light-module',
          ],
        );
  final response = await executeCommand(request);
  if (response.status != 0) return const [];

  try {
    final data = jsonDecode(response.stdout);
    if (wantsVersions && data is Map) {
      final suggestions = <FigSuggestion>[];
      final tags = data['dist-tags'];
      if (tags is Map) {
        for (final entry in tags.entries) {
          suggestions.add(FigSuggestion(
            name: entry.key.toString(),
            description: entry.value?.toString(),
          ));
        }
      }
      final versions = data['versions'];
      if (versions is Map) {
        for (final version in versions.keys.toList().reversed) {
          suggestions.add(FigSuggestion(name: version.toString()));
        }
      }
      return suggestions;
    }
    // The keyword-backed search endpoint returns { "results": [...] } where
    // each entry carries a nested `package` object.
    if (data is! Map) return const [];
    final results = data['results'];
    if (results is! List) return const [];
    return results
        .whereType<Map>()
        .map((item) => item['package'])
        .whereType<Map>()
        .map((package) => FigSuggestion(
              name: package['name']?.toString(),
              description: package['description']?.toString(),
            ))
        .where((suggestion) => suggestion.nameSingle != null)
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Registers the light-module generators referenced by the shipped mgnl JSON.
void registerMgnlHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(mgnlInstallLightModuleHandler, _lightModuleSearch);
  registry.registerCustom(mgnlSearchLightModuleHandler, _lightModuleSearch);
}
