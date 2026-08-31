// Hand-written dynamic handlers migrated from src/k3d.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const k3dClusterGeneratorPostProcessHandler =
    'manual.src_k3d.definition.clustergenerator.postprocess';
const k3dDockerImageGeneratorPostProcessHandler =
    'manual.src_k3d.definition.dockerimagegenerator.postprocess';
const k3dNodeGeneratorPostProcessHandler =
    'manual.src_k3d.definition.nodegenerator.postprocess';
const k3dRegistryGeneratorPostProcessHandler =
    'manual.src_k3d.definition.registrygenerator.postprocess';

const _kubernetesIcon = 'fig://icon?type=kubernetes';
const _dockerIcon = 'fig://icon?type=docker';

/// `k3d cluster list --no-headers` output: lines of `NAME SERVERS AGENTS`.
/// Lines that do not carry all three fields are skipped.
List<FigSuggestion> _clusters(String output, [List<String>? tokens]) {
  final clusters = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;
    final parts = trimmed.split(RegExp(r'\s+'));
    if (parts.length < 3) continue;
    final name = parts[0];
    final servers = parts[1];
    final agents = parts[2];
    clusters.add(FigSuggestion(
      name: name,
      icon: _kubernetesIcon,
      description: 'Cluster with $servers server(s), $agents agent(s)',
    ));
  }
  return clusters;
}

/// `docker image ls --format '{{.Repository}}:{{.Tag}}'` output: one image per
/// line. Blank lines are dropped.
List<FigSuggestion> _dockerImages(String output, [List<String>? tokens]) {
  final images = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final image = line.trim();
    if (image.isEmpty) continue;
    images.add(FigSuggestion(
      name: image,
      icon: _dockerIcon,
      description: 'Docker Image',
    ));
  }
  return images;
}

/// `k3d node list --no-headers` output: lines of `NAME ROLE CLUSTER`.
/// Lines that do not carry all three fields are skipped.
List<FigSuggestion> _nodes(String output, [List<String>? tokens]) {
  final nodes = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;
    final parts = trimmed.split(RegExp(r'\s+'));
    if (parts.length < 3) continue;
    final name = parts[0];
    final role = parts[1];
    final cluster = parts[2];
    nodes.add(FigSuggestion(
      name: name,
      icon: _kubernetesIcon,
      description: '$role node of cluster $cluster',
    ));
  }
  return nodes;
}

/// `k3d registry list --no-headers` output: lines of `NAME CLUSTER`.
/// Lines that do not carry both fields are skipped.
List<FigSuggestion> _registries(String output, [List<String>? tokens]) {
  final registries = <FigSuggestion>[];
  for (final line in output.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;
    final parts = trimmed.split(RegExp(r'\s+'));
    if (parts.length < 2) continue;
    final name = parts[0];
    final cluster = parts[1];
    registries.add(FigSuggestion(
      name: name,
      description: 'Registry $name of cluster $cluster',
    ));
  }
  return registries;
}

/// Registers the k3d generators referenced by the shipped k3d JSON.
void registerK3dHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(k3dClusterGeneratorPostProcessHandler, _clusters);
  registry.registerPostProcess(
      k3dDockerImageGeneratorPostProcessHandler, _dockerImages);
  registry.registerPostProcess(k3dNodeGeneratorPostProcessHandler, _nodes);
  registry.registerPostProcess(
      k3dRegistryGeneratorPostProcessHandler, _registries);
}
