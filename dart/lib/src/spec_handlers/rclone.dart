// Hand-written dynamic handlers migrated from src/rclone.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `rclone listremotes` output post-processor shared by every remote argument.
const rcloneRemotePostProcessHandler =
    'manual.src_rclone.definition.remote.generators.postprocess';

/// The `remote.generators` custom generator (script + post-process) used by
/// most remote-taking subcommands in the materialized JSON.
const rcloneRemoteGeneratorHandler =
    'manual.src_rclone.generator.remote.generators';

/// The `--dedupe-mode` choices built by the `first/newest/oldest/largest/
/// smallest` mapping.
const rcloneDedupeModeSuggestionsHandler =
    'manual.src_rclone.spec.subcommands_12_.options_1_.args.suggestions_4_';

/// The `genautocomplete` shell subcommands (bash/fish/zsh).
const rcloneGenautocompleteSubcommandsHandler =
    'manual.src_rclone.spec.subcommands_15_.subcommands_0_';

/// The `lsf --format` choices built by the `[letter, meaning]` mapping.
const rcloneLsfFormatSuggestionsHandler =
    'manual.src_rclone.spec.subcommands_23_.options_4_.args.suggestions_0_';

/// Splits `rclone listremotes` output on '\n', keeping empty entries exactly
/// like the source `list.split("\n").map((remote) => ({ name: remote }))`.
List<FigSuggestion> _remotePostProcess(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((remote) => FigSuggestion(name: remote))
      .toList();
}

/// Runs `rclone listremotes` and applies [_remotePostProcess]. Mirrors the
/// script + post-process pair that `remote.generators` declares in the source.
Future<List<FigSuggestion>> _remoteGenerator(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'rclone',
    args: ['listremotes'],
  ));
  if (result.status != 0) return const [];
  return _remotePostProcess(result.stdout);
}

/// The `first`/`newest`/`oldest`/`largest`/`smallest` dedupe mode choices.
Future<List<FigSuggestion>> _dedupeModeSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  const names = ['first', 'newest', 'oldest', 'largest', 'smallest'];
  return names
      .map((name) => FigSuggestion(
            name: name,
            description: 'removes identical files then keeps the $name one.',
          ))
      .toList();
}

/// The `genautocomplete` shell choices (bash/fish/zsh). The materialized JSON
/// stores the source's function-valued `subcommands` array at
/// `spec.subcommands[15].subcommands[0]`; the Dart JSON schema has no
/// subcommand-list generator slot, so these are surfaced as subcommand-typed
/// suggestions carrying the source's exact names and descriptions.
List<FigSubcommand> _genautocompleteSubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  const shells = ['bash', 'fish', 'zsh'];
  return shells
      .map((shell) => FigSubcommand(
            name: shell,
            description: 'Output $shell completion script for rclone.',
          ))
      .toList();
}

/// The `lsf --format` choices (path/size/modification time/hash/...).
Future<List<FigSuggestion>> _lsfFormatSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  const formats = [
    ['p', 'path'],
    ['s', 'size'],
    ['t', 'modification time'],
    ['h', 'hash'],
    ['i', 'ID of object'],
    ['o', 'Original ID of underlying object'],
    ['m', 'MimeType of object if known'],
  ];
  return formats
      .map((pair) => FigSuggestion(name: pair[0], description: pair[1]))
      .toList();
}

/// Registers the rclone generators referenced by the shipped rclone JSON.
void registerRcloneHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      rcloneRemotePostProcessHandler, _remotePostProcess);
  registry.registerCustom(rcloneRemoteGeneratorHandler, _remoteGenerator);
  registry.registerCustom(
      rcloneDedupeModeSuggestionsHandler, _dedupeModeSuggestions);
  registry.registerSubcommands(
      rcloneGenautocompleteSubcommandsHandler, _genautocompleteSubcommands);
  registry.registerCustom(
      rcloneLsfFormatSuggestionsHandler, _lsfFormatSuggestions);
}
