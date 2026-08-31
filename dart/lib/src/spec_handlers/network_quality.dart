// Hand-written dynamic handlers migrated from src/networkQuality.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const networkQualityInterfacesPostProcessHandler =
    'manual.src_networkquality.spec.options_5_.args.generators.postprocess';

/// `networkQuality -I` generator output is `networksetup -listallhardwareports`.
/// For each `Hardware Port: <port>\n...Device: <device>` block, suggest the
/// device name described by the hardware port, mirroring the original TS
/// `/^Hardware Port: (.*?)\n.*?Device: (.*?)$/gms` regex.
List<FigSuggestion> _interfaces(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const [];
  final re = RegExp(
    r'^Hardware Port: (.*?)\n.*?Device: (.*?)$',
    multiLine: true,
    dotAll: true,
  );
  final suggestions = <FigSuggestion>[];
  for (final match in re.allMatches(output)) {
    suggestions.add(FigSuggestion(
      name: match.group(2) ?? '',
      description: match.group(1),
    ));
  }
  return suggestions;
}

/// Registers the networkQuality generator referenced by the shipped
/// networkQuality JSON.
void registerNetworkQualityHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      networkQualityInterfacesPostProcessHandler, _interfaces);
}
