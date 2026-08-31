import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/which.dart';
import 'package:test/test.dart';

const _findScript = 'for i in \$(echo \$PATH | tr ":" "\n"); do '
    'find \$i -maxdepth 1 -perm -111 -type f; done';

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
  test('which JSON binds every postProcess to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerWhichHandlers(handlers);
    final source = await File('assets/specs/w/which.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(whichExecutablesPostProcessHandler));
    expect(document['name'], 'which');

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
    expect(ids.toSet(), {whichExecutablesPostProcessHandler});
  });

  test('executables post-processor reduces each path to its basename', () {
    final registry = JsonHandlerRegistry();
    registerWhichHandlers(registry);
    final output = '/usr/local/bin/git\n'
        '/usr/bin/vim\n'
        '/opt/homebrew/bin/node\n'
        '/usr/bin/ls\n';

    final suggestions =
        registry.postProcess(whichExecutablesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['git', 'vim', 'node', 'ls']);
    expect(suggestions.map((item) => item.description),
        ['Executable file', 'Executable file', 'Executable file', 'Executable file']);
    expect(suggestions.map((item) => item.type),
        [SuggestionType.arg, SuggestionType.arg, SuggestionType.arg, SuggestionType.arg]);
  });

  test('executables post-processor handles empty output and blank lines', () {
    final registry = JsonHandlerRegistry();
    registerWhichHandlers(registry);
    expect(registry.postProcess(whichExecutablesPostProcessHandler)!(''), isEmpty);

    final suggestions = registry
        .postProcess(whichExecutablesPostProcessHandler)!('/usr/bin/vim\n\n/usr/bin/ls\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['vim', 'ls']);
  });

  test('which generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerWhichHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_findScript': const ProcessRunResult(
        stdout: '/usr/local/bin/git\n'
            '/usr/bin/vim\n'
            '/opt/homebrew/bin/node\n'
            '/usr/bin/ls\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/w/which.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'bash -c $_findScript';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'which', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['git', 'vim', 'node', 'ls']);
  });
}
