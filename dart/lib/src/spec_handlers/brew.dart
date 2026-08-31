// Hand-written dynamic handlers migrated from src/brew.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const brewFormulaePostProcessHandler =
    'manual.src_brew.definition.formulaegenerator.postprocess';
const brewAllFormulaePostProcessHandler =
    'manual.src_brew.definition.generateallformulae.postprocess';
const brewAllCasksPostProcessHandler =
    'manual.src_brew.definition.generateallcasks.postprocess';
const brewOutdatedFormulaePostProcessHandler =
    'manual.src_brew.definition.outdatedformulaegenerator.postprocess';
const brewInstalledCaskPostProcessHandler =
    'manual.src_brew.spec.subcommands_17_.subcommands_1_.args.generators.postprocess';
const brewAnalyticsCustomHandler =
    'manual.src_brew.spec.subcommands_4_.options_3_.args.generators.custom';
const brewCleanupServicesCustomHandler =
    'manual.src_brew.spec.subcommands_18_.args.generators';
const brewRunServicesCustomHandler =
    'manual.src_brew.spec.subcommands_19_.subcommands_2_.args.generators';
const brewStartServicesCustomHandler =
    'manual.src_brew.spec.subcommands_19_.subcommands_3_.args.generators';
const brewStopServicesCustomHandler =
    'manual.src_brew.spec.subcommands_19_.subcommands_4_.args.generators';
const brewRestartServicesCustomHandler =
    'manual.src_brew.spec.subcommands_19_.subcommands_5_.args.generators';
const brewRepositoriesCustomHandler =
    'manual.src_brew.spec.subcommands_23_.args.generators';
const brewAliasesPostProcessHandler =
    'manual.src_brew.definition.generatealiases.postprocess';

List<FigSuggestion> _lineSuggestions(
  String output, {
  required String description,
  String? icon,
  int? priority,
  bool Function(String line)? include,
}) {
  return output
      .split('\n')
      .where((line) => include?.call(line) ?? true)
      .map((line) => FigSuggestion(
            name: line,
            icon: icon,
            description: description,
            priority: priority ?? 50,
          ))
      .toList();
}

Future<List<FigSuggestion>> _services(
  String action,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: ['-c', "brew services list | sed -e 's/ .*//' | tail -n +2"],
  ));
  if (result.status != 0) return const [];
  return _lineSuggestions(
    result.stdout,
    icon: 'fig://icon?type=package',
    description: '',
    include: (line) => !line.contains('unbound'),
  )
      .map((suggestion) => FigSuggestion(
            name: suggestion.name,
            icon: suggestion.icon,
            description: '$action ${suggestion.nameSingle ?? ''}',
          ))
      .toList();
}

/// Registers the Homebrew generators referenced by the shipped brew JSON.
void registerBrewHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
    brewFormulaePostProcessHandler,
    (output, [tokens]) => _lineSuggestions(
      output,
      icon: '🍺',
      description: 'Installed formula',
      include: (line) => !line.contains('='),
    ),
  );
  registry.registerPostProcess(
    brewAllFormulaePostProcessHandler,
    (output, [tokens]) => _lineSuggestions(
      output,
      icon: '🍺',
      description: 'Formula',
      priority: 51,
    ),
  );
  registry.registerPostProcess(
    brewAllCasksPostProcessHandler,
    (output, [tokens]) => _lineSuggestions(
      output,
      icon: '🍺',
      description: 'Cask',
      priority: 52,
    ),
  );
  registry.registerPostProcess(
    brewOutdatedFormulaePostProcessHandler,
    (output, [tokens]) => _lineSuggestions(
      output,
      icon: '🍺',
      description: 'Outdated formula',
    ),
  );
  registry.registerPostProcess(
    brewInstalledCaskPostProcessHandler,
    (output, [tokens]) => _lineSuggestions(
      output,
      icon: '🍺',
      description: 'Installed formula',
    ),
  );
  registry.registerPostProcess(
    brewAliasesPostProcessHandler,
    (output, [tokens]) => output
        .split('\n')
        .where((line) => line.isNotEmpty && line.trim().isNotEmpty)
        .map((line) => FigSuggestion(
              name: line,
              icon: 'fig://icon?type=command',
              description: 'Execute alias $line',
            ))
        .toList(),
  );

  registry.registerCustom(brewAnalyticsCustomHandler,
      (tokens, executeCommand, context) async {
    final lastIndex = tokens.length - 1;
    final hasFormula = lastIndex > 2 &&
        tokens.sublist(2, lastIndex).any(
              (token) => token.isNotEmpty && !token.startsWith('-'),
            );
    final names = hasFormula
        ? const ['install', 'install-on-request', 'build-error']
        : const ['cask-install', 'os-version'];
    return names.map((name) => FigSuggestion(name: name)).toList();
  });

  for (final entry in <String, String>{
    brewCleanupServicesCustomHandler: 'Cleanup',
    brewRunServicesCustomHandler: 'Run',
    brewStartServicesCustomHandler: 'Start',
    brewStopServicesCustomHandler: 'Stop',
    brewRestartServicesCustomHandler: 'Restart',
  }.entries) {
    registry.registerCustom(
      entry.key,
      (tokens, executeCommand, context) =>
          _services(entry.value, executeCommand),
    );
  }

  registry.registerCustom(brewRepositoriesCustomHandler,
      (tokens, executeCommand, context) async {
    if (executeCommand == null) return const [];
    final result = await executeCommand(const ExecuteCommandInput(
      command: 'brew',
      args: ['tap'],
    ));
    if (result.status != 0) return const [];
    return result.stdout
        .split('\n')
        .map((line) => FigSuggestion(name: line))
        .toList();
  });
}
