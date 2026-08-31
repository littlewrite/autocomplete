import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/magento.dart';
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

/// A `bin/magento list --format=json --raw` fixture covering a `cache:*`
/// command (a `types` array argument plus a required scalar argument and
/// options with and without a shortcut), a command with no arguments or
/// options, and a non-cache command with a string argument default.
const _magentoListJson = '{"commands":['
    '{"name":"cache:clean","description":"Cleans cache type(s)",'
    '"definition":{"arguments":{'
    '"types":{"name":"types","is_required":false,"is_array":true,'
    '"description":"Space-separated list of cache types to clean, or omit to clean all cache types",'
    '"default":[]},'
    '"tag":{"name":"tag","is_required":true,"is_array":false,'
    '"description":"A required argument","default":null}},'
    '"options":{'
    '"help":{"name":"--help","accept_value":false,"shortcut":"h",'
    '"is_value_required":false,"is_multiple":false,'
    '"description":"Display help for the given command","default":null},'
    '"keep-generated":{"name":"--keep-generated","accept_value":false,'
    '"shortcut":"","is_value_required":false,"is_multiple":false,'
    '"description":"Do not stop generation of files","default":null}}}},'
    '{"name":"setup:upgrade","description":"Upgrades the Magento application",'
    '"definition":{"arguments":[],"options":{}}},'
    '{"name":"config:set","description":"Change system configuration",'
    '"definition":{"arguments":{'
    '"path":{"name":"path","is_required":true,"is_array":false,'
    '"description":"The configuration path","default":null},'
    '"value":{"name":"value","is_required":true,"is_array":false,'
    '"description":"The configuration value","default":"default-val"}},'
    '"options":{}}}]}';

/// The `print(json_encode(require "app/etc/env.php"));` fixture: an env config
/// carrying a `cache_types` object.
const _envJson =
    '{"cache_types":{"config":1,"layout":1,"block_html":1,"collections":1}}';

/// Collects every `handler` string referenced anywhere in the JSON document.
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

/// Runs the magento generateSpec handler against the given `bin/magento list`
/// stdout/status and (optionally) env-config stdout/status through an inline
/// executeCommand.
Future<FigSpec?> _runGenerateSpec(
  JsonHandlerRegistry registry,
  String listStdout, {
  int listStatus = 0,
  String envStdout = _envJson,
  int envStatus = 0,
}) {
  return registry.generateSpec(magentoGenerateSpecHandler)!(
    const ['magento', ''],
    (input) async {
      if (input.command == 'bin/magento') {
        return ExecuteCommandOutput(
            stdout: listStdout, stderr: '', status: listStatus);
      }
      if (input.command == 'php') {
        return ExecuteCommandOutput(
            stdout: envStdout, stderr: '', status: envStatus);
      }
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
    },
  );
}

/// The two adapter keys the magento generateSpec issues.
const _listKey = 'bin/magento list --format=json --raw';
const _envKey = 'php -r print(json_encode(require "app/etc/env.php"));';

void main() {
  test('magento JSON binds its generateSpec handler ID', () async {
    final handlers = JsonHandlerRegistry();
    registerMagentoHandlers(handlers);
    final source = await File('assets/specs/m/magento.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'magento');
    expect(document['description'], 'Open-source E-commerce');
    expect(_referencedHandlers(document), {magentoGenerateSpecHandler});
    expect(source, contains(magentoGenerateSpecHandler));
  });

  test('generateSpec materializes every listed command as a subcommand',
      () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final spec = await _runGenerateSpec(registry, _magentoListJson);
    expect(spec, isNotNull);
    expect(spec!.name, 'magento');
    expect(spec.description, 'Open-source E-commerce');
    expect(
        spec.subcommands!.map((item) => item.nameList.first).toList(),
        ['cache:clean', 'setup:upgrade', 'config:set']);
    expect(spec.subcommands!.first.description, 'Cleans cache type(s)');
    expect(spec.subcommands!.last.description, 'Change system configuration');
  });

  test('generateSpec injects cache types into cache: types arguments', () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final spec = await _runGenerateSpec(registry, _magentoListJson);
    final clean = spec!.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'cache:clean');
    final types = clean.args!.firstWhere((arg) => arg.name == 'types');
    expect(types.isOptional, isTrue);
    expect(types.isVariadic, isTrue);
    // `default: []` stringifies to `''` (JavaScript `Array.prototype.toString`).
    expect(types.defaultValue, '');
    expect(types.suggestionsAsList.map((item) => item.nameSingle ?? '').toList(),
        ['config', 'layout', 'block_html', 'collections']);
    final tag = clean.args!.firstWhere((arg) => arg.name == 'tag');
    expect(tag.isOptional, isFalse);
    expect(tag.isVariadic, isFalse);
    expect(tag.defaultValue, '');
    expect(tag.suggestionsAsList, isEmpty);
  });

  test('generateSpec maps options with shortcuts and empty shortcuts', () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final spec = await _runGenerateSpec(registry, _magentoListJson);
    final clean = spec!.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'cache:clean');
    final options = clean.options!;
    expect(options.map((option) => option.nameList.join(' ')).toList(),
        ['--help h', '--keep-generated ']);
    expect(options.first.description, 'Display help for the given command');
    expect(options.first.isRequired, isFalse);
    expect(options.last.isRequired, isFalse);
  });

  test('generateSpec leaves non-cache arguments without cache suggestions',
      () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final spec = await _runGenerateSpec(registry, _magentoListJson);
    final setup = spec!.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'setup:upgrade');
    expect(setup.args, isEmpty);
    expect(setup.options, isEmpty);

    final config = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'config:set');
    final path = config.args!.firstWhere((arg) => arg.name == 'path');
    expect(path.isOptional, isFalse);
    expect(path.suggestionsAsList, isEmpty);
    final value = config.args!.firstWhere((arg) => arg.name == 'value');
    expect(value.defaultValue, 'default-val');
    expect(value.suggestionsAsList, isEmpty);
  });

  test('generateSpec falls back to no cache types when env is unreadable',
      () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    Future<List<FigSuggestion>> typesFor(String envStdout, {int envStatus = 0}) async {
      final spec = await _runGenerateSpec(registry, _magentoListJson,
          envStdout: envStdout, envStatus: envStatus);
      final clean = spec!.subcommands!
          .firstWhere((subcommand) => subcommand.nameList.first == 'cache:clean');
      return clean.args!.firstWhere((arg) => arg.name == 'types').suggestionsAsList;
    }

    // Missing cache_types object.
    expect(await typesFor('{"other":1}'), isEmpty);
    // Unparseable env config.
    expect(await typesFor('not json'), isEmpty);
    // Non-zero php exit.
    expect(await typesFor('', envStatus: 1), isEmpty);
    // The subcommands still materialize.
    final spec =
        await _runGenerateSpec(registry, _magentoListJson, envStdout: '{}');
    expect(spec!.subcommands, hasLength(3));
  });

  test('generateSpec returns an empty magento spec on parse errors', () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final broken = await _runGenerateSpec(registry, 'not json');
    expect(broken, isNotNull);
    expect(broken!.name, 'magento');
    expect(broken.subcommands, isEmpty);

    final missingCommands = await _runGenerateSpec(registry, '{}');
    expect(missingCommands, isNotNull);
    expect(missingCommands!.subcommands, isEmpty);

    final wrongShape = await _runGenerateSpec(registry, '{"commands":42}');
    expect(wrongShape, isNotNull);
    expect(wrongShape!.subcommands, isEmpty);
  });

  test('generateSpec returns an empty magento spec on empty output and failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);

    final empty = await _runGenerateSpec(registry, '');
    expect(empty, isNotNull);
    expect(empty!.name, 'magento');
    expect(empty.subcommands, isEmpty);

    final failed = await _runGenerateSpec(registry, '', listStatus: 1);
    expect(failed, isNotNull);
    expect(failed!.subcommands, isEmpty);
  });

  test('magento generateSpec runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);
    final adapter = _FakeAdapter({
      _listKey: const ProcessRunResult(
          stdout: _magentoListJson, stderr: '', exitCode: 0),
      _envKey: const ProcessRunResult(
          stdout: _envJson, stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/m/magento.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    expect(spec.generateSpec, isNotNull);

    Future<ExecuteCommandOutput> executeCommand(
        ExecuteCommandInput input) async {
      final result = await adapter.runProcess(input.command, input.args);
      return ExecuteCommandOutput(
        stdout: result.stdout,
        stderr: result.stderr,
        status: result.exitCode,
      );
    }

    final generated = await spec.generateSpec!(
      const ['magento', ''],
      executeCommand,
    );
    expect(generated, isNotNull);
    expect(
        generated!.subcommands!.map((item) => item.nameList.first).toList(),
        ['cache:clean', 'setup:upgrade', 'config:set']);
    final clean = generated.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'cache:clean');
    final types = clean.args!.firstWhere((arg) => arg.name == 'types');
    expect(types.suggestionsAsList.map((item) => item.nameSingle ?? '').toList(),
        ['config', 'layout', 'block_html', 'collections']);
  });

  test('engine drives generateSpec and surfaces cache types end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMagentoHandlers(registry);
    final adapter = _FakeAdapter({
      _listKey: const ProcessRunResult(
          stdout: _magentoListJson, stderr: '', exitCode: 0),
      _envKey: const ProcessRunResult(
          stdout: _envJson, stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/m/magento.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    registerSpec('magento', () => spec);
    addTearDown(() => unregisterSpec('magento'));

    final blob = await getSuggestions(
      'magento cache:clean ',
      '/work',
      Shell.bash,
      adapter,
      ensureSpecLoaded: (name) async {},
    );
    expect(blob, isNotNull);
    final names = blob!.suggestions.map((suggestion) => suggestion.name).toList();
    expect(names, containsAll(['config', 'layout', 'block_html', 'collections']));
  });
}
