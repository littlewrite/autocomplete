// Hand-written dynamic handlers migrated from src/conda.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const condaInstalledPackagesPostProcessHandler =
    'manual.src_conda.definition.getinstalledpackages.postprocess';
const condaEnvironmentsPostProcessHandler =
    'manual.src_conda.definition.getcondaenvironments.postprocess';
const condaConfigsPostProcessHandler =
    'manual.src_conda.definition.getcondaconfigs.postprocess';

const _condaIcon = '🐍';

/// `conda list` output: skip the header rows, take the first token per line.
List<FigSuggestion> _installedPackages(String output, [List<String>? tokens]) {
  final packages = <FigSuggestion>[];
  for (final line in output.split('\n').skip(3)) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;
    packages.add(FigSuggestion(
      name: trimmed.split(RegExp(r'\s+')).first,
      icon: _condaIcon,
    ));
  }
  return packages;
}

/// `conda env list` output: skip the two comment lines, take the env name.
List<FigSuggestion> _environments(String output, [List<String>? tokens]) {
  final environments = <FigSuggestion>[];
  for (final line in output.split('\n').skip(2)) {
    final envName = line.split(' ').first;
    if (envName.isNotEmpty) {
      environments.add(FigSuggestion(name: envName, icon: _condaIcon));
    }
  }
  return environments;
}

/// `conda config --show` output: skip two comment lines, take the key before
/// the first `:` and drop dashed entries.
List<FigSuggestion> _configs(String output, [List<String>? tokens]) {
  final configs = <FigSuggestion>[];
  for (final line in output.split('\n').skip(2)) {
    final configName = line.split(':').first;
    if (configName.isNotEmpty && !configName.contains('-')) {
      configs.add(FigSuggestion(name: configName, icon: _condaIcon));
    }
  }
  return configs;
}

/// Registers the conda generators referenced by the shipped conda JSON.
void registerCondaHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      condaInstalledPackagesPostProcessHandler, _installedPackages);
  registry.registerPostProcess(
      condaEnvironmentsPostProcessHandler, _environments);
  registry.registerPostProcess(condaConfigsPostProcessHandler, _configs);
}
