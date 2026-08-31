import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/podman.dart';
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

void main() {
  test('podman JSON binds every generator reference to the eight handler IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPodmanHandlers(handlers);
    final source = await File('assets/specs/p/podman.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'podman');

    final ids = <String>[];
    void collect(dynamic node) {
      if (node is Map) {
        final handler = node['handler'];
        if (handler is String) ids.add(handler);
        for (final value in node.values) {
          if (value is Map || value is List) collect(value);
        }
      } else if (node is List) {
        for (final item in node) {
          if (item is Map || item is List) collect(item);
        }
      }
    }

    collect(document);
    expect(ids.toSet(), {
      podmanRunningContainersCustomHandler,
      podmanAllLocalImagesCustomHandler,
      podmanListDockerNetworksCustomHandler,
      podmanListDockerSecretsCustomHandler,
      podmanListDockerVolumesCustomHandler,
      podmanInspectContainersPostProcessHandler,
      podmanInspectImagesPostProcessHandler,
      podmanInspectVolumesPostProcessHandler,
    });
    expect(source, contains(podmanRunningContainersCustomHandler));
    expect(source, contains(podmanInspectContainersPostProcessHandler));
    expect(source, contains(podmanInspectImagesPostProcessHandler));
    expect(source, contains(podmanInspectVolumesPostProcessHandler));

    // Every referenced id resolves to a registered handler.
    for (final id in ids.toSet()) {
      expect(handlers.custom(id) ?? handlers.postProcess(id), isNotNull,
          reason: 'no handler registered for $id');
    }
  });

  test('running containers custom handler parses podman ps json output', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanRunningContainersCustomHandler)!;

    final suggestions = await handler(['podman', 'ps', ''], (input) async {
      expect(input.command, 'podman');
      expect(input.args, ['ps', '--format', '{{ json . }}']);
      return const ExecuteCommandOutput(
        stdout: '{"Names":"hungry_archimedes","Image":"nginx:latest"}\n'
            '{"Names":"lucid_morse","Image":"postgres:15"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((item) => item.nameSingle),
        ['hungry_archimedes', 'lucid_morse']);
    expect(suggestions.first.displayName, 'hungry_archimedes (nginx:latest)');
    expect(suggestions.first.icon, 'fig://icon?type=docker');
  });

  test('running containers skips malformed lines but keeps the valid ones',
      () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanRunningContainersCustomHandler)!;

    final suggestions = await handler(['podman', 'ps', ''], (input) async {
      return const ExecuteCommandOutput(
        stdout: '{"Names":"first","Image":"img"}\nnot json\n'
            '{"Names":"second","Image":"img2"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((item) => item.nameSingle), ['first', 'second']);
  });

  test('running containers returns empty on non-zero status', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanRunningContainersCustomHandler)!;

    final suggestions = await handler(['podman', 'ps', ''], (input) async {
      return const ExecuteCommandOutput(
        stdout: '{"Names":"x","Image":"y"}',
        stderr: 'boom',
        status: 1,
      );
    }, null);

    expect(suggestions, isEmpty);
  });

  test('running containers returns empty when executeCommand is unavailable',
      () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanRunningContainersCustomHandler)!;
    expect(await handler(['podman', 'ps', ''], null, null), isEmpty);
  });

  test('all local images custom handler names suggestions by image id',
      () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanAllLocalImagesCustomHandler)!;

    final suggestions = await handler(['podman', 'image', 'ls', ''], (input) async {
      expect(input.command, 'podman');
      expect(input.args, ['image', 'ls', '--format', '{{ json . }}']);
      return const ExecuteCommandOutput(
        stdout: '{"Id":"abc123","repository":"nginx"}\n'
            '{"Id":"def456","repository":"postgres"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((item) => item.nameSingle), ['abc123', 'def456']);
    expect(suggestions.first.displayName, 'nginx - abc123');
    expect(suggestions.first.icon, 'fig://icon?type=docker');
  });

  test('list docker networks falls back from name/id to Name/ID', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanListDockerNetworksCustomHandler)!;

    final suggestions = await handler(['podman', 'network', 'list', ''], (input) async {
      expect(input.args, ['network', 'list', '--format', '{{ json . }}']);
      return const ExecuteCommandOutput(
        stdout: '{"name":"bridge","id":"net-1"}\n'
            '{"Name":"host","ID":"net-2"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((item) => item.nameSingle), ['bridge', 'host']);
    expect(suggestions.map((item) => item.description), ['net-1', 'net-2']);
    expect(suggestions.first.icon, 'fig://icon?type=docker');
  });

  test('list docker secrets shares the network post-processor', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanListDockerSecretsCustomHandler)!;

    final suggestions = await handler(['podman', 'secret', 'list', ''], (input) async {
      expect(input.args, ['secret', 'list', '--format', '{{ json . }}']);
      return const ExecuteCommandOutput(
        stdout: '{"name":"tls-cert","id":"sec-1"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.map((item) => item.nameSingle), ['tls-cert']);
    expect(suggestions.single.description, 'sec-1');
    expect(suggestions.single.icon, 'fig://icon?type=docker');
  });

  test('list docker volumes names suggestions by volume name', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final handler = registry.custom(podmanListDockerVolumesCustomHandler)!;

    final suggestions = await handler(['podman', 'volume', 'list', ''], (input) async {
      expect(input.args, ['volume', 'list', '--format', '{{ json . }}']);
      return const ExecuteCommandOutput(
        stdout: '{"Name":"myvol"}',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(suggestions.single.nameSingle, 'myvol');
    expect(suggestions.single.icon, 'fig://icon?type=docker');
  });

  test('strict custom handlers return empty on malformed output', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);

    Future<List<dynamic>> run(
        String id, List<String> args, String stdout) async {
      final handler = registry.custom(id)!;
      return handler(args, (input) async => ExecuteCommandOutput(
            stdout: stdout,
            stderr: '',
            status: 0,
          ), null);
    }

    final networks = await run(podmanListDockerNetworksCustomHandler,
        ['podman', 'network', 'list', ''], 'not json');
    final images = await run(podmanAllLocalImagesCustomHandler,
        ['podman', 'image', 'ls', ''], 'not json');
    final volumes = await run(podmanListDockerVolumesCustomHandler,
        ['podman', 'volume', 'list', ''], 'not json');
    expect(networks, isEmpty);
    expect(images, isEmpty);
    expect(volumes, isEmpty);
  });

  test('inspect container post-processor formats [con] entries', () {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final output = '{"Id":"abc123","Image":"nginx:latest"}\n'
        '{"Id":"def456","Image":"postgres:15"}';

    final suggestions =
        registry.postProcess(podmanInspectContainersPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle), ['abc123', 'def456']);
    expect(suggestions.first.displayName, '[con] abc123 (nginx:latest)');
  });

  test('inspect images post-processor builds tagged and untagged displays',
      () {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final output = '{"ID":"img-1","repository":"nginx","Tag":"latest",'
        '"tag":"latest","Id":"sha256:aaa"}\n'
        '{"ID":"img-2","repository":"alpine","Tag":"<none>",'
        '"Id":"sha256:bbb"}\n'
        '{"ID":"img-3","repository":"<none>","Id":"sha256:ccc"}';

    final suggestions =
        registry.postProcess(podmanInspectImagesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle),
        ['img-1', 'img-2', 'img-3']);
    expect(suggestions.map((item) => item.displayName),
        ['[img] nginx:latest', '[img] alpine', '[img] sha256:ccc']);
  });

  test('inspect volumes post-processor formats [vol] entries', () {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final output = '{"Name":"vol-a"}\n{"Name":"vol-b"}';

    final suggestions =
        registry.postProcess(podmanInspectVolumesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle), ['vol-a', 'vol-b']);
    expect(suggestions.first.displayName, '[vol] vol-a');
  });

  test('inspect post-processors return empty on empty or malformed output',
      () {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final containers = registry.postProcess(podmanInspectContainersPostProcessHandler)!;
    final images = registry.postProcess(podmanInspectImagesPostProcessHandler)!;
    final volumes = registry.postProcess(podmanInspectVolumesPostProcessHandler)!;

    expect(containers(''), isEmpty);
    expect(images(''), isEmpty);
    expect(volumes(''), isEmpty);
    expect(containers('not json'), isEmpty);
    expect(images('not json'), isEmpty);
    expect(volumes('not json'), isEmpty);
  });

  test('container inspect generator runs podman ps through the adapter end to '
      'end', () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final adapter = _FakeAdapter({
      'podman ps --format {{ json . }}': const ProcessRunResult(
        stdout: '{"Names":"hungry_archimedes","Image":"nginx:latest"}\n'
            '{"Names":"lucid_morse","Image":"postgres:15"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/podman.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final container =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('container'));
    final inspect =
        container.subcommands!.firstWhere((s) => s.nameList.contains('inspect'));
    final generator = inspect.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'podman', tokenLength: 6, complete: true),
        CommandToken(token: 'container', tokenLength: 9, complete: true),
        CommandToken(token: 'inspect', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['hungry_archimedes', 'lucid_morse']);
  });

  test('inspect generator runs podman ps -a through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPodmanHandlers(registry);
    final adapter = _FakeAdapter({
      'podman ps -a --format {{ json . }}': const ProcessRunResult(
        stdout: '{"Id":"abc123","Image":"nginx:latest"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/podman.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final inspect =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('inspect'));
    final generator = inspect.args!.single.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'podman', tokenLength: 6, complete: true),
        CommandToken(token: 'inspect', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['abc123']);
  });
}
