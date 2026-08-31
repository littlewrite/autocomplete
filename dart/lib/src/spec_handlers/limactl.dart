// Hand-written dynamic handlers migrated from src/limactl.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `instanceNameGenerator` (src/limactl.ts): lists running Lima instances via
/// `limactl list --quiet` and suggests each name. One reference is kept per
/// subcommand that uses it in the shipped limactl JSON.
const limactlInstanceNamesDeleteHandler =
    'manual.src_limactl.spec.subcommands_2_.args.generators';
const limactlInstanceNamesShellHandler =
    'manual.src_limactl.spec.subcommands_6_.args_0_.generators';
const limactlInstanceNamesShowSshHandler =
    'manual.src_limactl.spec.subcommands_7_.args.generators';
const limactlInstanceNamesStopHandler =
    'manual.src_limactl.spec.subcommands_9_.args.generators';

/// `yamlFilepathsGenerator` (src/limactl.ts): Fig's `filepaths` template
/// restricted to `yaml`/`yml` files. Mirrors the template behavior over the
/// generator context's adapter, boosting suggestion priority to 76.
const limactlYamlFilepathsGeneratorHandler =
    'manual.src_limactl.generator.yamlfilepathsgenerator';

/// The `completion` subcommand's whole-`subcommands` slot (src/limactl.ts): the
/// four shell subcommands are built from `["bash", "fish", "powershell",
/// "zsh"].map(...)`. At parse time the JSON parser invokes the registered
/// `JsonSubcommandsHandler` and uses its result as the `completion` children.
const limactlCompletionSubcommandsHandler =
    'manual.src_limactl.spec.subcommands_0_.subcommands';

/// `PRIORITY_TOP_THRESHOLD` (src/limactl.ts).
const int _priorityTopThreshold = 76;

/// `instanceNameGenerator(...).postProcess`: maps each `limactl list --quiet`
/// output line to an instance-name suggestion.
List<FigSuggestion> _instanceNameSuggestions(
  String output, {
  bool isDangerous = false,
}) {
  return output
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((line) => FigSuggestion(
            name: line,
            description: 'Instance name',
            priority: _priorityTopThreshold,
            isDangerous: isDangerous,
          ))
      .toList();
}

/// `instanceNameGenerator(...)`: runs `limactl list --quiet` and post-processes
/// the resulting names into suggestions. `isDangerous` mirrors the
/// `suggestOptions` the source passes for destructive commands.
Future<List<FigSuggestion>> _instanceNames(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context, {
  bool isDangerous = false,
}) async {
  tokens;
  context;
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'limactl',
    args: ['list', '--quiet'],
  ));
  if (result.status != 0) return const [];
  return _instanceNameSuggestions(result.stdout, isDangerous: isDangerous);
}

/// `yamlFilepathsGenerator` (src/limactl.ts): a `filepaths` template limited to
/// `yaml`/`yml` files with top-priority file suggestions. Uses the generator
/// context's adapter so it works on any host (including remote/SSH) without
/// dart:io.
Future<List<FigSuggestion>> _yamlFilePaths(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  tokens;
  executeCommand;
  if (context == null) return const [];
  final entries = await context.adapter.listDirectory(
    context.currentWorkingDirectory,
    foldersOnly: false,
    extensions: const ['yaml', 'yml'],
  );
  return entries.map((entry) {
    final name = entry.isDirectory && !entry.name.endsWith('/')
        ? '${entry.name}/'
        : entry.name;
    return FigSuggestion(
      name: name,
      priority: _priorityTopThreshold,
      type: entry.isDirectory ? SuggestionType.folder : SuggestionType.file,
    );
  }).toList();
}

/// `generateGlobalFlags` (src/limactl.ts): the shared `-h/--help` and `--debug`
/// options that every subcommand (and the root spec) spreads into its options.
/// Only the help description embeds the subcommand name it was generated for.
List<FigOption> _generateGlobalFlags(String subcommandName) {
  return [
    FigOption(
      name: <String>['-h', '--help'],
      description: 'Help for $subcommandName',
    ),
    FigOption(
      name: '--debug',
      description: 'Debug mode',
    ),
  ];
}

/// The `completion` subcommands (src/limactl.ts): one subcommand per shell,
/// each generating that shell's autocompletion script. Options are the global
/// flags for the shell name plus `--no-descriptions`.
List<FigSubcommand> _completionSubcommands(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  tokens;
  executeCommand;
  context;
  return <String>['bash', 'fish', 'powershell', 'zsh'].map((name) {
    return FigSubcommand(
      name: name,
      description: 'Generate the autocompletion script for $name',
      options: <FigOption>[
        ..._generateGlobalFlags(name),
        FigOption(
          name: '--no-descriptions',
          description: 'Disable completion descriptions',
        ),
      ],
    );
  }).toList();
}

/// Registers the Lima (limactl) generators referenced by the shipped limactl JSON.
void registerLimactlHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    limactlInstanceNamesDeleteHandler,
    (tokens, executeCommand, context) =>
        _instanceNames(tokens, executeCommand, context, isDangerous: true),
  );
  registry.registerCustom(
    limactlInstanceNamesShellHandler,
    (tokens, executeCommand, context) =>
        _instanceNames(tokens, executeCommand, context, isDangerous: true),
  );
  registry.registerCustom(
    limactlInstanceNamesShowSshHandler,
    (tokens, executeCommand, context) =>
        _instanceNames(tokens, executeCommand, context),
  );
  registry.registerCustom(
    limactlInstanceNamesStopHandler,
    (tokens, executeCommand, context) =>
        _instanceNames(tokens, executeCommand, context, isDangerous: true),
  );
  registry.registerCustom(limactlYamlFilepathsGeneratorHandler, _yamlFilePaths);
  registry.registerSubcommands(
      limactlCompletionSubcommandsHandler, _completionSubcommands);
}
