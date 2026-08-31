import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kubens.dart';
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

/// Returns the first generator on the root args whose static script (joined)
/// matches [scriptCommand].
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final arg in spec.args ?? const <FigArg>[]) {
    for (final generator in arg.generatorsList) {
      final script = generator.script;
      if (script is List && script.join(' ') == scriptCommand) {
        return generator;
      }
    }
  }
  return null;
}

void main() {
  test('kubens JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKubensHandlers(handlers);
    final source = await File('assets/specs/k/kubens.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(kubensNamespacesPostProcessHandler));
    expect(source, contains(kubensCurrentNamespacePostProcessHandler));
    expect(document['name'], 'kubens');

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
      kubensNamespacesPostProcessHandler,
      kubensCurrentNamespacePostProcessHandler,
    });
  });

  test('namespaces post-processor maps each line with the kubernetes icon', () {
    final registry = JsonHandlerRegistry();
    registerKubensHandlers(registry);
    const output = 'default\nkube-system\nkubectl-node-1\n';

    final namespaces =
        registry.postProcess(kubensNamespacesPostProcessHandler)!(output);
    expect(namespaces.map((item) => item.nameSingle ?? ''),
        ['default', 'kube-system', 'kubectl-node-1']);
    expect(namespaces.map((item) => item.priority), [90, 90, 90]);
    expect(namespaces.map((item) => item.icon),
        ['fig://icon?type=kubernetes', 'fig://icon?type=kubernetes',
            'fig://icon?type=kubernetes']);
  });

  test('namespaces post-processor ignores blank lines and empty output', () {
    final registry = JsonHandlerRegistry();
    registerKubensHandlers(registry);

    final empty =
        registry.postProcess(kubensNamespacesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final blank =
        registry.postProcess(kubensNamespacesPostProcessHandler)!('\n\n');
    expect(blank, isEmpty);

    final mixed =
        registry.postProcess(kubensNamespacesPostProcessHandler)!(
            'default\n\nkube-system');
    expect(mixed.map((item) => item.nameSingle ?? ''), ['default', 'kube-system']);
  });

  test('current-namespace post-processor returns the single name', () {
    final registry = JsonHandlerRegistry();
    registerKubensHandlers(registry);
    const output = 'kube-system\n';

    final current =
        registry.postProcess(kubensCurrentNamespacePostProcessHandler)!(output);
    expect(current, hasLength(1));
    expect(current.single.nameSingle ?? '', 'kube-system');
    expect(current.single.priority, 100);
    expect(current.single.icon, '⭐️');
  });

  test('current-namespace post-processor returns empty for blank output', () {
    final registry = JsonHandlerRegistry();
    registerKubensHandlers(registry);

    final empty =
        registry.postProcess(kubensCurrentNamespacePostProcessHandler)!('');
    expect(empty, isEmpty);

    final whitespace =
        registry.postProcess(kubensCurrentNamespacePostProcessHandler)!('  \n');
    expect(whitespace, isEmpty);
  });

  test('kubens generators run through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKubensHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c kubens | grep -v \$(kubens -c)': const ProcessRunResult(
        stdout: 'default\nkube-system\nkubectl-node-1\n',
        stderr: '',
        exitCode: 0,
      ),
      'kubens -c': const ProcessRunResult(
        stdout: 'default\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kubens.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'kubens', tokenLength: 6, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('bash -c kubens | grep -v \$(kubens -c)',
        ['default', 'kube-system', 'kubectl-node-1']);
    await runGenerator('kubens -c', ['default']);
  });
}
