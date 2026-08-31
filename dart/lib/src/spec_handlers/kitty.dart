// Hand-written dynamic handlers migrated from src/kitty.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `kitty icat --background` color suggestions: the `--background` option's
/// arg carries a fixed palette of named colors, each rendered with its hex
/// value as a `fig://template` color icon (the `.map()` in the TS source).
const kittyBackgroundColorsCustomHandler =
    'manual.src_kitty.spec.subcommands_1_.options_3_.args.suggestions';

/// The exporter materialized the programmatic `+kitten` subcommand expansion
/// (`plusCommands.map((kitten) => ({ ...kitten, name: '+' + kitten.name }))`)
/// as a bare handler reference in the top-level `subcommands` array. The JSON
/// parser treats it as a per-item `subcommands[i]` ref and SPLICES the returned
/// `List<FigSubcommand>` into the array at that position (see `_plusSubcommands`).
const kittyPlusSubcommandsHandler =
    'manual.src_kitty.spec.subcommands_2_';

/// Legacy alias for the same ID, kept for the pre-registration tests.
const kittyPlusCommandsSubcommandsHandler = kittyPlusSubcommandsHandler;

/// The `icat --background` palette from src/kitty.ts: a fixed list of color
/// names, each carrying `icon: fig://template?color=<hex>`.
const _backgroundPalettePairs = <List<String>>[
  ['none', '000000'],
  ['black', '000000'],
  ['white', 'ffffff'],
  ['gray', '808080'],
  ['red', 'ff0000'],
  ['green', '00ff00'],
  ['blue', '0000ff'],
  ['yellow', 'ffff00'],
  ['magenta', 'ff00ff'],
  ['cyan', '00ffff'],
];

/// The static palette suggestions: each color name with its hex `fig://template`
/// icon. Shared by the `--background` custom handler and the `icat` port.
List<FigSuggestion> _backgroundPalette() {
  return _backgroundPalettePairs
      .map((pair) => FigSuggestion(
            name: pair[0],
            icon: 'fig://template?color=${pair[1]}',
          ))
      .toList();
}

/// `kitty icat --background` color suggestions (src/kitty.ts): a fixed palette
/// of named colors. Ignores the invocation context because the source produces
/// a static list.
Future<List<FigSuggestion>> _backgroundColors(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _backgroundPalette();
}

/// `icatCommand` (src/kitty.ts): a cat-like utility to display images in the
/// terminal. Ported faithfully with its ten options and the filepath positional
/// arg (only the fields present in the source).
FigSubcommand _icatCommand() {
  return FigSubcommand(
    name: 'icat',
    description: 'A cat like utility to display images in the terminal',
    options: [
      FigOption(
        name: '--align',
        description: 'Horizontal alignment for the displayed image',
        args: FigArg(
          name: 'ALIGN',
          defaultValue: 'center',
          suggestions: ['center', 'left', 'right'],
        ),
      ),
      FigOption(
        name: '--place',
        description: 'Choose where on the screen to display the image',
        args: FigArg(
          name: 'PLACE',
          description: '<width>x<height>@<left>x<top>',
        ),
      ),
      FigOption(
        name: '--scale-up',
        description:
            'Images that are smaller than the specified area to be scaled up to use as much of the specified area as possible',
        dependsOn: ['--place'],
      ),
      FigOption(
        name: '--background',
        description:
            'Specify a background color, this will cause transparent images to be composited on top of the specified color',
        args: FigArg(
          name: 'COLOR',
          defaultValue: 'none',
          suggestions: _backgroundPalette(),
        ),
      ),
      FigOption(
        name: '--mirror',
        description:
            'Mirror the image about a horizontal or vertical axis or both',
        args: FigArg(
          name: 'AXIS',
          defaultValue: 'none',
          suggestions: ['horizontal', 'both', 'none', 'vertical'],
        ),
      ),
      FigOption(
        name: '--clear',
        description: 'Remove all images currently displayed on the screen',
      ),
      FigOption(
        name: '--transfer-mode',
        description:
            'Which mechanism to use to transfer images to the terminal',
        args: FigArg(
          name: 'TRANSFER_MODE',
          defaultValue: 'detect',
          suggestions: ['file', 'detect', 'stream'],
        ),
      ),
      FigOption(
        name: '--detect-support',
        description: 'Detect support for image display in the terminal',
      ),
      FigOption(
        name: '--detection-timeout',
        description:
            'How long to wait for detection to complete before aborting',
        dependsOn: ['--detect-support'],
        args: FigArg(
          name: 'TIMEOUT',
          defaultValue: '10',
        ),
      ),
      FigOption(
        name: '--print-window-size',
        description: 'Print the current terminal window size in pixels',
      ),
      FigOption(
        name: '--stdin',
        description: 'Read an image from stdin',
      ),
    ],
    args: FigArg(
      name: 'image-file-or-url-or-directory',
      template: 'filepaths',
    ),
  );
}

/// `kittenCommands` (src/kitty.ts): the subcommand list spread into the `kitten`
/// subcommand. `icatCommand` is reused as-is (the plain `icat`, no `+` prefix).
List<FigSubcommand> _kittenCommands() {
  return [
    _icatCommand(),
    FigSubcommand(
      name: 'diff',
      args: [
        FigArg(name: 'file1', template: 'filepaths'),
        FigArg(name: 'file2', template: 'filepaths'),
      ],
    ),
    FigSubcommand(name: 'show_key'),
    FigSubcommand(name: 'clipboard'),
    FigSubcommand(name: 'unicode_input'),
    FigSubcommand(name: 'panel'),
    FigSubcommand(name: 'transfer'),
    FigSubcommand(name: 'query_terminal'),
    FigSubcommand(name: 'broadcast'),
    FigSubcommand(name: 'hyperlinked_grep', loadSpec: 'rg'),
    FigSubcommand(name: 'ssh', loadSpec: 'ssh'),
    FigSubcommand(name: 'choose'),
    FigSubcommand(name: 'ask'),
    FigSubcommand(name: 'themes', description: 'Change the kitty theme'),
    FigSubcommand(name: 'hints'),
    FigSubcommand(name: 'remote_file'),
    FigSubcommand(name: 'show_error'),
    FigSubcommand(name: 'resize_window'),
    FigSubcommand(name: 'mouse_demo'),
  ];
}

/// Spread equivalent of the TS `{ ...kitten, name: '+' + kitten.name }`: a copy
/// of [command] with its name prefixed by `+`, all other fields preserved.
FigSubcommand _plusNamed(FigSubcommand command) {
  return FigSubcommand(
    name: '+${command.nameList.first}',
    displayName: command.displayName,
    description: command.description,
    subcommands: command.subcommands,
    options: command.options,
    args: command.args,
    icon: command.icon,
    loadSpec: command.loadSpec,
    filterStrategy: command.filterStrategy,
    priority: command.priority,
    requiresSubcommand: command.requiresSubcommand,
    additionalSuggestions: command.additionalSuggestions,
    generateSpec: command.generateSpec,
    generateSpecCacheKey: command.generateSpecCacheKey,
    parserDirectives: command.parserDirectives,
    cache: command.cache,
    insertValue: command.insertValue,
    replaceValue: command.replaceValue,
    isDangerous: command.isDangerous,
    deprecated: command.deprecated,
    hidden: command.hidden,
  );
}

/// `plusCommands` (src/kitty.ts): the fixed subcommands the source expands into
/// `+<name>` entries at the root. The `kitten` entry carries `kittenCommands`.
List<FigSubcommand> _basePlusCommands() {
  return [
    _icatCommand(),
    FigSubcommand(name: 'list-fonts'),
    FigSubcommand(name: 'hold'),
    FigSubcommand(name: 'complete'),
    FigSubcommand(name: 'runpy'),
    FigSubcommand(name: 'launch'),
    FigSubcommand(name: 'open'),
    FigSubcommand(name: 'kitten', subcommands: _kittenCommands()),
    FigSubcommand(name: 'edit-config'),
    FigSubcommand(name: 'shebang'),
  ];
}

/// The `subcommands[2]` per-item expansion (src/kitty.ts):
/// `plusCommands.map((kitten) => ({ ...kitten, name: '+' + kitten.name }))`.
/// The JSON parser invokes this via [kittyPlusSubcommandsHandler] and splices
/// the returned list into the `subcommands` array at that position.
List<FigSubcommand> _plusSubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  tokens;
  executeCommand;
  context;
  return _basePlusCommands().map((command) => _plusNamed(command)).toList();
}

/// Registers the kitty generators referenced by the shipped kitty JSON.
void registerKittyHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      kittyBackgroundColorsCustomHandler, _backgroundColors);
  registry.registerSubcommands(kittyPlusSubcommandsHandler, _plusSubcommands);
}
