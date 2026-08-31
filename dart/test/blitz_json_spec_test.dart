import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/blitz.dart';
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

const _expectedKinds = [
  'all',
  'crud',
  'model',
  'pages',
  'queries',
  'query',
  'mutations',
  'mutation',
  'resource',
];

void main() {
  test('blitz JSON binds the generate types suggestions handler', () async {
    final handlers = JsonHandlerRegistry();
    registerBlitzHandlers(handlers);
    final source = await File('assets/specs/b/blitz.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(blitzGenerateTypesHandler));
    expect(document['name'], 'blitz');

    final ids = <String>[];
    void collectSuggestionHandlers(dynamic node) {
      if (node is! Map) return;
      final suggestions = node['suggestions'];
      if (suggestions is Map && suggestions['handler'] is String) {
        ids.add(suggestions['handler'] as String);
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectSuggestionHandlers(item);
          }
        } else if (value is Map) {
          collectSuggestionHandlers(value);
        }
      }
    }

    collectSuggestionHandlers(document);
    expect(ids.toSet(), {blitzGenerateTypesHandler});
  });

  test('generate types handler suggests all kinds with trailing space', () async {
    final registry = JsonHandlerRegistry();
    registerBlitzHandlers(registry);
    final handler = registry.custom(blitzGenerateTypesHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.map((s) => s.nameSingle ?? ''), _expectedKinds);
    expect(
        suggestions.map((s) => s.insertValue),
        _expectedKinds
            .map((kind) => '$kind ')
            .toList());
    expect(suggestions.map((s) => s.priority).toSet(), {100});
  });

  test('generate types handler is stable regardless of tokens/context', () async {
    final registry = JsonHandlerRegistry();
    registerBlitzHandlers(registry);
    final handler = registry.custom(blitzGenerateTypesHandler)!;

    final withTokens = await handler(
      const ['generate', 'mod'],
      null,
      null,
    );
    expect(withTokens.map((s) => s.nameSingle ?? ''), _expectedKinds);
  });

  test('blitz generate type suggestions run end to end', () async {
    final registry = JsonHandlerRegistry();
    registerBlitzHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/b/blitz.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generate = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('generate'));
    final generator = generate.args!.first.generatorsList
        .firstWhere((candidate) => candidate.custom is Function);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'blitz', tokenLength: 5, complete: true),
        CommandToken(token: 'generate', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        _expectedKinds);
  });
}
