// Hand-written dynamic handlers migrated from src/asdf.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `allPluginVersionsGenerator` used by `install`'s version argument
/// (src/asdf.ts). The focused asdf JSON kept a bare generator handler
/// reference, so this generator's script + postProcess are folded into a
/// single custom callback.
const asdfInstallAllVersionsCustomHandler =
    'manual.src_asdf.spec.subcommands_6_.args_1_.generators';

/// `PRIORITY_TOP_THRESHOLD` (src/asdf.ts).
const int _priorityTopThreshold = 76;

/// `allPluginVersionsGenerator(...)`: runs `asdf list-all <plugin>` and
/// reverses the version lines so the newest suggestion is offered first.
Future<List<FigSuggestion>> _allPluginVersions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  context;
  if (executeCommand == null) return const [];
  final pluginName = tokens.length >= 2 ? tokens[tokens.length - 2] : '';
  if (pluginName.isEmpty) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'asdf',
    args: ['list-all', pluginName],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .reversed
      .map((pluginVersion) => FigSuggestion(
            name: pluginVersion.trim(),
            description: 'Plugin version',
            priority: _priorityTopThreshold,
            icon: 'fig://icon?type=commit',
          ))
      .toList();
}

/// Registers the dynamic handler referenced by the shipped asdf JSON.
void registerAsdfHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      asdfInstallAllVersionsCustomHandler, _allPluginVersions);
}
