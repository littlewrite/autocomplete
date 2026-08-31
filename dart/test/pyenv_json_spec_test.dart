import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pyenv.dart';
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
  test('pyenv JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerPyenvHandlers(handlers);
    final source = await File('assets/specs/p/pyenv.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(pyenvGlobalVersionsPostProcessHandler));
    expect(source, contains(pyenvInstallVersionsPostProcessHandler));
    expect(document['name'], 'pyenv');

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
      pyenvGlobalVersionsPostProcessHandler,
      pyenvInstallVersionsPostProcessHandler,
    });
  });

  test('install post-processor skips the header and trims each version', () {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);
    final output = 'Available versions:\n'
        '  2.7.18\n'
        '  3.10.4\n'
        '  3.11.5\n';

    final versions = registry
        .postProcess(pyenvInstallVersionsPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle ?? ''), [
      '2.7.18',
      '3.10.4',
      '3.11.5',
    ]);
    expect(versions.first.icon, '🐍');
  });

  test('install post-processor returns empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);

    final versions = registry
        .postProcess(pyenvInstallVersionsPostProcessHandler)!('');
    expect(versions, isEmpty);
  });

  test('versions post-processor marks the active version with the star icon',
      () {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);
    final output = '  2.7.18\n'
        '* 3.10.4 (set by /Users/paul/.pyenv/version)\n'
        '  3.11.5\n';

    final versions =
        registry.postProcess(pyenvGlobalVersionsPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle ?? ''), [
      '2.7.18',
      '3.10.4 (set by /Users/paul/.pyenv/version)',
      '3.11.5',
    ]);
    expect(versions.map((item) => item.icon), [
      '🐍',
      '🌟',
      '🐍',
    ]);
  });

  test('versions post-processor returns empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);

    final versions =
        registry.postProcess(pyenvGlobalVersionsPostProcessHandler)!('');
    expect(versions, isEmpty);
  });

  test('global versions generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);
    final adapter = _FakeAdapter({
      'pyenv versions': const ProcessRunResult(
        stdout: '  2.7.18\n'
            '* 3.10.4 (set by /Users/paul/.pyenv/version)\n'
            '  3.11.5\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pyenv.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'pyenv versions';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pyenv', tokenLength: 5, complete: true),
        CommandToken(token: 'global', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      '2.7.18',
      '3.10.4 (set by /Users/paul/.pyenv/version)',
      '3.11.5',
    ]);
  });

  test('install versions generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPyenvHandlers(registry);
    final adapter = _FakeAdapter({
      'pyenv install -l': const ProcessRunResult(
        stdout: 'Available versions:\n'
            '  2.7.18\n'
            '  3.10.4\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pyenv.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'pyenv install -l';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pyenv', tokenLength: 5, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      '2.7.18',
      '3.10.4',
    ]);
  });
}
