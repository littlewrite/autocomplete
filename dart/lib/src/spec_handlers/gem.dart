// Hand-written dynamic handlers migrated from src/gem.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gemGemsCustomHandler = 'manual.src_gem.definition.gems.custom';
const gemGemsTriggerHandler = 'manual.src_gem.definition.gems.trigger';

/// Consults the remote RubyGems registry with the current token. Unlike the
/// apt package search, the source runs even for an empty token; its trigger
/// is always true.
Future<List<FigSuggestion>> _gems(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final searchTerm = tokens.isEmpty ? '' : tokens.last;
  final result = await executeCommand(ExecuteCommandInput(
    command: 'gem',
    args: [
      'search',
      '--both',
      '--no-versions',
      '--no-details',
      '--quiet',
      '--norc',
      searchTerm,
    ],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty && !line.startsWith('*'))
      .map((name) => FigSuggestion(name: name))
      .toList();
}

bool _gemsTrigger(String current, String previous) => true;

/// Registers the RubyGems generators referenced by the shipped gem JSON.
void registerGemHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    gemGemsCustomHandler,
    (tokens, executeCommand, context) => _gems(tokens, executeCommand),
  );
  registry.registerTrigger(gemGemsTriggerHandler, _gemsTrigger);
}
