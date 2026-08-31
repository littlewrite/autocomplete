import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ibus.dart';
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
  test('ibus JSON binds every generator to the one declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerIbusHandlers(handlers);
    final source = await File('assets/specs/i/ibus.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ibusListEnginesPostProcessHandler));
    expect(document['name'], 'ibus');

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
    expect(ids.toSet(), {ibusListEnginesPostProcessHandler});
  });

  test('list-engine post-processor takes space-indented engine rows', () {
    final registry = JsonHandlerRegistry();
    registerIbusHandlers(registry);
    final output = 'ENGINE_NAME: xkb:us::eng\n'
        '  xkb:us::eng - English (US)\n'
        '  xkb:fr::fra - French (France)\n'
        'ibus-daemon is running\n';

    final engines =
        registry.postProcess(ibusListEnginesPostProcessHandler)!(output);
    expect(engines.map((item) => item.nameSingle ?? ''),
        ['xkb:us::eng', 'xkb:fr::fra']);
    expect(engines.first.description, 'English (US)');
  });

  test('list-engine post-processor handles empty output and missing separators',
      () {
    final registry = JsonHandlerRegistry();
    registerIbusHandlers(registry);
    expect(
        registry.postProcess(ibusListEnginesPostProcessHandler)!(''), isEmpty);
    expect(
        registry
            .postProcess(ibusListEnginesPostProcessHandler)!('no newline'),
        isEmpty);

    final output = '  xkb:us::eng\n' // no separator: name kept, no description
        '  bare-engine\n'
        '  spaced id - a description\n';
    final engines =
        registry.postProcess(ibusListEnginesPostProcessHandler)!(output);
    expect(engines.map((item) => item.nameSingle ?? ''),
        ['xkb:us::eng', 'bare-engine', 'spaced id']);
  });

  test('ibus engine generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerIbusHandlers(registry);
    final adapter = _FakeAdapter({
      'ibus list-engine': const ProcessRunResult(
        stdout: '  xkb:us::eng - English (US)\n'
            '  xkb:fr::fra - French (France)\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/i/ibus.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'ibus list-engine';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ibus', tokenLength: 4, complete: true),
        CommandToken(token: 'engine', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['xkb:us::eng', 'xkb:fr::fra']);
  });
}
