// Hand-written dynamic handlers migrated from src/blitz.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const blitzGenerateTypesHandler =
    'manual.src_blitz.spec.subcommands_6_.args_0_.suggestions';

const _generateKinds = [
  'all',
  'crud',
  'model',
  'pages',
  'queries',
  'query',
  'mutations',
  'mutation',
  'resource',
];

/// `blitz generate` `type` argument: the static list of file generation kinds.
/// Each suggestion inserts a trailing space so the next positional argument
/// (the model name) can be typed immediately.
Future<List<FigSuggestion>> _generateTypes(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return [
    for (final kind in _generateKinds)
      FigSuggestion(name: kind, insertValue: '$kind ', priority: 100),
  ];
}

/// Registers the blitz generators referenced by the shipped blitz JSON.
void registerBlitzHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(blitzGenerateTypesHandler, _generateTypes);
}
