import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/fvm.dart';
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
  test('fvm JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerFvmHandlers(handlers);
    final source = await File('assets/specs/f/fvm.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(fvmReleasesPostProcessHandler));
    expect(document['name'], 'fvm');

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
    expect(ids.toSet(), {fvmReleasesPostProcessHandler});
  });

  test('releases post-processor dedupes matches and reverses the order', () {
    final registry = JsonHandlerRegistry();
    registerFvmHandlers(registry);
    final output = '2.10.5\n3.7.12\n3.10.0\n2.10.5\n'
        '3.10.0\nnot a version\n3.7.12-beta.1\n';

    final releases =
        registry.postProcess(fvmReleasesPostProcessHandler)!(output);
    expect(releases.map((item) => item.nameSingle), [
      '3.7.12-beta.1',
      '3.10.0',
      '3.7.12',
      '2.10.5',
    ]);
  });

  test('releases post-processor keeps a unique latest match on top', () {
    final registry = JsonHandlerRegistry();
    registerFvmHandlers(registry);
    final output = '1.2.3\n2.0.0\n2.0.0+meta\n1.2.3\n';
    final releases =
        registry.postProcess(fvmReleasesPostProcessHandler)!(output);
    expect(releases.map((item) => item.nameSingle),
        ['2.0.0+meta', '2.0.0', '1.2.3']);
  });

  test('releases post-processor returns empty on no matches', () {
    final registry = JsonHandlerRegistry();
    registerFvmHandlers(registry);
    final releases =
        registry.postProcess(fvmReleasesPostProcessHandler)!('no versions');
    expect(releases, isEmpty);
  });

  test('fvm install releases generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerFvmHandlers(registry);
    final adapter = _FakeAdapter({
      'fvm releases': const ProcessRunResult(
        stdout: '3.10.0\n3.7.12\n2.10.5\n3.10.0\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/fvm.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'fvm releases';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'fvm', tokenLength: 3, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
      suggestions.map((suggestion) => suggestion.name).toList(),
      ['2.10.5', '3.7.12', '3.10.0'],
    );
  });
}
