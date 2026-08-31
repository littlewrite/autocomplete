import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rsync.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter();

  final Map<String, ProcessRunResult> _results = const {};

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
  test('rsync JSON binds the compress-level suggestions handler', () async {
    final handlers = JsonHandlerRegistry();
    registerRsyncHandlers(handlers);
    final source = await File('assets/specs/r/rsync.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rsyncCompressLevelsSuggestionsHandler));
    expect(document['name'], 'rsync');

    final options = document['options'] as List;
    final compressLevel = options[92] as Map;
    expect(compressLevel['name'], '--compress-level');
    final args = compressLevel['args'] as Map;
    final suggestions = args['suggestions'] as Map;
    expect(suggestions['handler'], rsyncCompressLevelsSuggestionsHandler);
  });

  test('compress-level suggestions handler returns levels 0..9', () async {
    final registry = JsonHandlerRegistry();
    registerRsyncHandlers(registry);
    final suggestions =
        await registry.custom(rsyncCompressLevelsSuggestionsHandler)!(
      ['rsync', '--compress-level', ''],
      null,
      null,
    );

    expect(suggestions.map((item) => item.nameSingle),
        ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']);
    expect(suggestions.first.nameSingle, '0');
    expect(suggestions.last.nameSingle, '9');
  });

  test('compress-level suggestions run end to end through the generator runtime',
      () async {
    final registry = JsonHandlerRegistry();
    registerRsyncHandlers(registry);
    final adapter = _FakeAdapter();
    final source = await File('assets/specs/r/rsync.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final option = spec.options!
        .firstWhere((item) => item.nameList.contains('--compress-level'));
    final generator = option.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rsync', tokenLength: 5, complete: true),
        CommandToken(token: '--compress-level', tokenLength: 16, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']);
  });
}
