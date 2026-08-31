// Hand-written dynamic handlers migrated from src/pulumi.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const pulumiStacksPostProcessHandler =
    'manual.src_pulumi.definition.stacksgenerator.postprocess';

/// `pulumi stack ls --json` output: an array of `{name, description}` objects.
/// Suggests each stack name, described by its description.
List<FigSuggestion> _stacks(String output, [List<String>? tokens]) {
  try {
    final obj = jsonDecode(output) as List;
    return obj.map((stack) {
      final item = stack as Map<String, dynamic>;
      return FigSuggestion(
        name: item['name'],
        description: item['description'],
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the pulumi generators referenced by the shipped pulumi JSON.
void registerPulumiHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(pulumiStacksPostProcessHandler, _stacks);
}
