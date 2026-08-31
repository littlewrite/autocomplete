import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/dapr.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching option args, positional args, and nested
/// subcommands.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(FigSubcommand subcommand) {
    for (final option in subcommand.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
    }
    for (final arg in subcommand.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    if (subcommand.subcommands != null) {
      for (final nested in subcommand.subcommands!) {
        final found = visit(nested);
        if (found != null) return found;
      }
    }
    return null;
  }

  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visit(subcommand);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('dapr JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerDaprHandlers(handlers);
    final source = await File('assets/specs/d/dapr.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(daprRunningAppsPostProcessHandler));
    expect(source, contains(daprRuntimeVersionsCustomHandler));
    expect(document['name'], 'dapr');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['postProcess', 'custom']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      daprRunningAppsPostProcessHandler,
      daprRuntimeVersionsCustomHandler,
    });
  });

  test('running apps post-processor maps appId with an HTTP port description',
      () {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);
    const output = '[{"appId":"my-app","httpPort":3500,"age":"0s"},'
        '{"appId":"worker","httpPort":3501,"age":"2m"}]';

    final apps =
        registry.postProcess(daprRunningAppsPostProcessHandler)!(output);
    expect(apps.map((item) => item.nameSingle ?? ''),
        ['my-app', 'worker']);
    expect(apps.map((item) => item.description),
        ['HTTP Port: 3500 age: 0s', 'HTTP Port: 3501 age: 2m']);
  });

  test('running apps post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);

    final broken =
        registry.postProcess(daprRunningAppsPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(daprRunningAppsPostProcessHandler)!('');
    expect(empty, isEmpty);

    final objectNotArray =
        registry.postProcess(daprRunningAppsPostProcessHandler)!('{}');
    expect(objectNotArray, isEmpty);

    final badElement =
        registry.postProcess(daprRunningAppsPostProcessHandler)!('[42]');
    expect(badElement, isEmpty);
  });

  test('running apps post-processor preserves a null appId for a missing field',
      () {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);
    const output = '[{"httpPort":3500}]';

    final apps =
        registry.postProcess(daprRunningAppsPostProcessHandler)!(output);
    expect(apps.single.nameSingle, isNull);
    expect(apps.single.description, 'HTTP Port: 3500 age: null');
  });

  test('runtime versions custom handler queries Docker Hub and maps results',
      () async {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);
    final handler = registry.custom(daprRuntimeVersionsCustomHandler)!;

    final versions = await handler(
        ['dapr', 'init', '--runtime-version'], (input) async {
      expect(input.command, 'curl');
      expect(input.args, [
        '-s',
        '-H',
        'Accept: application/json',
        'https://hub.docker.com/v2/namespaces/daprio/repositories/daprd/tags?page_size=100',
      ]);
      return const ExecuteCommandOutput(
        stdout: '{"results":[{"name":"v1.0.0",'
            '"last_updated":"2023-01-01T00:00:00Z"},'
            '{"name":"v1.1.0","last_updated":"2024-02-02T00:00:00Z"}]}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(versions.map((item) => item.nameSingle ?? ''), ['v1.0.0', 'v1.1.0']);
    expect(versions.map((item) => item.description),
        ['Updated: 2023-01-01T00:00:00Z', 'Updated: 2024-02-02T00:00:00Z']);
  });

  test('runtime versions custom handler handles failures', () async {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);
    final handler = registry.custom(daprRuntimeVersionsCustomHandler)!;

    final broken = await handler([], (input) async =>
        const ExecuteCommandOutput(stdout: 'not json', stderr: '', status: 0),
        null);
    expect(broken, isEmpty);

    final nonZero = await handler([], (input) async => const ExecuteCommandOutput(
        stdout: '{"results":[]}', stderr: 'err', status: 1), null);
    expect(nonZero, isEmpty);

    final missingResults = await handler([], (input) async =>
        const ExecuteCommandOutput(stdout: '{"foo":1}', stderr: '', status: 0),
        null);
    expect(missingResults, isEmpty);

    final noCommand = await handler([], null, null);
    expect(noCommand, isEmpty);
  });

  test('each dapr generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDaprHandlers(registry);
    final adapter = _FakeAdapter({
      'dapr list -A -o json': const ProcessRunResult(
        stdout: '[{"appId":"my-app","httpPort":3500,"age":"0s"},'
            '{"appId":"worker","httpPort":3501,"age":"2m"}]',
        stderr: '',
        exitCode: 0,
      ),
      'curl -s -H Accept: application/json https://hub.docker.com/v2/namespaces/daprio/repositories/daprd/tags?page_size=100':
          const ProcessRunResult(
        stdout: '{"results":[{"name":"v1.0.0",'
            '"last_updated":"2023-01-01T00:00:00Z"},'
            '{"name":"v1.1.0","last_updated":"2024-02-02T00:00:00Z"}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/dapr.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final runningApps = generatorByScript(spec, 'dapr list -A -o json');
    expect(runningApps, isNotNull,
        reason: 'no generator for dapr list -A -o json in the parsed spec');
    final apps = await runGeneratorSuggestions(
      runningApps,
      const [
        CommandToken(token: 'dapr', tokenLength: 4, complete: true),
        CommandToken(token: 'annotate', tokenLength: 8, complete: true),
        CommandToken(token: '--app-id', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(apps.map((suggestion) => suggestion.name).toList(),
        ['my-app', 'worker']);

    final init = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('init'));
    final runtimeVersion = init.options!
        .firstWhere((option) => option.nameList.contains('--runtime-version'));
    final versionsGenerator = runtimeVersion.args!.single.generators!.single;
    final versions = await runGeneratorSuggestions(
      versionsGenerator,
      const [
        CommandToken(token: 'dapr', tokenLength: 4, complete: true),
        CommandToken(token: 'init', tokenLength: 4, complete: true),
        CommandToken(token: '--runtime-version', tokenLength: 16, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(versions.map((suggestion) => suggestion.name).toList(),
        ['v1.0.0', 'v1.1.0']);
  });
}
