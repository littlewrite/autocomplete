import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/xc.dart';
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

/// The stdout fixture returned by `xc` in the isolated tests: a heading line
/// plus a few "task  description" rows.
const _xcOutput = 'Tasks:\n'
    '  build    Compile and link the app\n'
    '  deploy   Deploy to production\n';

void main() {
  test('xc JSON binds the root generateSpec to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerXcHandlers(handlers);
    final source = await File('assets/specs/x/xc.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'xc');
    expect(source, contains(xcGenerateSpecHandler));
    expect(_referencedHandlers(document), {xcGenerateSpecHandler});
  });

  test('generateSpec runs xc with no arguments', () async {
    final registry = JsonHandlerRegistry();
    registerXcHandlers(registry);
    final source = await File('assets/specs/x/xc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    List<String>? seenArgs;
    final generated = await generateSpec(
      const ['xc', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args;
        return const ExecuteCommandOutput(
            stdout: _xcOutput, stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'xc');
    expect(seenArgs, isEmpty);
    expect(generated, isNotNull);
    expect(generated!.name, 'xc');
  });

  test('generateSpec turns output lines into task subcommands', () async {
    final registry = JsonHandlerRegistry();
    registerXcHandlers(registry);
    final source = await File('assets/specs/x/xc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['xc', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: _xcOutput, stderr: '', status: 0),
    );

    final subcommands = generated!.subcommands!;
    expect(subcommands.map((s) => s.nameList.first).toList(),
        ['build', 'deploy']);
    expect(subcommands.first.description, 'Compile and link the app');
    expect(subcommands.last.description, 'Deploy to production');
    // Each task carries the generateSpec-local options.
    expect(subcommands.first.options!.map((o) => o.nameList.first).toList(),
        ['-f', '-d', '-H']);
  });

  test('generateSpec yields no subcommands on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerXcHandlers(registry);
    final source = await File('assets/specs/x/xc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['xc', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 0),
    );

    expect(generated, isNotNull);
    expect(generated!.subcommands, isEmpty);
  });

  test('generateSpec runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerXcHandlers(registry);
    final adapter = _FakeAdapter({
      'xc': const ProcessRunResult(
        stdout: _xcOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/x/xc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['xc', ''],
      (input) async {
        final result = await adapter.runProcess(input.command, input.args);
        return ExecuteCommandOutput(
          stdout: result.stdout,
          stderr: result.stderr,
          status: result.exitCode,
        );
      },
    );

    expect(generated!.subcommands!.map((s) => s.nameList.first).toList(),
        ['build', 'deploy']);
  });
}
