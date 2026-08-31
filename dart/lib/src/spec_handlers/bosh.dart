// Hand-written dynamic handlers migrated from src/bosh.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const boshParallelSuggestionsHandler =
    'manual.src_bosh.spec.options_5_.args.suggestions';
const boshDeploymentsPostProcessHandler =
    'manual.src_bosh.spec.options_8_.args.generators.postprocess';

/// `bosh --parallel` suggestions: whole numbers from 1 to 20.
Future<List<FigSuggestion>> _parallelSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final suggestions = <FigSuggestion>[];
  for (var i = 1; i <= 20; i++) {
    suggestions.add(FigSuggestion(name: '$i'));
  }
  return suggestions;
}

/// `bosh --json deployments` output: a `{Tables: [{Rows: [{name, ...}]}]}`
/// object. Suggests each deployment name.
List<FigSuggestion> _deployments(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) {
    return const [];
  }
  try {
    final obj = jsonDecode(output) as Map<String, dynamic>;
    final tables = obj['Tables'] as List;
    if (tables.isEmpty) return const [];
    final rows = (tables.first as Map<String, dynamic>)['Rows'] as List;
    return rows.map((row) {
      final item = row as Map<String, dynamic>;
      return FigSuggestion(
        name: item['name'],
        description: 'Deployment',
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the bosh dynamic handlers referenced by the shipped bosh JSON.
void registerBoshHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(boshParallelSuggestionsHandler, _parallelSuggestions);
  registry.registerPostProcess(
      boshDeploymentsPostProcessHandler, _deployments);
}
