// Hand-written dynamic handlers migrated from src/bazel.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const bazelBuildFilesPostProcessHandler =
    'manual.src_bazel.definition.bazelbuildfiles.postprocess';

const _bazelTargetIcon = '🎯';

/// Parses the output of the `find ./ -name BUILD` script.
///
/// Each BUILD file path is echoed as `----.<path>/BUILD`; lines within a file
/// that match `name = "..."` become `<path>:<name>` bazel targets. The current
/// path is re-read on every `----.../BUILD` line and applied to every following
/// target line, mirroring the TypeScript source exactly.
List<FigSuggestion> _buildFiles(String output, [List<String>? tokens]) {
  final filepathRe = RegExp(r'----.(.*)/BUILD');
  final targetRe = RegExp(r'name = "(.*)"');
  final targets = <FigSuggestion>[];
  var currPath = '';
  for (final line in output.split('\n')) {
    final isFilepath = filepathRe.firstMatch(line);
    final isBazelTarget = targetRe.firstMatch(line);
    if (isFilepath != null) {
      currPath = '${isFilepath.group(1)}:';
    } else if (isBazelTarget != null) {
      targets.add(FigSuggestion(
        name: currPath + isBazelTarget.group(1)!,
        description: 'Bazel target',
        icon: _bazelTargetIcon,
        priority: 80,
      ));
    }
  }
  return targets;
}

/// Registers the bazel generators referenced by the shipped bazel JSON.
void registerBazelHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(bazelBuildFilesPostProcessHandler, _buildFiles);
}
