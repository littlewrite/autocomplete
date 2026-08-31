import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mdfind.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.env = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> env;

  @override
  Map<String, String> getEnvs() => env;

  @override
  String? getEnv(String envKey) => env[envKey];

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
  test('mdfind JSON references exactly the smart folder handler', () async {
    final handlers = JsonHandlerRegistry();
    registerMdfindHandlers(handlers);
    final source = await File('assets/specs/m/mdfind.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'mdfind');
    expect(source, contains(mdfindSmartFolderCustomHandler));
    expect(_referencedHandlers(document), {mdfindSmartFolderCustomHandler});
  });

  test('smart folder generator lists saved searches from HOME', () async {
    final registry = JsonHandlerRegistry();
    registerMdfindHandlers(registry);
    final adapter = _FakeAdapter(const {}, env: const {'HOME': '/Users/me'});
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: adapter,
    );

    final suggestions = await registry.custom(mdfindSmartFolderCustomHandler)!(
      ['mdfind', '-s', ''],
      (input) async {
        expect(input.command, 'ls');
        expect(input.args, ['-1A', '/Users/me/Library/Saved Searches/']);
        return const ExecuteCommandOutput(
          stdout: 'Work.savedSearch\nPersonal.savedSearch\nnotes.txt\n',
          stderr: '',
          status: 0,
        );
      },
      context,
    );

    expect(suggestions.map((s) => s.name).toList(), ['Work', 'Personal']);
    final first = suggestions.first;
    expect(first.displayName, 'Work.savedSearch');
    expect(first.icon, 'fig://Work.savedSearch');
    expect(first.description, 'Smart folder');
  });

  test('smart folder generator yields nothing without a context', () async {
    final registry = JsonHandlerRegistry();
    registerMdfindHandlers(registry);

    final suggestions = await registry.custom(mdfindSmartFolderCustomHandler)!(
      ['mdfind', '-s', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: 'x', stderr: '', status: 0),
      null,
    );

    expect(suggestions, isEmpty);
  });

  test('smart folder generator runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerMdfindHandlers(registry);
    final adapter = _FakeAdapter(
      const {
        'ls -1A /Users/me/Library/Saved Searches/': ProcessRunResult(
          stdout: 'Reports.savedSearch\n',
          stderr: '',
          exitCode: 0,
        ),
      },
      env: const {'HOME': '/Users/me'},
    );

    final source = await File('assets/specs/m/mdfind.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final dashS = spec.options!.firstWhere((o) => o.nameList.contains('-s'));
    final generator = dashS.args!.first.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mdfind', tokenLength: 6, complete: true),
        CommandToken(token: '-s', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['Reports']);
  });
}
