// Hand-written dynamic handlers migrated from src/rich.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const richStyleGeneratorCustomHandler =
    'manual.src_rich.definition.stylegenerator.custom';
const richPaddingTriggerHandler =
    'manual.src_rich.spec.options_26_.args.generators.trigger';
const richPaddingCustomHandler =
    'manual.src_rich.spec.options_26_.args.generators.custom';

const String _definedByTerminal = 'Defined by terminal, appearance may differ';
const String _notWellSupported = 'Not well supported';

const List<FigSuggestion> _styleSuggestions = [
  FigSuggestion(name: 'bold'),
  FigSuggestion(name: 'blink'),
  FigSuggestion(name: 'blink2'),
  FigSuggestion(name: 'conceal'),
  FigSuggestion(name: 'italic'),
  FigSuggestion(name: 'reverse'),
  FigSuggestion(name: 'strike'),
  FigSuggestion(name: 'underline'),
  FigSuggestion(name: 'underline2', description: _notWellSupported),
  FigSuggestion(name: 'frame', description: _notWellSupported),
  FigSuggestion(name: 'encircle', description: _notWellSupported),
  FigSuggestion(name: 'overline', description: _notWellSupported),
];

const List<FigSuggestion> _colorSuggestions = [
  FigSuggestion(
    name: 'black',
    description: _definedByTerminal,
    icon: 'fig://template?color=000000',
  ),
  FigSuggestion(
    name: 'red',
    description: _definedByTerminal,
    icon: 'fig://template?color=8000000',
  ),
  FigSuggestion(
    name: 'green',
    description: _definedByTerminal,
    icon: 'fig://template?color=008000',
  ),
  FigSuggestion(
    name: 'yellow',
    description: _definedByTerminal,
    icon: 'fig://template?color=808000',
  ),
  FigSuggestion(
    name: 'blue',
    description: _definedByTerminal,
    icon: 'fig://template?color=000080',
  ),
  FigSuggestion(
    name: 'magenta',
    description: _definedByTerminal,
    icon: 'fig://template?color=800080',
  ),
  FigSuggestion(
    name: 'cyan',
    description: _definedByTerminal,
    icon: 'fig://template?color=008080',
  ),
  FigSuggestion(
    name: 'white',
    description: _definedByTerminal,
    icon: 'fig://template?color=c0c0c0',
  ),
  FigSuggestion(
    name: 'bright_black',
    description: _definedByTerminal,
    icon: 'fig://template?color=808080',
  ),
  FigSuggestion(
    name: 'bright_red',
    description: _definedByTerminal,
    icon: 'fig://template?color=ff0000',
  ),
  FigSuggestion(
    name: 'bright_green',
    description: _definedByTerminal,
    icon: 'fig://template?color=00ff00',
  ),
  FigSuggestion(
    name: 'bright_yellow',
    description: _definedByTerminal,
    icon: 'fig://template?color=ffff00',
  ),
  FigSuggestion(
    name: 'bright_blue',
    description: _definedByTerminal,
    icon: 'fig://template?color=0000ff',
  ),
  FigSuggestion(
    name: 'bright_magenta',
    description: _definedByTerminal,
    icon: 'fig://template?color=ff00ff',
  ),
  FigSuggestion(
    name: 'bright_cyan',
    description: _definedByTerminal,
    icon: 'fig://template?color=00ffff',
  ),
  FigSuggestion(
    name: 'bright_white',
    description: _definedByTerminal,
    icon: 'fig://template?color=ffffff',
  ),
  FigSuggestion(name: 'grey0', icon: 'fig://template?color=000000'),
  FigSuggestion(name: 'navy_blue', icon: 'fig://template?color=00005f'),
  FigSuggestion(name: 'dark_blue', icon: 'fig://template?color=000087'),
  FigSuggestion(name: 'blue3', icon: 'fig://template?color=0000d7'),
  FigSuggestion(name: 'blue1', icon: 'fig://template?color=0000ff'),
  FigSuggestion(name: 'dark_green', icon: 'fig://template?color=005f00'),
  FigSuggestion(name: 'deep_sky_blue4', icon: 'fig://template?color=005faf'),
  FigSuggestion(name: 'dodger_blue3', icon: 'fig://template?color=005fd7'),
  FigSuggestion(name: 'dodger_blue2', icon: 'fig://template?color=005fff'),
  FigSuggestion(name: 'green4', icon: 'fig://template?color=008700'),
  FigSuggestion(name: 'spring_green4', icon: 'fig://template?color=00875f'),
  FigSuggestion(name: 'turquoise4', icon: 'fig://template?color=008787'),
  FigSuggestion(name: 'deep_sky_blue3', icon: 'fig://template?color=0087d7'),
  FigSuggestion(name: 'dodger_blue1', icon: 'fig://template?color=0087ff'),
  FigSuggestion(name: 'dark_cyan', icon: 'fig://template?color=00af87'),
  FigSuggestion(name: 'light_sea_green', icon: 'fig://template?color=00afaf'),
  FigSuggestion(name: 'deep_sky_blue2', icon: 'fig://template?color=00afd7'),
  FigSuggestion(name: 'deep_sky_blue1', icon: 'fig://template?color=00afff'),
  FigSuggestion(name: 'green3', icon: 'fig://template?color=00d700'),
  FigSuggestion(name: 'spring_green3', icon: 'fig://template?color=00d75f'),
  FigSuggestion(name: 'cyan3', icon: 'fig://template?color=00d7af'),
  FigSuggestion(name: 'dark_turquoise', icon: 'fig://template?color=00d7d7'),
  FigSuggestion(name: 'turquoise2', icon: 'fig://template?color=00d7ff'),
  FigSuggestion(name: 'green1', icon: 'fig://template?color=00ff00'),
  FigSuggestion(name: 'spring_green2', icon: 'fig://template?color=00ff5f'),
  FigSuggestion(name: 'spring_green1', icon: 'fig://template?color=00ff87'),
  FigSuggestion(
      name: 'medium_spring_green', icon: 'fig://template?color=00ffaf'),
  FigSuggestion(name: 'cyan2', icon: 'fig://template?color=00ffd7'),
  FigSuggestion(name: 'cyan1', icon: 'fig://template?color=00ffff'),
  FigSuggestion(name: 'purple4', icon: 'fig://template?color=5f00af'),
  FigSuggestion(name: 'purple3', icon: 'fig://template?color=5f00d7'),
  FigSuggestion(name: 'blue_violet', icon: 'fig://template?color=5f00ff'),
  FigSuggestion(name: 'grey37', icon: 'fig://template?color=5f5f5f'),
  FigSuggestion(name: 'medium_purple4', icon: 'fig://template?color=5f5f87'),
  FigSuggestion(name: 'slate_blue3', icon: 'fig://template?color=5f5fd7'),
  FigSuggestion(name: 'royal_blue1', icon: 'fig://template?color=5f5fff'),
  FigSuggestion(name: 'chartreuse4', icon: 'fig://template?color=5f8700'),
  FigSuggestion(name: 'pale_turquoise4', icon: 'fig://template?color=5f8787'),
  FigSuggestion(name: 'steel_blue', icon: 'fig://template?color=5f87af'),
  FigSuggestion(name: 'steel_blue3', icon: 'fig://template?color=5f87d7'),
  FigSuggestion(name: 'cornflower_blue', icon: 'fig://template?color=5f87ff'),
  FigSuggestion(name: 'dark_sea_green4', icon: 'fig://template?color=5faf5f'),
  FigSuggestion(name: 'cadet_blue', icon: 'fig://template?color=5fafaf'),
  FigSuggestion(name: 'sky_blue3', icon: 'fig://template?color=5fafd7'),
  FigSuggestion(name: 'chartreuse3', icon: 'fig://template?color=5fd700'),
  FigSuggestion(name: 'sea_green3', icon: 'fig://template?color=5fd787'),
  FigSuggestion(name: 'aquamarine3', icon: 'fig://template?color=5fd7af'),
  FigSuggestion(name: 'medium_turquoise', icon: 'fig://template?color=5fd7d7'),
  FigSuggestion(name: 'steel_blue1', icon: 'fig://template?color=5fd7ff'),
  FigSuggestion(name: 'sea_green2', icon: 'fig://template?color=5fff5f'),
  FigSuggestion(name: 'sea_green1', icon: 'fig://template?color=5fffaf'),
  FigSuggestion(name: 'dark_slate_gray2', icon: 'fig://template?color=5fffff'),
  FigSuggestion(name: 'dark_red', icon: 'fig://template?color=870000'),
  FigSuggestion(name: 'dark_magenta', icon: 'fig://template?color=8700af'),
  FigSuggestion(name: 'orange4', icon: 'fig://template?color=875f00'),
  FigSuggestion(name: 'light_pink4', icon: 'fig://template?color=875f5f'),
  FigSuggestion(name: 'plum4', icon: 'fig://template?color=875f87'),
  FigSuggestion(name: 'medium_purple3', icon: 'fig://template?color=875fd7'),
  FigSuggestion(name: 'slate_blue1', icon: 'fig://template?color=875fff'),
  FigSuggestion(name: 'wheat4', icon: 'fig://template?color=87875f'),
  FigSuggestion(name: 'grey53', icon: 'fig://template?color=878787'),
  FigSuggestion(name: 'light_slate_grey', icon: 'fig://template?color=8787af'),
  FigSuggestion(name: 'medium_purple', icon: 'fig://template?color=8787d7'),
  FigSuggestion(name: 'light_slate_blue', icon: 'fig://template?color=8787ff'),
  FigSuggestion(name: 'yellow4', icon: 'fig://template?color=87af00'),
  FigSuggestion(name: 'dark_sea_green', icon: 'fig://template?color=87af87'),
  FigSuggestion(name: 'light_sky_blue3', icon: 'fig://template?color=87afd7'),
  FigSuggestion(name: 'sky_blue2', icon: 'fig://template?color=87afff'),
  FigSuggestion(name: 'chartreuse2', icon: 'fig://template?color=87d700'),
  FigSuggestion(name: 'pale_green3', icon: 'fig://template?color=87d787'),
  FigSuggestion(name: 'dark_slate_gray3', icon: 'fig://template?color=87d7d7'),
  FigSuggestion(name: 'sky_blue1', icon: 'fig://template?color=87d7ff'),
  FigSuggestion(name: 'chartreuse1', icon: 'fig://template?color=87ff00'),
  FigSuggestion(name: 'light_green', icon: 'fig://template?color=87ff87'),
  FigSuggestion(name: 'aquamarine1', icon: 'fig://template?color=87ffd7'),
  FigSuggestion(name: 'dark_slate_gray1', icon: 'fig://template?color=87ffff'),
  FigSuggestion(name: 'deep_pink4', icon: 'fig://template?color=af005f'),
  FigSuggestion(name: 'medium_violet_red', icon: 'fig://template?color=af0087'),
  FigSuggestion(name: 'dark_violet', icon: 'fig://template?color=af00d7'),
  FigSuggestion(name: 'purple', icon: 'fig://template?color=af00ff'),
  FigSuggestion(name: 'medium_orchid3', icon: 'fig://template?color=af5faf'),
  FigSuggestion(name: 'medium_orchid', icon: 'fig://template?color=af5fd7'),
  FigSuggestion(name: 'dark_goldenrod', icon: 'fig://template?color=af8700'),
  FigSuggestion(name: 'rosy_brown', icon: 'fig://template?color=af8787'),
  FigSuggestion(name: 'grey63', icon: 'fig://template?color=af87af'),
  FigSuggestion(name: 'medium_purple2', icon: 'fig://template?color=af87d7'),
  FigSuggestion(name: 'medium_purple1', icon: 'fig://template?color=af87ff'),
  FigSuggestion(name: 'dark_khaki', icon: 'fig://template?color=afaf5f'),
  FigSuggestion(name: 'navajo_white3', icon: 'fig://template?color=afaf87'),
  FigSuggestion(name: 'grey69', icon: 'fig://template?color=afafaf'),
  FigSuggestion(name: 'light_steel_blue3', icon: 'fig://template?color=afafd7'),
  FigSuggestion(name: 'light_steel_blue', icon: 'fig://template?color=afafff'),
  FigSuggestion(name: 'dark_olive_green3', icon: 'fig://template?color=afd75f'),
  FigSuggestion(name: 'dark_sea_green3', icon: 'fig://template?color=afd787'),
  FigSuggestion(name: 'light_cyan3', icon: 'fig://template?color=afd7d7'),
  FigSuggestion(name: 'light_sky_blue1', icon: 'fig://template?color=afd7ff'),
  FigSuggestion(name: 'green_yellow', icon: 'fig://template?color=afff00'),
  FigSuggestion(name: 'dark_olive_green2', icon: 'fig://template?color=afff5f'),
  FigSuggestion(name: 'pale_green1', icon: 'fig://template?color=afff87'),
  FigSuggestion(name: 'dark_sea_green2', icon: 'fig://template?color=afffaf'),
  FigSuggestion(name: 'pale_turquoise1', icon: 'fig://template?color=afffff'),
  FigSuggestion(name: 'red3', icon: 'fig://template?color=d70000'),
  FigSuggestion(name: 'deep_pink3', icon: 'fig://template?color=d70087'),
  FigSuggestion(name: 'magenta3', icon: 'fig://template?color=d700d7'),
  FigSuggestion(name: 'dark_orange3', icon: 'fig://template?color=d75f00'),
  FigSuggestion(name: 'indian_red', icon: 'fig://template?color=d75f5f'),
  FigSuggestion(name: 'hot_pink3', icon: 'fig://template?color=d75f87'),
  FigSuggestion(name: 'hot_pink2', icon: 'fig://template?color=d75faf'),
  FigSuggestion(name: 'orchid', icon: 'fig://template?color=d75fd7'),
  FigSuggestion(name: 'orange3', icon: 'fig://template?color=d78700'),
  FigSuggestion(name: 'light_salmon3', icon: 'fig://template?color=d7875f'),
  FigSuggestion(name: 'light_pink3', icon: 'fig://template?color=d78787'),
  FigSuggestion(name: 'pink3', icon: 'fig://template?color=d787af'),
  FigSuggestion(name: 'plum3', icon: 'fig://template?color=d787d7'),
  FigSuggestion(name: 'violet', icon: 'fig://template?color=d787ff'),
  FigSuggestion(name: 'gold3', icon: 'fig://template?color=d7af00'),
  FigSuggestion(name: 'light_goldenrod3', icon: 'fig://template?color=d7af5f'),
  FigSuggestion(name: 'tan', icon: 'fig://template?color=d7af87'),
  FigSuggestion(name: 'misty_rose3', icon: 'fig://template?color=d7afaf'),
  FigSuggestion(name: 'thistle3', icon: 'fig://template?color=d7afd7'),
  FigSuggestion(name: 'plum2', icon: 'fig://template?color=d7afff'),
  FigSuggestion(name: 'yellow3', icon: 'fig://template?color=d7d700'),
  FigSuggestion(name: 'khaki3', icon: 'fig://template?color=d7d75f'),
  FigSuggestion(name: 'light_yellow3', icon: 'fig://template?color=d7d7af'),
  FigSuggestion(name: 'grey84', icon: 'fig://template?color=d7d7d7'),
  FigSuggestion(name: 'light_steel_blue1', icon: 'fig://template?color=d7d7ff'),
  FigSuggestion(name: 'yellow2', icon: 'fig://template?color=d7ff00'),
  FigSuggestion(name: 'dark_olive_green1', icon: 'fig://template?color=d7ff87'),
  FigSuggestion(name: 'dark_sea_green1', icon: 'fig://template?color=d7ffaf'),
  FigSuggestion(name: 'honeydew2', icon: 'fig://template?color=d7ffd7'),
  FigSuggestion(name: 'light_cyan1', icon: 'fig://template?color=d7ffff'),
  FigSuggestion(name: 'red1', icon: 'fig://template?color=ff0000'),
  FigSuggestion(name: 'deep_pink2', icon: 'fig://template?color=ff005f'),
  FigSuggestion(name: 'deep_pink1', icon: 'fig://template?color=ff00af'),
  FigSuggestion(name: 'magenta2', icon: 'fig://template?color=ff00d7'),
  FigSuggestion(name: 'magenta1', icon: 'fig://template?color=ff00ff'),
  FigSuggestion(name: 'orange_red1', icon: 'fig://template?color=ff5f00'),
  FigSuggestion(name: 'indian_red1', icon: 'fig://template?color=ff5f87'),
  FigSuggestion(name: 'hot_pink', icon: 'fig://template?color=ff5fd7'),
  FigSuggestion(name: 'medium_orchid1', icon: 'fig://template?color=ff5fff'),
  FigSuggestion(name: 'dark_orange', icon: 'fig://template?color=ff8700'),
  FigSuggestion(name: 'salmon1', icon: 'fig://template?color=ff875f'),
  FigSuggestion(name: 'light_coral', icon: 'fig://template?color=ff8787'),
  FigSuggestion(name: 'pale_violet_red1', icon: 'fig://template?color=ff87af'),
  FigSuggestion(name: 'orchid2', icon: 'fig://template?color=ff87d7'),
  FigSuggestion(name: 'orchid1', icon: 'fig://template?color=ff87ff'),
  FigSuggestion(name: 'orange1', icon: 'fig://template?color=ffaf00'),
  FigSuggestion(name: 'sandy_brown', icon: 'fig://template?color=ffaf5f'),
  FigSuggestion(name: 'light_salmon1', icon: 'fig://template?color=ffaf87'),
  FigSuggestion(name: 'light_pink1', icon: 'fig://template?color=ffafaf'),
  FigSuggestion(name: 'pink1', icon: 'fig://template?color=ffafd7'),
  FigSuggestion(name: 'plum1', icon: 'fig://template?color=ffafff'),
  FigSuggestion(name: 'gold1', icon: 'fig://template?color=ffd700'),
  FigSuggestion(name: 'light_goldenrod2', icon: 'fig://template?color=ffd787'),
  FigSuggestion(name: 'navajo_white1', icon: 'fig://template?color=ffd7af'),
  FigSuggestion(name: 'misty_rose1', icon: 'fig://template?color=ffd7d7'),
  FigSuggestion(name: 'thistle1', icon: 'fig://template?color=ffd7ff'),
  FigSuggestion(name: 'yellow1', icon: 'fig://template?color=ffff00'),
  FigSuggestion(name: 'light_goldenrod1', icon: 'fig://template?color=ffff5f'),
  FigSuggestion(name: 'khaki1', icon: 'fig://template?color=ffff87'),
  FigSuggestion(name: 'wheat1', icon: 'fig://template?color=ffffaf'),
  FigSuggestion(name: 'cornsilk1', icon: 'fig://template?color=ffffd7'),
  FigSuggestion(name: 'grey100', icon: 'fig://template?color=ffffff'),
  FigSuggestion(name: 'grey3', icon: 'fig://template?color=080808'),
  FigSuggestion(name: 'grey7', icon: 'fig://template?color=121212'),
  FigSuggestion(name: 'grey11', icon: 'fig://template?color=1c1c1c'),
  FigSuggestion(name: 'grey15', icon: 'fig://template?color=262626'),
  FigSuggestion(name: 'grey19', icon: 'fig://template?color=303030'),
  FigSuggestion(name: 'grey23', icon: 'fig://template?color=3a3a3a'),
  FigSuggestion(name: 'grey27', icon: 'fig://template?color=444444'),
  FigSuggestion(name: 'grey30', icon: 'fig://template?color=4e4e4e'),
  FigSuggestion(name: 'grey35', icon: 'fig://template?color=585858'),
  FigSuggestion(name: 'grey39', icon: 'fig://template?color=626262'),
  FigSuggestion(name: 'grey42', icon: 'fig://template?color=6c6c6c'),
  FigSuggestion(name: 'grey46', icon: 'fig://template?color=767676'),
  FigSuggestion(name: 'grey50', icon: 'fig://template?color=808080'),
  FigSuggestion(name: 'grey54', icon: 'fig://template?color=8a8a8a'),
  FigSuggestion(name: 'grey58', icon: 'fig://template?color=949494'),
  FigSuggestion(name: 'grey62', icon: 'fig://template?color=9e9e9e'),
  FigSuggestion(name: 'grey66', icon: 'fig://template?color=a8a8a8'),
  FigSuggestion(name: 'grey70', icon: 'fig://template?color=b2b2b2'),
  FigSuggestion(name: 'grey74', icon: 'fig://template?color=bcbcbc'),
  FigSuggestion(name: 'grey78', icon: 'fig://template?color=c6c6c6'),
  FigSuggestion(name: 'grey82', icon: 'fig://template?color=d0d0d0'),
  FigSuggestion(name: 'grey85', icon: 'fig://template?color=dadada'),
  FigSuggestion(name: 'grey89', icon: 'fig://template?color=e4e4e4'),
  FigSuggestion(name: 'grey93', icon: 'fig://template?color=eeeeee'),
];

const List<FigSuggestion> _foregroundSuggestions = [
  ..._styleSuggestions,
  FigSuggestion(name: 'on', description: 'Style the background'),
  FigSuggestion(name: 'default', description: 'Use the default foreground style'),
];

const List<FigSuggestion> _foregroundSuggestionsColor = [
  ..._foregroundSuggestions,
  ..._colorSuggestions,
];

const List<FigSuggestion> _backgroundSuggestions = [
  FigSuggestion(name: 'default', description: 'Use the default foreground style'),
];

const List<FigSuggestion> _backgroundSuggestionsColor = [
  ..._backgroundSuggestions,
  ..._colorSuggestions,
];

final Set<String> _colorNames =
    _colorSuggestions.map((suggestion) => suggestion.nameSingle!).toSet();

/// The `--style` / `--rule-style` / `--panel-style` generator. Splits the
/// final token on spaces, tracks which style/color names were already used, and
/// offers foreground or background styles (with or without the 256-color
/// palette depending on whether a color name has already been typed).
Future<List<FigSuggestion>> _styleGeneratorCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final styleTokens = finalToken.trim().split(' ');
  final seen = <String>{...styleTokens};
  final List<FigSuggestion> suggestions;
  if (!seen.contains('on')) {
    final suggestColors =
        !styleTokens.any((token) => _colorNames.contains(token));
    suggestions =
        suggestColors ? _foregroundSuggestionsColor : _foregroundSuggestions;
  } else {
    final bgTokens = styleTokens.sublist(styleTokens.indexOf('on'));
    final suggestColors = !bgTokens.any((token) => _colorNames.contains(token));
    suggestions =
        suggestColors ? _backgroundSuggestionsColor : _backgroundSuggestions;
  }
  return suggestions
      .where((suggestion) => !seen.contains(suggestion.nameSingle))
      .toList();
}

final RegExp _hexLike = RegExp(r'^0[xX][0-9a-fA-F]+$');
final RegExp _binaryLike = RegExp(r'^0[bB][01]+$');
final RegExp _octalLike = RegExp(r'^0[oO][0-7]+$');

/// Mirrors JS `Number.isNaN(Number(string))`: empty becomes `?`, a string that
/// parses as a JS number stays as-is, anything else is flagged with `(!)`.
bool _isJsNumber(String string) {
  final trimmed = string.trim();
  if (trimmed.isEmpty) return true; // JS Number('') === 0.
  if (int.tryParse(trimmed) != null) return true;
  if (double.tryParse(trimmed) != null) return true;
  if (_hexLike.hasMatch(trimmed)) return true;
  if (_binaryLike.hasMatch(trimmed)) return true;
  if (_octalLike.hasMatch(trimmed)) return true;
  return false;
}

String _pad(String string) {
  if (string.isEmpty) return '?';
  if (!_isJsNumber(string)) return '$string(!)';
  return string;
}

String _paddingDisplayName(
    String top, String right, String bottom, String left) {
  return 'Top: ${_pad(top)}, right: ${_pad(right)}, '
      'bottom: ${_pad(bottom)}, left: ${_pad(left)}';
}

/// The `-d` / `--padding` generator. Suggests the current token with a
/// description that expands 1, 2 or 4 comma-separated padding values.
Future<List<FigSuggestion>> _paddingCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  if (finalToken == '' || finalToken == '-d') return const [];
  final parts = finalToken.split(',');
  String? description;
  switch (parts.length) {
    case 1:
      final p = parts[0];
      description = _paddingDisplayName(p, p, p, p);
      break;
    case 2:
      final v = parts[0];
      final h = parts[1];
      description = _paddingDisplayName(v, h, v, h);
      break;
    case 3:
    case 4:
      final b = parts.length >= 4 ? parts[3] : '';
      description = _paddingDisplayName(parts[0], parts[1], parts[2], b);
      break;
  }
  return [FigSuggestion(name: finalToken, description: description)];
}

/// The padding generator triggers on every character to keep suggesting the
/// token being typed, matching the source `trigger: () => true`.
bool _paddingTrigger(String newToken, String oldToken) => true;

/// Registers the rich generators referenced by the shipped rich JSON.
void registerRichHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      richStyleGeneratorCustomHandler, _styleGeneratorCustom);
  registry.registerTrigger(richPaddingTriggerHandler, _paddingTrigger);
  registry.registerCustom(richPaddingCustomHandler, _paddingCustom);
}
