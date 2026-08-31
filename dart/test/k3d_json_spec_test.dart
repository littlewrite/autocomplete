import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/k3d.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    final key = [executable, ...arguments].join(' ');
    return _results[key] ?? const ProcessRunResult(stdout: '');
  }
}

/// Depth-first collection of every generator in the spec tree, including those
/// attached to nested subcommand args and option args.
List<FigGenerator> _collectGenerators(FigSubcommand subcommand) {
  final result = <FigGenerator>[];
  for (final arg in subcommand.args ?? const <FigArg>[]) {
    result.addAll(arg.generatorsList);
  }
  for (final option in subcommand.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      result.addAll(arg.generatorsList);
    }
  }
  for (final child in subcommand.subcommands ?? const <FigSubcommand>[]) {
    result.addAll(_collectGenerators(child));
  }
  return result;
}

void main() {
  test('k3d JSON binds every generator to the four declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerK3dHandlers(handlers);
    final source = await File('assets/specs/k/k3d.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(k3dClusterGeneratorPostProcessHandler));
    expect(source, contains(k3dDockerImageGeneratorPostProcessHandler));
    expect(source, contains(k3dNodeGeneratorPostProcessHandler));
    expect(source, contains(k3dRegistryGeneratorPostProcessHandler));
    expect(document['name'], 'k3d');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), {
      k3dClusterGeneratorPostProcessHandler,
      k3dDockerImageGeneratorPostProcessHandler,
      k3dNodeGeneratorPostProcessHandler,
      k3dRegistryGeneratorPostProcessHandler,
    });
  });

  test('cluster post-processor parses NAME SERVERS AGENTS with kubernetes icon',
      () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'k3s-default 1 0\n'
        'prod 3 2\n';

    final clusters =
        registry.postProcess(k3dClusterGeneratorPostProcessHandler)!(output);
    expect(clusters.map((item) => item.nameSingle), ['k3s-default', 'prod']);
    expect(clusters.map((item) => item.icon),
        ['fig://icon?type=kubernetes', 'fig://icon?type=kubernetes']);
    expect(clusters.map((item) => item.description), [
      'Cluster with 1 server(s), 0 agent(s)',
      'Cluster with 3 server(s), 2 agent(s)',
    ]);
  });

  test('cluster post-processor drops empty and truncated lines', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'k3s-default 1 0\n'
        'only-a-name\n'
        'name-no-agents 2\n'
        '\n';

    final clusters =
        registry.postProcess(k3dClusterGeneratorPostProcessHandler)!(output);
    expect(clusters.map((item) => item.nameSingle), ['k3s-default']);
  });

  test('cluster post-processor returns empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final clusters =
        registry.postProcess(k3dClusterGeneratorPostProcessHandler)!('');
    expect(clusters, isEmpty);
  });

  test('docker image post-processor maps each line to a docker image', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'rancher/k3s:v1.27.3-k3s1\n'
        'nginx:latest\n';

    final images =
        registry.postProcess(k3dDockerImageGeneratorPostProcessHandler)!(output);
    expect(images.map((item) => item.nameSingle),
        ['rancher/k3s:v1.27.3-k3s1', 'nginx:latest']);
    expect(images.map((item) => item.icon),
        ['fig://icon?type=docker', 'fig://icon?type=docker']);
    expect(images.map((item) => item.description),
        ['Docker Image', 'Docker Image']);
  });

  test('docker image post-processor skips blank lines and handles empty output',
      () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final images =
        registry.postProcess(k3dDockerImageGeneratorPostProcessHandler)!(
            'nginx:latest\n\n\n');
    expect(images.map((item) => item.nameSingle), ['nginx:latest']);

    final none =
        registry.postProcess(k3dDockerImageGeneratorPostProcessHandler)!('');
    expect(none, isEmpty);
  });

  test('node post-processor parses NAME ROLE CLUSTER with kubernetes icon', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'k3d-k3s-default-server-0 server k3s-default\n'
        'k3d-k3s-default-agent-0 agent k3s-default\n';

    final nodes =
        registry.postProcess(k3dNodeGeneratorPostProcessHandler)!(output);
    expect(nodes.map((item) => item.nameSingle),
        ['k3d-k3s-default-server-0', 'k3d-k3s-default-agent-0']);
    expect(nodes.map((item) => item.icon),
        ['fig://icon?type=kubernetes', 'fig://icon?type=kubernetes']);
    expect(nodes.map((item) => item.description), [
      'server node of cluster k3s-default',
      'agent node of cluster k3s-default',
    ]);
  });

  test('node post-processor drops malformed lines and empty output', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'k3d-prod-server-0 server\n'
        'stray\n'
        '\n';

    final nodes = registry.postProcess(k3dNodeGeneratorPostProcessHandler)!(output);
    expect(nodes, isEmpty);

    final none = registry.postProcess(k3dNodeGeneratorPostProcessHandler)!('');
    expect(none, isEmpty);
  });

  test('registry post-processor parses NAME CLUSTER', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'myregistry  k3s-default\n'
        'k3d-myregistry  k3s-other\n';

    final registries =
        registry.postProcess(k3dRegistryGeneratorPostProcessHandler)!(output);
    expect(registries.map((item) => item.nameSingle),
        ['myregistry', 'k3d-myregistry']);
    expect(registries.map((item) => item.description), [
      'Registry myregistry of cluster k3s-default',
      'Registry k3d-myregistry of cluster k3s-other',
    ]);
  });

  test('registry post-processor drops truncated lines and empty output', () {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final output = 'myregistry\n'
        'k3d-myregistry k3s-default\n'
        '\n';

    final registries =
        registry.postProcess(k3dRegistryGeneratorPostProcessHandler)!(output);
    expect(registries.map((item) => item.nameSingle), ['k3d-myregistry']);

    final none =
        registry.postProcess(k3dRegistryGeneratorPostProcessHandler)!('');
    expect(none, isEmpty);
  });

  test('cluster generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final adapter = _FakeAdapter({
      'k3d cluster list --no-headers': const ProcessRunResult(
        stdout: 'k3s-default 1 0\n'
            'prod 3 2\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/k3d.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = <FigGenerator>[
      for (final subcommand in spec.subcommands ?? const <FigSubcommand>[])
        ..._collectGenerators(subcommand),
    ];
    final generator = generators.firstWhere((candidate) {
      final script = candidate.script;
      return script is List && script.join(' ') == 'k3d cluster list --no-headers';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'k3d', tokenLength: 3, complete: true),
        CommandToken(token: 'cluster', tokenLength: 7, complete: true),
        CommandToken(token: 'delete', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['k3s-default', 'prod']);
    expect(suggestions.first.description,
        'Cluster with 1 server(s), 0 agent(s)');
  });

  test('docker image generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerK3dHandlers(registry);
    final adapter = _FakeAdapter({
      'docker image ls --format {{.Repository}}:{{.Tag}}': const ProcessRunResult(
        stdout: 'rancher/k3s:v1.27.3-k3s1\n'
            'nginx:latest\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/k3d.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = <FigGenerator>[
      for (final subcommand in spec.subcommands ?? const <FigSubcommand>[])
        ..._collectGenerators(subcommand),
    ];
    final generator = generators.firstWhere((candidate) {
      final script = candidate.script;
      return script is List &&
          script.join(' ') == 'docker image ls --format {{.Repository}}:{{.Tag}}';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'k3d', tokenLength: 3, complete: true),
        CommandToken(token: 'image', tokenLength: 5, complete: true),
        CommandToken(token: 'import', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['rancher/k3s:v1.27.3-k3s1', 'nginx:latest']);
  });
}
