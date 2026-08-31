import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/defaultbrowser.dart';
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
  test('defaultbrowser JSON binds the generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDefaultbrowserHandlers(handlers);
    final source =
        await File('assets/specs/d/defaultbrowser.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(defaultbrowserInstalledBrowsersPostProcessHandler));
    expect(document['name'], 'defaultbrowser');

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
    expect(ids.toSet(), {defaultbrowserInstalledBrowsersPostProcessHandler});
  });

  test('installed browsers post-processor skips the set browser and trims names',
      () {
    final registry = JsonHandlerRegistry();
    registerDefaultbrowserHandlers(registry);
    final output = '* Google Chrome\n'
        '  Safari\n'
        'Firefox\n';

    final browsers = registry
        .postProcess(defaultbrowserInstalledBrowsersPostProcessHandler)!(output);
    expect(browsers.map((item) => item.nameSingle), ['Safari', 'Firefox']);
  });

  test('installed browsers post-processor handles empty and blank output', () {
    final registry = JsonHandlerRegistry();
    registerDefaultbrowserHandlers(registry);

    final empty = registry
        .postProcess(defaultbrowserInstalledBrowsersPostProcessHandler)!('');
    expect(empty, isEmpty);

    final allSet = registry
        .postProcess(defaultbrowserInstalledBrowsersPostProcessHandler)!(
            '* Chrome\n* Safari\n');
    expect(allSet, isEmpty);

    final whitespace = registry
        .postProcess(defaultbrowserInstalledBrowsersPostProcessHandler)!(
            '\n\n  \n');
    expect(whitespace, isEmpty);
  });

  test('defaultbrowser generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerDefaultbrowserHandlers(registry);
    final adapter = _FakeAdapter({
      'defaultbrowser': const ProcessRunResult(
        stdout: '* Google Chrome\n'
            '  Safari\n'
            'Firefox\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/d/defaultbrowser.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'defaultbrowser';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'defaultbrowser', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Safari', 'Firefox']);
  });
}
