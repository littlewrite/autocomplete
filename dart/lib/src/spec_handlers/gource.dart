// Hand-written dynamic handlers migrated from src/gource.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gourceScreenNumbersPostProcessHandler =
    'manual.src_gource.spec.options_3_.args.generators.postprocess';

const _screenIcon = '🖥️';

/// `system_profiler SPDisplaysDataType -json` output: lists every display
/// attached across all graphics adapters. Suggests 1-based screen numbers
/// (matching gource's `--screen` option), each described by its display name.
List<FigSuggestion> _screenNumbers(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.contains('command not found')) {
    return const [];
  }
  if (output.isEmpty) {
    return const [];
  }
  try {
    final data = jsonDecode(output) as Map<String, dynamic>;
    final adapters = data['SPDisplaysDataType'] as List? ?? const [];
    final screens = <FigSuggestion>[];
    for (final adapter in adapters) {
      final displays = (adapter as Map<String, dynamic>)['spdisplays_ndrvs'];
      if (displays is! List) continue;
      for (final display in displays) {
        final displayMap = display as Map<String, dynamic>;
        screens.add(FigSuggestion(
          description: displayMap['_name'],
          icon: _screenIcon,
        ));
      }
    }
    return List<FigSuggestion>.generate(
      screens.length,
      (index) => FigSuggestion(
        name: '${index + 1}',
        description: screens[index].description,
        icon: screens[index].icon,
      ),
    );
  } catch (_) {
    return const [];
  }
}

/// Registers the gource generators referenced by the shipped gource JSON.
void registerGourceHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      gourceScreenNumbersPostProcessHandler, _screenNumbers);
}
