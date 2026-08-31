import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kind.dart';
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

/// Recursively collects every generator referenced by [spec] (from option and
/// positional argument generators across all subcommand levels).
List<FigGenerator> _collectGenerators(FigSpec spec) {
  final generators = <FigGenerator>[];

  void fromArgList(List<FigArg>? args) {
    if (args == null) return;
    for (final arg in args) {
      generators.addAll(arg.generatorsList);
    }
  }

  void walkSubcommand(FigSubcommand sub) {
    for (final child in sub.subcommands ?? const <FigSubcommand>[]) {
      walkSubcommand(child);
    }
    for (final option in sub.options ?? const <FigOption>[]) {
      fromArgList(option.args);
    }
    fromArgList(sub.args);
  }

  for (final sub in spec.subcommands ?? const <FigSubcommand>[]) {
    walkSubcommand(sub);
  }
  for (final option in spec.options ?? const <FigOption>[]) {
    fromArgList(option.args);
  }
  fromArgList(spec.args);
  return generators;
}

void main() {
  test('kind JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerKindHandlers(handlers);
    final source = await File('assets/specs/k/kind.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(kindClusterGeneratorPostProcessHandler));
    expect(source, contains(kindNodeGeneratorPostProcessHandler));
    expect(document['name'], 'kind');

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
      kindClusterGeneratorPostProcessHandler,
      kindNodeGeneratorPostProcessHandler,
    });
  });

  test('cluster post-processor maps each line to a Cluster suggestion', () {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);
    const output = 'kind-cluster-a\n'
        'kind-cluster-b\n'
        'kind-cluster-c';

    final clusters =
        registry.postProcess(kindClusterGeneratorPostProcessHandler)!(output);
    expect(clusters.map((item) => item.nameSingle ?? ''), [
      'kind-cluster-a',
      'kind-cluster-b',
      'kind-cluster-c',
    ]);
    expect(clusters.map((item) => item.description),
        ['Cluster', 'Cluster', 'Cluster']);
  });

  test('node post-processor maps each line to a Node suggestion', () {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);
    const output = 'kind-worker\n'
        'kind-worker2\n'
        'kind-control-plane';

    final nodes = registry.postProcess(kindNodeGeneratorPostProcessHandler)!(output);
    expect(nodes.map((item) => item.nameSingle ?? ''), [
      'kind-worker',
      'kind-worker2',
      'kind-control-plane',
    ]);
    expect(nodes.map((item) => item.description), ['Node', 'Node', 'Node']);
  });

  test('cluster post-processor mirrors JS split semantics', () {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);

    final empty =
        registry.postProcess(kindClusterGeneratorPostProcessHandler)!('');
    expect(empty.map((item) => item.nameSingle ?? ''), ['']);

    final trailing = registry
        .postProcess(kindClusterGeneratorPostProcessHandler)!('a\nb\n');
    expect(trailing.map((item) => item.nameSingle ?? ''), ['a', 'b', '']);
  });

  test('node post-processor mirrors JS split semantics', () {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);

    final empty = registry.postProcess(kindNodeGeneratorPostProcessHandler)!('');
    expect(empty.map((item) => item.nameSingle ?? ''), ['']);

    final trailing =
        registry.postProcess(kindNodeGeneratorPostProcessHandler)!('x\ny\n');
    expect(trailing.map((item) => item.nameSingle ?? ''), ['x', 'y', '']);
  });

  test('cluster generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);
    final adapter = _FakeAdapter({
      'kind get clusters': const ProcessRunResult(
        stdout: 'kind-cluster-a\n'
            'kind-cluster-b',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kind.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _collectGenerators(spec).firstWhere((candidate) {
      final script = candidate.script;
      return script is List && script.join(' ') == 'kind get clusters';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kind', tokenLength: 4, complete: true),
        CommandToken(token: 'delete', tokenLength: 6, complete: true),
        CommandToken(token: 'cluster', tokenLength: 7, complete: true),
        CommandToken(token: '--name', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['kind-cluster-a', 'kind-cluster-b']);
  });

  test('node generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKindHandlers(registry);
    final adapter = _FakeAdapter({
      'kind get nodes -A': const ProcessRunResult(
        stdout: 'kind-worker\n'
            'kind-control-plane',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kind.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _collectGenerators(spec).firstWhere((candidate) {
      final script = candidate.script;
      return script is List && script.join(' ') == 'kind get nodes -A';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kind', tokenLength: 4, complete: true),
        CommandToken(token: 'load', tokenLength: 4, complete: true),
        CommandToken(token: 'docker-image', tokenLength: 12, complete: true),
        CommandToken(token: '--nodes', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['kind-worker', 'kind-control-plane']);
  });
}
