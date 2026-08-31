// Hand-written dynamic handlers migrated from src/chezmoi.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const chezmoiTypesCustomHandler = 'manual.src_chezmoi.generator.types';
const chezmoiChattrCustomHandler =
    'manual.src_chezmoi.spec.subcommands_5_.args_0_.generators.custom';
const chezmoiChattrTriggerHandler =
    'manual.src_chezmoi.spec.subcommands_5_.args_0_.generators.trigger';

/// The entry types accepted by `--include`/`--exclude`, mirroring the source's
/// `types` valueList values in declaration order.
const _types = <FigSuggestion>[
  FigSuggestion(name: 'all'),
  FigSuggestion(name: 'dirs'),
  FigSuggestion(name: 'files'),
  FigSuggestion(name: 'remove'),
  FigSuggestion(name: 'scripts'),
  FigSuggestion(name: 'symlinks'),
  FigSuggestion(name: 'encrypted'),
];

/// The attribute/type modifiers for `chezmoi chattr`, mirroring the source's
/// `modifiers` list in declaration order.
const _modifiers = <FigSuggestion>[
  FigSuggestion(name: ['after', 'a'], description: 'Attribute modifier'),
  FigSuggestion(name: ['before', 'b'], description: 'Attribute modifier'),
  FigSuggestion(name: ['empty', 'e'], description: 'Attribute modifier'),
  FigSuggestion(name: 'encrypted', description: 'Attribute modifier'),
  FigSuggestion(name: 'exact', description: 'Attribute modifier'),
  FigSuggestion(name: ['executable', 'x'], description: 'Attribute modifier'),
  FigSuggestion(name: ['once', 'o'], description: 'Attribute modifier'),
  FigSuggestion(name: ['private', 'p'], description: 'Attribute modifier'),
  FigSuggestion(name: ['readonly', 'r'], description: 'Attribute modifier'),
  FigSuggestion(name: 'remove', description: 'Attribute modifier'),
  FigSuggestion(name: ['template', 't'], description: 'Attribute modifier'),
  FigSuggestion(name: 'create', description: 'Type modifier'),
  FigSuggestion(name: 'modify', description: 'Type modifier'),
  FigSuggestion(name: 'script', description: 'Type modifier'),
  FigSuggestion(name: 'symlink', description: 'Type modifier'),
];

/// Returns [modifiers] with every name (and alias) prefixed by [prefix],
/// mirroring the source's `plusMinusModifiers` and `noModifiers` spreads.
List<FigSuggestion> _prefixModifiers(
    String prefix, List<FigSuggestion> modifiers) {
  return modifiers.map((suggestion) {
    if (suggestion.name is String) {
      return FigSuggestion(
        name: '$prefix${suggestion.name}',
        description: suggestion.description,
      );
    }
    return FigSuggestion(
      name: suggestion.nameList.map((name) => '$prefix$name').toList(),
      description: suggestion.description,
    );
  }).toList();
}

/// The `+`/`-`-prefixed modifiers, mirroring the source's `plusMinusModifiers`
/// (all `+` variants first, then all `-` variants).
final _plusMinusModifiers = <FigSuggestion>[
  ..._prefixModifiers('+', _modifiers),
  ..._prefixModifiers('-', _modifiers),
];

/// The `no`-prefixed modifiers, mirroring the source's `noModifiers`.
final _noModifiers = _prefixModifiers('no', _modifiers);

/// Appends [append] to each suggestion's insert value unless it already has
/// one, mirroring `appendToInsertValue` from `@fig/autocomplete-generators`.
List<FigSuggestion> _appendToInsertValue(
    String append, List<FigSuggestion> suggestions) {
  if (append.isEmpty) return suggestions;
  return suggestions.map((item) {
    if (item.insertValue != null && item.insertValue!.isNotEmpty) {
      return item;
    }
    return FigSuggestion(
      name: item.name,
      displayName: item.displayName,
      description: item.description,
      icon: item.icon,
      priority: item.priority,
      insertValue: '${item.nameSingle ?? ''}$append',
      replaceValue: item.replaceValue,
      type: item.type,
      hidden: item.hidden,
      isDangerous: item.isDangerous,
      deprecated: item.deprecated,
      previewComponent: item.previewComponent,
      loadSpec: item.loadSpec,
    );
  }).toList();
}

/// Drops suggestions whose name was already typed, mirroring
/// `removeRepeatSuggestions` from `@fig/autocomplete-generators`.
List<FigSuggestion> _removeRepeatSuggestions(
    List<String> alreadyUsed, List<FigSuggestion> suggestions) {
  final seen = alreadyUsed.toSet();
  return suggestions.where((suggestion) {
    final name = suggestion.name;
    if (name is String) return !seen.contains(name);
    if (name is List) {
      for (final item in name) {
        if (seen.contains(item)) return false;
      }
    }
    return true;
  }).toList();
}

/// The `types` entry-type suggestions, mirroring `valueList` from
/// `@fig/autocomplete-generators` with delimiter `,` and `insertDelimiter:
/// true`: each value gets a comma appended to its insert value, and already
/// typed values are dropped.
Future<List<FigSuggestion>> _typesCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final out = _appendToInsertValue(',', _types);
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  return _removeRepeatSuggestions(finalToken.split(','), out);
}

/// The `chezmoi chattr` attribute suggestions. The source generator runs on
/// every keystroke (`trigger: () => true`) and returns the plain modifier list,
/// the `+`/`-`-prefixed list, or the `no`-prefixed list depending on the text
/// after the last comma in the final token.
Future<List<FigSuggestion>> _chattrCustom(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  final lastComma = finalToken.lastIndexOf(',');
  final finalSegment = lastComma == -1
      ? finalToken
      : finalToken.substring(lastComma + 1);
  if (finalSegment.isNotEmpty &&
      (finalSegment[0] == '+' || finalSegment[0] == '-')) {
    return _plusMinusModifiers;
  }
  if (finalSegment.startsWith('no')) {
    return _noModifiers;
  }
  return _modifiers;
}

/// The `chezmoi chattr` trigger: rerun the generator on every keystroke so
/// suggestions appear right after `+`, `-`, `,`, and `no` prefixes.
bool _chattrTrigger(String newToken, String oldToken) => true;

/// Registers the chezmoi generators referenced by the shipped chezmoi JSON.
void registerChezmoiHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(chezmoiTypesCustomHandler, _typesCustom);
  registry.registerCustom(chezmoiChattrCustomHandler, _chattrCustom);
  registry.registerTrigger(chezmoiChattrTriggerHandler, _chattrTrigger);
}
