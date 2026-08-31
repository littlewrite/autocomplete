import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pip.dart';
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
  test('pip JSON binds every generator to the listpackages postProcess ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPipHandlers(handlers);
    final source = await File('assets/specs/p/pip.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(pipListPackagesPostProcessHandler));
    expect(document['name'], 'pip');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator in generators is List ? generators : [generators]) {
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
    expect(ids, isNotEmpty);
    expect(ids.toSet(), {pipListPackagesPostProcessHandler});
  });

  test('listpackages post-processor skips the two header lines', () {
    final registry = JsonHandlerRegistry();
    registerPipHandlers(registry);
    final output = 'Package    Version\n'
        '---------- -------\n'
        'requests   2.31.0\n'
        'numpy      1.26.0';

    final packages =
        registry.postProcess(pipListPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''), [
      'requests   2.31.0',
      'numpy      1.26.0',
    ]);
    expect(packages.first.icon, '🐍');
  });

  test('listpackages post-processor keeps empty trailing entries', () {
    final registry = JsonHandlerRegistry();
    registerPipHandlers(registry);
    // A trailing newline yields a final empty line, which the source keeps.
    final output = 'Package    Version\n'
        '---------- -------\n'
        'requests   2.31.0\n';

    final packages =
        registry.postProcess(pipListPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''), [
      'requests   2.31.0',
      '',
    ]);
  });

  test('listpackages post-processor returns empty on empty or short output', () {
    final registry = JsonHandlerRegistry();
    registerPipHandlers(registry);
    final empty = registry.postProcess(pipListPackagesPostProcessHandler)!('');
    expect(empty, isEmpty);
    // Fewer than two lines: the loop never starts.
    final short =
        registry.postProcess(pipListPackagesPostProcessHandler)!('only one');
    expect(short, isEmpty);
  });

  test('pip list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPipHandlers(registry);
    final adapter = _FakeAdapter({
      'pip list': const ProcessRunResult(
        stdout: 'Package    Version\n'
            '---------- -------\n'
            'requests   2.31.0\n'
            'urllib3    2.0.6',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pip.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => [
              ...(subcommand.args ?? const <FigArg>[]),
              ...(subcommand.options ?? const <FigOption>[])
                  .expand((option) => option.args ?? const <FigArg>[]),
            ])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'pip list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pip', tokenLength: 3, complete: true),
        CommandToken(token: 'uninstall', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['requests   2.31.0', 'urllib3    2.0.6']);
  });
}
