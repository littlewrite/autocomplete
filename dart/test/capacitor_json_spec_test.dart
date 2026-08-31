import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/capacitor.dart';
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

/// A canned [ExecuteCommandFunction] so the custom handler can be tested in
/// isolation without a real process.
ExecuteCommandFunction _stubExecute(String stdout, {int status = 0}) {
  return (ExecuteCommandInput input) async =>
      ExecuteCommandOutput(stdout: stdout, stderr: '', status: status);
}

void main() {
  test('capacitor JSON binds every generator to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCapacitorHandlers(handlers);
    final source = await File('assets/specs/c/capacitor.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(capacitorTargetGeneratorCustomHandler));
    expect(document['name'], 'capacitor');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) {
            ids.add(custom['handler'] as String);
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
    expect(ids.toSet(), {capacitorTargetGeneratorCustomHandler});
  });

  test(
      'target custom generator parses run --list output, skipping the two '
      'header lines', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;
    const output = 'Discovery:\n'
        '----------\n'
        'Pixel 7 Pro  API 33  emulator-5554\n'
        'Pixel 6      API 32  emulator-5556\n';

    final suggestions = await handler(
        const ['capacitor', 'run', 'android', '--target'],
        _stubExecute(output),
        null);

    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['emulator-5554', 'emulator-5556']);
    expect(suggestions.map((item) => item.displayName),
        ['Pixel 7 Pro API 33', 'Pixel 6 API 32']);
    expect(suggestions.map((item) => item.icon), ['📱', '📱']);
  });

  test('target custom generator also runs for the ios platform', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;
    const output = 'Discovery:\n'
        '----------\n'
        'iPhone 15 Pro  iOS 17.0  ABCDEFGH\n';

    final suggestions = await handler(
        const ['capacitor', 'run', 'ios', '--target'],
        _stubExecute(output),
        null);

    expect(suggestions.map((item) => item.nameSingle ?? ''), ['ABCDEFGH']);
    expect(suggestions.map((item) => item.displayName),
        ['iPhone 15 Pro iOS 17.0']);
  });

  test('target custom generator returns empty for a non-platform token',
      () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;

    final suggestions = await handler(
        const ['capacitor', 'run', 'web', '--target'],
        _stubExecute('unused'),
        null);

    expect(suggestions, isEmpty);
  });

  test('target custom generator returns empty when tokens are too short',
      () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;

    expect(
        await handler(const ['capacitor', 'run'], _stubExecute('unused'), null),
        isEmpty);
  });

  test('target custom generator returns empty without an executeCommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;

    expect(
        await handler(const ['capacitor', 'run', 'android', '--target'], null,
            null),
        isEmpty);
  });

  test('target custom generator returns empty on a failing command', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;

    final suggestions = await handler(
        const ['capacitor', 'run', 'android', '--target'],
        _stubExecute('boom', status: 1),
        null);

    expect(suggestions, isEmpty);
  });

  test('target custom generator returns empty for empty output', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;

    final suggestions = await handler(
        const ['capacitor', 'run', 'android', '--target'],
        _stubExecute(''),
        null);

    expect(suggestions, isEmpty);
  });

  test('target custom generator skips lines without three columns', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final handler = registry.custom(capacitorTargetGeneratorCustomHandler)!;
    const output = 'Header A\n'
        'Header B\n'
        'Pixel 7 Pro\n'
        'Pixel 8  API 34  emulator-5557\n';

    final suggestions = await handler(
        const ['capacitor', 'run', 'android', '--target'],
        _stubExecute(output),
        null);

    expect(suggestions.map((item) => item.nameSingle ?? ''), ['emulator-5557']);
  });

  test('target generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCapacitorHandlers(registry);
    final adapter = _FakeAdapter({
      'npx capacitor run android --list': const ProcessRunResult(
        stdout: 'Discovery:\n'
            '----------\n'
            'Pixel 7 Pro  API 33  emulator-5554\n'
            'Pixel 6      API 32  emulator-5556\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/capacitor.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final runSubcommand =
        spec.subcommands!.firstWhere((sub) => sub.nameList.contains('run'));
    final targetOption = runSubcommand.options!
        .firstWhere((option) => option.nameList.contains('--target'));
    final generator = targetOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'capacitor', tokenLength: 9, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: 'android', tokenLength: 7, complete: true),
        CommandToken(token: '--target', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['emulator-5554', 'emulator-5556']);
    expect(suggestions.map((suggestion) => suggestion.icon).toList(),
        ['📱', '📱']);
  });
}
