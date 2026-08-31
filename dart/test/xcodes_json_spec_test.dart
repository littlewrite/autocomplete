import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/xcodes.dart';
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
  test('xcodes JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerXcodesHandlers(handlers);
    final source = await File('assets/specs/x/xcodes.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(allXcodesPostProcessHandler));
    expect(source, contains(installedXcodesPostProcessHandler));
    expect(document['name'], 'xcodes');

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
      allXcodesPostProcessHandler,
      installedXcodesPostProcessHandler,
    });
  });

  test('list post-processor reverses lines and picks name/icon/description',
      () {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final output = '* 15.0 (Selected) (Installed)\n'
        '  14.3.1 (Installed)\n'
        '  14.3 (Available)';

    final suggestions =
        registry.postProcess(allXcodesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle),
        ['  14.3', '  14.3.1', '* 15.0']);
    expect(suggestions.map((item) => item.icon), ['⬇️', '🔨', '⭐️']);
    expect(suggestions.map((item) => item.description),
        ['Available', 'Installed', 'Selected Installed']);
  });

  test('select/uninstall in tokens marks plain lines as installable', () {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final output = '* 15.0 (Selected) (Installed)\n'
        '  14.3.1 (Installed)\n'
        '  14.3 (Available)';

    final suggestions = registry
        .postProcess(installedXcodesPostProcessHandler)!(
            output, ['xcodes', 'select', '']);
    // The plain available line switches to the 🔨 icon, the rest are unchanged.
    expect(suggestions.map((item) => item.icon), ['🔨', '🔨', '⭐️']);
  });

  test('trailing newline yields a leading empty suggestion', () {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final suggestions = registry
        .postProcess(allXcodesPostProcessHandler)!('  14.3.1 (Installed)\n');
    expect(suggestions.length, 2);
    expect(suggestions.first.nameSingle, '');
    expect(suggestions.first.icon, '⬇️');
    expect(suggestions.first.description, '');
    expect(suggestions.last.nameSingle, '  14.3.1');
    expect(suggestions.last.icon, '🔨');
  });

  test('empty output produces a single empty suggestion', () {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final suggestions =
        registry.postProcess(allXcodesPostProcessHandler)!('');
    expect(suggestions.length, 1);
    expect(suggestions.first.nameSingle, '');
    expect(suggestions.first.icon, '⬇️');
  });

  test('lines without version markers drop their last character', () {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final suggestions =
        registry.postProcess(allXcodesPostProcessHandler)!('abc def');
    expect(suggestions.length, 1);
    // JS slice(0, -1) and slice(-1) semantics for a marker-less line.
    expect(suggestions.first.nameSingle, 'abc de');
    expect(suggestions.first.description, 'f');
  });

  test('xcodes list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final adapter = _FakeAdapter({
      'xcodes list': const ProcessRunResult(
        stdout: '* 15.0 (Selected) (Installed)\n'
            '  14.3.1 (Installed)\n'
            '  14.3 (Available)',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/x/xcodes.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'xcodes list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'xcodes', tokenLength: 6, complete: true),
        CommandToken(token: 'download', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['  14.3', '  14.3.1', '* 15.0']);
    expect(suggestions.map((suggestion) => suggestion.icon).toList(),
        ['⬇️', '🔨', '⭐️']);
  });

  test('xcodes installed generator passes select tokens to the post-processor',
      () async {
    final registry = JsonHandlerRegistry();
    registerXcodesHandlers(registry);
    final adapter = _FakeAdapter({
      'xcodes installed': const ProcessRunResult(
        stdout: '* 15.0 (Selected) (Installed)\n'
            '  14.3.1 (Installed)\n'
            '  14.3 (Available)',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/x/xcodes.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'xcodes installed';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'xcodes', tokenLength: 6, complete: true),
        CommandToken(token: 'select', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['  14.3', '  14.3.1', '* 15.0']);
    // The plain available line is installable from `select`.
    expect(suggestions.map((suggestion) => suggestion.icon).toList(),
        ['🔨', '🔨', '⭐️']);
  });
}
