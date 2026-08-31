import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/sake.dart';
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

/// `sake list --json` fixture: two groups, one command each. The second has an
/// empty description so the generateSpec fallback kicks in.
const _listJson = '{"groups":{'
    '"Default":[{"name":"build","description":"Build the app"}],'
    '"Server":[{"name":"deploy","description":""}]}}';

void main() {
  test('sake JSON binds the generateSpec and run postProcess handlers',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSakeHandlers(handlers);
    final source = await File('assets/specs/s/sake.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'sake');
    expect(source, contains(sakeGenerateSpecHandler));
    expect(source, contains(sakeListCommandsPostProcessHandler));
    expect(_referencedHandlers(document), {
      sakeGenerateSpecHandler,
      sakeListCommandsPostProcessHandler,
    });
  });

  test('generateSpec runs sake list --json', () async {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    final source = await File('assets/specs/s/sake.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec(
      const ['sake', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(
            stdout: _listJson, stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'sake');
    expect(seenArgs, 'list --json');
    expect(generated, isNotNull);
    expect(generated!.name, 'sake');
  });

  test('generateSpec flattens command groups into subcommands', () async {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    final source = await File('assets/specs/s/sake.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['sake', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: _listJson, stderr: '', status: 0),
    );

    final subcommands = generated!.subcommands!;
    expect(subcommands.map((s) => s.nameList.first).toList(),
        ['build', 'deploy']);
    expect(subcommands.first.description, 'Build the app');
    // Empty description falls back to the source's "The command to run".
    expect(subcommands.last.description, 'The command to run');
    expect(subcommands.first.priority, 76);
    expect(subcommands.first.icon, '🍶');
    expect(
        subcommands.first.options!.map((o) => o.nameList.first).toList(), [
      '--config-path',
      '--sake-app-path',
      '--case-converting-strategy',
      '--sake-app-prebuilt-binary-path',
    ]);
  });

  test('generateSpec returns null on empty or invalid JSON', () async {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    final source = await File('assets/specs/s/sake.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<FigSpec?> generateWith(String stdout) => spec.generateSpec!(
          const ['sake', ''],
          (input) async => ExecuteCommandOutput(
              stdout: stdout, stderr: '', status: 0),
        );

    expect(await generateWith(''), isNull);
    expect(await generateWith('not json'), isNull);
    expect(await generateWith('{"groups": 42}'), isNull);
  });

  test('run command post-processor flattens groups into suggestions', () {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    final suggestions =
        registry.postProcess(sakeListCommandsPostProcessHandler)!(_listJson);
    expect(suggestions.map((s) => s.nameSingle ?? '').toList(),
        ['build', 'deploy']);
    expect(suggestions.first.description, 'Build the app');
    expect(suggestions.first.priority, 76);
    expect(suggestions.first.icon, '🍶');
  });

  test('run command post-processor handles empty output', () {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    expect(
        registry.postProcess(sakeListCommandsPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(sakeListCommandsPostProcessHandler)!('garbage'),
        isEmpty);
  });

  test('run command generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSakeHandlers(registry);
    final adapter = _FakeAdapter({
      'sake list --json': const ProcessRunResult(
        stdout: _listJson,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/sake.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'sake list --json';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'sake', tokenLength: 4, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['build', 'deploy']);
  });
}
