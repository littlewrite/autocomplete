import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/env.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.envs = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> envs;

  @override
  Map<String, String> getEnvs() => envs;

  @override
  String? getEnv(String envKey) => envs[envKey];

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

FigGeneratorContext _contextWith(CompleteAdapter adapter) {
  return FigGeneratorContext(
    currentWorkingDirectory: '/work',
    adapter: adapter,
  );
}

void main() {
  test('env JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerEnvHandlers(handlers);
    final source = await File('assets/specs/e/env.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(envEnvironmentVariablesCustomHandler));
    expect(document['name'], 'env');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) {
            ids.add(custom['handler'] as String);
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
    expect(ids.toSet(), {envEnvironmentVariablesCustomHandler});
  });

  test('environment-variable custom generator suggests the env values',
      () async {
    final registry = JsonHandlerRegistry();
    registerEnvHandlers(registry);
    final handler = registry.custom(envEnvironmentVariablesCustomHandler)!;
    final adapter = _FakeAdapter(
      const {},
      envs: {'PATH': '/usr/bin:/bin', 'HOME': '/root'},
    );

    final suggestions =
        await handler(const ['env', '-u'], null, _contextWith(adapter));

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['/usr/bin:/bin', '/root']);
    expect(suggestions.map((item) => item.description),
        ['Environment variable', 'Environment variable']);
    expect(suggestions.map((item) => item.icon), ['🌎', '🌎']);
  });

  test('environment-variable custom generator is empty for an empty env',
      () async {
    final registry = JsonHandlerRegistry();
    registerEnvHandlers(registry);
    final handler = registry.custom(envEnvironmentVariablesCustomHandler)!;
    final adapter = _FakeAdapter(const {});

    final suggestions =
        await handler(const ['env', '-u'], null, _contextWith(adapter));

    expect(suggestions, isEmpty);
  });

  test('environment-variable custom generator is empty without a context',
      () async {
    final registry = JsonHandlerRegistry();
    registerEnvHandlers(registry);
    final handler = registry.custom(envEnvironmentVariablesCustomHandler)!;

    expect(await handler(const ['env', '-u'], null, null), isEmpty);
  });

  test('env -u generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEnvHandlers(registry);
    final adapter = _FakeAdapter(
      const {},
      envs: {
        'PATH': '/usr/bin:/bin',
        'HOME': '/root',
        'SHELL': '/bin/zsh',
      },
    );

    final source = await File('assets/specs/e/env.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final uOption =
        spec.options!.firstWhere((option) => option.nameList.contains('-u'));
    final generator = uOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'env', tokenLength: 3, complete: true),
        CommandToken(token: '-u', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['/usr/bin:/bin', '/root', '/bin/zsh']);
    expect(suggestions.map((suggestion) => suggestion.icon).toList(),
        ['🌎', '🌎', '🌎']);
  });
}
