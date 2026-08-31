import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/hyper.dart';
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
  test('hyper JSON binds every generator to the postProcess declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerHyperHandlers(handlers);
    final source = await File('assets/specs/h/hyper.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(hyperInstalledPluginsPostProcessHandler));
    expect(document['name'], 'hyper');

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
    expect(ids.toSet(), {hyperInstalledPluginsPostProcessHandler});
  });

  test('installed plugins post-processor maps each line to a suggestion', () {
    final registry = JsonHandlerRegistry();
    registerHyperHandlers(registry);
    final output = 'hyperpower\nhyper-statusline\nhyperterm';

    final plugins =
        registry.postProcess(hyperInstalledPluginsPostProcessHandler)!(output);
    expect(plugins.map((item) => item.nameSingle ?? '').toList(),
        ['hyperpower', 'hyper-statusline', 'hyperterm']);
    expect(plugins.first.description, 'Plugin name');
  });

  test('installed plugins post-processor skips blank lines', () {
    final registry = JsonHandlerRegistry();
    registerHyperHandlers(registry);
    final output = 'hyperpower\n\n  \nhyperterm\n';

    final plugins =
        registry.postProcess(hyperInstalledPluginsPostProcessHandler)!(output);
    expect(plugins.map((item) => item.nameSingle ?? '').toList(),
        ['hyperpower', 'hyperterm']);
  });

  test('installed plugins post-processor returns an empty list on empty output',
      () {
    final registry = JsonHandlerRegistry();
    registerHyperHandlers(registry);
    final plugins = registry
        .postProcess(hyperInstalledPluginsPostProcessHandler)!('');
    expect(plugins, isEmpty);
  });

  test('uninstall generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerHyperHandlers(registry);
    final adapter = _FakeAdapter({
      'hyper list': const ProcessRunResult(
        stdout: 'hyperpower\nhyper-statusline\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/h/hyper.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'hyper list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'hyper', tokenLength: 5, complete: true),
        CommandToken(token: 'uninstall', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['hyperpower', 'hyper-statusline']);
  });
}
