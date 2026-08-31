import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mask.dart';
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
  test('mask JSON binds the root generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMaskHandlers(handlers);
    final source = await File('assets/specs/m/mask.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'mask');
    expect(source, contains(maskGenerateSpecHandler));
    expect(_referencedHandlers(document), {maskGenerateSpecHandler});
  });

  test('generateSpec cats maskfile.md and parses ## headings', () async {
    final registry = JsonHandlerRegistry();
    registerMaskHandlers(registry);
    final source = await File('assets/specs/m/mask.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec(
      const ['mask', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(
          stdout: '## build\n## deploy\n',
          stderr: '',
          status: 0,
        );
      },
    );

    expect(seenCommand, 'cat');
    expect(seenArgs, 'maskfile.md');
    expect(generated, isNotNull);
    expect(generated!.name, 'mask');
    expect(generated.subcommands!.map((s) => s.nameList.first).toList(),
        ['build', 'deploy']);
  });

  test('generateSpec uses the file named after --maskfile', () async {
    final registry = JsonHandlerRegistry();
    registerMaskHandlers(registry);
    final source = await File('assets/specs/m/mask.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['mask', '--maskfile', 'custom.md', ''],
      (input) async {
        expect(input.command, 'cat');
        expect(input.args, ['custom.md']);
        return const ExecuteCommandOutput(
          stdout: '## setup\n',
          stderr: '',
          status: 0,
        );
      },
    );

    expect(generated, isNotNull);
    expect(generated!.subcommands!.single.nameList.first, 'setup');
  });

  test('generateSpec returns null when the maskfile output is empty', () async {
    final registry = JsonHandlerRegistry();
    registerMaskHandlers(registry);
    final source = await File('assets/specs/m/mask.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['mask', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 0),
    );

    expect(generated, isNull);
  });

  test('generateSpec runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerMaskHandlers(registry);
    final adapter = _FakeAdapter({
      'cat maskfile.md': const ProcessRunResult(
        stdout: '## fmt\n## lint\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mask.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['mask', ''],
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
        ['fmt', 'lint']);
  });
}
