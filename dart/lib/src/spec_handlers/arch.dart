// Hand-written dynamic handlers migrated from src/arch.ts.
//
// The exported JSON keeps the `-arch` option's function-valued `exclusiveOn`
// and its argument `suggestions` as handler references. `exclusiveOn` is the
// set of architecture options that cannot be combined with `-arch`; the arg
// suggestions are the supported architecture names. Both sets are constant
// for this command, so they are exposed as custom handlers (the generic
// "dynamic list of suggestions" handler) with the callback arguments unused.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const archExclusiveOnHandler = 'manual.src_arch.spec.options_2_.exclusiveon';
const archSuggestionsHandler =
    'manual.src_arch.spec.options_2_.args.suggestions';

const _cpuIcon = 'fig://icon?type=cpu';

/// The architectures accepted by `-arch`, in declaration order.
const _archNames = <String>[
  'i386',
  'x86_64',
  'x86_64h',
  'arm64',
  'arm64e',
];

/// Description for each architecture, aligned by index with [_archNames].
const _archDescriptions = <String>[
  '32-bit intel',
  '64-bit intel',
  '64-bit intel (haswell)',
  '64-bit arm',
  '64-bit arm (Apple Silicon)',
];

/// The `-arch` argument suggestions: each supported architecture with its
/// description and a CPU icon.
Future<List<FigSuggestion>> _archSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final suggestions = <FigSuggestion>[];
  for (var i = 0; i < _archNames.length; i++) {
    suggestions.add(FigSuggestion(
      name: _archNames[i],
      description: _archDescriptions[i],
      icon: _cpuIcon,
    ));
  }
  return suggestions;
}

/// The `-arch` exclusiveOn set: the sibling architecture options (`-i386`,
/// `-x86_64`, ...) that cannot be combined with `-arch`.
Future<List<FigSuggestion>> _archExclusiveOn(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return _archNames.map((name) => FigSuggestion(name: '-$name')).toList();
}

/// Registers the arch handlers referenced by the shipped arch JSON.
void registerArchHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(archExclusiveOnHandler, _archExclusiveOn);
  registry.registerCustom(archSuggestionsHandler, _archSuggestions);
}
