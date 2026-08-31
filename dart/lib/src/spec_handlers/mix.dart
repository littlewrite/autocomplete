// Hand-written dynamic handlers migrated from src/mix.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const mixPreferredScriptFilepathsHandler =
    'manual.src_mix.generator.preferredscriptfilepaths';
const mixHelpSubcommandPostProcessHandler =
    'manual.src_mix.spec.subcommands_2_.args.generators.postprocess';
const mixRootArgsPostProcessHandler =
    'manual.src_mix.spec.args.generators.postprocess';

/// Tasks that should not be offered as completions, mirroring the TS filter.
const _excludedTasks = {'mix', 'help', 'new', 'run', 'iex -S mix'};

/// `filepaths({ extensions: ["exs"], editFileSuggestions: { priority: 76 } })`.
/// Lists `.exs` script files and every folder in the working directory,
/// applying the priority override only to file suggestions.
Future<List<FigSuggestion>> _preferredScriptFilepaths(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (context == null) return const [];
  final entries = await context.adapter.listDirectory(
    context.currentWorkingDirectory,
    extensions: const ['exs'],
  );
  return entries.map((entry) {
    final isDirectory = entry.isDirectory;
    return FigSuggestion(
      name: isDirectory ? '${entry.name}/' : entry.name,
      type: isDirectory ? SuggestionType.folder : SuggestionType.file,
      priority: isDirectory ? 50 : 76,
    );
  }).toList();
}

/// `mix help` output: one task per line in `name # description` form. Splits
/// each line on `#`, trims both halves, strips the leading `mix ` prefix from
/// the name, and drops tasks that do not make sense to invoke directly.
List<FigSuggestion> _makeTaskSuggestions(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final parts = line.split('#').map((part) => part.trim()).toList();
    final name = parts.first.replaceFirst(RegExp(r'^mix '), '');
    if (name.isEmpty || _excludedTasks.contains(name)) continue;
    final description = parts.length > 1 ? parts[1] : null;
    suggestions.add(FigSuggestion(name: name, description: description));
  }
  return suggestions;
}

/// Registers the mix generators referenced by the shipped mix JSON.
void registerMixHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    mixPreferredScriptFilepathsHandler,
    (tokens, executeCommand, context) =>
        _preferredScriptFilepaths(tokens, executeCommand, context),
  );
  registry.registerPostProcess(
      mixHelpSubcommandPostProcessHandler, _makeTaskSuggestions);
  registry.registerPostProcess(
      mixRootArgsPostProcessHandler, _makeTaskSuggestions);
}
