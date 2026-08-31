import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/tsh.dart';
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
  test('tsh JSON binds every generator to the three declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerTshHandlers(handlers);
    final source = await File('assets/specs/t/tsh.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(tshSshNodesPostProcessHandler));
    expect(source, contains(tshClustersPostProcessHandler));
    expect(source, contains(tshActiveUserPostProcessHandler));
    expect(document['name'], 'tsh');

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
      tshSshNodesPostProcessHandler,
      tshClustersPostProcessHandler,
      tshActiveUserPostProcessHandler,
    });
  });

  test('ssh nodes post-processor maps hostname and access expiry', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    const output = '[{"spec":{"hostname":"node-a"},'
        '"metadata":{"expires":"2024-01-01T00:00:00Z"}},'
        '{"spec":{"hostname":"node-b"},'
        '"metadata":{"expires":"2024-02-02T00:00:00Z"}}]';

    final nodes = registry.postProcess(tshSshNodesPostProcessHandler)!(output);
    expect(nodes.map((item) => item.nameSingle), ['node-a', 'node-b']);
    expect(nodes.map((item) => item.description), [
      'Access expires: 2024-01-01T00:00:00Z',
      'Access expires: 2024-02-02T00:00:00Z',
    ]);
  });

  test('ssh nodes post-processor survives missing fields and bad JSON', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    const partial = '[{"spec":{"hostname":"node-a"}},'
        '{"metadata":{"expires":"2024-01-01"}},'
        '{"spec":{"hostname":42}}]';
    final nodes = registry.postProcess(tshSshNodesPostProcessHandler)!(partial);
    expect(nodes.length, 3);
    expect(nodes.map((item) => item.nameSingle), ['node-a', '', '42']);
    expect(nodes.map((item) => item.description), [
      'Access expires: ',
      'Access expires: 2024-01-01',
      'Access expires: ',
    ]);

    expect(
        registry.postProcess(tshSshNodesPostProcessHandler)!('not json'),
        isEmpty);
    expect(registry.postProcess(tshSshNodesPostProcessHandler)!(''), isEmpty);
  });

  test('clusters post-processor maps cluster_name', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    const output =
        '[{"cluster_name":"cluster-a"},{"cluster_name":"cluster-b"}]';
    final clusters =
        registry.postProcess(tshClustersPostProcessHandler)!(output);
    expect(
        clusters.map((item) => item.nameSingle), ['cluster-a', 'cluster-b']);
  });

  test('clusters post-processor tolerates bad JSON and empty lists', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    expect(
        registry.postProcess(tshClustersPostProcessHandler)!('not json'),
        isEmpty);
    expect(registry.postProcess(tshClustersPostProcessHandler)!('[]'), isEmpty);
    const partial = '[{"name":"no-cluster-name"}]';
    expect(registry.postProcess(tshClustersPostProcessHandler)!(partial)
            .single
            .nameSingle,
        '');
  });

  test('active user post-processor extracts the proxy username', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    const output = '{"active":{"username":"alice","cluster":"default"}}';
    final users =
        registry.postProcess(tshActiveUserPostProcessHandler)!(output);
    expect(users.single.nameSingle, 'alice');
  });

  test('active user post-processor returns empty for bad or missing data', () {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    expect(
        registry.postProcess(tshActiveUserPostProcessHandler)!('not json'),
        isEmpty);
    expect(registry.postProcess(tshActiveUserPostProcessHandler)!('{}'), isEmpty);
    const noActive = '{"proxy":"tele.example.com"}';
    expect(registry.postProcess(tshActiveUserPostProcessHandler)!(noActive),
        isEmpty);
    const noUsername = '{"active":{"cluster":"default"}}';
    expect(registry.postProcess(tshActiveUserPostProcessHandler)!(noUsername),
        isEmpty);
  });

  test('ssh generator runs tsh ls through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    final adapter = _FakeAdapter({
      'tsh ls --format=json': const ProcessRunResult(
        stdout: '[{"spec":{"hostname":"node-a"},'
            '"metadata":{"expires":"2024-01-01"}},'
            '{"spec":{"hostname":"node-b"},'
            '"metadata":{"expires":"2024-02-02"}}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tsh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final ssh = spec.subcommands!.firstWhere((s) => s.nameList.contains('ssh'));
    final generator = ssh.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tsh', tokenLength: 3, complete: true),
        CommandToken(token: 'ssh', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['node-a', 'node-b']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Access expires: 2024-01-01', 'Access expires: 2024-02-02']);
  });

  test('proxy option generator runs tsh clusters through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    final adapter = _FakeAdapter({
      'tsh clusters --format=json': const ProcessRunResult(
        stdout:
            '[{"cluster_name":"cluster-a"},{"cluster_name":"cluster-b"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tsh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final proxy = spec.options!
        .firstWhere((option) => option.nameList.contains('--proxy'));
    final generator = proxy.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tsh', tokenLength: 3, complete: true),
        CommandToken(token: '--proxy', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['cluster-a', 'cluster-b']);
  });

  test('user option generator runs tsh status through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerTshHandlers(registry);
    final adapter = _FakeAdapter({
      'tsh status --format json': const ProcessRunResult(
        stdout: '{"active":{"username":"alice","cluster":"default"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tsh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final user = spec.options!
        .firstWhere((option) => option.nameList.contains('--user'));
    final generator = user.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tsh', tokenLength: 3, complete: true),
        CommandToken(token: '--user', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), ['alice']);
  });
}
