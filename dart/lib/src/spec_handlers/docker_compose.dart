// Hand-written dynamic script handlers migrated from src/docker-compose.ts.

import 'package:autocomplete/src/json_spec.dart';

const dockerComposeServicesScriptHandler =
    'manual.src_docker-compose.definition.servicesgenerator.script';
const dockerComposeProfilesScriptHandler =
    'manual.src_docker-compose.definition.profilesgenerator.script';

/// `docker` plus the `compose` subcommand, or the standalone `docker-compose`
/// binary, depending on which prefix the user actually typed.
List<String> _composeCommand(List<String> tokens) =>
    tokens.isNotEmpty && tokens.first == 'docker'
        ? const ['docker', 'compose']
        : const ['docker-compose'];

/// Re-emits every `-f <file>` pair already present on the command line so the
/// generated `config --services`/`config --profiles` query targets the same
/// Compose files the user selected.
List<String> _fileArgs(List<String> tokens) {
  final files = <String>[];
  for (var i = 0; i < tokens.length - 1; i++) {
    if (tokens[i] == '-f') {
      files.add(tokens[i + 1]);
      i += 1;
    }
  }
  return [
    for (final file in files) ...['-f', file],
  ];
}

List<String> _configScript(List<String> tokens, String configFlag) => [
      ..._composeCommand(tokens),
      ..._fileArgs(tokens),
      'config',
      configFlag,
    ];

/// Registers the Docker Compose script generators referenced by the shipped
/// docker-compose JSON.
void registerDockerComposeHandlers(JsonHandlerRegistry registry) {
  registry.registerScript(dockerComposeServicesScriptHandler, (tokens) {
    return _configScript(tokens, '--services');
  });
  registry.registerScript(dockerComposeProfilesScriptHandler, (tokens) {
    return _configScript(tokens, '--profiles');
  });
}
