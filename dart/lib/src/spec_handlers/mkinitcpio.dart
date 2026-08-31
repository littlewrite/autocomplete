// Hand-written dynamic handlers migrated from src/mkinitcpio.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const mkinitcpioPresetsPostProcessHandler =
    'manual.src_mkinitcpio.spec.options_14_.args.generators.postprocess';

/// `mkinitcpio --preset` generator output is `ls /etc/mkinitcpio.d`. Suggest
/// each line with a trailing `.preset` stripped, mirroring the original TS
/// `out.trim().split("\n").map((line) => line.replace(/\.preset$/, ""))`.
List<FigSuggestion> _presets(String output, [List<String>? tokens]) {
  final trimmed = output.trim();
  if (trimmed.isEmpty) return const [];
  final suggestions = <FigSuggestion>[];
  for (final line in trimmed.split('\n')) {
    suggestions.add(
        FigSuggestion(name: line.replaceAll(RegExp(r'\.preset$'), '')));
  }
  return suggestions;
}

/// Registers the mkinitcpio generator referenced by the shipped mkinitcpio JSON.
void registerMkinitcpioHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(mkinitcpioPresetsPostProcessHandler, _presets);
}
