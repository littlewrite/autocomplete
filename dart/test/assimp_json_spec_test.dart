import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/assimp.dart';
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
  test('assimp JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerAssimpHandlers(handlers);
    final source = await File('assets/specs/a/assimp.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(assimpImportExtPostProcessHandler));
    expect(source, contains(assimpExportExtPostProcessHandler));
    expect(document['name'], 'assimp');

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
      assimpImportExtPostProcessHandler,
      assimpExportExtPostProcessHandler,
    });
  });

  test('import extensions post-processor splits on semicolons', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final output = '3ds;3mf;ac;ac3d';

    final extensions =
        registry.postProcess(assimpImportExtPostProcessHandler)!(output);
    expect(
        extensions.map((item) => item.nameSingle), ['3ds', '3mf', 'ac', 'ac3d']);
    expect(extensions.map((item) => item.description),
        ['Extension', 'Extension', 'Extension', 'Extension']);
  });

  test('import extensions post-processor keeps trailing empty entries', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final extensions =
        registry.postProcess(assimpImportExtPostProcessHandler)!('3ds;3mf;');
    expect(extensions.map((item) => item.nameSingle ?? ''), ['3ds', '3mf', '']);
  });

  test('import extensions post-processor on empty output yields one entry', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final extensions =
        registry.postProcess(assimpImportExtPostProcessHandler)!('');
    expect(extensions.map((item) => item.nameSingle ?? ''), ['']);
  });

  test('export extensions post-processor splits on newlines', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final output = 'assbin\nassxml\ncollada';

    final extensions =
        registry.postProcess(assimpExportExtPostProcessHandler)!(output);
    expect(extensions.map((item) => item.nameSingle),
        ['assbin', 'assxml', 'collada']);
  });

  test('export extensions post-processor keeps trailing empty entries', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final extensions =
        registry.postProcess(assimpExportExtPostProcessHandler)!('assbin\n');
    expect(extensions.map((item) => item.nameSingle ?? ''), ['assbin', '']);
  });

  test('export extensions post-processor on empty output yields one entry', () {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final extensions =
        registry.postProcess(assimpExportExtPostProcessHandler)!('');
    expect(extensions.map((item) => item.nameSingle ?? ''), ['']);
  });

  test('knowext listext generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final adapter = _FakeAdapter({
      'assimp listext': const ProcessRunResult(
        stdout: '3ds;3mf;ac;ac3d',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/assimp.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'assimp listext';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'assimp', tokenLength: 6, complete: true),
        CommandToken(token: 'knowext', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(),
        ['3ds', '3mf', 'ac', 'ac3d']);
  });

  test('exportinfo listexport generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerAssimpHandlers(registry);
    final adapter = _FakeAdapter({
      'assimp listexport': const ProcessRunResult(
        stdout: 'assbin\nassxml\ncollada',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/assimp.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'assimp listexport';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'assimp', tokenLength: 6, complete: true),
        CommandToken(token: 'exportinfo', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(),
        ['assbin', 'assxml', 'collada']);
  });
}
