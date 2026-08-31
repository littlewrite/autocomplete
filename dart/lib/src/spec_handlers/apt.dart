// Hand-written dynamic handlers migrated from src/apt.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const aptPackagesCustomHandler = 'manual.src_apt.definition.packages.custom';
const aptPackagesTriggerHandler = 'manual.src_apt.definition.packages.trigger';
const aptInstalledPackagesPostProcessHandler =
    'manual.src_apt.definition.installedpackages.postprocess';
const aptUpgradablePackagesPostProcessHandler =
    'manual.src_apt.definition.upgradablepackages.postprocess';

const _packageIcon = '📦';

/// `apt list` output filters the candidates by the current token before the
/// name is stripped at the first `/`, matching the source order exactly.
Future<List<FigSuggestion>> _availablePackages(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  if (finalToken.isEmpty) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'apt',
    args: ['list'],
  ));
  if (result.status != 0) return const [];
  return result.stdout
      .split('\n')
      .map((line) => line.trim())
      .where((name) => name.startsWith(finalToken))
      .map((name) => name.replaceAll(RegExp(r'/.*'), ''))
      .where((name) => name.isNotEmpty)
      .map((name) => FigSuggestion(
            name: name,
            description: 'Package',
            icon: _packageIcon,
            priority: 50,
          ))
      .toList();
}

/// Only rerun the package search when the token length transitions to or from
/// zero, mirroring the source `packages` generator trigger.
bool _packagesTrigger(String current, String previous) =>
    current.isEmpty || (previous.isEmpty && current.isNotEmpty);

/// Strips `apt list` lines to the package name before the first `/`.
List<FigSuggestion> _packageNamesFromAptList(String output) {
  return output
      .trim()
      .split('\n')
      .map((line) {
        final slash = line.indexOf('/');
        // JS `substring(0, -1)` clamps to an empty string; replicate that
        // rather than throwing on a malformed line.
        final name = slash < 0 ? '' : line.substring(0, slash);
        return FigSuggestion(
          name: name,
          description: 'Package',
          icon: _packageIcon,
        );
      })
      .where((suggestion) => (suggestion.nameSingle ?? '').isNotEmpty)
      .toList();
}

List<FigSuggestion> _installedPostProcess(String output,
        [List<String>? tokens]) =>
    _packageNamesFromAptList(output);

List<FigSuggestion> _upgradablePostProcess(String output,
        [List<String>? tokens]) =>
    _packageNamesFromAptList(output);

/// Registers the apt generators referenced by the shipped apt JSON.
void registerAptHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    aptPackagesCustomHandler,
    (tokens, executeCommand, context) =>
        _availablePackages(tokens, executeCommand),
  );
  registry.registerTrigger(aptPackagesTriggerHandler, _packagesTrigger);
  registry.registerPostProcess(
      aptInstalledPackagesPostProcessHandler, _installedPostProcess);
  registry.registerPostProcess(
      aptUpgradablePackagesPostProcessHandler, _upgradablePostProcess);
}
