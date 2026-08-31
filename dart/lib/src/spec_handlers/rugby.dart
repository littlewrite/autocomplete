// Hand-written dynamic handlers migrated from src/rugby.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/rugby.ts.
const rugbyGenerateSpecHandler = 'manual.src_rugby.spec.generatespec';

/// `planList` generator postProcess (subcommand `plan`'s `name` arg) from
/// src/rugby.ts.
const rugbyPlanListPostProcessHandler =
    'manual.src_rugby.spec.subcommands_7_.args.generators.postprocess';

/// `plan` command options shared by the generated plan subcommands.
List<FigOption> _planOptions() => [
      FigOption(
        name: ['--path', '-p'],
        description: 'Path to plans yaml',
        args: [
          FigArg(name: 'path', defaultValue: '.rugby/plans.yml'),
        ],
      ),
      FigOption(
        name: ['--rollback', '-r'],
        description: 'Restore projects state before the last Rugby usage',
      ),
      FigOption(
        name: ['--output', '-o'],
        description: 'Output mode: fold, multiline, quiet',
        args: [
          FigArg(name: 'output', defaultValue: 'fold'),
        ],
      ),
      FigOption(
        name: ['--verbose', '-v'],
        description: 'Log level',
        isRepeatable: true,
      ),
      FigOption(
        name: ['--help', '-h'],
        description: 'Show help information',
      ),
    ];

/// Each plan line from `rugby plan list` becomes a suggestion with a friendly
/// description, mirroring the `planList` generator postProcess.
List<FigSuggestion> _planSuggestions(String output, [List<String>? tokens]) {
  tokens;
  if (output.isEmpty) return const [];
  return output
      .split('\n')
      .map((plan) => FigSuggestion(
            name: plan,
            description: 'Run plan "$plan"',
            icon: '✈️',
            priority: 77,
          ))
      .toList();
}

/// Root `generateSpec` from src/rugby.ts: runs `rugby plan list` and, when the
/// plan list is non-empty, returns a `plan` spec whose subcommands are the
/// plans. Returns null when no plans are available (empty output).
Future<FigSpec?> _rugbyGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  tokens;
  final result = await executeCommand(
    const ExecuteCommandInput(command: 'rugby', args: ['plan', 'list']),
  );
  if (result.stdout.isEmpty) return null;
  final plans = result.stdout.split('\n');
  return FigSpec(
    name: 'plan',
    subcommands: plans
        .map((plan) => FigSubcommand(
              name: plan,
              description: 'Run plan "$plan"',
              icon: '✈️',
              priority: 77,
              options: _planOptions(),
            ))
        .toList(),
  );
}

/// Registers the dynamic handlers referenced by the shipped rugby JSON.
void registerRugbyHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(rugbyGenerateSpecHandler, _rugbyGenerateSpec);
  registry.registerPostProcess(
      rugbyPlanListPostProcessHandler, _planSuggestions);
}
