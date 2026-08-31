import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/esbuild.dart';
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
  test('esbuild JSON binds the single spec options handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerEsbuildHandlers(handlers);
    final source = await File('assets/specs/e/esbuild.json').readAsString();
    expect(source, contains(esbuildOptionsHandler));
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'esbuild');

    final ids = <String>{};
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
    expect(ids.toSet(), {esbuildOptionsHandler});
  });

  test('esbuild JSON parses with the options handler reference', () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerEsbuildHandlers(handlers);
    final source = await File('assets/specs/e/esbuild.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    expect(spec.name, 'esbuild');
    expect(spec.description, 'An extremely fast JavaScript bundler');
  });

  test('spec.options handler returns every esbuild option', () async {
    final registry = JsonHandlerRegistry();
    registerEsbuildHandlers(registry);
    final options =
        await registry.custom(esbuildOptionsHandler)!([], null, null);
    final names = options.map((item) => item.nameSingle ?? '').toList();
    expect(names.length, 60);
    expect(names.first, '--bundle');
    expect(names.last, '--version');
    expect(names, contains('--minify'));
    expect(names, contains('--sourcemap'));
    expect(names, contains('--sources-content'));
  });

  test('spec.options handler carries descriptions, priorities, insert values',
      () async {
    final registry = JsonHandlerRegistry();
    registerEsbuildHandlers(registry);
    final options =
        await registry.custom(esbuildOptionsHandler)!([], null, null);
    final byName = {
      for (final option in options) (option.nameSingle ?? ''): option,
    };
    expect(byName['--bundle']!.priority, 51);
    expect(byName['--bundle']!.description,
        'Bundle all dependencies into the output files');
    expect(byName['--sourcemap']!.priority, 51);
    expect(byName['--watch']!.priority, 50);
    expect(byName['--target']!.description, contains('chrome101'));
    expect(byName['--charset']!.insertValue, '--charset=utf8');
    expect(byName['--charset']!.displayName, '--charset=utf8');
    expect(byName['--sources-content']!.insertValue, '--sources-content=false');
  });

  test('spec.options handler ignores tokens and always returns the full list',
      () async {
    final registry = JsonHandlerRegistry();
    registerEsbuildHandlers(registry);
    final withTokens = await registry.custom(esbuildOptionsHandler)!(
        ['esbuild', '--bundle', '--'], null, null);
    final without = await registry.custom(esbuildOptionsHandler)!([], null, null);
    expect(withTokens.length, without.length);
    expect(withTokens.length, 60);
    expect(withTokens.map((item) => item.nameSingle ?? ''),
        without.map((item) => item.nameSingle ?? ''));
  });

  test('esbuild options generator runs through the runtime end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerEsbuildHandlers(registry);
    final adapter = _FakeAdapter(const {});
    final handler = registry.custom(esbuildOptionsHandler)!;
    final generator = FigGenerator(custom: handler);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'esbuild', tokenLength: 7, complete: true),
        CommandToken(token: '--', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((suggestion) => suggestion.name).toList();
    expect(names.length, 60);
    expect(names, contains('--bundle'));
    expect(names, contains('--tsconfig'));
    expect(names, contains('--version'));
  });
}
