// Hand-written dynamic handlers migrated from src/ruff.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `spec.options` handler from src/ruff.ts: the `GlobalOptions` list,
/// where each entry is spread with `isPersistent: true`
/// (`GlobalOptions.map((option) => ({ ...option, isPersistent: true }))`).
const ruffRootOptionsHandler = 'manual.src_ruff.spec.options';

/// Root `spec.options` handler: the global ruff flags (verbose/quiet/silent,
/// config, isolated, help), each marked persistent so they stay available
/// after a subcommand.
List<FigOption> _rootOptions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return [
    FigOption(
      name: ['-v', '--verbose'],
      description: 'Enable verbose logging',
      isPersistent: true,
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description: 'Print diagnostics, but nothing else',
      isPersistent: true,
    ),
    FigOption(
      name: ['-s', '--silent'],
      description:
          'Disable all logging (but still exit with status code "1" upon '
          'detecting diagnostics)',
      isPersistent: true,
    ),
    FigOption(
      name: '--config',
      description:
          'Path to the `pyproject.toml` or `ruff.toml` file to use for '
          'configuration',
      args: FigArg(
        name: 'config',
        isOptional: true,
        template: 'filepaths',
      ),
      isPersistent: true,
    ),
    FigOption(
      name: '--isolated',
      description: 'Ignore all configuration files',
      isPersistent: true,
    ),
    FigOption(
      name: '--help',
      description: 'Print help',
      isPersistent: true,
    ),
  ];
}

/// Registers the ruff handlers referenced by the shipped ruff JSON.
void registerRuffHandlers(JsonHandlerRegistry registry) {
  registry.registerOptions(ruffRootOptionsHandler, _rootOptions);
}
