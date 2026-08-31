// Hand-written dynamic handlers migrated from src/watson.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const watsonListProjectsPostProcessHandler =
    'manual.src_watson.definition.listprojects.postprocess';
const watsonListTagsPostProcessHandler =
    'manual.src_watson.definition.listtags.postprocess';
const watsonListFramesPostProcessHandler =
    'manual.src_watson.definition.listframes.postprocess';

const _projectIcon = '🗂';
const _tagIcon = '🏷';
const _frameIcon = '⏲';

/// `watson projects` output: one project name per line. Suggest each line,
/// dropping the trailing empty line produced by a final newline.
List<FigSuggestion> _projects(String output, [List<String>? tokens]) {
  final projects = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    projects.add(FigSuggestion(name: line, icon: _projectIcon));
  }
  return projects;
}

/// `watson tags` output: one tag name per line. Suggest each line, dropping
/// the trailing empty line produced by a final newline.
List<FigSuggestion> _tags(String output, [List<String>? tokens]) {
  final tags = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    tags.add(FigSuggestion(name: line, icon: _tagIcon));
  }
  return tags;
}

/// `watson log --json --reverse` output: an array of frames. Suggest the
/// seven-character frame id, described by its project and start time.
List<FigSuggestion> _frames(String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    final frames = <FigSuggestion>[];
    for (final frame in decoded) {
      final item = frame as Map<String, dynamic>;
      final id = item['id'] as String;
      // Match TS `String.prototype.substring(0, 7)`, which clamps to length.
      final shortId = id.length > 7 ? id.substring(0, 7) : id;
      frames.add(FigSuggestion(
        name: shortId,
        icon: _frameIcon,
        displayName: '$shortId - ${item['project']} - ${item['start']}',
      ));
    }
    return frames;
  } catch (_) {
    return const [];
  }
}

/// Registers the watson generators referenced by the shipped watson JSON.
void registerWatsonHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      watsonListProjectsPostProcessHandler, _projects);
  registry.registerPostProcess(watsonListTagsPostProcessHandler, _tags);
  registry.registerPostProcess(watsonListFramesPostProcessHandler, _frames);
}
