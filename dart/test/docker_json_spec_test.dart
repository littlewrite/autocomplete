import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/docker.dart';
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

const _allHandlerIds = {
  dockerRunningContainersCustomHandler,
  dockerAllLocalImagesCustomHandler,
  dockerAllDockerContextsCustomHandler,
  dockerListNetworksCustomHandler,
  dockerListSwarmNodesCustomHandler,
  dockerListPluginsCustomHandler,
  dockerListSecretsCustomHandler,
  dockerListServicesCustomHandler,
  dockerListServicesReplicasCustomHandler,
  dockerListStacksCustomHandler,
  dockerListVolumesCustomHandler,
  dockerInspectContainersPostProcessHandler,
  dockerInspectImagesPostProcessHandler,
  dockerInspectVolumesPostProcessHandler,
};

const _dockerIcon = 'fig://icon?type=docker';

/// Builds an [ExecuteCommandFunction] backed by [_FakeAdapter] so a custom
/// handler can be driven directly with the same keying as the runtime.
ExecuteCommandFunction _executeCommand(_FakeAdapter adapter) {
  return (input) async {
    final result = await adapter.runProcess(input.command, input.args,
        workingDirectory: input.cwd, environment: input.env);
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

void main() {
  test('docker JSON binds every generator to the fourteen declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDockerHandlers(handlers);
    final source = await File('assets/specs/d/docker.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    for (final id in _allHandlerIds) {
      expect(source, contains(id));
    }
    expect(document['name'], 'docker');

    final ids = <String>{};
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          if (generator is! Map) continue;
          if (generator['handler'] is String) {
            ids.add(generator['handler'] as String);
          }
          for (final field in ['custom', 'postProcess', 'script', 'trigger']) {
            final value = generator[field];
            if (value is Map && value['handler'] is String) {
              ids.add(value['handler'] as String);
            }
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids, _allHandlerIds);
  });

  test('inspect containers post-processor maps ps -a JSON to [con] names', () {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    const output = '{"ID":"abc123","Image":"nginx","Names":"web"}\n'
        '{"ID":"def456","Image":"redis","Names":"cache"}';

    final suggestions = registry
        .postProcess(dockerInspectContainersPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['abc123', 'def456']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['[con] abc123 (nginx)', '[con] def456 (redis)']);
  });

  test('inspect images post-processor handles <none> repositories and tags',
      () {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    const output = '{"ID":"img1","Repository":"<none>","Tag":"<none>"}\n'
        '{"ID":"img2","Repository":"library/nginx","Tag":"1.25"}\n'
        '{"ID":"img3","Repository":"library/alpine","Tag":"<none>"}';

    final suggestions =
        registry.postProcess(dockerInspectImagesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['img1', 'img2', 'img3']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['[img] img1', '[img] library/nginx:1.25', '[img] library/alpine']);
  });

  test('inspect volumes post-processor maps volume ls JSON to [vol] names', () {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    const output = '{"Name":"web_data","Driver":"local"}\n'
        '{"Name":"db_data","Driver":"local"}';

    final suggestions =
        registry.postProcess(dockerInspectVolumesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['web_data', 'db_data']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['[vol] web_data', '[vol] db_data']);
  });

  test('post-processors return an empty list on empty or malformed output', () {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    for (final id in [
      dockerInspectContainersPostProcessHandler,
      dockerInspectImagesPostProcessHandler,
      dockerInspectVolumesPostProcessHandler,
    ]) {
      expect(registry.postProcess(id)!(''), isEmpty);
      expect(registry.postProcess(id)!('not json'), isEmpty);
      expect(registry.postProcess(id)!('{"Name":'), isEmpty);
    }
  });

  test('running containers custom handler suggests Names with display name',
      () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker ps --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"aaa","Image":"nginx","Names":"web"}\n'
            '{"ID":"bbb","Image":"postgres","Names":"db"}\n',
        stderr: '',
        exitCode: 0,
      ),
    });
    final handler = registry.custom(dockerRunningContainersCustomHandler)!;
    final suggestions = await handler(
        const ['docker', 'container', 'inspect', ''], _executeCommand(adapter), null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['web', 'db']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['web (nginx)', 'db (postgres)']);
    expect(suggestions.map((item) => item.icon).toList(),
        [_dockerIcon, _dockerIcon]);
  });

  test('all local images custom handler suggests image IDs', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker image ls --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"abc123","Repository":"nginx","Tag":"latest"}\n'
            '{"ID":"def456","Repository":"<none>","Tag":"<none>"}',
        stderr: '',
        exitCode: 0,
      ),
    });
    final handler = registry.custom(dockerAllLocalImagesCustomHandler)!;
    final suggestions = await handler(
        const ['docker', 'create', ''], _executeCommand(adapter), null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['abc123', 'def456']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['nginx - abc123', '<none> - def456']);
  });

  test('all docker contexts custom handler suggests context names', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker context list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"Name":"default","Description":"Current DOCKER_HOST based '
            'configuration","Current":"true"}\n'
            '{"Name":"desktop-linux","Description":"Docker Desktop"}\n',
        stderr: '',
        exitCode: 0,
      ),
    });
    final handler = registry.custom(dockerAllDockerContextsCustomHandler)!;
    final suggestions = await handler(
        const ['docker', 'context', 'use', ''], _executeCommand(adapter), null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['default', 'desktop-linux']);
    expect(suggestions.map((item) => item.description).toList(), [
      'Current DOCKER_HOST based configuration',
      'Docker Desktop',
    ]);
  });

  test('network and plugin and secret lists share the name/ID shape', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker network list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"net1","Name":"bridge"}\n'
            '{"ID":"net2","Name":"host"}',
        stderr: '',
        exitCode: 0,
      ),
      'docker plugin list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"plg1","Name":"local-volume-driver"}',
        stderr: '',
        exitCode: 0,
      ),
      'docker secret list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"sec1","Name":"db_password"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final networks = await registry.custom(dockerListNetworksCustomHandler)!(
        const ['docker', 'network', 'ls', ''], _executeCommand(adapter), null);
    expect(networks.map((item) => item.nameSingle ?? '').toList(),
        ['bridge', 'host']);
    expect(networks.map((item) => item.description).toList(), ['net1', 'net2']);

    final plugins = await registry.custom(dockerListPluginsCustomHandler)!(
        const ['docker', 'plugin', 'ls', ''], _executeCommand(adapter), null);
    expect(plugins.map((item) => item.nameSingle ?? '').toList(),
        ['local-volume-driver']);
    expect(plugins.map((item) => item.description).toList(), ['plg1']);

    final secrets = await registry.custom(dockerListSecretsCustomHandler)!(
        const ['docker', 'secret', 'ls', ''], _executeCommand(adapter), null);
    expect(secrets.map((item) => item.nameSingle ?? '').toList(),
        ['db_password']);
    expect(secrets.map((item) => item.description).toList(), ['sec1']);
  });

  test('swarm node list custom handler suggests ID - Hostname with status',
      () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker node list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"node1","Hostname":"manager-1","Status":"Ready"}',
        stderr: '',
        exitCode: 0,
      ),
    });
    final handler = registry.custom(dockerListSwarmNodesCustomHandler)!;
    final suggestions = await handler(
        const ['docker', 'node', 'ls', ''], _executeCommand(adapter), null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['node1']);
    expect(suggestions.map((item) => item.displayName).toList(),
        ['node1 - manager-1']);
    expect(suggestions.map((item) => item.description).toList(), ['Ready']);
  });

  test('service list custom handlers suggest names and replicas', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker service list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"svc1","Name":"web","Image":"nginx"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final services = await registry.custom(dockerListServicesCustomHandler)!(
        const ['docker', 'service', 'ls', ''], _executeCommand(adapter), null);
    expect(services.map((item) => item.nameSingle ?? '').toList(), ['web']);
    expect(services.map((item) => item.description).toList(), ['nginx']);

    final replicas = await registry.custom(dockerListServicesReplicasCustomHandler)!(
        const ['docker', 'service', 'scale', ''], _executeCommand(adapter), null);
    expect(replicas.map((item) => item.nameSingle ?? '').toList(), ['web=']);
    expect(replicas.map((item) => item.description).toList(), ['nginx']);
  });

  test('stack and volume list custom handlers suggest names', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker stack list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"Name":"wordpress","Services":"2"}',
        stderr: '',
        exitCode: 0,
      ),
      'docker volume list --format {{ json . }}': const ProcessRunResult(
        stdout: '{"Name":"web_data"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final stacks = await registry.custom(dockerListStacksCustomHandler)!(
        const ['docker', 'stack', 'deploy', ''], _executeCommand(adapter), null);
    expect(stacks.map((item) => item.nameSingle ?? '').toList(), ['wordpress']);

    final volumes = await registry.custom(dockerListVolumesCustomHandler)!(
        const ['docker', 'volume', 'rm', ''], _executeCommand(adapter), null);
    expect(volumes.map((item) => item.nameSingle ?? '').toList(), ['web_data']);
  });

  test('custom handlers return an empty list on a non-zero status', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker ps --format {{ json . }}': const ProcessRunResult(
        stdout: '',
        stderr: 'Cannot connect to the Docker daemon',
        exitCode: 1,
      ),
    });
    final suggestions = await registry.custom(dockerRunningContainersCustomHandler)!(
        const ['docker', 'ps', ''], _executeCommand(adapter), null);
    expect(suggestions, isEmpty);
  });

  test('custom handlers return an empty list without executeCommand', () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    for (final id in [
      dockerRunningContainersCustomHandler,
      dockerAllLocalImagesCustomHandler,
      dockerListVolumesCustomHandler,
    ]) {
      final suggestions =
          await registry.custom(id)!(const [], null, null);
      expect(suggestions, isEmpty);
    }
  });

  test('running containers generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerDockerHandlers(registry);
    final adapter = _FakeAdapter({
      'docker ps --format {{ json . }}': const ProcessRunResult(
        stdout: '{"ID":"aaa","Image":"nginx","Names":"web"}\n'
            '{"ID":"bbb","Image":"redis","Names":"cache"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/docker.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final container = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('container'));
    final inspect = container.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('inspect'));
    final generator = inspect.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'docker', tokenLength: 6, complete: true),
        CommandToken(token: 'container', tokenLength: 9, complete: true),
        CommandToken(token: 'inspect', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['web', 'cache']);
  });
}
