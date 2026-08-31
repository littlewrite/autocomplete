import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/valet.dart';
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
  test('valet JSON binds every postProcess to the one declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerValetHandlers(handlers);
    final source = await File('assets/specs/v/valet.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(valetCommandsPostProcessHandler));
    expect(document['name'], 'valet');

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
    expect(ids.toSet(), {valetCommandsPostProcessHandler});
  });

  test('commands post-processor takes the first token of each line', () {
    final registry = JsonHandlerRegistry();
    registerValetHandlers(registry);
    final output = 'help\n'
        'install\n'
        'link\n'
        'park\n'
        'secure\n';

    final suggestions =
        registry.postProcess(valetCommandsPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['help', 'install', 'link', 'park', 'secure']);
    expect(suggestions.map((item) => item.description),
        ['Command', 'Command', 'Command', 'Command', 'Command']);
    expect(suggestions.map((item) => item.priority), [76, 76, 76, 76, 76]);
  });

  test('commands post-processor handles empty output and blank lines', () {
    final registry = JsonHandlerRegistry();
    registerValetHandlers(registry);
    expect(registry.postProcess(valetCommandsPostProcessHandler)!(''), isEmpty);

    final suggestions = registry
        .postProcess(valetCommandsPostProcessHandler)!('help\n\nsecure\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['help', 'secure']);
  });

  test('valet help generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerValetHandlers(registry);
    final adapter = _FakeAdapter({
      'valet list --raw': const ProcessRunResult(
        stdout: 'help\n'
            'install\n'
            'link\n'
            'park\n'
            'secure\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/v/valet.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'valet list --raw';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'valet', tokenLength: 5, complete: true),
        CommandToken(token: 'help', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['help', 'install', 'link', 'park', 'secure']);
  });
}
