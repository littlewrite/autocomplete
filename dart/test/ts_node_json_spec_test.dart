import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ts_node.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._directoryEntries);

  final List<FileSystemEntry> _directoryEntries;

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
      _directoryEntries;

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async =>
      const ProcessRunResult(stdout: '');
}

void main() {
  test('ts-node JSON binds every filterTemplateSuggestions to the handler ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTsNodeHandlers(handlers);
    final source = await File('assets/specs/t/ts-node.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(tsNodeProjectFilterTemplateSuggestionsHandler));
    expect(document['name'], 'ts-node');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final filter = (generator as Map)['filterTemplateSuggestions'];
          if (filter is Map) {
            ids.add(filter['handler'] as String);
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
    expect(ids.toSet(), {tsNodeProjectFilterTemplateSuggestionsHandler});
  });

  test('filter keeps .json files and folders, boosting config priorities', () {
    final registry = JsonHandlerRegistry();
    registerTsNodeHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        tsNodeProjectFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'tsconfig.json', priority: 50),
      FigSuggestion(name: 'package.json', priority: 50),
      FigSuggestion(name: 'tsconfig.build.json', priority: 50),
      FigSuggestion(name: 'src/', priority: 50),
      FigSuggestion(name: 'README.md', priority: 50),
      FigSuggestion(name: 'index.ts', priority: 50),
    ]);

    expect(filtered.map((item) => item.nameSingle ?? ''),
        ['tsconfig.json', 'package.json', 'tsconfig.build.json', 'src/']);
    expect(filtered.map((item) => item.priority), [100, 76, 76, 50]);
  });

  test('filter yields nothing when no .json file or folder matches', () {
    final registry = JsonHandlerRegistry();
    registerTsNodeHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        tsNodeProjectFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'README.md', priority: 50),
      FigSuggestion(name: 'main.ts', priority: 50),
    ]);

    expect(filtered, isEmpty);
  });

  test('ts-node spec parses with the filter handler resolved', () async {
    final registry = JsonHandlerRegistry();
    registerTsNodeHandlers(registry);
    final source = await File('assets/specs/t/ts-node.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    expect(registry.unresolvedHandlers, isEmpty);
    expect(spec.name, 'ts-node');
    expect(spec.options, isNotEmpty);
  });

  test('ts-node --project generator filters template output end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTsNodeHandlers(registry);
    final adapter = _FakeAdapter(const [
      FileSystemEntry(name: 'tsconfig.json', isDirectory: false),
      FileSystemEntry(name: 'package.json', isDirectory: false),
      FileSystemEntry(name: 'README.md', isDirectory: false),
      FileSystemEntry(name: 'src', isDirectory: true),
      FileSystemEntry(name: 'main.ts', isDirectory: false),
    ]);

    final source = await File('assets/specs/t/ts-node.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final option = spec.options!.firstWhere((opt) => opt.nameList.contains('--project'));
    final generator = option.args!
        .expand((arg) => arg.generatorsList)
        .single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ts-node', tokenLength: 7, complete: true),
        CommandToken(token: '--project', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['tsconfig.json', 'package.json', 'src/']);
  });
}
