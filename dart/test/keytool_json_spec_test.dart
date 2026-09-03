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

  test(
      'keypasswd options handler exposes -v and the repeated options minus '
      '-protected', () async {
    final registry = JsonHandlerRegistry();
    registerKeytoolHandlers(registry);
    final options = await registry.options(keytoolKeypasswdOptionsHandler)!(
        const [], null, null);
    expect(options.length, 10);
    expect(options.map((item) => item.nameList.first).toList(), [
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
        options
            .map((item) => item.nameList.first)
            .toSet()
            .contains('-protected'),
        isFalse);
  });

  test('storepasswd options handler exposes the same flags', () async {
    final registry = JsonHandlerRegistry();
    registerKeytoolHandlers(registry);
    final options = await registry.options(keytoolStorepasswdOptionsHandler)!(
        const [], null, null);
    expect(options.length, 10);
    expect(options.map((item) => item.nameList.first).toList(), [
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
    expect(options.last.nameList.first, '-providerpath');
    expect(options.last.description, 'Provider classpath');
  });

  test('keytool option handler is materialized into the parsed spec', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerKeytoolHandlers(registry);

    final source = await File('assets/specs/k/keytool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.name, 'keytool');

    final keypasswd = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('-keypasswd'));
    expect(
        keypasswd.options!
            .skip(2)
            .take(10)
            .map((option) => option.name)
            .toList(),
        [
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
