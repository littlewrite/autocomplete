import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ansible_doc.dart';
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
  test('ansible-doc JSON binds every generator to the single post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerAnsibleDocHandlers(handlers);
    final source = await File('assets/specs/a/ansible-doc.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ansibleDocPluginsPostProcessHandler));
    expect(document['name'], 'ansible-doc');

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
    expect(ids.toSet(), {ansibleDocPluginsPostProcessHandler});
  });

  test('plugins post-processor maps each key to a suggestion with its summary',
      () {
    final registry = JsonHandlerRegistry();
    registerAnsibleDocHandlers(registry);
    const output =
        '{"ping": "Try to connect to host and verify a usable python.", '
        '"copy": "Copy files to remote locations"}';

    final plugins =
        registry.postProcess(ansibleDocPluginsPostProcessHandler)!(output);
    expect(plugins.map((item) => item.nameSingle), ['ping', 'copy']);
    expect(plugins.map((item) => item.description), [
      'Try to connect to host and verify a usable python.',
      'Copy files to remote locations',
    ]);
  });

  test('plugins post-processor handles an empty object', () {
    final registry = JsonHandlerRegistry();
    registerAnsibleDocHandlers(registry);

    final empty =
        registry.postProcess(ansibleDocPluginsPostProcessHandler)!('{}');
    expect(empty, isEmpty);
  });

  test('plugins post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerAnsibleDocHandlers(registry);

    final broken =
        registry.postProcess(ansibleDocPluginsPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final arrayNotObject =
        registry.postProcess(ansibleDocPluginsPostProcessHandler)!('[]');
    expect(arrayNotObject, isEmpty);
  });

  test('ansible-doc generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerAnsibleDocHandlers(registry);
    final adapter = _FakeAdapter({
      'ansible-doc --list --json': const ProcessRunResult(
        stdout: '{"ping": "Try to connect to host and verify a usable python.",'
            '"copy": "Copy files to remote locations"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/ansible-doc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'ansible-doc --list --json';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ansible-doc', tokenLength: 11, complete: true),
        CommandToken(token: 'ping', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['ping', 'copy']);
  });
}
