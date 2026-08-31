// Hand-written dynamic handlers migrated from src/mackup.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const mackupApplicationsPostProcessHandler =
    'manual.src_mackup.spec.subcommands_3_.args.generators.postprocess';

/// `mackup list` output: keep every line that contains `-` and strip the
/// leading three characters, mirroring the original TS `substring(3)`.
List<FigSuggestion> _applications(String output, [List<String>? tokens]) {
  final applications = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (!line.contains('-')) continue;
    final name = line.length > 3 ? line.substring(3) : '';
    applications.add(FigSuggestion(name: name));
  }
  return applications;
}

/// Registers the mackup generator referenced by the shipped mackup JSON.
void registerMackupHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      mackupApplicationsPostProcessHandler, _applications);
}
