import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/php.dart';
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
    return _entries;
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

/// Runs the php root generateSpec with a probe that returns `status` for each
/// `ls <file>` check matching the given filename map.
Future<FigSpec> _generateSpec(JsonHandlerRegistry registry,
    {required Map<String, int> lsStatus}) async {
  final generateSpec = registry.generateSpec(phpGenerateSpecHandler);
  expect(generateSpec, isNotNull);
  final generated = await generateSpec!(
    const ['php', ''],
    (input) async {
      final file = input.args.isNotEmpty ? input.args.first : '';
      return ExecuteCommandOutput(
        stdout: '',
        stderr: '',
        status: lsStatus[file] ?? 1,
      );
    },
  );
  expect(generated, isNotNull);
  return generated!;
}

void main() {
  test('php JSON binds the root generateSpec to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerPhpHandlers(handlers);
    final source = await File('assets/specs/p/php.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'php');
    expect(source, contains(phpGenerateSpecHandler));
    expect(_referencedHandlers(document), {phpGenerateSpecHandler});
  });

  test('generateSpec probes artisan, please, and bin/console in parallel',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpHandlers(registry);
    final generateSpec = registry.generateSpec(phpGenerateSpecHandler);
    expect(generateSpec, isNotNull);

    final seen = <String>[];
    final generated = await generateSpec!(const ['php', ''], (input) async {
      seen.add([input.command, ...input.args].join(' '));
      final file = input.args.isNotEmpty ? input.args.first : '';
      return ExecuteCommandOutput(
        stdout: '',
        stderr: '',
        status: file == 'please' ? 0 : 1,
      );
    });

    expect(seen, ['ls artisan', 'ls please', 'ls bin/console']);
    expect(generated, isNotNull);
    expect(generated!.name, 'php');
    expect(generated.subcommands!.map((s) => s.nameList.first).toList(),
        ['please']);
  });

  test('generateSpec exposes each present framework entrypoint as a subcommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpHandlers(registry);

    final all = await _generateSpec(registry, lsStatus: {
      'artisan': 0,
      'please': 0,
      'bin/console': 0,
    });
    expect(all.subcommands!.map((s) => s.nameList.first).toList(),
        ['artisan', 'please', 'bin/console']);
    expect(all.subcommands!.map((s) => s.loadSpec).toList(),
        ['php/artisan', 'php/please', 'php/bin-console']);

    final none = await _generateSpec(registry, lsStatus: {});
    expect(none.subcommands, isEmpty);

    final partial = await _generateSpec(registry, lsStatus: {
      'bin/console': 0,
    });
    expect(partial.subcommands!.map((s) => s.nameList.first).toList(),
        ['bin/console']);
  });

  test('generateSpec keeps a filepaths template arg with a dot filter',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpHandlers(registry);
    final generated = await _generateSpec(registry, lsStatus: {});

    expect(generated.args!.single.generatorsList.single.template, 'filepaths');
    expect(generated.args!.single.generatorsList.single.filterTemplateSuggestions,
        isNotNull);
  });

  test('filepaths template suggestions flow through the dot filter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpHandlers(registry);
    final adapter = _FakeAdapter(
      {},
      const [
        FileSystemEntry(name: 'artisan', isDirectory: false),
        FileSystemEntry(name: 'helper.php', isDirectory: false),
        FileSystemEntry(name: 'noext', isDirectory: false),
        FileSystemEntry(name: 'src', isDirectory: true),
      ],
    );

    final source = await File('assets/specs/p/php.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['php', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 1),
    );

    final generator = generated!.args!.single.generatorsList.single;
    expect(generator.template, 'filepaths');
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'php', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    // helper.php (contains a dot) is filtered out; folders and dot-free names
    // survive.
    expect(suggestions.map((s) => s.name).toList(),
        ['artisan', 'noext', 'src/']);
  });
}
