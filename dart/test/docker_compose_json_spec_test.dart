import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/docker_compose.dart';
import 'package:test/test.dart';

class _ProcessInvocation {
  const _ProcessInvocation(this.executable, this.arguments);

  final String executable;
  final List<String> arguments;
}

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results);

  final Map<String, ProcessRunResult> _results;
  final List<_ProcessInvocation> invocations = [];

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
    invocations
        .add(_ProcessInvocation(executable, List<String>.from(arguments)));
    final key = [executable, ...arguments].join(' ');
    return _results[key] ?? const ProcessRunResult(stdout: '');
  }
}

void main() {
  test('docker-compose JSON uses reviewed declaration-based script handlers',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDockerComposeHandlers(handlers);
    final source =
        await File('assets/specs/d/docker-compose.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(dockerComposeServicesScriptHandler));
    expect(source, contains(dockerComposeProfilesScriptHandler));
    expect(document['name'], 'docker-compose');

    // Every expanded generator path is bound to one of the two declaration IDs.
    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final script = (generator as Map)['script'];
          if (script is Map) {
            ids.add(script['handler'] as String);
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
      dockerComposeServicesScriptHandler,
      dockerComposeProfilesScriptHandler
    });
  });

  test('services script handler keeps the compose prefix and -f files',
      () async {
    final registry = JsonHandlerRegistry();
    registerDockerComposeHandlers(registry);
    final services = registry.script(dockerComposeServicesScriptHandler)!;

    expect(services(['docker-compose', '-f', 'dev.yml', 'up', '']),
        ['docker-compose', '-f', 'dev.yml', 'config', '--services']);
    expect(services(['docker', 'compose', '-f', 'dev.yml', 'up', '']),
        ['docker', 'compose', '-f', 'dev.yml', 'config', '--services']);
    expect(services(['docker', 'compose', 'up', '']),
        ['docker', 'compose', 'config', '--services']);
  });

  test('profiles script handler targets the profiles query', () async {
    final registry = JsonHandlerRegistry();
    registerDockerComposeHandlers(registry);
    final profiles = registry.script(dockerComposeProfilesScriptHandler)!;

    expect(profiles(['docker', 'compose', '-f', 'dev.yml', '--profile', '']),
        ['docker', 'compose', '-f', 'dev.yml', 'config', '--profiles']);
  });

  test('deferred script generator runs through the adapter and splits output',
      () async {
    final registry = JsonHandlerRegistry();
    registerDockerComposeHandlers(registry);
    final adapter = _FakeAdapter({
      'docker-compose -f dev.yml config --services': const ProcessRunResult(
        stdout: 'web\napi\nworker\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/d/docker-compose.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final up = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('up'));
    final generator = up.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'docker-compose', tokenLength: 14, complete: true),
        CommandToken(token: '-f', tokenLength: 2, complete: true),
        CommandToken(token: 'dev.yml', tokenLength: 7, complete: true),
        CommandToken(token: 'up', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(adapter.invocations.single.executable, 'docker-compose');
    expect(adapter.invocations.single.arguments,
        ['-f', 'dev.yml', 'config', '--services']);
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['web', 'api', 'worker']);
  });
}
