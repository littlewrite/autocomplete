import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/secretsmanager.dart';
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

/// Collects every `suggestions` handler reference in a decoded JSON document.
void _collectSuggestionHandlerIds(dynamic node, Set<String> ids) {
  if (node is! Map) return;
  final suggestions = node['suggestions'];
  if (suggestions is Map && suggestions['handler'] is String) {
    ids.add(suggestions['handler'] as String);
  }
  for (final value in node.values) {
    if (value is List) {
      for (final item in value) {
        _collectSuggestionHandlerIds(item, ids);
      }
    } else if (value is Map) {
      _collectSuggestionHandlerIds(value, ids);
    }
  }
}

void main() {
  test('secretsmanager JSON binds every suggestions reference to the ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSecretsmanagerHandlers(handlers);
    final source =
        await File('assets/specs/s/secretsmanager.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(secretsmanagerDeleteSecretRecoveryWindowInDaysHandler));
    expect(document['name'], 'secretsmanager');

    final ids = <String>{};
    _collectSuggestionHandlerIds(document, ids);
    expect(ids, {secretsmanagerDeleteSecretRecoveryWindowInDaysHandler});
  });

  test('recovery-window-in-days handler offers 7..30', () async {
    final registry = JsonHandlerRegistry();
    registerSecretsmanagerHandlers(registry);

    final suggestions =
        await registry.custom(
            secretsmanagerDeleteSecretRecoveryWindowInDaysHandler)!(
      ['aws', 'secretsmanager', 'delete-secret',
          '--recovery-window-in-days', ''],
      null,
      null,
    );
    expect(suggestions.first.name, '7');
    expect(suggestions.last.name, '30');
    expect(suggestions.length, 24);
  });

  test('recovery-window-in-days handler runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerSecretsmanagerHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source =
        await File('assets/specs/s/secretsmanager.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final deleteSecret = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('delete-secret'));
    final option = deleteSecret.options!.firstWhere(
        (opt) => opt.nameList.contains('--recovery-window-in-days'));
    final generator = option.args!.single.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'aws', tokenLength: 3, complete: true),
        CommandToken(token: 'secretsmanager', tokenLength: 14, complete: true),
        CommandToken(token: 'delete-secret', tokenLength: 13, complete: true),
        CommandToken(token: '--recovery-window-in-days', tokenLength: 25,
            complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((s) => s.name).toList();
    expect(names.first, '7');
    expect(names.last, '30');
    expect(names.length, 24);
  });
}
