import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ipatool.dart';
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
  test('ipatool JSON binds every generator to the four declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerIpatoolHandlers(handlers);
    final source = await File('assets/specs/i/ipatool.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ipatoolDownloadScriptHandler));
    expect(source, contains(ipatoolDownloadPostProcessHandler));
    expect(source, contains(ipatoolPurchaseScriptHandler));
    expect(source, contains(ipatoolPurchasePostProcessHandler));
    expect(document['name'], 'ipatool');

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
          final script = generator['script'];
          if (script is Map && script['handler'] is String) {
            ids.add(script['handler'] as String);
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
    expect(ids.toSet(), {
      ipatoolDownloadScriptHandler,
      ipatoolDownloadPostProcessHandler,
      ipatoolPurchaseScriptHandler,
      ipatoolPurchasePostProcessHandler,
    });
  });

  test('search script builds the ipatool search command from the typed token',
      () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final script = registry.script(ipatoolDownloadScriptHandler)!(
        const ['ipatool', 'download', '--bundle-identifier', 'facetime']);
    expect(script, [
      'ipatool',
      'search',
      'facetime',
      '--limit',
      '10',
      '--format',
      'json',
    ]);
  });

  test('search script returns no command for an empty identifier', () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final script = registry.script(ipatoolDownloadScriptHandler)!(
        const ['ipatool', 'download', '--bundle-identifier', '']);
    expect(script, isEmpty);
  });

  test('search post-processor maps apps to bundle identifier suggestions', () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final output = '{"apps":[{"id":1,"bundleID":"com.apple.facetime",'
        '"name":"FaceTime","version":"6.1","price":0}]}';

    final apps = registry.postProcess(ipatoolDownloadPostProcessHandler)!(output);
    expect(apps.map((item) => item.nameSingle), ['com.apple.facetime']);
    expect(apps.first.description, 'FaceTime - 6.1');
  });

  test('search post-processor returns empty list on empty output', () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final apps = registry.postProcess(ipatoolDownloadPostProcessHandler)!('');
    expect(apps, isEmpty);
  });

  test('search post-processor returns empty list on invalid JSON', () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final apps =
        registry.postProcess(ipatoolDownloadPostProcessHandler)!('not json');
    expect(apps, isEmpty);
  });

  test('search post-processor returns empty list when apps is missing', () {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final apps = registry
        .postProcess(ipatoolDownloadPostProcessHandler)!('{"results":[]}');
    expect(apps, isEmpty);
  });

  test(
      'ipatool bundle-identifier generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerIpatoolHandlers(registry);
    final adapter = _FakeAdapter({
      'ipatool search facetime --limit 10 --format json':
          const ProcessRunResult(
        stdout: '{"apps":[{"id":1,"bundleID":"com.apple.facetime",'
            '"name":"FaceTime","version":"6.1","price":0}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/i/ipatool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final download = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('download'));
    final option = download.options!
        .firstWhere((option) => option.nameList.contains('--bundle-identifier'));
    final generator = option.args!.first.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ipatool', tokenLength: 7, complete: true),
        CommandToken(token: 'download', tokenLength: 8, complete: true),
        CommandToken(
            token: '--bundle-identifier', tokenLength: 18, complete: true),
        CommandToken(token: 'facetime', tokenLength: 8, complete: true),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['com.apple.facetime']);
  });
}
