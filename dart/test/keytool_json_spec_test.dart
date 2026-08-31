import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/keytool.dart';
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
  test('keytool JSON binds every handler to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerKeytoolHandlers(handlers);
    final source = await File('assets/specs/k/keytool.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(keytoolKeypasswdOptionsHandler));
    expect(source, contains(keytoolStorepasswdOptionsHandler));
    expect(document['name'], 'keytool');

    final ids = <String>{};
    void collectHandlerIds(dynamic node) {
      if (node is Map) {
        final handler = node['handler'];
        if (handler is String) {
          ids.add(handler);
        }
        for (final value in node.values) {
          collectHandlerIds(value);
        }
      } else if (node is List) {
        for (final item in node) {
          collectHandlerIds(item);
        }
      }
    }

    collectHandlerIds(document);
    expect(ids, {
      keytoolKeypasswdOptionsHandler,
      keytoolStorepasswdOptionsHandler,
    });
  });

  test('keypasswd options handler exposes -v and the repeated options minus '
      '-protected', () async {
    final registry = JsonHandlerRegistry();
    registerKeytoolHandlers(registry);
    final options = await registry.custom(keytoolKeypasswdOptionsHandler)!(
        const [], null, null);
    expect(options.length, 10);
    expect(options.map((item) => item.nameSingle ?? '').toList(), [
      '-v',
      '-alias',
      '-keystore',
      '-storepass',
      '-storetype',
      '-providername',
      '-addprovider',
      '-providerclass',
      '-providerarg',
      '-providerpath',
    ]);
    expect(options.first.description, 'Verbose output');
    expect(
        options.map((item) => item.nameSingle).toSet().contains('-protected'),
        isFalse);
  });

  test('storepasswd options handler exposes the same flags', () async {
    final registry = JsonHandlerRegistry();
    registerKeytoolHandlers(registry);
    final options = await registry.custom(keytoolStorepasswdOptionsHandler)!(
        const [], null, null);
    expect(options.length, 10);
    expect(options.map((item) => item.nameSingle ?? '').toList(), [
      '-v',
      '-alias',
      '-keystore',
      '-storepass',
      '-storetype',
      '-providername',
      '-addprovider',
      '-providerclass',
      '-providerarg',
      '-providerpath',
    ]);
    expect(options.last.nameSingle ?? '', '-providerpath');
    expect(options.last.description, 'Provider classpath');
  });

  test('keytool option handler runs through the generator machinery '
      'end to end', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerKeytoolHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/k/keytool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'keytool');

    final generator = FigGenerator(
      custom: registry.custom(keytoolKeypasswdOptionsHandler),
    );

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'keytool', tokenLength: 7, complete: true),
        CommandToken(token: '-keypasswd', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      '-v',
      '-alias',
      '-keystore',
      '-storepass',
      '-storetype',
      '-providername',
      '-addprovider',
      '-providerclass',
      '-providerarg',
      '-providerpath',
    ]);
  });
}
