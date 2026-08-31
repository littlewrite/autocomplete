// Hand-written dynamic handlers migrated from src/meteor.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const meteorExamplesPostProcessHandler =
    'manual.src_meteor.definition.examplesgenerator.postprocess';
const meteorPackagesPostProcessHandler =
    'manual.src_meteor.definition.packagesgenerator.postprocess';
const meteorPlatformsPostProcessHandler =
    'manual.src_meteor.definition.platformgenerator.postprocess';

/// `meteor create --list` output: keep lines that reference github.com and
/// suggest the example name, which is the text before the first `:`.
List<FigSuggestion> _examples(String output, [List<String>? tokens]) {
  final examples = <FigSuggestion>[];
  for (final example in output.split('\n')) {
    if (!example.contains('github.com')) continue;
    examples.add(FigSuggestion(name: example.split(':').first.trim()));
  }
  return examples;
}

/// `cat ./.meteor/packages` output: drop comments and version pins, then
/// suggest each package name. Returns nothing when the file is missing.
List<FigSuggestion> _packages(String output, [List<String>? tokens]) {
  if (output.contains('No such file or directory')) {
    return const [];
  }
  final packages = <FigSuggestion>[];
  for (final pack in output.split('\n')) {
    var trimmedPack = pack.replaceAll(RegExp(r'#.*'), '');
    trimmedPack = trimmedPack.replaceAll(RegExp(r'^\s+|\s+$|\s+(?=\s)'), '');
    if (trimmedPack.contains('@')) {
      trimmedPack = trimmedPack.split('@').first;
    }
    packages.add(FigSuggestion(name: trimmedPack));
  }
  return packages;
}

/// `meteor list-platforms` output: suggest each platform line.
List<FigSuggestion> _platforms(String output, [List<String>? tokens]) {
  final platforms = <FigSuggestion>[];
  for (final platform in output.split('\n')) {
    platforms.add(FigSuggestion(name: platform));
  }
  return platforms;
}

/// Registers the meteor generators referenced by the shipped meteor JSON.
void registerMeteorHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(meteorExamplesPostProcessHandler, _examples);
  registry.registerPostProcess(meteorPackagesPostProcessHandler, _packages);
  registry.registerPostProcess(meteorPlatformsPostProcessHandler, _platforms);
}
