import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/php_please.dart';
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

/// A `php please list --format=json` fixture covering a command with no
/// definition fields, and one with a required positional argument plus options
/// with and without a shortcut.
const _pleaseListOutput = r'''{"commands":[
  {"name":"clear:assets","description":"Clear cached assets",
   "definition":{"arguments":{},"options":{}}},
  {"name":"make:user","description":"Create a new user",
   "definition":{"arguments":{
     "email":{"name":"email","is_required":true,"description":"The user email"}},
     "options":{
       "--super":{"name":"--super","shortcut":"","description":"Make the user a super admin"},
       "--role":{"name":"--role","shortcut":"-r","description":"Assign a role"}}}}]}''';

/// Collects every `handler` string referenced under `generateSpec` anywhere in
/// the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final item = entry.value;
        if (item is Map && item['handler'] is String) {
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

/// Runs the please generateSpec handler against the given stdout/status
/// through an inline executeCommand.
Future<FigSpec?> _runGenerateSpec(
  JsonHandlerRegistry registry,
  String stdout, {
  int status = 0,
}) {
  return registry.generateSpec(pleaseGenerateSpecHandler)!(
    const ['please', ''],
    (input) async =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: status),
  );
}

void main() {
  test('please JSON binds its generateSpec handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerPhpPleaseHandlers(handlers);
    final source = await File('assets/specs/p/please.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'please');
    expect(_referencedHandlers(document), {pleaseGenerateSpecHandler});
    expect(source, contains(pleaseGenerateSpecHandler));
  });

  test('generateSpec materializes every listed command', () async {
    final registry = JsonHandlerRegistry();
    registerPhpPleaseHandlers(registry);

    final spec = await _runGenerateSpec(registry, _pleaseListOutput);
    expect(spec, isNotNull);
    expect(spec!.name, 'please');
    expect(
        spec.subcommands!.map((item) => item.nameList.first).toList(),
        ['clear:assets', 'make:user']);
    expect(spec.subcommands!.first.description, 'Clear cached assets');
    expect(spec.subcommands!.first.icon, isNull);
  });

  test('generateSpec maps arguments with requiredness', () async {
    final registry = JsonHandlerRegistry();
    registerPhpPleaseHandlers(registry);

    final spec = await _runGenerateSpec(registry, _pleaseListOutput);
    final userArgs = spec!.subcommands!.last.args!;
    expect(userArgs.single.name ?? '', 'email');
    expect(userArgs.single.description, 'The user email');
    expect(userArgs.single.isOptional, isFalse);
    expect(spec.subcommands!.first.args, isEmpty);
  });

  test('generateSpec maps options with and without shortcuts', () async {
    final registry = JsonHandlerRegistry();
    registerPhpPleaseHandlers(registry);

    final spec = await _runGenerateSpec(registry, _pleaseListOutput);
    final options = spec!.subcommands!.last.options!;
    expect(options.map((option) => option.nameList.join(' ')).toList(),
        ['--super', '--role -r']);
    expect(options.first.description, 'Make the user a super admin');
    expect(options.last.description, 'Assign a role');
  });

  test('generateSpec returns an empty please spec on parse errors and failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpPleaseHandlers(registry);

    final broken = await _runGenerateSpec(registry, 'not json');
    expect(broken, isNotNull);
    expect(broken!.name, 'please');
    expect(broken.subcommands, isEmpty);

    final missingCommands = await _runGenerateSpec(registry, '{}');
    expect(missingCommands, isNotNull);
    expect(missingCommands!.subcommands, isEmpty);

    final failed = await _runGenerateSpec(registry, '', status: 1);
    expect(failed, isNotNull);
    expect(failed!.subcommands, isEmpty);
  });

  test('please generateSpec runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPhpPleaseHandlers(registry);
    final adapter = _FakeAdapter({
      'php please list --format=json': const ProcessRunResult(
        stdout: _pleaseListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/please.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.generateSpec, isNotNull);

    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async {
      final result = await adapter.runProcess(input.command, input.args);
      return ExecuteCommandOutput(
        stdout: result.stdout,
        stderr: result.stderr,
        status: result.exitCode,
      );
    }
    final generated = await spec.generateSpec!(
      const ['please', ''],
      executeCommand,
    );
    expect(generated, isNotNull);
    expect(
        generated!.subcommands!.map((item) => item.nameList.first).toList(),
        ['clear:assets', 'make:user']);
  });
}
