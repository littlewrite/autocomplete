// Hand-written dynamic handlers migrated from src/yo.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const yoGeneratorsPostProcessHandler =
    'manual.src_yo.spec.args.generators.postprocess';

/// Title-cases every whitespace-delimited word, mirroring the TS
/// `str.replace(/\w\S*/g, (txt) => first.toUpperCase() + rest.toLowerCase())`.
String _toTitleCase(String str) {
  return str.trim().replaceAllMapped(RegExp(r'\w\S*'), (match) {
    final text = match.group(0)!;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  });
}

/// `yo --generators` output: an `Available Generators:` heading followed by
/// one generator name per line. Each is suggested as a Yeoman generator.
List<FigSuggestion> _yeomanGenerators(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  if (output.trim().isEmpty) return const [];
  final generators = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    if (line == 'Available Generators:') continue;
    final title = _toTitleCase(line);
    generators.add(FigSuggestion(
      name: line.trim(),
      icon: 'https://avatars.githubusercontent.com/u/1714870?v=4',
      displayName: title,
      description: '$title Generator',
      priority: 100,
    ));
  }
  return generators;
}

/// Registers the yo generators referenced by the shipped yo JSON.
void registerYoHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      yoGeneratorsPostProcessHandler, _yeomanGenerators);
}
