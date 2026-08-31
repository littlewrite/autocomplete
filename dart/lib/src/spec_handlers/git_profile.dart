// Hand-written dynamic handlers migrated from src/git-profile.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const gitProfileListPostProcessHandler =
    'manual.src_git-profile.spec.subcommands_0_.args.generators.postprocess';

/// `git-profile list` output: lines like `[personal]`. Suggests the bracketed
/// profile name, described as the profile to use.
List<FigSuggestion> _profiles(String output, [List<String>? tokens]) {
  tokens;
  final profiles = <FigSuggestion>[];
  final pattern = RegExp(r'^\[(.+?)\]$', multiLine: true);
  for (final match in pattern.allMatches(output)) {
    final name = match.group(1);
    if (name != null && name.isNotEmpty) {
      profiles.add(FigSuggestion(
        name: name,
        description: 'Use profile "$name"',
      ));
    }
  }
  return profiles;
}

/// Registers the git-profile generators referenced by the shipped git-profile
/// JSON.
void registerGitProfileHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(gitProfileListPostProcessHandler, _profiles);
}
