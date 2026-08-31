import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kill.dart';
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
  test('kill JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerKillHandlers(handlers);
    final source = await File('assets/specs/k/kill.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(killPidsPostProcessHandler));
    expect(source, contains(killSignalNamesPostProcessHandler));
    expect(document['name'], 'kill');

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
      killPidsPostProcessHandler,
      killSignalNamesPostProcessHandler,
    });
  });

  test('process post-processor maps each ps line to a pid suggestion', () {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    final output = '1    /sbin/launchd\n'
        '12345 /Applications/Safari.app/Contents/MacOS/Safari\n'
        '67890 /usr/bin/vim';

    final suggestions =
        registry.postProcess(killPidsPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['1', '12345', '67890']);
    expect(
        suggestions.map((item) => item.description),
        [
          '/sbin/launchd',
          '/Applications/Safari.app/Contents/MacOS/Safari',
          '/usr/bin/vim',
        ]);
    expect(suggestions.map((item) => item.displayName),
        ['1 (launchd)', '12345 (Safari)', '67890 (vim)']);
    expect(suggestions.map((item) => item.icon),
        ['fig://icon?type=gear', 'fig:///Applications/Safari.app', 'fig://icon?type=gear']);
  });

  test('process post-processor handles empty output and trailing newlines', () {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    expect(registry.postProcess(killPidsPostProcessHandler)!(''), isEmpty);
    // A trailing newline leaves one empty entry; it must be skipped.
    expect(registry.postProcess(killPidsPostProcessHandler)!('1 /sbin/launchd\n'),
        hasLength(1));
  });

  test('signal names post-processor extracts each word from kill -l output', () {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    final output = 'HUP INT QUIT\nILL TRAP ABRT BUS FPE';

    final suggestions =
        registry.postProcess(killSignalNamesPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['HUP', 'INT', 'QUIT', 'ILL', 'TRAP', 'ABRT', 'BUS', 'FPE']);
    expect(suggestions.first.description, 'Send HUP instead of TERM');
    expect(suggestions.last.description, 'Send FPE instead of TERM');
    expect(suggestions.first.icon, 'fig://icon?type=string');
  });

  test('signal names post-processor yields nothing when output has no words', () {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    expect(
        registry.postProcess(killSignalNamesPostProcessHandler)!('---\n   \n'),
        isEmpty);
    expect(registry.postProcess(killSignalNamesPostProcessHandler)!(''), isEmpty);
  });

  test('kill pid generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c ps axo pid,comm | sed 1d': const ProcessRunResult(
        stdout: '1    /sbin/launchd\n'
            '12345 /Applications/Safari.app/Contents/MacOS/Safari\n'
            '67890 /usr/bin/vim',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kill.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.join(' ') == 'bash -c ps axo pid,comm | sed 1d';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kill', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['1', '12345', '67890']);
  });

  test('kill -s signal generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerKillHandlers(registry);
    final adapter = _FakeAdapter({
      'env kill -l': const ProcessRunResult(
        stdout: 'HUP INT QUIT ILL TRAP ABRT BUS FPE',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kill.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final option = spec.options!.firstWhere((opt) => opt.nameList.contains('-s'));
    final generator = option.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'env kill -l';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kill', tokenLength: 4, complete: true),
        CommandToken(token: '-s', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['HUP', 'INT', 'QUIT', 'ILL', 'TRAP', 'ABRT', 'BUS', 'FPE']);
  });
}
