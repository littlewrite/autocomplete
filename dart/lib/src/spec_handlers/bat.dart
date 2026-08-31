// Hand-written dynamic handlers migrated from src/bat.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const batLanguagesPostProcessHandler =
    'manual.src_bat.spec.options_2_.args.generators.postprocess';
const batWrapPostProcessHandler =
    'manual.src_bat.spec.options_8_.args.generators.postprocess';
const batColorPostProcessHandler =
    'manual.src_bat.spec.options_11_.args.generators.postprocess';
const batItalicTextPostProcessHandler =
    'manual.src_bat.spec.options_12_.args.generators.postprocess';
const batDecorationsPostProcessHandler =
    'manual.src_bat.spec.options_13_.args.generators.postprocess';
const batPagingPostProcessHandler =
    'manual.src_bat.spec.options_15_.args.generators.postprocess';
const batThemesPostProcessHandler =
    'manual.src_bat.spec.options_19_.args.generators.postprocess';

/// `bat --list-languages` output: each line lists one or more language
/// aliases separated by `:` (for example `C++:cpp`). Each alias becomes a
/// suggestion named by the alias and described as `<first column> language`.
/// The source flattens the two-dimensional split into a single suggestion list.
List<FigSuggestion> _languages(String output, [List<String>? tokens]) {
  tokens;
  final languages = <FigSuggestion>[];
  for (final outLine in output.split('\n')) {
    final descriptionString = outLine.split(':').first.trim();
    for (final item in outLine.replaceAll(':', ',').split(',')) {
      languages.add(FigSuggestion(
        name: item.trim(),
        description: '$descriptionString language',
      ));
    }
  }
  return languages;
}

/// `bat --list-themes` output: one theme per line. Each line is a suggestion
/// named by the raw line (no trimming) and described as `theme: <line>`.
List<FigSuggestion> _themes(String output, [List<String>? tokens]) {
  tokens;
  return output
      .split('\n')
      .map((theme) => FigSuggestion(
            name: theme,
            description: 'theme: $theme',
          ))
      .toList();
}

/// Parses a `possible values: [a, b, c]`-shaped line emitted by `bat` when an
/// option receives an unknown value. The source walks:
/// `trim().split("]")[0].split("[")[1].split(":")[1].split(",")`, so the first
/// `[...]` bracketed section, the text after its colon, is split on commas.
/// Malformed output that cannot produce that shape yields no suggestions
/// (matching the source throwing and the runtime discarding the result).
List<FigSuggestion> _parseModeOptions(String output, String description) {
  final trimmed = output.trim();
  if (trimmed.isEmpty) return const [];
  final afterCloseBracket = trimmed.split(']').first;
  final insideBrackets = afterCloseBracket.split('[');
  if (insideBrackets.length < 2) return const [];
  final afterColon = insideBrackets[1].split(':');
  if (afterColon.length < 2) return const [];
  final modes = afterColon[1].split(',');
  return modes
      .map((mode) => FigSuggestion(
            name: mode.trim(),
            description: description,
          ))
      .toList();
}

/// `bat --wrap` possible values: suggests the wrapping modes.
List<FigSuggestion> _wrapModes(String output, [List<String>? tokens]) {
  tokens;
  return _parseModeOptions(output, 'Specify when to use colored output');
}

/// `bat --color` possible values: suggests the colorization modes.
List<FigSuggestion> _colorModes(String output, [List<String>? tokens]) {
  tokens;
  return _parseModeOptions(output, 'Specify when to use colored output');
}

/// `bat --italic-text` possible values: suggests the italic text modes.
List<FigSuggestion> _italicTextModes(String output, [List<String>? tokens]) {
  tokens;
  return _parseModeOptions(output,
      'Specify when to use ANSI sequences for italic text in the output');
}

/// `bat --decorations` possible values: suggests the decoration modes.
List<FigSuggestion> _decorationsModes(String output, [List<String>? tokens]) {
  tokens;
  return _parseModeOptions(
      output,
      'Specify when to use the decorations that have been specified via '
      '\'--style\'');
}

/// `bat --paging` possible values: suggests the paging modes.
List<FigSuggestion> _pagingModes(String output, [List<String>? tokens]) {
  tokens;
  return _parseModeOptions(output, 'Specify when to use the pager');
}

/// Registers the bat generators referenced by the shipped bat JSON.
void registerBatHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(batLanguagesPostProcessHandler, _languages);
  registry.registerPostProcess(batWrapPostProcessHandler, _wrapModes);
  registry.registerPostProcess(batColorPostProcessHandler, _colorModes);
  registry.registerPostProcess(
      batItalicTextPostProcessHandler, _italicTextModes);
  registry.registerPostProcess(
      batDecorationsPostProcessHandler, _decorationsModes);
  registry.registerPostProcess(batPagingPostProcessHandler, _pagingModes);
  registry.registerPostProcess(batThemesPostProcessHandler, _themes);
}
