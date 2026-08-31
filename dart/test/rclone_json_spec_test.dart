import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rclone.dart';
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
  test('rclone JSON binds every handler reference to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRcloneHandlers(handlers);
    final source = await File('assets/specs/r/rclone.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rcloneRemotePostProcessHandler));
    expect(source, contains(rcloneRemoteGeneratorHandler));
    expect(source, contains(rcloneDedupeModeSuggestionsHandler));
    expect(source, contains(rcloneGenautocompleteSubcommandsHandler));
    expect(source, contains(rcloneLsfFormatSuggestionsHandler));
    expect(document['name'], 'rclone');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final handler = node['handler'];
      if (handler is String) ids.add(handler);
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids.toSet(), {
      rcloneRemotePostProcessHandler,
      rcloneRemoteGeneratorHandler,
      rcloneDedupeModeSuggestionsHandler,
      rcloneGenautocompleteSubcommandsHandler,
      rcloneLsfFormatSuggestionsHandler,
    });
  });

  test('remote post-processor maps each line to a remote name', () {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final remotes =
        registry.postProcess(rcloneRemotePostProcessHandler)!('gdrive\ns3');
    expect(remotes.map((item) => item.nameSingle ?? ''), ['gdrive', 's3']);
  });

  test('remote post-processor keeps empty entries like the source split', () {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final trailing =
        registry.postProcess(rcloneRemotePostProcessHandler)!('gdrive\n');
    expect(trailing.map((item) => item.nameSingle ?? ''), ['gdrive', '']);

    final empty = registry.postProcess(rcloneRemotePostProcessHandler)!('');
    expect(empty.map((item) => item.nameSingle ?? ''), ['']);
  });

  test('remote custom generator runs listremotes and maps the output', () async {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final result = await registry.custom(rcloneRemoteGeneratorHandler)!(
      const [],
      (input) async => ExecuteCommandOutput(
          stdout: 'gdrive\ns3\ndropbox', stderr: '', status: 0),
      null,
    );
    expect(result.map((item) => item.nameSingle ?? ''),
        ['gdrive', 's3', 'dropbox']);
  });

  test('remote custom generator returns empty on failure or missing adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final failed = await registry.custom(rcloneRemoteGeneratorHandler)!(
      const [],
      (input) async => ExecuteCommandOutput(
          stdout: 'gdrive', stderr: 'boom', status: 1),
      null,
    );
    expect(failed, isEmpty);

    final noAdapter = await registry.custom(rcloneRemoteGeneratorHandler)!(
        const [], null, null);
    expect(noAdapter, isEmpty);
  });

  test('dedupe-mode suggestions map first/newest/oldest/largest/smallest',
      () async {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final result = await registry.custom(rcloneDedupeModeSuggestionsHandler)!(
        const [], null, null);
    expect(result.map((item) => item.nameSingle ?? ''),
        ['first', 'newest', 'oldest', 'largest', 'smallest']);
    expect(result.first.description,
        'removes identical files then keeps the first one.');
    expect(result.last.description,
        'removes identical files then keeps the smallest one.');
  });

  test('genautocomplete subcommands map bash/fish/zsh', () async {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final result =
        await registry.custom(rcloneGenautocompleteSubcommandsHandler)!(
            const [], null, null);
    expect(result.map((item) => item.nameSingle ?? ''),
        ['bash', 'fish', 'zsh']);
    expect(result.map((item) => item.description), [
      'Output bash completion script for rclone.',
      'Output fish completion script for rclone.',
      'Output zsh completion script for rclone.',
    ]);
    expect(
        result.every((item) => item.type == SuggestionType.subcommand), isTrue);
  });

  test('lsf format suggestions map the format letter to its meaning', () async {
    final registry = JsonHandlerRegistry();
    registerRcloneHandlers(registry);

    final result = await registry.custom(rcloneLsfFormatSuggestionsHandler)!(
        const [], null, null);
    expect(result.map((item) => item.nameSingle ?? ''),
        ['p', 's', 't', 'h', 'i', 'o', 'm']);
    expect(result.map((item) => item.description), [
      'path',
      'size',
      'modification time',
      'hash',
      'ID of object',
      'Original ID of underlying object',
      'MimeType of object if known',
    ]);
  });

  test('about remote generator runs listremotes and post-processes end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerRcloneHandlers(handlers);
    final adapter = _FakeAdapter({
      'rclone listremotes': const ProcessRunResult(
          stdout: 'gdrive\ns3\ndropbox', stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/r/rclone.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'rclone listremotes';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rclone', tokenLength: 6, complete: true),
        CommandToken(token: 'about', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['gdrive', 's3', 'dropbox']);
  });

  test('cat custom generator runs listremotes end to end', () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerRcloneHandlers(handlers);
    final adapter = _FakeAdapter({
      'rclone listremotes': const ProcessRunResult(
          stdout: 'gdrive\ns3', stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/r/rclone.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final cat =
        spec.subcommands!.firstWhere((subcommand) => subcommand.nameList.contains('cat'));
    final generator = cat.args!.single.generatorsList.single;
    expect(generator.custom, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rclone', tokenLength: 6, complete: true),
        CommandToken(token: 'cat', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['gdrive', 's3']);
  });
}
