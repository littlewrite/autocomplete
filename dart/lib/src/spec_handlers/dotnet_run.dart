// Hand-written dynamic handler migrated from src/dotnet/dotnet-run.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const dotnetRunLaunchProfilesPostProcessHandler =
    'manual.src_dotnet_dotnet-run.spec.options_6_.args.generators.postprocess';

List<FigSuggestion> _launchProfiles(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    final profiles = decoded is Map ? decoded['profiles'] : null;
    if (profiles is! Map) return const [];
    return profiles.keys
        .map((key) => FigSuggestion(name: key.toString(), priority: 100))
        .toList();
  } on FormatException {
    return const [];
  }
}

void registerDotnetRunHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
    dotnetRunLaunchProfilesPostProcessHandler,
    _launchProfiles,
  );
}
