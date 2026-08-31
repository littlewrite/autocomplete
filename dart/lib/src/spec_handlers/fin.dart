// Hand-written dynamic handlers migrated from src/fin.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const finDatabasesPostProcessHandler =
    'manual.src_fin.definition.databases.postprocess';
const finHostsPostProcessHandler = 'manual.src_fin.definition.hosts.postprocess';
const finAliasGeneratorPostProcessHandler =
    'manual.src_fin.definition.aliasgenerator.postprocess';
const finGenerateSpecHandler = 'manual.src_fin.spec.generatespec';

/// `fin db list` output: one database name per line. Each line is trimmed and
/// described as "Database". Empty lines are kept (matching the source, which
/// does not filter them); the runtime drops empty-name suggestions downstream.
List<FigSuggestion> _databases(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .map((db) => FigSuggestion(name: db.trim(), description: 'Database'))
      .toList();
}

/// `fin hosts` output: one host entry per line. Comment lines (starting with
/// `#`) yield an empty suggestion (no name), matching the source's `{}`.
/// Non-comment lines keep the raw, untrimmed line as the suggestion name.
List<FigSuggestion> _hosts(String output, [List<String>? tokens]) {
  return output.split('\n').map((host) {
    if (host.startsWith('#')) return const FigSuggestion();
    return FigSuggestion(name: host, description: 'Host');
  }).toList();
}

/// `fin alias list` output: a header line followed by one `alias  path` line
/// per alias. Skips the header line and takes the first space-separated token
/// as the alias name, described as "Alias".
List<FigSuggestion> _aliases(String output, [List<String>? tokens]) {
  return output
      .split('\n')
      .skip(1)
      .map((alias) =>
          FigSuggestion(name: alias.split(' ').first, description: 'Alias'))
      .toList();
}

/// Root `generateSpec` from src/fin.ts: lists the user's custom Docksal
/// commands (`~/.docksal/commands/`) as fin subcommands with priority 55.
/// Blank lines in the listing are skipped.
Future<FigSpec?> _finGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final result = await executeCommand(ExecuteCommandInput(
    command: 'bash',
    args: ['-c', 'ls -1 ~/.docksal/commands/'],
  ));
  final subcommands = <FigSubcommand>[];
  for (final command in result.stdout.split('\n')) {
    if (command.isNotEmpty) {
      subcommands.add(FigSubcommand(name: command, priority: 55));
    }
  }
  return FigSpec(name: 'fin', subcommands: subcommands);
}

/// Registers the fin dynamic handlers referenced by the shipped fin JSON.
void registerFinHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(finDatabasesPostProcessHandler, _databases);
  registry.registerPostProcess(finHostsPostProcessHandler, _hosts);
  registry.registerPostProcess(finAliasGeneratorPostProcessHandler, _aliases);
  registry.registerGenerateSpec(finGenerateSpecHandler, _finGenerateSpec);
}
