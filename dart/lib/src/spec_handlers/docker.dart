// Hand-written dynamic handlers migrated from src/docker.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const dockerRunningContainersCustomHandler =
    'manual.src_docker.generator.dockergenerators.runningdockercontainers';
const dockerAllLocalImagesCustomHandler =
    'manual.src_docker.generator.dockergenerators.alllocalimages';
const dockerAllDockerContextsCustomHandler =
    'manual.src_docker.generator.dockergenerators.alldockercontexts';
const dockerListNetworksCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockernetworks';
const dockerListSwarmNodesCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockerswarmnodes';
const dockerListPluginsCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockerplugins';
const dockerListSecretsCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockersecrets';
const dockerListServicesCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockerservices';
const dockerListServicesReplicasCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockerservicesreplicas';
const dockerListStacksCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockerstacks';
const dockerListVolumesCustomHandler =
    'manual.src_docker.generator.dockergenerators.listdockervolumes';
const dockerInspectContainersPostProcessHandler =
    'manual.src_docker.spec.subcommands_13_.args.generators_0_.postprocess';
const dockerInspectImagesPostProcessHandler =
    'manual.src_docker.spec.subcommands_13_.args.generators_1_.postprocess';
const dockerInspectVolumesPostProcessHandler =
    'manual.src_docker.spec.subcommands_13_.args.generators_2_.postprocess';

const _dockerIcon = 'fig://icon?type=docker';

/// Reads one string field from a parsed docker JSON record, stringifying any
/// non-string value the same way the source template literal would.
String _field(Map<String, dynamic> record, String key) =>
    record[key]?.toString() ?? '';

/// Splits [output] on newlines and decodes each non-empty line as a JSON
/// object. Docker emits one JSON object per line via `--format "{{ json . }}"`.
/// Blank and malformed lines are dropped (the source's `postProcessDockerPs`
/// logs and filters undefined entries; the inspect post-processors would throw,
/// which surfaces here as a skipped line rather than an aborted generator).
List<Map<String, dynamic>> _jsonLines(String output) {
  final records = <Map<String, dynamic>>[];
  for (final line in output.split('\n')) {
    if (line.trim().isEmpty) continue;
    try {
      final decoded = jsonDecode(line);
      if (decoded is Map<String, dynamic>) records.add(decoded);
    } catch (_) {
      // Skip malformed lines.
    }
  }
  return records;
}

/// Runs `docker <args>` and maps each output JSON record through [mapper].
Future<List<FigSuggestion>> _dockerJsonList(
  ExecuteCommandFunction? executeCommand,
  List<String> args,
  FigSuggestion Function(Map<String, dynamic>) mapper,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(
    ExecuteCommandInput(command: 'docker', args: args),
  );
  if (result.status != 0) return const [];
  return _jsonLines(result.stdout).map(mapper).toList();
}

/// `docker ps` (and `-a` / filtered variants) line: `Names (Image)`.
FigSuggestion _psContainerSuggestion(Map<String, dynamic> record) {
  final names = _field(record, 'Names');
  return FigSuggestion(
    name: names,
    displayName: '$names (${_field(record, 'Image')})',
    icon: _dockerIcon,
  );
}

/// `docker image ls` line: `Repository - ID` with the image ID inserted.
FigSuggestion _localImageSuggestion(Map<String, dynamic> record) {
  final id = _field(record, 'ID');
  return FigSuggestion(
    name: id,
    displayName: '${_field(record, 'Repository')} - $id',
    icon: _dockerIcon,
  );
}

/// `docker context list` line: context name with its description.
FigSuggestion _contextSuggestion(Map<String, dynamic> record) => FigSuggestion(
      name: _field(record, 'Name'),
      description: _field(record, 'Description'),
      icon: _dockerIcon,
    );

/// Shared `docker <network|plugin|secret> list` shape: name with the ID as the
/// description.
FigSuggestion _nameIdSuggestion(Map<String, dynamic> record) => FigSuggestion(
      name: _field(record, 'Name'),
      description: _field(record, 'ID'),
      icon: _dockerIcon,
    );

/// `docker node list` line: `ID - Hostname` with the status as description.
FigSuggestion _nodeSuggestion(Map<String, dynamic> record) {
  final id = _field(record, 'ID');
  return FigSuggestion(
    name: id,
    displayName: '$id - ${_field(record, 'Hostname')}',
    description: _field(record, 'Status'),
    icon: _dockerIcon,
  );
}

/// `docker service list` line: service name with its image as description.
FigSuggestion _serviceSuggestion(Map<String, dynamic> record) => FigSuggestion(
      name: _field(record, 'Name'),
      description: _field(record, 'Image'),
      icon: _dockerIcon,
    );

/// `docker service list` line for replica autocomplete: `Name=` with the image
/// as description.
FigSuggestion _serviceReplicaSuggestion(Map<String, dynamic> record) =>
    FigSuggestion(
      name: '${_field(record, 'Name')}=',
      description: _field(record, 'Image'),
      icon: _dockerIcon,
    );

/// `docker stack list` line: stack name.
FigSuggestion _stackSuggestion(Map<String, dynamic> record) => FigSuggestion(
      name: _field(record, 'Name'),
      icon: _dockerIcon,
    );

/// `docker volume list` line: volume name.
FigSuggestion _volumeSuggestion(Map<String, dynamic> record) => FigSuggestion(
      name: _field(record, 'Name'),
      icon: _dockerIcon,
    );

Future<List<FigSuggestion>> _runningContainers(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['ps', '--format', '{{ json . }}'],
    _psContainerSuggestion,
  );
}

Future<List<FigSuggestion>> _allLocalImages(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['image', 'ls', '--format', '{{ json . }}'],
    _localImageSuggestion,
  );
}

Future<List<FigSuggestion>> _allDockerContexts(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['context', 'list', '--format', '{{ json . }}'],
    _contextSuggestion,
  );
}

Future<List<FigSuggestion>> _listNetworks(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['network', 'list', '--format', '{{ json . }}'],
    _nameIdSuggestion,
  );
}

Future<List<FigSuggestion>> _listSwarmNodes(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['node', 'list', '--format', '{{ json . }}'],
    _nodeSuggestion,
  );
}

Future<List<FigSuggestion>> _listPlugins(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['plugin', 'list', '--format', '{{ json . }}'],
    _nameIdSuggestion,
  );
}

Future<List<FigSuggestion>> _listSecrets(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['secret', 'list', '--format', '{{ json . }}'],
    _nameIdSuggestion,
  );
}

Future<List<FigSuggestion>> _listServices(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['service', 'list', '--format', '{{ json . }}'],
    _serviceSuggestion,
  );
}

Future<List<FigSuggestion>> _listServicesReplicas(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['service', 'list', '--format', '{{ json . }}'],
    _serviceReplicaSuggestion,
  );
}

Future<List<FigSuggestion>> _listStacks(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['stack', 'list', '--format', '{{ json . }}'],
    _stackSuggestion,
  );
}

Future<List<FigSuggestion>> _listVolumes(
    List<String> tokens,
    ExecuteCommandFunction? executeCommand,
    FigGeneratorContext? context) {
  return _dockerJsonList(
    executeCommand,
    const ['volume', 'list', '--format', '{{ json . }}'],
    _volumeSuggestion,
  );
}

/// `docker ps -a` output in the `inspect` subcommand: `[con] <ID> (<Image>)`.
List<FigSuggestion> _inspectContainers(String output, [List<String>? tokens]) {
  return _jsonLines(output)
      .map((record) {
        final id = _field(record, 'ID');
        return FigSuggestion(
          name: id,
          displayName: '[con] $id (${_field(record, 'Image')})',
        );
      })
      .toList();
}

/// `docker images -a` output in the `inspect` subcommand: `[img] <repo[:tag]>`,
/// falling back to the raw image ID when the repository is `<none>`.
List<FigSuggestion> _inspectImages(String output, [List<String>? tokens]) {
  return _jsonLines(output)
      .map((record) {
        final repository = _field(record, 'Repository');
        final tag = _field(record, 'Tag');
        var displayName = repository;
        if (repository == '<none>') {
          displayName = _field(record, 'ID');
        } else if (tag != '<none>') {
          displayName = '$repository:$tag';
        }
        return FigSuggestion(
          name: _field(record, 'ID'),
          displayName: '[img] $displayName',
        );
      })
      .toList();
}

/// `docker volume ls` output in the `inspect` subcommand: `[vol] <Name>`.
List<FigSuggestion> _inspectVolumes(String output, [List<String>? tokens]) {
  return _jsonLines(output)
      .map((record) {
        final name = _field(record, 'Name');
        return FigSuggestion(name: name, displayName: '[vol] $name');
      })
      .toList();
}

/// Registers the docker generators referenced by the shipped docker JSON.
void registerDockerHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(dockerRunningContainersCustomHandler, _runningContainers);
  registry.registerCustom(dockerAllLocalImagesCustomHandler, _allLocalImages);
  registry.registerCustom(dockerAllDockerContextsCustomHandler, _allDockerContexts);
  registry.registerCustom(dockerListNetworksCustomHandler, _listNetworks);
  registry.registerCustom(dockerListSwarmNodesCustomHandler, _listSwarmNodes);
  registry.registerCustom(dockerListPluginsCustomHandler, _listPlugins);
  registry.registerCustom(dockerListSecretsCustomHandler, _listSecrets);
  registry.registerCustom(dockerListServicesCustomHandler, _listServices);
  registry.registerCustom(
      dockerListServicesReplicasCustomHandler, _listServicesReplicas);
  registry.registerCustom(dockerListStacksCustomHandler, _listStacks);
  registry.registerCustom(dockerListVolumesCustomHandler, _listVolumes);
  registry.registerPostProcess(
      dockerInspectContainersPostProcessHandler, _inspectContainers);
  registry.registerPostProcess(
      dockerInspectImagesPostProcessHandler, _inspectImages);
  registry.registerPostProcess(
      dockerInspectVolumesPostProcessHandler, _inspectVolumes);
}
