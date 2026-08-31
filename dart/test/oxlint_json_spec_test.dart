import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/oxlint.dart';
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
  test('oxlint JSON binds every generator to the three handler IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerOxlintHandlers(handlers);
    final source = await File('assets/specs/o/oxlint.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(oxlintConfigFilterTemplateSuggestionsHandler));
    expect(source, contains(oxlintTsconfigFilterTemplateSuggestionsHandler));
    expect(source, contains(oxlintLintArgCustomHandler));
    expect(document['name'], 'oxlint');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'filterTemplateSuggestions']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      oxlintConfigFilterTemplateSuggestionsHandler,
      oxlintTsconfigFilterTemplateSuggestionsHandler,
      oxlintLintArgCustomHandler,
    });
  });

  test('lint arg custom handler lists all eight categories with priorities',
      () async {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final handler = registry.custom(oxlintLintArgCustomHandler)!;

    final categories = await handler(
      ['oxlint', '--deny', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
      null,
    );

    expect(categories.map((item) => item.nameSingle ?? ''), [
      'all',
      'correctness',
      'suspicious',
      'restriction',
      'perf',
      'pedantic',
      'style',
      'nursery',
    ]);
    expect(categories.map((item) => item.priority),
        [55, 56, 54, 53, 53, 52, 51, 50]);
    expect(categories.map((item) => item.icon).toSet(), {'📦'});
    expect(categories.first.description, 'All lints (except nursery)');
    expect(categories.last.description, 'Lints that are still under development');
  });

  test(
      'config filter keeps .json/rc names and boosts ESLint and oxlint configs',
      () {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        oxlintConfigFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: '.eslintrc', priority: 50),
      FigSuggestion(name: '.eslintrc.json', priority: 50),
      FigSuggestion(name: '.oxlintrc', priority: 50),
      FigSuggestion(name: '.oxlintrc.json', priority: 50),
      FigSuggestion(name: 'oxlint.json', priority: 50),
      FigSuggestion(name: 'oxlintrc.json', priority: 50),
      FigSuggestion(name: 'package.json', priority: 50),
      FigSuggestion(name: 'other.json', priority: 50),
      FigSuggestion(name: 'tsconfig.json', priority: 50),
      FigSuggestion(name: 'nvmrc', priority: 50),
      FigSuggestion(name: 'README.md', priority: 50),
      FigSuggestion(name: 'index.html', priority: 50),
    ]);

    expect(filtered, hasLength(10));

    // ESLint-compatible configs are re-described and bumped to priority 51.
    expect(filtered[0].nameSingle, '.eslintrc');
    expect(filtered[0].priority, 51);
    expect(filtered[0].description, 'Oxlint is compatible with ESLint configs');
    expect(filtered[1].nameSingle, '.eslintrc.json');
    expect(filtered[1].priority, 51);
    expect(filtered[1].description, 'Oxlint is compatible with ESLint configs');

    // oxlint config files are described and bumped to priority 52.
    expect(filtered[2].nameSingle, '.oxlintrc');
    expect(filtered[2].priority, 52);
    expect(filtered[2].description, 'oxlint config file');
    expect(filtered[3].nameSingle, '.oxlintrc.json');
    expect(filtered[3].priority, 52);
    expect(filtered[3].description, 'oxlint config file');
    expect(filtered[4].nameSingle, 'oxlint.json');
    expect(filtered[4].priority, 52);
    expect(filtered[4].description, 'oxlint config file');
    expect(filtered[5].nameSingle, 'oxlintrc.json');
    expect(filtered[5].priority, 52);
    expect(filtered[5].description, 'oxlint config file');

    // Other .json / rc files pass through untouched.
    expect(filtered[6].nameSingle, 'package.json');
    expect(filtered[6].priority, 50);
    expect(filtered[7].nameSingle, 'other.json');
    expect(filtered[7].priority, 50);
    expect(filtered[8].nameSingle, 'tsconfig.json');
    expect(filtered[8].priority, 50);
    expect(filtered[9].nameSingle, 'nvmrc');
    expect(filtered[9].priority, 50);

    // Names not ending in `.json` or `rc` are dropped.
    expect(
        filtered.map((item) => item.nameSingle ?? '').contains('README.md'),
        isFalse);
    expect(
        filtered.map((item) => item.nameSingle ?? '').contains('index.html'),
        isFalse);
  });

  test('config filter drops non-config names (including nameless entries)', () {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        oxlintConfigFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'lint.json', priority: 50),
      FigSuggestion(name: 'notes.txt', priority: 50),
      FigSuggestion(),
      FigSuggestion(name: '.prettierrc', priority: 50),
      FigSuggestion(name: '.eslintrc', priority: 50),
    ]);

    expect(filtered.map((item) => item.nameSingle ?? '').toList(),
        ['lint.json', '.prettierrc', '.eslintrc']);
    expect(filtered.last.priority, 51);
  });

  test('tsconfig filter keeps .json files and boosts tsconfig variants', () {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final filter = registry.filterTemplateSuggestions(
        oxlintTsconfigFilterTemplateSuggestionsHandler)!;

    final filtered = filter(const [
      FigSuggestion(name: 'tsconfig.json', priority: 50),
      FigSuggestion(name: 'tsconfig.build.json', priority: 50),
      FigSuggestion(name: 'tsconfig.base.json', priority: 50),
      FigSuggestion(name: 'tsconfig.node.json', priority: 50),
      FigSuggestion(name: 'other.json', priority: 50),
      FigSuggestion(name: 'package.json', priority: 50),
      FigSuggestion(name: 'notconfig.build.json', priority: 50),
      FigSuggestion(name: 'README.md', priority: 50),
    ]);

    expect(filtered, hasLength(7));

    // tsconfig.json itself is boosted to 52.
    expect(filtered[0].nameSingle, 'tsconfig.json');
    expect(filtered[0].priority, 52);

    // tsconfig.<name>.json variants are boosted to 51.
    expect(filtered[1].nameSingle, 'tsconfig.build.json');
    expect(filtered[1].priority, 51);
    expect(filtered[2].nameSingle, 'tsconfig.base.json');
    expect(filtered[2].priority, 51);
    expect(filtered[3].nameSingle, 'tsconfig.node.json');
    expect(filtered[3].priority, 51);

    // Other .json files pass through untouched.
    expect(filtered[4].nameSingle, 'other.json');
    expect(filtered[4].priority, 50);
    expect(filtered[5].nameSingle, 'package.json');
    expect(filtered[5].priority, 50);
    expect(filtered[6].nameSingle, 'notconfig.build.json');
    expect(filtered[6].priority, 50);

    // Non-.json names are dropped.
    expect(
        filtered.map((item) => item.nameSingle ?? '').contains('README.md'),
        isFalse);
  });

  test('oxlint spec parses with every handler resolved', () async {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final source = await File('assets/specs/o/oxlint.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    expect(registry.unresolvedHandlers, isEmpty);
    expect(spec.name, 'oxlint');
    expect(spec.options, isNotEmpty);
  });

  test('--deny lint arg lists categories through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerOxlintHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/o/oxlint.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final deny = spec.options!
        .firstWhere((option) => option.nameList.contains('--deny'));
    final categoriesGenerator = deny.args!.single.generatorsList.first;
    expect(categoriesGenerator.custom, isA<Function>());

    final suggestions = await runGeneratorSuggestions(
      categoriesGenerator,
      const [
        CommandToken(token: 'oxlint', tokenLength: 6, complete: true),
        CommandToken(token: '--deny', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      'all',
      'correctness',
      'suspicious',
      'restriction',
      'perf',
      'pedantic',
      'style',
      'nursery',
    ]);
  });
}
