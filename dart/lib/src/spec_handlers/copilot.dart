// Hand-written dynamic handlers migrated from src/copilot.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';
import 'package:yaml/yaml.dart';

const copilotApplicationNamePostProcessHandler =
    'manual.src_copilot.definition.applicationname.postprocess';

const _awsIcon = 'fig://icon?type=aws';

/// `cat copilot/.workspace` output: a YAML document whose `application` key
/// names the current Copilot application. Suggests that name with an AWS icon.
List<FigSuggestion> _applicationName(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) {
    return const [];
  }

  try {
    final document = loadYaml(output);
    if (document is! Map) return const [];
    final application = document['application'];
    if (application == null) return const [];
    return [
      FigSuggestion(name: '$application', icon: _awsIcon),
    ];
  } catch (_) {
    return const [];
  }
}

/// Registers the copilot generators referenced by the shipped copilot JSON.
void registerCopilotHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      copilotApplicationNamePostProcessHandler, _applicationName);
}
