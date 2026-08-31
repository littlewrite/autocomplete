import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/scc.dart';
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

const _sccOutput = 'C (c,h)\n'
    'Go (go)\n'
    'JavaScript (js,jsx)\n'
    'TypeScript (ts,tsx)';

/// A fake `scc --language` execute command returning [_sccOutput].
ExecuteCommandFunction _sccLanguageCommand() {
  return (ExecuteCommandInput input) async {
    expect(input.command, 'scc');
    expect(input.args, ['--language']);
    return const ExecuteCommandOutput(
      stdout: _sccOutput,
      stderr: '',
      status: 0,
    );
  };
}

/// A fake `ls -lAF1` execute command (no trailing newline).
ExecuteCommandFunction _lsCommand() {
  return (ExecuteCommandInput input) async {
    expect(input.command, 'ls');
    expect(input.args, ['-lAF1']);
    return const ExecuteCommandOutput(
      stdout: 'file.txt\nsrc/\nbin/opt/',
      stderr: '',
      status: 0,
    );
  };
}

void main() {
  test('scc JSON binds every generator to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSccHandlers(handlers);
    final source = await File('assets/specs/s/scc.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(sccCountAsCustomHandler));
    expect(source, contains(sccFormatMultiCustomHandler));
    expect(source, contains(sccIncludeExtCustomHandler));
    expect(source, contains(sccRemapAllCustomHandler));
    expect(source, contains(sccRemapUnknownCustomHandler));
    expect(document['name'], 'scc');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final handler = (generator as Map)['handler'];
          if (handler is String) ids.add(handler);
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
      sccCountAsCustomHandler,
      sccFormatMultiCustomHandler,
      sccIncludeExtCustomHandler,
      sccRemapAllCustomHandler,
      sccRemapUnknownCustomHandler,
    });
  });

  test('count-as suggests extension keys with a colon insert value', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccCountAsCustomHandler)!;

    final keys = await handler(['scc', '--count-as', ''], _sccLanguageCommand(), null);
    expect(keys.map((item) => item.nameSingle).toList(),
        ['c', 'h', 'go', 'js', 'jsx', 'ts', 'tsx']);
    expect(keys.first.description, 'C');
    expect(keys.first.insertValue, 'c:');
    expect(keys[3].insertValue, 'js:');
  });

  test('count-as drops keys already present in a comma-separated list',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccCountAsCustomHandler)!;

    final keys =
        await handler(['scc', '--count-as', 'js:javascript,'], _sccLanguageCommand(), null);
    expect(keys.map((item) => item.nameSingle).toList(),
        ['c', 'h', 'go', 'jsx', 'ts', 'tsx']);
  });

  test('count-as suggests language values after the separator', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccCountAsCustomHandler)!;

    final values =
        await handler(['scc', '--count-as', 'js:'], _sccLanguageCommand(), null);
    expect(values.map((item) => item.nameSingle).toList(),
        ['C', 'Go', 'JavaScript', 'TypeScript']);
    expect(values.first.insertValue, isNull);
  });

  test('include-ext suggests extensions as a comma list without repeats',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccIncludeExtCustomHandler)!;

    final all = await handler(['scc', '--include-ext', ''], _sccLanguageCommand(), null);
    expect(all.map((item) => item.nameSingle).toList(),
        ['c', 'h', 'go', 'js', 'jsx', 'ts', 'tsx']);
    expect(all.first.icon, 'fig://icon?type=string');
    expect(all.first.insertValue, isNull);

    final used =
        await handler(['scc', '--include-ext', 'js,'], _sccLanguageCommand(), null);
    expect(used.map((item) => item.nameSingle).toList(),
        ['c', 'h', 'go', 'jsx', 'ts', 'tsx']);
  });

  test('format-multi suggests output-format keys with a colon insert value',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccFormatMultiCustomHandler)!;

    final keys = await handler(['scc', '--format-multi', ''], _lsCommand(), null);
    expect(keys.map((item) => item.nameSingle).toList(), [
      'tabular',
      'wide',
      'json',
      'csv',
      'csv-stream',
      'cloc-yaml',
      'html',
      'html-table',
      'sql',
      'sql-insert',
    ]);
    expect(keys.first.icon, 'fig://icon?type=string');
    expect(keys.first.insertValue, 'tabular:');
  });

  test('format-multi suggests files and stdout as values', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccFormatMultiCustomHandler)!;

    final values =
        await handler(['scc', '--format-multi', 'tabular:'], _lsCommand(), null);
    expect(values.map((item) => item.nameSingle ?? '').toList(),
        ['file.txt', '', '', 'stdout']);
    expect(values.first.icon, 'fig://path/file.txt');
    expect(values.last.priority, 75);
  });

  test('format-multi keeps the empty entry from a trailing newline', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccFormatMultiCustomHandler)!;

    final values = await handler(['scc', '--format-multi', 'tabular:'],
        (input) async => const ExecuteCommandOutput(
            stdout: 'file.txt\n', stderr: '', status: 0),
        null);
    expect(values.map((item) => item.nameSingle ?? '').toList(),
        ['file.txt', '', 'stdout']);
  });

  test('remap-all and remap-unknown have no keys but suggest language values',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final all = registry.custom(sccRemapAllCustomHandler)!;
    final unknown = registry.custom(sccRemapUnknownCustomHandler)!;

    expect(
        await all(['scc', '--remap-all', '-*- C++ -*-'], _sccLanguageCommand(), null),
        isEmpty);
    expect(await unknown(['scc', '--remap-unknown', 'foo'], _sccLanguageCommand(), null),
        isEmpty);

    final allValues = await all(
        ['scc', '--remap-all', '-*- C++ -*-:'], _sccLanguageCommand(), null);
    expect(allValues.map((item) => item.nameSingle).toList(),
        ['C', 'Go', 'JavaScript', 'TypeScript']);

    final unknownValues = await unknown(
        ['scc', '--remap-unknown', 'foo:'], _sccLanguageCommand(), null);
    expect(unknownValues.map((item) => item.nameSingle).toList(),
        ['C', 'Go', 'JavaScript', 'TypeScript']);
  });

  test('every handler returns an empty list without an execute command',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    for (final id in [
      sccCountAsCustomHandler,
      sccFormatMultiCustomHandler,
      sccIncludeExtCustomHandler,
      sccRemapAllCustomHandler,
      sccRemapUnknownCustomHandler,
    ]) {
      final handler = registry.custom(id)!;
      expect(await handler(['scc', '--count-as', ''], null, null), isEmpty);
      expect(await handler(['scc', '--count-as', 'x:'], null, null), isEmpty);
    }
  });

  test('empty and failing scc output produce no suggestions', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final handler = registry.custom(sccCountAsCustomHandler)!;

    final empty = await handler(['scc', '--count-as', ''],
        (input) async =>
            const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
        null);
    expect(empty, isEmpty);

    final failed = await handler(['scc', '--count-as', ''],
        (input) async => const ExecuteCommandOutput(
            stdout: 'ignored', stderr: 'boom', status: 1),
        null);
    expect(failed, isEmpty);
  });

  test('count-as generator runs scc through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final adapter = _FakeAdapter({
      'scc --language': const ProcessRunResult(
        stdout: _sccOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/scc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final countAs =
        spec.options!.firstWhere((option) => option.nameList.contains('--count-as'));
    final generator = countAs.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'scc', tokenLength: 3, complete: true),
        CommandToken(token: '--count-as', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['c', 'h', 'go', 'js', 'jsx', 'ts', 'tsx']);
  });

  test('format-multi generator runs ls through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerSccHandlers(registry);
    final adapter = _FakeAdapter({
      'ls -lAF1': const ProcessRunResult(
        stdout: 'file.txt\nsrc/\nbin/opt/',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/scc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final formatMulti = spec.options!
        .firstWhere((option) => option.nameList.contains('--format-multi'));
    final generator = formatMulti.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'scc', tokenLength: 3, complete: true),
        CommandToken(token: '--format-multi', tokenLength: 14, complete: true),
        CommandToken(token: 'tabular:', tokenLength: 8, complete: false),
      ],
      '/work',
      adapter,
    );

    // The runtime drops empty-name suggestions from directory entries; the
    // handler's direct test preserves them.
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['file.txt', 'stdout']);
  });
}
