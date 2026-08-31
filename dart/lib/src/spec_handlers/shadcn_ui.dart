// Hand-written dynamic handlers migrated from src/shadcn-ui.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// The `add` subcommand component generator.
const shadcnUiAddComponentsCustomHandler =
    'manual.src_shadcn-ui.spec.subcommands_0_.args.generators.custom';

/// The `diff` subcommand component generator.
const shadcnUiDiffComponentsCustomHandler =
    'manual.src_shadcn-ui.spec.subcommands_1_.args.generators.custom';

/// A registry item, mirroring the `RegistryItem` interface from the TS source.
class _RegistryItem {
  const _RegistryItem(this.name, this.type);

  final String name;
  final String type;
}

/// Static snapshot of the shadcn registry index.
///
/// The TS source fetches this over the network
/// (`curl -sL .../registry/index.json`) and maps every entry to a suggestion.
/// The Dart runtime keeps the list inline and filters it by the typed prefix
/// instead, so completion stays deterministic and offline.
const List<_RegistryItem> _registry = [
  _RegistryItem('accordion', 'registry:ui'),
  _RegistryItem('alert', 'registry:ui'),
  _RegistryItem('alert-dialog', 'registry:ui'),
  _RegistryItem('aspect-ratio', 'registry:ui'),
  _RegistryItem('attachment', 'registry:ui'),
  _RegistryItem('avatar', 'registry:ui'),
  _RegistryItem('badge', 'registry:ui'),
  _RegistryItem('breadcrumb', 'registry:ui'),
  _RegistryItem('bubble', 'registry:ui'),
  _RegistryItem('button', 'registry:ui'),
  _RegistryItem('button-group', 'registry:ui'),
  _RegistryItem('calendar', 'registry:ui'),
  _RegistryItem('card', 'registry:ui'),
  _RegistryItem('carousel', 'registry:ui'),
  _RegistryItem('chart', 'registry:ui'),
  _RegistryItem('checkbox', 'registry:ui'),
  _RegistryItem('collapsible', 'registry:ui'),
  _RegistryItem('combobox', 'registry:ui'),
  _RegistryItem('command', 'registry:ui'),
  _RegistryItem('context-menu', 'registry:ui'),
  _RegistryItem('dialog', 'registry:ui'),
  _RegistryItem('direction', 'registry:ui'),
  _RegistryItem('drawer', 'registry:ui'),
  _RegistryItem('dropdown-menu', 'registry:ui'),
  _RegistryItem('empty', 'registry:ui'),
  _RegistryItem('field', 'registry:ui'),
  _RegistryItem('form', 'registry:ui'),
  _RegistryItem('hover-card', 'registry:ui'),
  _RegistryItem('input', 'registry:ui'),
  _RegistryItem('input-group', 'registry:ui'),
  _RegistryItem('input-otp', 'registry:ui'),
  _RegistryItem('item', 'registry:ui'),
  _RegistryItem('kbd', 'registry:ui'),
  _RegistryItem('label', 'registry:ui'),
  _RegistryItem('marker', 'registry:ui'),
  _RegistryItem('menubar', 'registry:ui'),
  _RegistryItem('message', 'registry:ui'),
  _RegistryItem('message-scroller', 'registry:ui'),
  _RegistryItem('native-select', 'registry:ui'),
  _RegistryItem('navigation-menu', 'registry:ui'),
  _RegistryItem('pagination', 'registry:ui'),
  _RegistryItem('popover', 'registry:ui'),
  _RegistryItem('progress', 'registry:ui'),
  _RegistryItem('questionnaire', 'registry:ui'),
  _RegistryItem('radio-group', 'registry:ui'),
  _RegistryItem('resizable', 'registry:ui'),
  _RegistryItem('scroll-area', 'registry:ui'),
  _RegistryItem('select', 'registry:ui'),
  _RegistryItem('separator', 'registry:ui'),
  _RegistryItem('sheet', 'registry:ui'),
  _RegistryItem('sidebar', 'registry:ui'),
  _RegistryItem('skeleton', 'registry:ui'),
  _RegistryItem('slider', 'registry:ui'),
  _RegistryItem('sonner', 'registry:ui'),
  _RegistryItem('spinner', 'registry:ui'),
  _RegistryItem('switch', 'registry:ui'),
  _RegistryItem('table', 'registry:ui'),
  _RegistryItem('tabs', 'registry:ui'),
  _RegistryItem('textarea', 'registry:ui'),
  _RegistryItem('toast', 'registry:ui'),
  _RegistryItem('toggle', 'registry:ui'),
  _RegistryItem('toggle-group', 'registry:ui'),
  _RegistryItem('tooltip', 'registry:ui'),
];

/// Component suggestions for the `add` and `diff` arg slots, filtered by the
/// typed prefix (the last token). Mirrors the TS generator's mapping
/// `{ name, description: type, priority: 50, icon: "fig://icon?type=box" }`.
List<FigSuggestion> _componentSuggestions(List<String> tokens) {
  final prefix = tokens.isEmpty ? '' : tokens.last;
  final query = prefix.toLowerCase();
  return _registry
      .where((item) => item.name.toLowerCase().startsWith(query))
      .map((item) => FigSuggestion(
            name: item.name,
            description: item.type,
            priority: 50,
            icon: 'fig://icon?type=box',
          ))
      .toList();
}

/// Registers the shadcn-ui generators referenced by the shipped shadcn-ui JSON.
void registerShadcnUiHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    shadcnUiAddComponentsCustomHandler,
    (tokens, executeCommand, context) async =>
        _componentSuggestions(tokens),
  );
  registry.registerCustom(
    shadcnUiDiffComponentsCustomHandler,
    (tokens, executeCommand, context) async =>
        _componentSuggestions(tokens),
  );
}
