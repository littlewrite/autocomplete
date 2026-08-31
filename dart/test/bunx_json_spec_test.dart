import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bunx.dart';
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
  const script =
      r"until [[ -d node_modules/ ]] || [[ $PWD = '/' ]]; do cd ..; done; ls -1 node_modules/.bin/`";

  test('bunx JSON binds the generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerBunxHandlers(handlers);
    final source = await File('assets/specs/b/bunx.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(bunxPostProcessHandler));
    expect(document['name'], 'bunx');

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
    expect(ids.toSet(), {bunxPostProcessHandler});
  });

  test('post-processor keeps non-npx bins with icon and loadSpec', () {
    final registry = JsonHandlerRegistry();
    registerBunxHandlers(registry);
    const output = 'my-tool\neslint\nsomecli\n';

    final suggestions = registry.postProcess(bunxPostProcessHandler)!(output);
    expect(suggestions.map((s) => s.nameSingle ?? ''),
        ['my-tool', 'somecli']);
    expect(suggestions.first.icon, 'fig://icon?type=command');
    expect(suggestions.first.loadSpec, 'my-tool');
  });

  test('post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerBunxHandlers(registry);
    expect(registry.postProcess(bunxPostProcessHandler)!(''), isEmpty);
  });

  test('post-processor drops every npx-known bin', () {
    final registry = JsonHandlerRegistry();
    registerBunxHandlers(registry);
    expect(
        registry.postProcess(bunxPostProcessHandler)!('eslint\nvite\n'),
        isEmpty);
  });

  test('bunx generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerBunxHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $script': const ProcessRunResult(
        stdout: 'my-tool\neslint\nsomecli\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bunx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
      final candidateScript = candidate.script;
      return candidateScript is List &&
          candidateScript.join(' ') == 'bash -c $script';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bunx', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-tool', 'somecli']);
  });
}
