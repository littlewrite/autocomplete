import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/yo.dart';
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
  test('yo JSON binds its generator to the postProcess handler', () async {
    final handlers = JsonHandlerRegistry();
    registerYoHandlers(handlers);
    final source = await File('assets/specs/y/yo.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(yoGeneratorsPostProcessHandler));
    expect(document['name'], 'yo');
  });

  test('post-processor lists Yeoman generators with title-cased metadata', () {
    final registry = JsonHandlerRegistry();
    registerYoHandlers(registry);
    const output = 'Available Generators:\n'
        'webapp\n'
        'web-app\n'
        'express\n';

    final generators =
        registry.postProcess(yoGeneratorsPostProcessHandler)!(output);
    expect(generators.map((item) => item.nameSingle ?? ''),
        ['webapp', 'web-app', 'express']);
    expect(generators.map((item) => item.displayName),
        ['Webapp', 'Web-app', 'Express']);
    expect(generators.map((item) => item.description),
        ['Webapp Generator', 'Web-app Generator', 'Express Generator']);
    expect(generators.map((item) => item.priority), [100, 100, 100]);
  });

  test('post-processor ignores the heading and blank lines', () {
    final registry = JsonHandlerRegistry();
    registerYoHandlers(registry);
    const output = 'Available Generators:\n'
        '\n'
        '  node\n'
        '  react\n';

    final generators =
        registry.postProcess(yoGeneratorsPostProcessHandler)!(output);
    expect(generators.map((item) => item.nameSingle ?? ''),
        ['node', 'react']);
  });

  test('post-processor returns empty for empty or blank output', () {
    final registry = JsonHandlerRegistry();
    registerYoHandlers(registry);

    expect(registry.postProcess(yoGeneratorsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(yoGeneratorsPostProcessHandler)!('\n\n'),
        isEmpty);
  });

  test('yo generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerYoHandlers(registry);
    final adapter = _FakeAdapter({
      'yo --generators': const ProcessRunResult(
        stdout: 'Available Generators:\n'
            'webapp\n'
            'express\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yo.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'yo', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['webapp', 'express']);
  });
}
