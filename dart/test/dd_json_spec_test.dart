import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/dd.dart';
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
  test('dd JSON binds the conv generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerDdHandlers(handlers);
    final source = await File('assets/specs/d/dd.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ddConvCustomHandler));
    expect(document['name'], 'dd');
    expect(document['description'], 'Convert and copy a file');

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
    expect(ids.toSet(), {ddConvCustomHandler});
  });

  test('conv custom generator returns the sixteen conversion values in order',
      () async {
    final registry = JsonHandlerRegistry();
    registerDdHandlers(registry);
    final handler = registry.custom(ddConvCustomHandler)!;

    final suggestions = await handler(const ['dd', 'conv'], null, null);

    expect(suggestions.map((item) => item.nameSingle ?? ''), [
      'ascii',
      'oldascii',
      'block',
      'ebcdic',
      'ibm',
      'oldebcdic',
      'oldibm',
      'lcase',
      'noerror',
      'notrunc',
      'osync',
      'sparse',
      'swab',
      'sync',
      'ucase',
      'unblock',
    ]);
  });

  test('conv values carry the string icon and matching descriptions', () async {
    final registry = JsonHandlerRegistry();
    registerDdHandlers(registry);
    final handler = registry.custom(ddConvCustomHandler)!;

    final suggestions = await handler(const ['dd', 'conv'], null, null);

    expect(suggestions.every((item) => item.icon == 'fig://icon?type=string'),
        isTrue);
    final byName = {for (final item in suggestions) item.nameSingle ?? '' : item};
    expect(byName['ascii']?.description,
        "The same as 'unblock' except characters are translated from EBCDIC to ASCII");
    expect(byName['block']?.description,
        'Treats the input as a sequence of newline or EOF-terminated variable '
        'length records of independent input and output block boundaries');
    expect(byName['swab']?.description, 'Swap every pair of input bytes');
  });

  test('conv generator returns the same values for any token input', () async {
    final registry = JsonHandlerRegistry();
    registerDdHandlers(registry);
    final handler = registry.custom(ddConvCustomHandler)!;

    final emptyTokens = await handler(const [], null, null);
    final partial = await handler(const ['dd', 'conv', 'block'], null, null);

    expect(emptyTokens, isNotEmpty);
    expect(emptyTokens.length, 16);
    expect(partial.map((item) => item.nameSingle ?? ''), contains('ascii'));
  });

  test('conv generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDdHandlers(registry);
    // The conv generator is static, so it never calls the adapter.
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/d/dd.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final convOption =
        spec.options!.firstWhere((option) => option.nameList.contains('conv'));
    final generator = convOption.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'dd', tokenLength: 2, complete: true),
        CommandToken(token: 'conv', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.take(3).map((suggestion) => suggestion.name).toList(),
        ['ascii', 'oldascii', 'block']);
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        contains('unblock'));
    expect(suggestions.length, 16);
  });
}
