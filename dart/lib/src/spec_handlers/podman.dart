// Hand-written dynamic handlers migrated from src/podman.ts.
//
// The focused export only retained a subset of the source spec: the `inspect`
// subcommand's three postProcess references and the shared docker generator
// objects. The docker generators are serialized as whole-generator handler
// references, which the JSON parser resolves into `custom` handlers, so each
// runs its script through the adapter and then applies the matching
// post-process transform inline.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const podmanRunningContainersCustomHandler =
    'manual.src_podman.generator.dockergenerators.runningdockercontainers';
const podmanAllLocalImagesCustomHandler =
    'manual.src_podman.generator.dockergenerators.alllocalimages';
const podmanListDockerNetworksCustomHandler =
    'manual.src_podman.generator.dockergenerators.listdockernetworks';
const podmanListDockerSecretsCustomHandler =
    'manual.src_podman.generator.dockergenerators.listdockersecrets';
const podmanListDockerVolumesCustomHandler =
    'manual.src_podman.generator.dockergenerators.listdockervolumes';
const podmanInspectContainersPostProcessHandler =
    'manual.src_podman.spec.subcommands_13_.args.generators_0_.postprocess';
const podmanInspectImagesPostProcessHandler =
    'manual.src_podman.spec.subcommands_13_.args.generators_1_.postprocess';
const podmanInspectVolumesPostProcessHandler =
    'manual.src_podman.spec.subcommands_13_.args.generators_2_.postprocess';

const _dockerIcon = 'fig://icon?type=docker';

/// Decodes one `{{ json . }}` output line, mirroring the source's per-line
/// try/catch around `JSON.parse`. Returns null for blank or malformed lines so
/// the caller can skip them.
Map<String, dynamic>? _jsonObject(String line) {
  if (line.trim().isEmpty) return null;
  try {
    final decoded = jsonDecode(line);
    if (decoded is! Map) return null;
    return Map<String, dynamic>.from(decoded);
  } catch (_) {
    return null;
  }
}

/// Decodes one `{{ json . }}` output line for the post-processors whose source
/// calls `JSON.parse` bare. A malformed line throws here; the caller wraps this
/// in try/catch and aborts the whole list, matching the generator-level empty
/// result the source produces.
Map<String, dynamic>? _strictObject(String line) {
  final decoded = jsonDecode(line);
  if (decoded is! Map) return null;
  return Map<String, dynamic>.from(decoded);
}

/// `podman ps --format "{{ json . }}"` post-processor: each line is a JSON
/// object with `Names` and `Image`. Malformed lines are skipped individually.
List<FigSuggestion> _psJsonSuggestions(String output, [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final map = _jsonObject(line);
    if (map == null) continue;
    suggestions.add(FigSuggestion(
      name: map['Names'],
      displayName: '${map['Names']} (${map['Image']})',
      icon: _dockerIcon,
    ));
  }
  return suggestions;
}

/// `podman network/secret list --format "{{ json . }}"` post-processor: names
/// fall back from `name` to `Name` and descriptions from `id` to `ID` (kept for
/// backwards compatibility in the source).
List<FigSuggestion> _sharedJsonSuggestions(String output,
    [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    suggestions.add(FigSuggestion(
      name: (map['name'] ?? map['Name']),
      description: (map['id'] ?? map['ID']),
      icon: _dockerIcon,
    ));
  }
  return suggestions;
}

/// `podman image ls --format "{{ json . }}"` post-processor: the image id is
/// the suggestion name and the repository is shown alongside it.
List<FigSuggestion> _allLocalImagesJsonSuggestions(String output,
    [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    suggestions.add(FigSuggestion(
      name: map['Id'],
      displayName: '${map['repository']} - ${map['Id']}',
      icon: _dockerIcon,
    ));
  }
  return suggestions;
}

/// `podman volume list --format "{{ json . }}"` post-processor.
List<FigSuggestion> _volumesJsonSuggestions(String output,
    [List<String>? tokens]) {
  tokens; // retained for the postProcess callback signature.
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    suggestions.add(FigSuggestion(
      name: map['Name'],
      icon: _dockerIcon,
    ));
  }
  return suggestions;
}

/// `podman inspect` containers generator: `podman ps -a --format "{{ json . }}"`
/// post-processor.
List<FigSuggestion> _inspectContainers(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    suggestions.add(FigSuggestion(
      name: map['Id'],
      displayName: '[con] ${map['Id']} (${map['Image']})',
    ));
  }
  return suggestions;
}

/// `podman inspect` images generator: `podman images -a --format "{{ json . }}"`
/// post-processor. Untagged images display the id alone; otherwise the
/// repository is shown with its tag (when the tag is not `<none>`).
List<FigSuggestion> _inspectImages(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    String? displayName;
    if (map['repository'] == '<none>') {
      displayName = map['Id'] as String?;
    } else {
      displayName = map['repository'] as String?;
      if (map['Tag'] != '<none>') {
        displayName = '$displayName:${map['tag']}';
      }
    }
    suggestions.add(FigSuggestion(
      name: map['ID'],
      displayName: '[img] $displayName',
    ));
  }
  return suggestions;
}

/// `podman inspect` volumes generator: `docker volume ls --format "{{ json . }}"`
/// post-processor.
List<FigSuggestion> _inspectVolumes(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    Map<String, dynamic>? map;
    try {
      map = _strictObject(line);
    } catch (_) {
      return const [];
    }
    if (map == null) return const [];
    suggestions.add(FigSuggestion(
      name: map['Name'],
      displayName: '[vol] ${map['Name']}',
    ));
  }
  return suggestions;
}

/// Runs a static `podman` script through the adapter and applies the matching
/// post-process transform to its stdout. Non-zero exit produces no suggestions.
Future<List<FigSuggestion>> _runJson(
  ExecuteCommandFunction? executeCommand,
  List<String> args,
  List<FigSuggestion> Function(String output) transform,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'podman',
    args: args,
  ));
  if (result.status != 0) return const [];
  return transform(result.stdout);
}

Future<List<FigSuggestion>> _runningContainers(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runJson(
    executeCommand,
    const ['ps', '--format', '{{ json . }}'],
    (output) => _psJsonSuggestions(output),
  );
}

Future<List<FigSuggestion>> _allLocalImages(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runJson(
    executeCommand,
    const ['image', 'ls', '--format', '{{ json . }}'],
    (output) => _allLocalImagesJsonSuggestions(output),
  );
}

Future<List<FigSuggestion>> _listNetworks(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runJson(
    executeCommand,
    const ['network', 'list', '--format', '{{ json . }}'],
    (output) => _sharedJsonSuggestions(output),
  );
}

Future<List<FigSuggestion>> _listSecrets(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runJson(
    executeCommand,
    const ['secret', 'list', '--format', '{{ json . }}'],
    (output) => _sharedJsonSuggestions(output),
  );
}

Future<List<FigSuggestion>> _listVolumes(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) {
  return _runJson(
    executeCommand,
    const ['volume', 'list', '--format', '{{ json . }}'],
    (output) => _volumesJsonSuggestions(output),
  );
}

/// Registers the podman generators referenced by the shipped podman JSON.
void registerPodmanHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
      podmanRunningContainersCustomHandler, _runningContainers);
  registry.registerCustom(podmanAllLocalImagesCustomHandler, _allLocalImages);
  registry.registerCustom(podmanListDockerNetworksCustomHandler, _listNetworks);
  registry.registerCustom(podmanListDockerSecretsCustomHandler, _listSecrets);
  registry.registerCustom(podmanListDockerVolumesCustomHandler, _listVolumes);
  registry.registerPostProcess(
      podmanInspectContainersPostProcessHandler, _inspectContainers);
  registry.registerPostProcess(
      podmanInspectImagesPostProcessHandler, _inspectImages);
  registry.registerPostProcess(
      podmanInspectVolumesPostProcessHandler, _inspectVolumes);
}
