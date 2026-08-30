// Hand-written handlers migrated from src/aws.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const awsProfilePostProcessHandler =
    'manual.src_aws.spec.options_0_.args.generators.postprocess';

/// Converts `aws configure list-profiles` output into profile suggestions.
///
/// AWS emits one profile name per line. Empty lines are ignored so a trailing
/// newline does not create an unusable blank suggestion.
List<FigSuggestion> _awsProfiles(String output, [List<String>? tokens]) {
  if (output.trim().isEmpty) return const <FigSuggestion>[];
  return output
      .split('\n')
      .where((name) => name.isNotEmpty)
      .map((name) => FigSuggestion(name: name, icon: '👤'))
      .toList();
}

void registerAwsHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(awsProfilePostProcessHandler, _awsProfiles);
}
