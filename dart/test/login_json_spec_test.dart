import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/login.dart';
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
  test('login JSON binds the username generator to the postProcess ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerLoginHandlers(handlers);
    final source = await File('assets/specs/l/login.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(loginPostProcessHandler));
    expect(document['name'], 'login');

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
    expect(ids.toSet(), {loginPostProcessHandler});
  });

  test('username post-processor takes the first passwd field with an icon',
      () {
    final registry = JsonHandlerRegistry();
    registerLoginHandlers(registry);
    final output = 'root:x:0:0:root:/root:/bin/bash\n'
        'daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin\n'
        'bin:x:2:2:bin:/bin:/usr/sbin/nologin';

    final usernames =
        registry.postProcess(loginPostProcessHandler)!(output);
    expect(usernames.map((item) => item.nameSingle ?? ''),
        ['root', 'daemon', 'bin']);
    expect(usernames.first.icon, '👤');
  });

  test('username post-processor drops blank lines and empty names', () {
    final registry = JsonHandlerRegistry();
    registerLoginHandlers(registry);
    final output = '\n'
        'root:x:0:0:root:/root:/bin/bash\n'
        '\n'
        ':x:100:100::/nonexistent:/usr/sbin/nologin\n'
        'nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin';

    final usernames =
        registry.postProcess(loginPostProcessHandler)!(output);
    expect(usernames.map((item) => item.nameSingle ?? ''),
        ['root', 'nobody']);
  });

  test('username post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerLoginHandlers(registry);

    final usernames = registry.postProcess(loginPostProcessHandler)!('');
    expect(usernames, isEmpty);
  });

  test('login username generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerLoginHandlers(registry);
    final adapter = _FakeAdapter({
      'cat /etc/passwd': const ProcessRunResult(
        stdout: 'root:x:0:0:root:/root:/bin/bash\n'
            'daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin\n'
            'nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/login.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
      final script = candidate.script;
      return script is List && script.join(' ') == 'cat /etc/passwd';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'login', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['root', 'daemon', 'nobody']);
  });
}
