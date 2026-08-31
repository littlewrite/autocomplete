// Hand-written dynamic handlers migrated from src/jenv.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const jenvAllCommandsPostProcessHandler =
    'manual.src_jenv.definition.generateallcommands.postprocess';
const jenvAllShimsPostProcessHandler =
    'manual.src_jenv.definition.generateallshims.postprocess';
const jenvAllPluginsPostProcessHandler =
    'manual.src_jenv.definition.generateallplugins.postprocess';
const jenvVersionsPostProcessHandler =
    'manual.src_jenv.definition.generatejenvversions.postprocess';
const jenvProgramGeneratorPostProcessHandler =
    'manual.src_jenv.definition.programgenerator.postprocess';

const _commandIcon = 'fig://icon?type=command';
const _javaIcon = '☕️';

/// `jenv commands` output: drop blank lines and the `--version` entry.
List<FigSuggestion> _allCommands(String output, [List<String>? tokens]) {
  final commands = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isEmpty || trimmed == '--version') continue;
    commands.add(FigSuggestion(
      name: line,
      icon: _commandIcon,
      priority: 51,
    ));
  }
  return commands;
}

/// `jenv shims --short` output: drop blank lines, keep each shim name.
List<FigSuggestion> _allShims(String output, [List<String>? tokens]) {
  final shims = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    shims.add(FigSuggestion(
      name: line,
      icon: _commandIcon,
      priority: 51,
    ));
  }
  return shims;
}

/// `jenv plugins` output: one suggestion per plugin with an enable hint.
List<FigSuggestion> _allPlugins(String output, [List<String>? tokens]) {
  final plugins = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    plugins.add(FigSuggestion(
      name: line,
      description: 'Enable $line plugin',
      icon: _commandIcon,
      priority: 51,
    ));
  }
  return plugins;
}

/// `jenv versions --bare` output: one suggestion per installed version.
List<FigSuggestion> _versions(String output, [List<String>? tokens]) {
  final versions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    versions.add(FigSuggestion(
      name: line,
      description: 'Java Version $line',
      icon: _javaIcon,
      priority: 51,
    ));
  }
  return versions;
}

/// `find $PATH` output: absolute paths mapped to their basenames.
List<FigSuggestion> _programs(String output, [List<String>? tokens]) {
  final programs = <FigSuggestion>[];
  for (final path in output.split('\n')) {
    if (!path.startsWith('/')) continue;
    programs.add(FigSuggestion(
      name: path.split('/').last,
      description: 'Executable file',
      type: SuggestionType.arg,
    ));
  }
  return programs;
}

/// Registers the jenv generators referenced by the shipped jenv JSON.
void registerJenvHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(jenvAllCommandsPostProcessHandler, _allCommands);
  registry.registerPostProcess(jenvAllShimsPostProcessHandler, _allShims);
  registry.registerPostProcess(jenvAllPluginsPostProcessHandler, _allPlugins);
  registry.registerPostProcess(jenvVersionsPostProcessHandler, _versions);
  registry.registerPostProcess(
      jenvProgramGeneratorPostProcessHandler, _programs);
}
