// Hand-written dynamic handlers migrated from src/pyenv.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const pyenvGlobalVersionsPostProcessHandler =
    'manual.src_pyenv.spec.subcommands_2_.args.generators.postprocess';
const pyenvInstallVersionsPostProcessHandler =
    'manual.src_pyenv.spec.subcommands_4_.args.generators.postprocess';

const _pyenvIcon = '🐍';
const _selectedIcon = '🌟';

final _starPrefix = RegExp(r'\s*\*');

/// `pyenv install -l` output: skip the first (header) line, take each version
/// name trimmed of surrounding whitespace.
List<FigSuggestion> _installableVersions(String output,
    [List<String>? tokens]) {
  tokens;
  final versions = <FigSuggestion>[];
  final lines = output.trim().split('\n');
  for (var i = 1; i < lines.length; i++) {
    final name = lines[i].trim();
    if (name.isEmpty) continue;
    versions.add(FigSuggestion(name: name, icon: _pyenvIcon));
  }
  return versions;
}

/// `pyenv versions` output: mark the currently active version (the line whose
/// name is preceded by `*`) with the selected icon.
List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  tokens;
  final versions = <FigSuggestion>[];
  for (final line in output.trim().split('\n')) {
    final selected = _starPrefix.hasMatch(line);
    final name =
        selected ? line.replaceFirst('*', '').trim() : line.trim();
    if (name.isEmpty) continue;
    versions.add(FigSuggestion(
      name: name,
      icon: selected ? _selectedIcon : _pyenvIcon,
    ));
  }
  return versions;
}

/// Registers the pyenv generators referenced by the shipped pyenv JSON.
void registerPyenvHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      pyenvGlobalVersionsPostProcessHandler, _versions);
  registry.registerPostProcess(
      pyenvInstallVersionsPostProcessHandler, _installableVersions);
}
