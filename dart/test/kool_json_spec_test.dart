import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kool.dart';
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
  test('kool JSON binds the run generator to the script post-processor',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKoolHandlers(handlers);
    final source = await File('assets/specs/k/kool.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(koolScriptsPostProcessHandler));
    expect(document['name'], 'kool');

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
    expect(ids.toSet(), {koolScriptsPostProcessHandler});
  });

  test(
      'scripts post-processor lists scripts below the Available Scripts header',
      () {
    final registry = JsonHandlerRegistry();
    registerKoolHandlers(registry);
    final output = 'Kool help text...\n'
        '\n'
        'Available Scripts:\n'
        '  build\n'
        '  test\n'
        '  deploy\n';

    final scripts = registry.postProcess(koolScriptsPostProcessHandler)!(output);
    expect(scripts.map((item) => item.nameSingle ?? ''), [
      'build',
      'test',
      'deploy',
    ]);
    expect(scripts.first.description, 'Script');
  });

  test('scripts post-processor returns empty when the header is missing', () {
    final registry = JsonHandlerRegistry();
    registerKoolHandlers(registry);
    final output = 'no scripts header here\n'
        'just some lines\n';

    final scripts = registry.postProcess(koolScriptsPostProcessHandler)!(output);
    expect(scripts, isEmpty);
  });

  test('scripts post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerKoolHandlers(registry);

    final scripts = registry.postProcess(koolScriptsPostProcessHandler)!('');
    expect(scripts, isEmpty);
  });

  test('kool run script generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerKoolHandlers(registry);
    final adapter = _FakeAdapter({
      'kool run --help': const ProcessRunResult(
        stdout: 'Kool help text...\n'
            '\n'
            'Available Scripts:\n'
            '  build\n'
            '  test\n'
            '  deploy\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'kool run --help';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kool', tokenLength: 4, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test', 'deploy']);
  });
}
