// Hand-written dynamic handlers migrated from src/xcodes.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const allXcodesPostProcessHandler =
    'manual.src_xcodes.definition.allxcodes.postprocess';
const installedXcodesPostProcessHandler =
    'manual.src_xcodes.definition.installedxcodes.postprocess';

const _selectedIcon = '⭐️';
const _installedIcon = '🔨';
const _downloadIcon = '⬇️';

/// JS `line.slice(0, line.indexOf(' ('))`: the text before the first ` (`
/// marker, or the whole line minus its last character when the marker is
/// absent.
String _nameBeforeVersionMarker(String line) {
  final index = line.indexOf(' (');
  if (index != -1) return line.substring(0, index);
  return line.isEmpty ? '' : line.substring(0, line.length - 1);
}

/// JS `line.slice(line.indexOf('('))` with all parentheses stripped: starts at
/// the first `(`, or is the last character of the line when absent.
String _descriptionFromMarkers(String line) {
  final index = line.indexOf('(');
  final raw = index != -1
      ? line.substring(index)
      : (line.isEmpty ? '' : line.substring(line.length - 1));
  return raw.replaceAll(RegExp(r'[()]'), '');
}

/// `xcodes list` / `xcodes installed` output: one line per Xcode version,
/// e.g. `* 15.0 (Selected) (Installed)`. Lines are reversed so the most
/// recent version is suggested first. The icon reflects whether a line is the
/// selected version (⭐️), an installed one (🔨), a version that would be
/// installed by the current subcommand (🔨 for select/uninstall), or still
/// available to download (⬇️).
List<FigSuggestion> _processXcodeList(String output, [List<String>? tokens]) {
  final tokenList = tokens ?? const <String>[];
  final forInstalled =
      tokenList.contains('select') || tokenList.contains('uninstall');
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n').reversed) {
    final icon = line.contains('Selected')
        ? _selectedIcon
        : line.contains('Installed')
            ? _installedIcon
            : forInstalled
                ? _installedIcon
                : _downloadIcon;
    suggestions.add(FigSuggestion(
      name: _nameBeforeVersionMarker(line),
      icon: icon,
      description: _descriptionFromMarkers(line),
    ));
  }
  return suggestions;
}

/// Registers the xcodes generators referenced by the shipped xcodes JSON.
void registerXcodesHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(allXcodesPostProcessHandler, _processXcodeList);
  registry.registerPostProcess(
      installedXcodesPostProcessHandler, _processXcodeList);
}
