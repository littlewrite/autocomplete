import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/php_artisan.dart';
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

/// A `php artisan list --format=json` fixture covering an argumentless command,
/// the framework `_complete` command (filtered out), and a command with one
/// positional argument plus options with and without a shortcut.
const _artisanListOutput = r'''{"commands":[
  {"name":"about","description":"Display basic information about your application",
   "definition":{"arguments":{},"options":{}}},
  {"name":"_complete","description":"Internal completion command",
   "definition":{"arguments":{},"options":{}}},
  {"name":"config:cache","description":"Create a cache file for faster configuration loading",
   "definition":{"arguments":{
     "environment":{"name":"environment","is_required":false,"description":"The environment name"}},
     "options":{
       "--no-interaction":{"name":"--no-interaction","shortcut":"-n","description":"Do not ask any interactive question"},
       "--ansi":{"name":"--ansi","shortcut":"","description":"Force ANSI output"}}}}]}''';

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

/// Runs the artisan generateSpec handler against the given stdout/status
/// through an inline executeCommand.
Future<FigSpec?> _runGenerateSpec(
  JsonHandlerRegistry registry,
  String stdout, {
  int status = 0,
}) {
  return registry.generateSpec(artisanGenerateSpecHandler)!(
    const ['artisan', ''],
    (input) async =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: status),
  );
}

void main() {
  test('artisan JSON binds its generateSpec handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerPhpArtisanHandlers(handlers);
    final source = await File('assets/specs/a/artisan.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'artisan');
    expect(_referencedHandlers(document), {artisanGenerateSpecHandler});
    expect(source, contains(artisanGenerateSpecHandler));
  });

  test('generateSpec materializes commands and drops _complete', () async {
    final registry = JsonHandlerRegistry();
    registerPhpArtisanHandlers(registry);

    final spec = await _runGenerateSpec(registry, _artisanListOutput);
    expect(spec, isNotNull);
    expect(spec!.name, 'artisan');
    expect(
        spec.subcommands!.map((item) => item.nameList.first).toList(),
        ['about', 'config:cache']);
    expect(spec.subcommands!.first.description,
        'Display basic information about your application');
    expect(spec.subcommands!.first.icon,
        'https://web.tinkerwell.app/img/laravel.3cab6a56.png');
  });

  test('generateSpec maps arguments with optionality', () async {
    final registry = JsonHandlerRegistry();
    registerPhpArtisanHandlers(registry);

    final spec = await _runGenerateSpec(registry, _artisanListOutput);
    final configArgs = spec!.subcommands!.last.args!;
    expect(configArgs.single.name ?? '', 'environment');
    expect(configArgs.single.description, 'The environment name');
    expect(configArgs.single.isOptional, isTrue);
    expect(spec.subcommands!.first.args, isEmpty);
  });

  test('generateSpec maps options with and without shortcuts', () async {
    final registry = JsonHandlerRegistry();
    registerPhpArtisanHandlers(registry);

    final spec = await _runGenerateSpec(registry, _artisanListOutput);
    final options = spec!.subcommands!.last.options!;
    expect(options.map((option) => option.nameList.join(' ')).toList(),
        ['--no-interaction -n', '--ansi']);
    expect(options.first.description, 'Do not ask any interactive question');
    expect(options.last.description, 'Force ANSI output');
  });

  test('generateSpec returns an empty artisan spec on parse errors and failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerPhpArtisanHandlers(registry);

    final broken = await _runGenerateSpec(registry, 'not json');
    expect(broken, isNotNull);
    expect(broken!.name, 'artisan');
    expect(broken.subcommands, isEmpty);

    final missingCommands = await _runGenerateSpec(registry, '{}');
    expect(missingCommands, isNotNull);
    expect(missingCommands!.subcommands, isEmpty);

    final failed = await _runGenerateSpec(registry, '', status: 1);
    expect(failed, isNotNull);
    expect(failed!.subcommands, isEmpty);
  });

  test('artisan generateSpec runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPhpArtisanHandlers(registry);
    final adapter = _FakeAdapter({
      'php artisan list --format=json': const ProcessRunResult(
        stdout: _artisanListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/artisan.json').readAsString();
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
      const ['artisan', ''],
      executeCommand,
    );
    expect(generated, isNotNull);
    expect(
        generated!.subcommands!.map((item) => item.nameList.first).toList(),
        ['about', 'config:cache']);
  });
}
