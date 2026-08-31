// Hand-written dynamic handlers migrated from src/nuxi.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const nuxiTemplatesSuggestionsHandler =
    'manual.src_nuxi.spec.subcommands_2_.args_0_.suggestions';

const _templateIcon = 'fig://template?color=0079ff&badge=+';

/// The Nuxt 3 scaffold templates offered by `nuxi add`, mirroring the source's
/// `TEMPLATES_SUGGESTIONS` in declaration order.
const _templates = <String>[
  'component',
  'composable',
  'layout',
  'plugin',
  'page',
  'middleware',
  'api',
];

/// The `nuxi add` TEMPLATE suggestions: each scaffold template with its
/// description and badge icon, filtered by the typed prefix.
Future<List<FigSuggestion>> _templatesSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  return _templates
      .where((template) => template.startsWith(finalToken))
      .map((template) => FigSuggestion(
            name: template,
            description: 'Generate a nuxt $template',
            icon: _templateIcon,
          ))
      .toList();
}

/// Registers the nuxi generator referenced by the shipped nuxi JSON.
void registerNuxiHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      nuxiTemplatesSuggestionsHandler, _templatesSuggestions);
}
