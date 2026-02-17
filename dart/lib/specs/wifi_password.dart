// AI-generated from TypeScript source: wifi-password.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec wifiPasswordSpec = FigSpec(
  name: 'wifi-password',
  description:
      'People ask you for the Wi-Fi password. Answer quickly. macOS only',
  args: [
    FigArg(
      name: 'SSID',
      description: 'The name for a Wi-Fi network',
      generators: [
        FigGenerator(
          script: [
            'bash',
            '-c',
            "networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print \$2}' | xargs networksetup -listpreferredwirelessnetworks",
          ],
          postProcess: (String out, [List<String>? tokens]) {
            final List<String> lines = out.split('\n');
            if (lines.length > 1) {
              return lines
                  .sublist(1)
                  .map((line) => line.trim())
                  .where((line) => line.isNotEmpty)
                  .map((name) => FigSuggestion(name: name))
                  .toList();
            }
            return [];
          },
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for wifi-password',
    ),
    FigOption(
      name: ['--quiet', '-q'],
      description: 'Only output the password',
    ),
    FigOption(
      name: ['--version', '-V'],
      description: 'Output version',
    ),
  ],
);
