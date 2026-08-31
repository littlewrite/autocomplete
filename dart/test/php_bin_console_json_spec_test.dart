import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/php_bin_console.dart';
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

/// A `php bin/console list --format=json` fixture covering a visible and a
/// hidden command, one required positional argument, a value-accepting option
/// (repeatable, required value, with shortcut), and a flag option.
const _binConsoleListOutput = r'''{"commands":[
  {"name":"about","description":"Displays information about the current project","hidden":false,
   "definition":{"arguments":{},"options":{}}},
  {"name":"cache:clear","description":"Clears the cache","hidden":true,
   "definition":{"arguments":{
     "name":{"name":"name","is_required":true,"description":"Cache pool name","is_array":false}},
     "options":{
       "--env":{"name":"--env","accept_value":true,"shortcut":"-e","is_value_required":true,"is_multiple":false,"description":"The environment name"},
       "--no-debug":{"name":"--no-debug","accept_value":false,"shortcut":"","is_value_required":false,"is_multiple":false,"description":"Switches off debug mode"}}}}]}''';

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

/// Runs the bin-console generateSpec handler against the given stdout/status
/// through an inline executeCommand.
Future<FigSpec?> _runGenerateSpec(
  JsonHandlerRegistry registry,
  String stdout, {
  int status = 0,
}) {
  return registry.generateSpec(binConsoleGenerateSpecHandler)!(
    const ['bin-console', ''],
    (input) async =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: status),
  );
}

void main() {
  test('bin-console JSON binds its generateSpec handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(handlers);
    final source =
        await File('assets/specs/b/bin-console.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'bin-console');
    expect(_referencedHandlers(document), {binConsoleGenerateSpecHandler});
    expect(source, contains(binConsoleGenerateSpecHandler));
  });

  test('generateSpec materializes commands and preserves hidden', () async {
    final registry = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(registry);

    final spec = await _runGenerateSpec(registry, _binConsoleListOutput);
    expect(spec, isNotNull);
    expect(spec!.name, 'bin-console');
    expect(
        spec.subcommands!.map((item) => item.nameList.first).toList(),
        ['about', 'cache:clear']);
    expect(spec.subcommands!.first.hidden, isFalse);
    expect(spec.subcommands!.last.hidden, isTrue);
    expect(spec.subcommands!.first.icon,
        'https://cdn.iconscout.com/icon/free/png-128/symfony-282493.png');
  });

  test('generateSpec maps arguments with requiredness', () async {
    final registry = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(registry);

    final spec = await _runGenerateSpec(registry, _binConsoleListOutput);
    final cacheArgs = spec!.subcommands!.last.args!;
    expect(cacheArgs.single.name ?? '', 'name');
    expect(cacheArgs.single.description, 'Cache pool name');
    expect(cacheArgs.single.isOptional, isFalse);
    expect(spec.subcommands!.first.args, isEmpty);
  });

  test('generateSpec maps value-accepting and flag options', () async {
    final registry = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(registry);

    final spec = await _runGenerateSpec(registry, _binConsoleListOutput);
    final options = spec!.subcommands!.last.options!;
    expect(options.map((option) => option.nameList.join(' ')).toList(),
        ['--env -e', '--no-debug']);

    final env = options.first;
    expect(env.description, 'The environment name');
    expect(env.args, isNotNull);
    expect(env.args!.single.name ?? '', 'arg');
    expect(env.args!.single.isOptional, isFalse);
    expect(env.args!.single.isVariadic, isFalse);

    final noDebug = options.last;
    expect(noDebug.description, 'Switches off debug mode');
    expect(noDebug.args, isNull);
  });

  test('generateSpec returns an empty bin-console spec on errors and failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(registry);

    final broken = await _runGenerateSpec(registry, 'not json');
    expect(broken, isNotNull);
    expect(broken!.name, 'bin-console');
    expect(broken.subcommands, isEmpty);

    final missingCommands = await _runGenerateSpec(registry, '{}');
    expect(missingCommands, isNotNull);
    expect(missingCommands!.subcommands, isEmpty);

    final failed = await _runGenerateSpec(registry, '', status: 1);
    expect(failed, isNotNull);
    expect(failed!.subcommands, isEmpty);
  });

  test('bin-console generateSpec runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPhpBinConsoleHandlers(registry);
    final adapter = _FakeAdapter({
      'php bin/console list --format=json': const ProcessRunResult(
        stdout: _binConsoleListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/b/bin-console.json').readAsString();
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
      const ['bin-console', ''],
      executeCommand,
    );
    expect(generated, isNotNull);
    expect(
        generated!.subcommands!.map((item) => item.nameList.first).toList(),
        ['about', 'cache:clear']);
  });
}
