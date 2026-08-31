import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/drush.dart';
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

/// A `drush --format=json` fixture covering argument defaults (scalar and
/// array), optional/variadic flags, value-accepting options with a shortcut,
/// and shortcut-free options.
const _drushListOutput = '{"commands":['
    '{"name":"status","description":"Provides a birds-eye view of the current Drupal installation",'
    '"definition":{"arguments":{"filter":{"name":"filter","is_required":false,"is_array":false,'
    '"description":"The field to filter on","default":null}},'
    '"options":{"fields":{"name":"--fields","shortcut":"-f","accept_value":true,'
    '"is_value_required":true,"is_multiple":true,"description":"Comma separated list of fields",'
    '"default":false},'
    '"brief":{"name":"--brief","shortcut":"","accept_value":false,"is_value_required":false,'
    '"is_multiple":false,"description":"Show brief output","default":false}}}},'
    '{"name":"config:get","description":"Print a config value, and export it",'
    '"definition":{"arguments":{"config_name":{"name":"config-name","is_required":true,'
    '"is_array":false,"description":"The config object name","default":["example.value"]}},'
    '"options":{}}}]}';

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

/// Runs the drush generateSpec handler against the given stdout/status through
/// an inline executeCommand.
Future<FigSpec?> _runGenerateSpec(
  JsonHandlerRegistry registry,
  String stdout, {
  int status = 0,
}) {
  return registry.generateSpec(drushGenerateSpecHandler)!(
    const ['drush', ''],
    (input) async =>
        ExecuteCommandOutput(stdout: stdout, stderr: '', status: status),
  );
}

void main() {
  test('drush JSON binds its generateSpec handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerDrushHandlers(handlers);
    final source = await File('assets/specs/d/drush.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'drush');
    expect(_referencedHandlers(document), {drushGenerateSpecHandler});
    expect(source, contains(drushGenerateSpecHandler));
  });

  test('generateSpec materializes every listed command as a subcommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);

    final spec = await _runGenerateSpec(registry, _drushListOutput);
    expect(spec, isNotNull);
    expect(spec!.name, 'drush');
    expect(
        spec.subcommands!.map((item) => item.nameList.first).toList(),
        ['status', 'config:get']);
    expect(spec.subcommands!.first.description,
        'Provides a birds-eye view of the current Drupal installation');
    expect(spec.subcommands!.last.description,
        'Print a config value, and export it');
  });

  test('generateSpec maps arguments with optional, variadic, and default', () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);

    final spec = await _runGenerateSpec(registry, _drushListOutput);
    final statusArgs = spec!.subcommands!.first.args!;
    expect(statusArgs.single.name ?? '', 'filter');
    expect(statusArgs.single.isOptional, isTrue);
    expect(statusArgs.single.isVariadic, isFalse);
    expect(statusArgs.single.defaultValue, isNull);

    final configArgs = spec.subcommands!.last.args!;
    expect(configArgs.single.name ?? '', 'config-name');
    expect(configArgs.single.isOptional, isFalse);
    expect(configArgs.single.isVariadic, isFalse);
    expect(configArgs.single.defaultValue, 'example.value');
  });

  test('generateSpec maps options with shortcuts, values, and repeatability',
      () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);

    final spec = await _runGenerateSpec(registry, _drushListOutput);
    final options = spec!.subcommands!.first.options!;
    expect(options.map((option) => option.nameList.join(' ')).toList(),
        ['--fields -f', '--brief']);

    final fields = options.first;
    expect(fields.description, 'Comma separated list of fields');
    expect(fields.isRequired, isTrue);
    expect(fields.isRepeatable, isTrue);
    expect(fields.args, isNotEmpty);

    final brief = options.last;
    expect(brief.description, 'Show brief output');
    expect(brief.isRequired, isFalse);
    expect(brief.isRepeatable, isFalse);
    expect(brief.args, isNull);

    expect(spec.subcommands!.last.options, isEmpty);
  });

  test('generateSpec returns an empty drush spec on parse errors', () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);

    final broken = await _runGenerateSpec(registry, 'not json');
    expect(broken, isNotNull);
    expect(broken!.name, 'drush');
    expect(broken.subcommands, isEmpty);

    final missingCommands = await _runGenerateSpec(registry, '{}');
    expect(missingCommands, isNotNull);
    expect(missingCommands!.subcommands, isEmpty);

    final wrongShape = await _runGenerateSpec(registry, '{"commands":42}');
    expect(wrongShape, isNotNull);
    expect(wrongShape!.subcommands, isEmpty);
  });

  test('generateSpec returns an empty drush spec on empty output and failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);

    final empty = await _runGenerateSpec(registry, '');
    expect(empty, isNotNull);
    expect(empty!.name, 'drush');
    expect(empty.subcommands, isEmpty);

    final failed = await _runGenerateSpec(registry, '', status: 1);
    expect(failed, isNotNull);
    expect(failed!.subcommands, isEmpty);
  });

  test('drush generateSpec runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDrushHandlers(registry);
    final adapter = _FakeAdapter({
      'drush --format=json': const ProcessRunResult(
        stdout: _drushListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/drush.json').readAsString();
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
      const ['drush', ''],
      executeCommand,
    );
    expect(generated, isNotNull);
    expect(
        generated!.subcommands!.map((item) => item.nameList.first).toList(),
        ['status', 'config:get']);
  });
}
