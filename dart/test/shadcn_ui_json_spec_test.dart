import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/shadcn_ui.dart';
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
  test('shadcn-ui JSON binds both custom generators to the declared IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerShadcnUiHandlers(handlers);
    final source = await File('assets/specs/s/shadcn-ui.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(shadcnUiAddComponentsCustomHandler));
    expect(source, contains(shadcnUiDiffComponentsCustomHandler));
    expect(document['name'], 'shadcn-ui');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator in generators is List ? generators : [generators]) {
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
    expect(ids.toSet(), {
      shadcnUiAddComponentsCustomHandler,
      shadcnUiDiffComponentsCustomHandler,
    });
  });

  test('add component generator returns the full registry on an empty prefix',
      () async {
    final registry = JsonHandlerRegistry();
    registerShadcnUiHandlers(registry);

    final suggestions = await registry
        .custom(shadcnUiAddComponentsCustomHandler)!(
      ['shadcn-ui', 'add', ''],
      null,
      null,
    );
    expect(suggestions.length, 63);
    expect(suggestions.map((item) => item.nameSingle).take(3),
        ['accordion', 'alert', 'alert-dialog']);
    expect(suggestions.last.nameSingle, 'tooltip');
    expect(suggestions.first.description, 'registry:ui');
    expect(suggestions.first.icon, 'fig://icon?type=box');
    expect(suggestions.first.priority, 50);
  });

  test('add component generator filters by the typed prefix', () async {
    final registry = JsonHandlerRegistry();
    registerShadcnUiHandlers(registry);

    final suggestions = await registry
        .custom(shadcnUiAddComponentsCustomHandler)!(
      ['shadcn-ui', 'add', 'bu'],
      null,
      null,
    );
    expect(suggestions.map((item) => item.nameSingle),
        ['bubble', 'button', 'button-group']);

    final more = await registry.custom(shadcnUiAddComponentsCustomHandler)!(
      ['shadcn-ui', 'add', 'to'],
      null,
      null,
    );
    expect(more.map((item) => item.nameSingle),
        ['toast', 'toggle', 'toggle-group', 'tooltip']);
  });

  test('diff component generator filters by the typed prefix', () async {
    final registry = JsonHandlerRegistry();
    registerShadcnUiHandlers(registry);

    final suggestions = await registry
        .custom(shadcnUiDiffComponentsCustomHandler)!(
      ['shadcn-ui', 'diff', 'se'],
      null,
      null,
    );
    expect(suggestions.map((item) => item.nameSingle),
        ['select', 'separator']);

    final none = await registry.custom(shadcnUiDiffComponentsCustomHandler)!(
      ['shadcn-ui', 'diff', 'zzz'],
      null,
      null,
    );
    expect(none, isEmpty);
  });

  test('add component generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerShadcnUiHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/s/shadcn-ui.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator =
        spec.subcommands!.first.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'shadcn-ui', tokenLength: 9, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: 'ch', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
      suggestions.map((suggestion) => suggestion.name).toList(),
      ['chart', 'checkbox'],
    );
  });
}
