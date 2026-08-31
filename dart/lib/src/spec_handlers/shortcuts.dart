// Hand-written dynamic handlers migrated from src/shortcuts.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const shortcutsFoldersPostProcessHandler = 'manual.src_shortcuts.spec.subcommands_0_1_.options_0_.args.generators.postprocess';

const shortcutsHelpSubcommandsHandler = 'manual.src_shortcuts.spec.subcommands_1_.subcommands';

/// `shortcuts list --folders` output: one shortcut folder name per line. The
/// source maps every line verbatim (untrimmed) onto a suggestion carrying the
/// folder emoji, with no description.
List<FigSuggestion> _folders(String output, [List<String>? tokens]) {
  if (output.isEmpty) return const [];
  return output.split('\n').map((folder) {
    return FigSuggestion(name: folder, icon: '📂');
  }).toList();
}

/// `shortcuts help` reproduces the base subcommand list from src/shortcuts.ts,
/// keeping only the `name`, `description`, and `icon` fields (the source's
/// `.map` drops args and options).
List<FigSubcommand> _helpSubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return [
    FigSubcommand(name: 'run', description: 'Run a shortcut', icon: '▶️'),
    FigSubcommand(name: 'list', description: 'List your shortcuts', icon: '📂'),
    FigSubcommand(
        name: 'view', description: 'View a shortcut in Shortcuts', icon: '🔍'),
    FigSubcommand(name: 'sign', description: 'Sign a shortcut file', icon: '🔏'),
  ];
}

/// Registers the shortcuts generators referenced by the shipped shortcuts JSON.
///
/// The `help` subcommand's whole-`subcommands` expansion
/// (`manual.src_shortcuts.spec.subcommands_1_.subcommands`) is ported here as
/// `_helpSubcommands`.
void registerShortcutsHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(shortcutsFoldersPostProcessHandler, _folders);
  registry.registerSubcommands(
      shortcutsHelpSubcommandsHandler, _helpSubcommands);
}
