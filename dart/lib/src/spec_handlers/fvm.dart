// Hand-written dynamic handlers migrated from src/fvm.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const fvmReleasesPostProcessHandler =
    'manual.src_fvm.spec.subcommands_6_.args.generators.postprocess';

/// Matches semver-like strings anywhere in the output, mirroring the
/// `semverRegex` used by the `fvm install` releases generator.
final RegExp _semverRegex = RegExp(
  r'((([0-9]+)\.([0-9]+)\.([0-9]+)(?:-([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?)(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?)',
  multiLine: true,
);

/// `fvm releases` output: collect every semver match in order of first
/// occurrence (deduplicated), then present them newest-last so the newest
/// release is suggested first.
List<FigSuggestion> _releases(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final matches = <String>{};
  for (final match in _semverRegex.allMatches(output)) {
    final value = match.group(0);
    if (value != null) matches.add(value);
  }
  return matches
      .map((match) => FigSuggestion(name: match))
      .toList()
      .reversed
      .toList();
}

/// Registers the fvm generator referenced by the shipped fvm JSON.
void registerFvmHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(fvmReleasesPostProcessHandler, _releases);
}
