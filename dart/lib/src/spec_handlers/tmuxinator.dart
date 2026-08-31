// Hand-written dynamic handlers migrated from src/tmuxinator.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const tmuxinatorProjectsPostProcessHandler =
    'manual.src_tmuxinator.definition.projects.postprocess';
const tmuxinatorTmuxSessionsPostProcessHandler =
    'manual.src_tmuxinator.definition.tmuxsessions.postprocess';

/// `tmuxinator list -n` output: bail out on a `fatal:` error line, otherwise
/// drop the first (header) line and treat every remaining line as a project
/// name.
List<FigSuggestion> _projects(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) return const [];
  return output
      .split('\n')
      .skip(1)
      .map((project) => FigSuggestion(
            name: project,
            description: 'Project',
          ))
      .toList();
}

/// `tmux ls` output: bail out on a `fatal:` error line, otherwise each line is
/// a session rendered as `name: detail`; suggest the part before the first
/// colon. A line without a colon yields an empty name, mirroring the JS
/// `substring(0, -1)` behavior.
List<FigSuggestion> _tmuxSessions(String output, [List<String>? tokens]) {
  if (output.startsWith('fatal:')) return const [];
  return output.split('\n').map((session) {
    final colonIndex = session.indexOf(':');
    return FigSuggestion(
      name: colonIndex == -1 ? '' : session.substring(0, colonIndex),
      description: 'Tmux Session - $session',
    );
  }).toList();
}

/// Registers the tmuxinator generators referenced by the shipped tmuxinator
/// JSON.
void registerTmuxinatorHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      tmuxinatorProjectsPostProcessHandler, _projects);
  registry.registerPostProcess(
      tmuxinatorTmuxSessionsPostProcessHandler, _tmuxSessions);
}
