import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bosh.dart';
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
  test('bosh JSON binds every handler to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerBoshHandlers(handlers);
    final source = await File('assets/specs/b/bosh.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(boshParallelSuggestionsHandler));
    expect(source, contains(boshDeploymentsPostProcessHandler));
    expect(document['name'], 'bosh');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final suggestions = node['suggestions'];
      if (suggestions is Map && suggestions['handler'] is String) {
        ids.add(suggestions['handler'] as String);
      }
      final postProcess = node['postProcess'];
      if (postProcess is Map && postProcess['handler'] is String) {
        ids.add(postProcess['handler'] as String);
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
    expect(ids.toSet(), {
      boshParallelSuggestionsHandler,
      boshDeploymentsPostProcessHandler,
    });
  });

  test('parallel suggestions custom handler yields whole numbers 1 to 20',
      () async {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);

    final suggestions = await registry.custom(boshParallelSuggestionsHandler)!(
        const ['bosh', '--parallel'], null, null);
    expect(suggestions.length, 20);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        List.generate(20, (i) => '${i + 1}'));
  });

  test('deployments post-processor parses Tables.Rows into suggestions', () {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);
    final output = jsonEncode({
      'Tables': [
        {
          'Rows': [
            {'name': 'dev', 'cloud_type': 'aws'},
            {'name': 'prod', 'cloud_type': 'gcp'},
          ],
        },
      ],
    });

    final deployments =
        registry.postProcess(boshDeploymentsPostProcessHandler)!(output);
    expect(deployments.map((item) => item.nameSingle ?? '').toList(),
        ['dev', 'prod']);
    expect(deployments.first.description, 'Deployment');
  });

  test('deployments post-processor returns empty for fatal error output', () {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);

    final deployments = registry
        .postProcess(boshDeploymentsPostProcessHandler)!('fatal: bosh error');
    expect(deployments, isEmpty);
  });

  test('deployments post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);

    final deployments =
        registry.postProcess(boshDeploymentsPostProcessHandler)!('');
    expect(deployments, isEmpty);
  });

  test('deployments post-processor returns empty for unparseable output', () {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);

    final deployments =
        registry.postProcess(boshDeploymentsPostProcessHandler)!('not json');
    expect(deployments, isEmpty);
  });

  test('deployments post-processor returns empty when Tables is empty', () {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);
    final output = jsonEncode({'Tables': <dynamic>[]});

    final deployments =
        registry.postProcess(boshDeploymentsPostProcessHandler)!(output);
    expect(deployments, isEmpty);
  });

  test('--deployment generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);
    final adapter = _FakeAdapter({
      'bosh --json deployments': const ProcessRunResult(
        stdout:
            '{"Tables":[{"Rows":[{"name":"dev"},{"name":"prod"}]}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bosh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.options!
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'bosh --json deployments';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bosh', tokenLength: 4, complete: true),
        CommandToken(token: 'deploy', tokenLength: 6, complete: true),
        CommandToken(token: '--deployment', tokenLength: 12, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['dev', 'prod']);
  });

  test('--parallel custom generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerBoshHandlers(registry);

    final source = await File('assets/specs/b/bosh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final parallelOption = spec.options!
        .firstWhere((option) => option.nameList.contains('--parallel'));
    final generator = parallelOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bosh', tokenLength: 4, complete: true),
        CommandToken(token: '--parallel', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      _FakeAdapter({}),
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(),
        List.generate(20, (i) => '${i + 1}'));
  });
}
