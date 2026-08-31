import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/nx.dart';
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

/// Builds an [ExecuteCommandFunction] that dispatches on
/// `[command, ...args].join(' ')`, routing each invocation through
/// [adapter.runProcess].
ExecuteCommandFunction _executeCommandFor(CompleteAdapter adapter) {
  return (input) async {
    final result = await adapter.runProcess(
      input.command,
      input.args,
      workingDirectory: input.cwd,
      environment: input.env,
    );
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

/// A fake shell that answers `cat`/`find` discovery commands from [fixtures]
/// and fails (status 1) for anything else.
ExecuteCommandFunction _fixtureShell(Map<String, String> fixtures) {
  return (input) async {
    final key = [input.command, ...input.args].join(' ');
    final output = fixtures[key];
    if (output == null) {
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 1);
    }
    return ExecuteCommandOutput(stdout: output, stderr: '', status: 0);
  };
}

const _nxJson = '{"workspaceLayout":{"appsDir":"apps","libsDir":"libs"}}';
const _storeProjectJson =
    '{"name":"store","targets":{"build":{"configurations":{"production":{}}}'
    ',"test":{"configurations":{}}}}';
const _uiProjectJson =
    '{"name":"ui","targets":{"build":{"configurations":{"staging":{}}}'
    ',"lint":{"configurations":{}}}}';

void main() {
  test('nx JSON binds the root generateSpec to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerNxHandlers(handlers);
    final source = await File('assets/specs/n/nx.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'nx');
    expect(source, contains(nxGenerateSpecHandler));
    expect(_referencedHandlers(document), {nxGenerateSpecHandler});

    final spec = figSpecFromJsonString(source, handlers: handlers);
    expect(spec.generateSpec, isNotNull);
  });

  test('generateSpec derives a subcommand per shared target from project files',
      () async {
    final registry = JsonHandlerRegistry();
    registerNxHandlers(registry);
    final shell = _fixtureShell({
      'cat nx.json': _nxJson,
      'find apps libs -name project.json':
          'apps/store/project.json\nlibs/ui/project.json\n',
      'cat apps/store/project.json': _storeProjectJson,
      'cat libs/ui/project.json': _uiProjectJson,
    });

    final spec = await registry.generateSpec(nxGenerateSpecHandler)!(
        ['nx', ''], shell);
    expect(spec, isNotNull);
    expect(spec!.name, 'nx');
    expect(spec.subcommands!.map((item) => item.nameList.first),
        ['build', 'test', 'lint']);

    final build = spec.subcommands!.first;
    expect(build.description, 'build target');
    expect(build.icon, 'fig://icon?type=command');
    expect(build.args!.first.name, 'project');
    expect(build.args!.first.suggestionsAsList.map((s) => s.nameSingle),
        ['store', 'ui']);
    expect(build.options!.map((option) => option.nameList.first),
        ['--configuration', '--help', '--version']);
    final configuration = build.options!.first;
    expect(configuration.nameList, ['--configuration', '-c']);
    expect(configuration.args!.first.name, 'configuration');
    expect(configuration.args!.first.generatorsList.single.custom, isA<Function>());

    final test = spec.subcommands![1];
    expect(test.description, 'test target');
    expect(test.icon, 'fig://icon?type=command');
    expect(test.args!.first.suggestionsAsList.map((s) => s.nameSingle),
        ['store']);
    expect(test.options!.map((option) => option.nameList.first),
        ['--help', '--version']);
  });

  test('generateSpec falls back to workspace.json when no project.json files',
      () async {
    final registry = JsonHandlerRegistry();
    registerNxHandlers(registry);
    final shell = _fixtureShell({
      'cat nx.json': _nxJson,
      'find apps libs -name project.json': '',
      'cat workspace.json':
          '{"projects":{"web":{"targets":{"serve":{"configurations":{"dev":{}}}}}}}',
    });

    final spec = await registry.generateSpec(nxGenerateSpecHandler)!(
        ['nx', ''], shell);
    expect(spec, isNotNull);
    expect(spec!.subcommands!.map((item) => item.nameList.first), ['serve']);
    final serve = spec.subcommands!.single;
    expect(serve.icon, 'fig://icon?type=command');
    expect(serve.args!.first.suggestionsAsList.map((s) => s.nameSingle),
        ['web']);
    expect(serve.options!.map((option) => option.nameList.first),
        ['--configuration', '--help', '--version']);
  });

  test('generateSpec yields no derived subcommands on failed discovery',
      () async {
    final registry = JsonHandlerRegistry();
    registerNxHandlers(registry);
    final spec = await registry.generateSpec(nxGenerateSpecHandler)!(
      ['nx', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 1),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'nx');
    expect(spec.subcommands, isEmpty);
  });

  test('configuration generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNxHandlers(registry);
    final adapter = _FakeAdapter({
      'cat nx.json': const ProcessRunResult(stdout: _nxJson, exitCode: 0),
      'find apps libs -name project.json': const ProcessRunResult(
          stdout: 'apps/store/project.json\n', exitCode: 0),
      'cat apps/store/project.json': const ProcessRunResult(
          stdout: _storeProjectJson, exitCode: 0),
    });

    final source = await File('assets/specs/n/nx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['nx', ''],
      _executeCommandFor(adapter),
    );
    expect(generated, isNotNull);

    final build = generated!.subcommands!
        .firstWhere((item) => item.nameList.first == 'build');
    final configuration = build.options!.first;
    final generator = configuration.args!.first.generatorsList.first;
    expect(generator.custom, isA<Function>());

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'nx', tokenLength: 2, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: 'store:build:', tokenLength: 12, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['production']);
  });

  test('configuration generator yields empty suggestions on unknown target',
      () async {
    final registry = JsonHandlerRegistry();
    registerNxHandlers(registry);
    final adapter = _FakeAdapter({
      'cat nx.json': const ProcessRunResult(stdout: _nxJson, exitCode: 0),
      'find apps libs -name project.json': const ProcessRunResult(
          stdout: 'apps/store/project.json\n', exitCode: 0),
      'cat apps/store/project.json': const ProcessRunResult(
          stdout: _storeProjectJson, exitCode: 0),
    });

    final source = await File('assets/specs/n/nx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generated = await spec.generateSpec!(
      const ['nx', ''],
      _executeCommandFor(adapter),
    );
    final build = generated!.subcommands!
        .firstWhere((item) => item.nameList.first == 'build');
    final generator = build.options!.first.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'nx', tokenLength: 2, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: 'store:missing:', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions, isEmpty);
  });
}
