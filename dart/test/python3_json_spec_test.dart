import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/python3.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, this._entries);

  final Map<String, ProcessRunResult> _results;
  final List<FileSystemEntry> _entries;

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
  }) async {
    if (foldersOnly) return const [];
    if (extensions == null) return _entries;
    return _entries.where((entry) {
      final dot = entry.name.lastIndexOf('.');
      final suffix = dot < 0 ? '' : entry.name.substring(dot + 1);
      return extensions.contains(suffix);
    }).toList();
  }

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

/// Collects every `handler` string referenced under a dynamic field anywhere in
/// the JSON document.
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
  test('python3 JSON binds the root generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPython3Handlers(handlers);
    final source = await File('assets/specs/p/python3.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'python3');
    expect(source, contains(python3GenerateSpecHandler));
    expect(_referencedHandlers(document), {python3GenerateSpecHandler});
  });

  test('generateSpec runs the bash manage.py Django probe', () async {
    final registry = JsonHandlerRegistry();
    registerPython3Handlers(registry);
    final generateSpec = registry.generateSpec(python3GenerateSpecHandler);
    expect(generateSpec, isNotNull);

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec!(const ['python3', ''], (input) async {
      seenCommand = input.command;
      seenArgs = input.args.join(' ');
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    });

    expect(seenCommand, 'bash');
    expect(seenArgs, '-c cat manage.py | grep -q django');
    expect(generated, isNotNull);
    expect(generated!.name, 'python3');
    expect(generated.subcommands!.single.nameList.first, 'manage.py');
    expect(generated.subcommands!.single.loadSpec, 'django-admin');
  });

  test('generateSpec returns null when manage.py is not a Django app',
      () async {
    final registry = JsonHandlerRegistry();
    registerPython3Handlers(registry);
    final generateSpec = registry.generateSpec(python3GenerateSpecHandler);
    expect(generateSpec, isNotNull);

    final generated = await generateSpec!(const ['python3', ''], (input) async {
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
    });
    expect(generated, isNull);
  });

  test('generateSpec bound through the shipped python3 JSON exposes manage.py',
      () async {
    final registry = JsonHandlerRegistry();
    registerPython3Handlers(registry);

    final source = await File('assets/specs/p/python3.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec;
    expect(generateSpec, isNotNull);
    expect(spec.args, isNotNull);
    expect(spec.options, isNotNull);
    expect(spec.options!.isNotEmpty, true);

    final generated = await generateSpec!(
      const ['python3', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
    );

    expect(generated, isNotNull);
    expect(generated!.name, 'python3');
    expect(generated.subcommands!.single.nameList.first, 'manage.py');
    expect(generated.subcommands!.single.loadSpec, 'django-admin');
  });

  test('python3 script template generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPython3Handlers(registry);
    final adapter = _FakeAdapter(
      {},
      const [
        FileSystemEntry(name: 'main.py', isDirectory: false),
        FileSystemEntry(name: 'script.py', isDirectory: false),
        FileSystemEntry(name: 'notes.txt', isDirectory: false),
      ],
    );

    final source = await File('assets/specs/p/python3.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['python3', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 1),
    );
    expect(generated, isNull);

    final generator = spec.args!.single.generatorsList.single;
    expect(generator.template, isA<Map>());
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'python3', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((s) => s.name).toList(),
        ['main.py', 'script.py']);
  });
}
