import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/nuxi.dart';
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

/// Finds the `add` subcommand's TEMPLATE arg generator in the parsed spec.
FigGenerator? _templateGenerator(FigSpec spec) {
  final add =
      spec.subcommands!.firstWhere((sub) => sub.nameList.contains('add'));
  return add.args!.first.generatorsList.first;
}

void main() {
  test('nuxi JSON references the TEMPLATE suggestions handler ID', () async {
    final source = await File('assets/specs/n/nuxi.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'nuxi');
    expect(source, contains(nuxiTemplatesSuggestionsHandler));

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
    expect(ids.toSet(), {nuxiTemplatesSuggestionsHandler});
  });

  test('strict-mode parse resolves the suggestions ref to a custom generator',
      () async {
    final registry = JsonHandlerRegistry();
    registerNuxiHandlers(registry);
    final source = await File('assets/specs/n/nuxi.json').readAsString();

    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'nuxi');
    expect(registry.unresolvedHandlers, isEmpty);

    final add =
        spec.subcommands!.firstWhere((sub) => sub.nameList.contains('add'));
    expect(add.args, hasLength(2));
    final generator = add.args!.first.generatorsList.first;
    expect(generator.custom, isNotNull);
  });

  test('TEMPLATE suggestions handler returns every template with metadata',
      () async {
    final registry = JsonHandlerRegistry();
    registerNuxiHandlers(registry);

    final suggestions = await registry
        .custom(nuxiTemplatesSuggestionsHandler)!(['nuxi', 'add', ''], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(), [
      'component',
      'composable',
      'layout',
      'plugin',
      'page',
      'middleware',
      'api',
    ]);
    expect(suggestions.first.description, 'Generate a nuxt component');
    expect(suggestions.last.description, 'Generate a nuxt api');
    expect(suggestions.map((item) => item.icon).toSet(),
        {'fig://template?color=0079ff&badge=+'});
  });

  test('TEMPLATE suggestions handler filters by typed prefix', () async {
    final registry = JsonHandlerRegistry();
    registerNuxiHandlers(registry);

    final com = await registry
        .custom(nuxiTemplatesSuggestionsHandler)!(['nuxi', 'add', 'com'], null, null);
    expect(com.map((item) => item.nameSingle ?? '').toList(),
        ['component', 'composable']);

    final a =
        await registry.custom(nuxiTemplatesSuggestionsHandler)!(['nuxi', 'add', 'a'], null, null);
    expect(a.map((item) => item.nameSingle ?? '').toList(), ['api']);

    final z =
        await registry.custom(nuxiTemplatesSuggestionsHandler)!(['nuxi', 'add', 'z'], null, null);
    expect(z, isEmpty);
  });

  test('TEMPLATE suggestions generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNuxiHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/n/nuxi.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _templateGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no TEMPLATE generator in the parsed spec');

    final all = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'nuxi', tokenLength: 4, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(all.map((suggestion) => suggestion.name).toList(), [
      'component',
      'composable',
      'layout',
      'plugin',
      'page',
      'middleware',
      'api',
    ]);
    expect(all.first.description, 'Generate a nuxt component');
    expect(all.first.icon, 'fig://template?color=0079ff&badge=+');

    final com = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'nuxi', tokenLength: 4, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: 'com', tokenLength: 3, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(com.map((suggestion) => suggestion.name).toList(),
        ['component', 'composable']);
  });
}
