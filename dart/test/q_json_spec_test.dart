import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/q.dart';
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
  test('q JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerQHandlers(handlers);
    final source = await File('assets/specs/q/q.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(qThemesPostProcessHandler));
    expect(document['name'], 'q');

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
    expect(ids.toSet(), {qThemesPostProcessHandler});
  });

  test('theme post-processor lists themes then the builtin ones', () {
    final registry = JsonHandlerRegistry();
    registerQHandlers(registry);
    final output = 'rose-pine\nmidnight\ndusk\n';

    final themes = registry.postProcess(qThemesPostProcessHandler)!(output);
    expect(themes.map((item) => item.nameSingle),
        ['rose-pine', 'midnight', 'dusk', 'system', 'light', 'dark']);
    expect(themes.map((item) => item.icon), [
      '🎨',
      '🎨',
      '🎨',
      '💻',
      'fig://template?color=ffffff&badge=☀️',
      'fig://template?color=000000&badge=🌙',
    ]);
    expect(themes.map((item) => item.priority), [50, 50, 50, 51, 51, 51]);
  });

  test('theme post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerQHandlers(registry);
    expect(registry.postProcess(qThemesPostProcessHandler)!(''), isEmpty);
  });

  test('q theme list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerQHandlers(registry);
    final adapter = _FakeAdapter({
      'q theme --list': const ProcessRunResult(
        stdout: 'rose-pine\nmidnight\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/q/q.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final theme = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('theme'));
    final generator = theme.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'q', tokenLength: 1, complete: true),
        CommandToken(token: 'theme', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['rose-pine', 'midnight', 'system', 'light', 'dark']);
  });
}
