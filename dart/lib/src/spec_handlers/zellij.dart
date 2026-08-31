// Hand-written dynamic handlers migrated from src/zellij.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const zellijGenerateSessionsPostProcessHandler =
    'manual.src_zellij.definition.generatesessions.postprocess';

final RegExp _createdSession = RegExp(r'\[Created (.+?) ago\]');

/// `zellij list-sessions -n` output: one suggestion per non-empty line.
///
/// The session name is the text before the first `[`. A `[Created X ago]`
/// segment becomes the description, and a line containing `EXITED` is marked
/// with a warning icon and a lower priority.
List<FigSuggestion> _generateSessions(String output, [List<String>? tokens]) {
  if (output.contains('No active zellij sessions found')) {
    return const [];
  }

  final sessions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    if (line.isEmpty) continue;
    final name = line.split('[').first.trim();
    final createdMatch = _createdSession.firstMatch(line);
    final isExited = line.contains('EXITED');

    var description = '';
    if (createdMatch != null) {
      description = 'Created ${createdMatch.group(1)} ago';
    }
    if (isExited) {
      description += ' (EXITED)';
    }

    sessions.add(FigSuggestion(
      name: name,
      description: description,
      icon: isExited ? '⚠️' : '📟',
      priority: isExited ? 51 : 75,
    ));
  }
  return sessions;
}

/// Registers the zellij generators referenced by the shipped zellij JSON.
void registerZellijHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      zellijGenerateSessionsPostProcessHandler, _generateSessions);
}
