import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/eslint.dart';
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
  test('eslint JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerEslintHandlers(handlers);
    final source = await File('assets/specs/e/eslint.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(eslintEnvsCustomHandler));
    expect(source, contains(eslintPluginsPostProcessHandler));
    expect(document['name'], 'eslint');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) {
            ids.add(custom['handler'] as String);
          }
          final postProcess = generator['postProcess'];
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
    expect(ids.toSet(), {eslintEnvsCustomHandler, eslintPluginsPostProcessHandler});
  });

  test('env custom generator returns every environment for an empty token',
      () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final handler = registry.custom(eslintEnvsCustomHandler)!;

    final suggestions = await handler(const ['eslint', '--env', ''], null, null);

    expect(suggestions.map((item) => item.nameSingle ?? ''), contains('browser'));
    expect(suggestions.map((item) => item.nameSingle ?? ''), contains('node'));
    expect(suggestions.map((item) => item.nameSingle ?? ''), contains('greasemonkey'));
    expect(suggestions.length, 29);
  });

  test('env custom generator filters environments already entered', () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final handler = registry.custom(eslintEnvsCustomHandler)!;

    final suggestions =
        await handler(const ['eslint', '--env', 'browser,node,'], null, null);

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        isNot(contains('browser')));
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        isNot(contains('node')));
    expect(suggestions.map((item) => item.nameSingle ?? ''), contains('jest'));
  });

  test('env custom generator drops every environment once all are entered',
      () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final handler = registry.custom(eslintEnvsCustomHandler)!;

    final all =
        'browser,node,commonjs,shared-node-browser,es6,ecmaVersion,es2017,'
        'es2020,es2021,worker,amd,mocha,jasmine,jest,phantomjs,protractor,'
        'qunit,jquery,prototypejs,shelljs,meteor,mongo,applescript,nashorn,'
        'servicerworker,atomtest,embertest,webextensions,greasemonkey,';

    final suggestions =
        await handler(['eslint', '--env', all], null, null);

    expect(suggestions, isEmpty);
  });

  test('plugin post-processor strips the eslint-plugin- prefix', () {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final output = 'eslint-plugin-react\n'
        'eslint-plugin-import\n'
        'eslint-plugin-react-hooks\n';

    final plugins = registry
        .postProcess(eslintPluginsPostProcessHandler)!(output);

    expect(plugins.map((item) => item.nameSingle ?? ''),
        ['react', 'import', 'react-hooks']);
  });

  test('plugin post-processor ignores unrelated lines', () {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final output = 'react\n'
        'webpack\n'
        'eslint-plugin-jest\n'
        'typescript\n';

    final plugins = registry
        .postProcess(eslintPluginsPostProcessHandler)!(output);

    expect(plugins.map((item) => item.nameSingle ?? ''), ['jest']);
  });

  test('plugin post-processor returns empty for empty or unmatched output', () {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);

    expect(registry.postProcess(eslintPluginsPostProcessHandler)!(''), isEmpty);
    expect(
        registry
            .postProcess(eslintPluginsPostProcessHandler)!('a\nb\nc'),
        isEmpty);
  });

  test('plugin post-processor skips a bare eslint-plugin line', () {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);

    final plugins = registry
        .postProcess(eslintPluginsPostProcessHandler)!
        .call('eslint-plugin\n');

    expect(plugins, isEmpty);
  });

  test('plugin post-processor drops version columns on each line', () {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);

    final plugins = registry
        .postProcess(eslintPluginsPostProcessHandler)!
        .call('eslint-plugin-react 2.2.0\n');

    expect(plugins.map((item) => item.nameSingle ?? ''), ['react']);
  });

  test('env custom generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/e/eslint.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final envOption = spec.options!.firstWhere((o) => o.nameList.contains('--env'));
    final generator = envOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'eslint', tokenLength: 6, complete: true),
        CommandToken(token: '--env', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), contains('browser'));
    expect(suggestions.map((s) => s.name).toList(), contains('greasemonkey'));
  });

  test('env custom generator filters entered envs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/e/eslint.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final envOption = spec.options!.firstWhere((o) => o.nameList.contains('--env'));
    final generator = envOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'eslint', tokenLength: 6, complete: true),
        CommandToken(token: '--env', tokenLength: 5, complete: true),
        CommandToken(token: 'browser,node,', tokenLength: 13, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((s) => s.name).toList();
    expect(names, isNot(contains('browser')));
    expect(names, isNot(contains('node')));
    expect(names, contains('jest'));
  });

  test('plugin generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEslintHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c { ls node_modules ; ls \$(npm root -g) ; ls \$(yarn global '
          'dir)/node_modules/ ; } | cat': const ProcessRunResult(
        stdout: 'react\n'
            'eslint-plugin-react\n'
            'eslint-plugin-import\n'
            'webpack\n'
            'eslint-plugin-react-hooks\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/eslint.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final pluginOption =
        spec.options!.firstWhere((o) => o.nameList.contains('--plugin'));
    final generator = pluginOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'eslint', tokenLength: 6, complete: true),
        CommandToken(token: '--plugin', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(),
        ['react', 'import', 'react-hooks']);
  });
}
