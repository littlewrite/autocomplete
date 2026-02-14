import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

List<FigSuggestion> postProcessDockerPs(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final names = parsedJSON['Names'] as String? ?? '';
          final image = parsedJSON['Image'] as String? ?? '';
          return FigSuggestion(
            name: [names],
            displayName: '$names ($image)',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> sharedPostProcess(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          final id = parsedJSON['ID'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            description: id,
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _allLocalImagesPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final id = parsedJSON['ID'] as String? ?? '';
          final repository = parsedJSON['Repository'] as String? ?? '';
          return FigSuggestion(
            name: [id],
            displayName: '$repository - $id',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _allLocalImagesWithRepositoryPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final id = parsedJSON['ID'] as String? ?? '';
          final repository = parsedJSON['Repository'] as String? ?? '';
          return FigSuggestion(
            name: [repository],
            displayName: '$repository - $id',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _dockerHubSearchPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<String>? _dockerHubSearchScript(List<String> context) {
  if (context.isEmpty || context.last.isEmpty) return null;
  final searchTerm = context.last;
  return ['docker', 'search', searchTerm, '--format', '{{ json . }}'];
}

List<FigSuggestion> _allDockerContextsPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          final description = parsedJSON['Description'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            description: description,
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _listDockerSwarmNodesPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final id = parsedJSON['ID'] as String? ?? '';
          final hostname = parsedJSON['Hostname'] as String? ?? '';
          final status = parsedJSON['Status'] as String? ?? '';
          return FigSuggestion(
            name: [id],
            displayName: '$id - $hostname',
            description: status,
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _listDockerServicesPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          final image = parsedJSON['Image'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            description: image,
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _listDockerServicesReplicasPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          final image = parsedJSON['Image'] as String? ?? '';
          return FigSuggestion(
            name: ['$name='],
            description: image,
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _simpleNamePostProcess(String out, [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _inspectContainersPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final id = parsedJSON['ID'] as String? ?? '';
          final image = parsedJSON['Image'] as String? ?? '';
          return FigSuggestion(
            name: [id],
            displayName: '[con] $id ($image)',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _inspectImagesPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final id = parsedJSON['ID'] as String? ?? '';
          final repository = parsedJSON['Repository'] as String? ?? '';
          final tag = parsedJSON['Tag'] as String? ?? '';

          String displayName;
          if (repository == '<none>') {
            displayName = id;
          } else {
            displayName = repository;
            if (tag != '<none>') {
              displayName += ':$tag';
            }
          }

          return FigSuggestion(
            name: [id],
            displayName: '[img] $displayName',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

List<FigSuggestion> _inspectVolumesPostProcess(String out,
    [List<String>? tokens]) {
  return out
      .split('\n')
      .where((line) => line.isNotEmpty)
      .map((i) {
        try {
          final parsedJSON = jsonDecode(i) as Map<String, dynamic>;
          final name = parsedJSON['Name'] as String? ?? '';
          return FigSuggestion(
            name: [name],
            displayName: '[vol] $name',
            icon: 'fig://icon?type=docker',
          );
        } catch (e) {
          return null;
        }
      })
      .whereType<FigSuggestion>()
      .toList();
}

final Map<String, FigGenerator> dockerGenerators = {
  'runningDockerContainers': FigGenerator(
    script: ['docker', 'ps', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'allDockerContainers': FigGenerator(
    script: ['docker', 'ps', '-a', '--format', '{{ json . }}'],
    postProcess: postProcessDockerPs,
  ),
  'pausedDockerContainers': FigGenerator(
    script: [
      'docker',
      'ps',
      '--filter',
      'status=paused',
      '--format',
      '{{ json . }}'
    ],
    postProcess: postProcessDockerPs,
  ),
  'allLocalImages': FigGenerator(
    script: ['docker', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: _allLocalImagesPostProcess,
  ),
  'allLocalImagesWithRepository': FigGenerator(
    script: ['docker', 'image', 'ls', '--format', '{{ json . }}'],
    postProcess: _allLocalImagesWithRepositoryPostProcess,
  ),
  'dockerHubSearch': FigGenerator(
    script: _dockerHubSearchScript,
    postProcess: _dockerHubSearchPostProcess,
    trigger: () => true,
  ),
  'allDockerContexts': FigGenerator(
    script: ['docker', 'context', 'list', '--format', '{{ json . }}'],
    postProcess: _allDockerContextsPostProcess,
  ),
  'listDockerNetworks': FigGenerator(
    script: ['docker', 'network', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerSwarmNodes': FigGenerator(
    script: ['docker', 'node', 'list', '--format', '{{ json . }}'],
    postProcess: _listDockerSwarmNodesPostProcess,
  ),
  'listDockerPlugins': FigGenerator(
    script: ['docker', 'plugin', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerSecrets': FigGenerator(
    script: ['docker', 'secret', 'list', '--format', '{{ json . }}'],
    postProcess: sharedPostProcess,
  ),
  'listDockerServices': FigGenerator(
    script: ['docker', 'service', 'list', '--format', '{{ json . }}'],
    postProcess: _listDockerServicesPostProcess,
  ),
  'listDockerServicesReplicas': FigGenerator(
    script: ['docker', 'service', 'list', '--format', '{{ json . }}'],
    postProcess: _listDockerServicesReplicasPostProcess,
  ),
  'listDockerStacks': FigGenerator(
    script: ['docker', 'stack', 'list', '--format', '{{ json . }}'],
    postProcess: _simpleNamePostProcess,
  ),
  'listDockerVolumes': FigGenerator(
    script: ['docker', 'volume', 'list', '--format', '{{ json . }}'],
    postProcess: _simpleNamePostProcess,
  ),
  'inspectContainers': FigGenerator(
    script: ['docker', 'ps', '-a', '--format', '{{ json . }}'],
    postProcess: _inspectContainersPostProcess,
  ),
  'inspectImages': FigGenerator(
    script: ['docker', 'images', '-a', '--format', '{{ json . }}'],
    postProcess: _inspectImagesPostProcess,
  ),
  'inspectVolumes': FigGenerator(
    script: ['docker', 'volume', 'ls', '--format', '{{ json . }}'],
    postProcess: _inspectVolumesPostProcess,
  ),
};

final containersArg = FigArg(
  name: 'container',
  generators: [dockerGenerators['runningDockerContainers']!],
);

final imagesArg = FigArg(
  name: 'image',
  generators: [dockerGenerators['allLocalImages']!],
);

final containerAndCommandArgs = [
  containersArg,
  FigArg(
    name: 'command',
    isCommand: true,
  ),
];

final contextsArg = FigArg(
  name: 'CONTEXT',
  generators: [dockerGenerators['allDockerContexts']!],
);
