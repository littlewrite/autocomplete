// Hand-written dynamic handlers migrated from src/wifi-password.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const wifiPasswordPostProcessHandler =
    'manual.src_wifi-password.spec.args.generators.postprocess';

/// `networksetup -listpreferredwirelessnetworks` prints a header line
/// (`Preferred networks on <device>:`), then one network name per line.
/// Drop the header, trim each name, and skip blank lines.
List<FigSuggestion> _preferredNetworks(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.trim().isEmpty) return const [];
  final networks = <FigSuggestion>[];
  final lines = output.split('\n');
  for (var i = 1; i < lines.length; i++) {
    final name = lines[i].trim();
    if (name.isEmpty) continue;
    networks.add(FigSuggestion(name: name));
  }
  return networks;
}

/// Registers the wifi-password generators referenced by the shipped JSON.
void registerWifiPasswordHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      wifiPasswordPostProcessHandler, _preferredNetworks);
}
