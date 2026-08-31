import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/cordova.dart';
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
  test('cordova JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCordovaHandlers(handlers);
    final source = await File('assets/specs/c/cordova.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(cordovaPlatformGeneratorPostProcessHandler));
    expect(source, contains(cordovaPluginGeneratorPostProcessHandler));
    expect(document['name'], 'cordova');

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
    expect(ids.toSet(), {
      cordovaPlatformGeneratorPostProcessHandler,
      cordovaPluginGeneratorPostProcessHandler,
    });
  });

  test('platform post-processor reads cordova.platforms from package.json',
      () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);
    const output = '{"cordova":{"platforms":["android","ios","windows"]}}';

    final platforms =
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!(output);
    expect(platforms.map((item) => item.nameSingle ?? ''),
        ['android', 'ios', 'windows']);
    expect(platforms.map((item) => item.description),
        ['Platform', 'Platform', 'Platform']);
  });

  test('platform post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);

    final platforms =
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!('');
    expect(platforms, isEmpty);
  });

  test('platform post-processor tolerates missing fields', () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);

    expect(
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!(
            '{"name":"my-app"}'),
        isEmpty);
    expect(
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!(
            '{"cordova":{}}'),
        isEmpty);
    expect(
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!(
            '{"cordova":{"platforms":null}}'),
        isEmpty);
  });

  test('platform post-processor swallows malformed JSON', () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);

    expect(
        registry.postProcess(cordovaPlatformGeneratorPostProcessHandler)!(
            'not json'),
        isEmpty);
  });

  test('plugin post-processor maps each line to a suggestion with an icon', () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);
    const output = 'cordova-plugin-camera\n'
        'cordova-plugin-file\n'
        'cordova-plugin-inappbrowser';

    final plugins =
        registry.postProcess(cordovaPluginGeneratorPostProcessHandler)!(output);
    expect(plugins.map((item) => item.nameSingle ?? ''), [
      'cordova-plugin-camera',
      'cordova-plugin-file',
      'cordova-plugin-inappbrowser',
    ]);
    expect(
        plugins.map((item) => item.icon),
        [
          'fig://icon?type=string',
          'fig://icon?type=string',
          'fig://icon?type=string',
        ]);
  });

  test('plugin post-processor mirrors JS split semantics', () {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);

    final empty =
        registry.postProcess(cordovaPluginGeneratorPostProcessHandler)!('');
    expect(empty.map((item) => item.nameSingle ?? ''), ['']);

    final trailing = registry
        .postProcess(cordovaPluginGeneratorPostProcessHandler)!('a\nb\n');
    expect(trailing.map((item) => item.nameSingle ?? ''), ['a', 'b', '']);
  });

  test('platform generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCordovaHandlers(registry);
    final adapter = _FakeAdapter({
      'cat package.json': const ProcessRunResult(
        stdout: '{"cordova":{"platforms":["android","ios"]}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cordova.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'cat package.json';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cordova', tokenLength: 7, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['android', 'ios']);
  });
}
