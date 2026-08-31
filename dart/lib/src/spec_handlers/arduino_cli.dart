// Hand-written dynamic handlers migrated from src/arduino-cli.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const arduinoCliFqbnsPostProcessHandler =
    'manual.src_arduino-cli.definition.fqbns.postprocess';
const arduinoCliPortsPostProcessHandler =
    'manual.src_arduino-cli.definition.ports.postprocess';

/// `arduino-cli board list --format json` output: an array of `{port,
/// matching_boards}` entries. Only entries that have a matching board are kept;
/// the first matching board's FQBN is suggested, described as its name on the
/// port it is connected to.
List<FigSuggestion> _fqbns(String output, [List<String>? tokens]) {
  try {
    final parsedOutput = jsonDecode(output) as List;
    final result = <FigSuggestion>[];
    for (final entry in parsedOutput) {
      final item = entry as Map<String, dynamic>;
      final matchingBoards = item['matching_boards'];
      if (matchingBoards is! List || matchingBoards.isEmpty) continue;
      final board = matchingBoards.first as Map<String, dynamic>;
      final port = item['port'] as Map<String, dynamic>;
      result.add(FigSuggestion(
        name: board['fqbn'],
        description: '${board['name']} on port ${port['address']}',
      ));
    }
    return result;
  } catch (_) {
    return const [];
  }
}

/// `arduino-cli board list --format json` output: an array of `{port,
/// matching_boards}` entries. Only entries that have a matching board are kept;
/// the port address is suggested, described as its connected board's name.
List<FigSuggestion> _ports(String output, [List<String>? tokens]) {
  try {
    final parsedOutput = jsonDecode(output) as List;
    final result = <FigSuggestion>[];
    for (final entry in parsedOutput) {
      final item = entry as Map<String, dynamic>;
      final matchingBoards = item['matching_boards'];
      if (matchingBoards is! List || matchingBoards.isEmpty) continue;
      final board = matchingBoards.first as Map<String, dynamic>;
      final port = item['port'] as Map<String, dynamic>;
      result.add(FigSuggestion(
        name: port['address'],
        description: '${board['name']} port connection',
      ));
    }
    return result;
  } catch (_) {
    return const [];
  }
}

/// Registers the arduino-cli generators referenced by the shipped arduino-cli
/// JSON.
void registerArduinoCliHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(arduinoCliFqbnsPostProcessHandler, _fqbns);
  registry.registerPostProcess(arduinoCliPortsPostProcessHandler, _ports);
}
