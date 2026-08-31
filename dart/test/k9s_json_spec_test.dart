import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/k9s.dart';
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
  test('k9s JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerK9sHandlers(handlers);
    final source = await File('assets/specs/k/k9s.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(k9sNamespacesPostProcessHandler));
    expect(document['name'], 'k9s');

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
    expect(ids.toSet(), {k9sNamespacesPostProcessHandler});
  });

  test('namespaces post-processor skips the header and takes the first token',
      () {
    final registry = JsonHandlerRegistry();
    registerK9sHandlers(registry);
    final output = 'NAME              STATUS   AGE\n'
        'default           Active   21d\n'
        'kube-system       Active   21d';

    final namespaces =
        registry.postProcess(k9sNamespacesPostProcessHandler)!(output);
    expect(namespaces.map((item) => item.nameSingle ?? ''),
        ['default', 'kube-system']);
    expect(namespaces.first.description, 'Kubernetes namespace');
  });

  test('namespaces post-processor handles empty output and a header-only '
      'output', () {
    final registry = JsonHandlerRegistry();
    registerK9sHandlers(registry);

    final empty =
        registry.postProcess(k9sNamespacesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final headerOnly = registry.postProcess(k9sNamespacesPostProcessHandler)!(
        'NAME              STATUS   AGE');
    expect(headerOnly, isEmpty);
  });

  test('namespaces post-processor keeps trailing empty entries from a '
      'trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerK9sHandlers(registry);

    // The source splits on '\n' and does not drop empty entries, so a trailing
    // newline yields one extra suggestion with an empty name.
    final namespaces =
        registry.postProcess(k9sNamespacesPostProcessHandler)!(
            'NAME   STATUS   AGE\ndefault Active\n');
    expect(namespaces.map((item) => item.nameSingle ?? ''), ['default', '']);
  });

  test('namespaces generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerK9sHandlers(registry);
    final adapter = _FakeAdapter({
      'kubectl get namespaces': const ProcessRunResult(
        stdout: 'NAME              STATUS   AGE\n'
            'default           Active   21d\n'
            'kube-system       Active   21d',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/k9s.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.options!
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'kubectl get namespaces';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'k9s', tokenLength: 3, complete: true),
        CommandToken(token: '--namespace', tokenLength: 12, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['default', 'kube-system']);
  });
}
