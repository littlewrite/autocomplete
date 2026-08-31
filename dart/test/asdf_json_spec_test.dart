import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/asdf.dart';
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

/// Collects every `handler` string referenced under a dynamic field
/// (`generators`, `postProcess`, `custom`, or `generateSpec`) anywhere in the
/// JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

void main() {
  test('asdf JSON references exactly the install versions generator', () async {
    final handlers = JsonHandlerRegistry();
    registerAsdfHandlers(handlers);
    final source = await File('assets/specs/a/asdf.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'asdf');
    expect(source, contains(asdfInstallAllVersionsCustomHandler));
    expect(_referencedHandlers(document), {asdfInstallAllVersionsCustomHandler});
  });

  test('install versions generator runs asdf list-all and reverses versions',
      () async {
    final registry = JsonHandlerRegistry();
    registerAsdfHandlers(registry);

    final suggestions = await registry.custom(
            asdfInstallAllVersionsCustomHandler)!(
      ['asdf', 'install', 'nodejs', ''],
      (input) async {
        expect(input.command, 'asdf');
        expect(input.args, ['list-all', 'nodejs']);
        return const ExecuteCommandOutput(
          stdout: '18.0.0\n18.1.0\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );

    expect(suggestions.map((s) => s.name).toList(), ['', '18.1.0', '18.0.0']);
    expect(suggestions[1].nameSingle, '18.1.0');
    expect(suggestions[1].description, 'Plugin version');
    expect(suggestions[1].priority, 76);
    expect(suggestions[1].icon, 'fig://icon?type=commit');
  });

  test('install versions generator is a no-op on command failure', () async {
    final registry = JsonHandlerRegistry();
    registerAsdfHandlers(registry);

    final suggestions = await registry.custom(
            asdfInstallAllVersionsCustomHandler)!(
      ['asdf', 'install', 'nodejs', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: 'boom', status: 1),
      null,
    );

    expect(suggestions, isEmpty);
  });

  test('install versions generator runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerAsdfHandlers(registry);
    final adapter = _FakeAdapter({
      'asdf list-all nodejs': const ProcessRunResult(
        stdout: '18.0.0\n18.1.0\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/asdf.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final install =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('install'));
    final generator = install.args![1].generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'asdf', tokenLength: 4, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'nodejs', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    // The runtime drops the trailing-empty line that the raw reversed post
    // processor preserves; non-empty versions are suggested newest-first.
    expect(suggestions.map((s) => s.name).toList(), ['18.1.0', '18.0.0']);
  });
}
