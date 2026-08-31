import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/vite.dart';
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
  test('vite JSON binds every postProcess to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerViteHandlers(handlers);
    final source = await File('assets/specs/v/vite.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(viteEnvModePostProcessHandler));
    expect(document['name'], 'vite');

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
    expect(ids.toSet(), {viteEnvModePostProcessHandler});
  });

  test('env-mode post-processor keeps only .env.* entries', () {
    final registry = JsonHandlerRegistry();
    registerViteHandlers(registry);
    final output = '.env\n'
        '.env.local\n'
        '.env.development\n'
        '.env.production\n'
        'src\n'
        'vite.config.ts\n';

    final suggestions =
        registry.postProcess(viteEnvModePostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['.env.local', '.env.development', '.env.production']);
  });

  test('env-mode post-processor yields nothing on empty output', () {
    final registry = JsonHandlerRegistry();
    registerViteHandlers(registry);
    expect(registry.postProcess(viteEnvModePostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(viteEnvModePostProcessHandler)!('\n'), isEmpty);
  });

  test('vite --mode generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerViteHandlers(registry);
    final adapter = _FakeAdapter({
      'ls -l1A': const ProcessRunResult(
        stdout: '.env\n'
            '.env.local\n'
            '.env.development\n'
            '.env.production\n'
            'src\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/v/vite.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final option = spec.options!.firstWhere((opt) => opt.nameList.contains('-m'));
    final generator = option.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'ls -l1A';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'vite', tokenLength: 4, complete: true),
        CommandToken(token: '-m', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['.env.local', '.env.development', '.env.production']);
  });
}
