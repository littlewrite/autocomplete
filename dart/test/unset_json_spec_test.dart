import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/unset.dart';
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
  test('unset JSON binds every postProcess to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerUnsetHandlers(handlers);
    final source = await File('assets/specs/u/unset.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(unsetEnvironmentVariablePostProcessHandler));
    expect(document['name'], 'unset');

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
    expect(ids.toSet(), {unsetEnvironmentVariablePostProcessHandler});
  });

  test('env post-processor maps each env line to a variable name suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerUnsetHandlers(registry);
    final output = 'PATH=/usr/local/bin:/usr/bin\n'
        'HOME=/Users/me\n'
        'TERM=xterm-256color';

    final suggestions =
        registry.postProcess(unsetEnvironmentVariablePostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['PATH', 'HOME', 'TERM']);
    expect(suggestions.map((item) => item.description),
        ['Environment Variable', 'Environment Variable', 'Environment Variable']);
    expect(suggestions.map((item) => item.type),
        [SuggestionType.arg, SuggestionType.arg, SuggestionType.arg]);
  });

  test('env post-processor handles empty output and blank lines', () {
    final registry = JsonHandlerRegistry();
    registerUnsetHandlers(registry);
    expect(
        registry.postProcess(unsetEnvironmentVariablePostProcessHandler)!(''),
        isEmpty);

    final suggestions = registry
        .postProcess(unsetEnvironmentVariablePostProcessHandler)!('FOO=1\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['FOO']);
  });

  test('unset generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerUnsetHandlers(registry);
    final adapter = _FakeAdapter({
      'env': const ProcessRunResult(
        stdout: 'PATH=/usr/local/bin:/usr/bin\n'
            'HOME=/Users/me\n'
            'TERM=xterm-256color\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/u/unset.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'env';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'unset', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['PATH', 'HOME', 'TERM']);
  });
}
