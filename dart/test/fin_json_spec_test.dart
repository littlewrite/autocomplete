import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/fin.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  return visit(spec.subcommands ?? const []);
}

void main() {
  test('fin JSON binds every dynamic value to the four declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFinHandlers(handlers);
    final source = await File('assets/specs/f/fin.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(finDatabasesPostProcessHandler));
    expect(source, contains(finHostsPostProcessHandler));
    expect(source, contains(finAliasGeneratorPostProcessHandler));
    expect(source, contains(finGenerateSpecHandler));
    expect(document['name'], 'fin');
    expect(_referencedHandlers(document), {
      finDatabasesPostProcessHandler,
      finHostsPostProcessHandler,
      finAliasGeneratorPostProcessHandler,
      finGenerateSpecHandler,
    });
  });

  test('databases post-processor trims each database name', () {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    const output = '  default  \nproject_db\nother';

    final databases =
        registry.postProcess(finDatabasesPostProcessHandler)!(output);
    expect(
        databases.map((item) => item.nameSingle),
        ['default', 'project_db', 'other']);
    expect(
        databases.map((item) => item.description),
        ['Database', 'Database', 'Database']);
  });

  test('databases post-processor keeps a trailing empty line', () {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    const output = 'default\n';

    final databases =
        registry.postProcess(finDatabasesPostProcessHandler)!(output);
    expect(databases.map((item) => item.nameSingle), ['default', '']);
  });

  test('hosts post-processor blanks comment lines and keeps the rest untrimmed',
      () {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    const output =
        '# This is a comment\n127.0.0.1 localhost\nmyproject.docksal';

    final hosts = registry.postProcess(finHostsPostProcessHandler)!(output);
    expect(hosts.length, 3);
    expect(hosts[0].nameSingle, isNull);
    expect(hosts[0].description, isNull);
    expect(hosts[1].nameSingle, '127.0.0.1 localhost');
    expect(hosts[1].description, 'Host');
    expect(hosts[2].nameSingle, 'myproject.docksal');
    expect(hosts[2].description, 'Host');
  });

  test('hosts post-processor treats leading whitespace before # as a host', () {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    const output = '  # indented\nrealhost';

    final hosts = registry.postProcess(finHostsPostProcessHandler)!(output);
    expect(hosts[0].nameSingle, '  # indented');
    expect(hosts[1].nameSingle, 'realhost');
  });

  test('alias post-processor skips the header and takes the alias name', () {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    const output =
        'ALIAS  PATH\nmy-site  /Users/me/projects/my-site\nother  /tmp/x';

    final aliases =
        registry.postProcess(finAliasGeneratorPostProcessHandler)!(output);
    expect(aliases.map((item) => item.nameSingle), ['my-site', 'other']);
    expect(
        aliases.map((item) => item.description), ['Alias', 'Alias']);
  });

  test('generateSpec lists custom commands as fin subcommands', () async {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);

    final spec = await registry.generateSpec(finGenerateSpecHandler)!(
      ['fin', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'my-command\nother-command',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'fin');
    expect(spec.subcommands!.map((item) => item.nameList.first),
        ['my-command', 'other-command']);
    expect(spec.subcommands!.map((item) => item.priority), [55, 55]);
  });

  test('generateSpec filters blank lines from the command listing', () async {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);

    final spec = await registry.generateSpec(finGenerateSpecHandler)!(
      ['fin', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'first\n\nthird\n',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec!.subcommands!.map((item) => item.nameList.first),
        ['first', 'third']);
  });

  test('generateSpec yields no subcommands on empty output', () async {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);

    final spec = await registry.generateSpec(finGenerateSpecHandler)!(
      ['fin', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'fin');
    expect(spec.subcommands, isEmpty);
  });

  test('fin generators run through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFinHandlers(registry);
    final adapter = _FakeAdapter({
      'fin db list': const ProcessRunResult(
        stdout: 'default\nproject_db',
        stderr: '',
        exitCode: 0,
      ),
      // Comment lines become empty suggestions and are dropped by the runtime.
      'fin hosts': const ProcessRunResult(
        stdout: '# comment\n127.0.0.1 localhost\nmyproject.docksal',
        stderr: '',
        exitCode: 0,
      ),
      'fin alias list': const ProcessRunResult(
        stdout: 'ALIAS  PATH\nmy-site  /Users/me/projects/my-site',
        stderr: '',
        exitCode: 0,
      ),
      'fin docker ps --format {{.Names}}': const ProcessRunResult(
        stdout: 'cli\nweb',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/fin.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'fin', tokenLength: 3, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('fin db list', ['default', 'project_db']);
    await runGenerator('fin hosts',
        ['127.0.0.1 localhost', 'myproject.docksal']);
    await runGenerator('fin alias list', ['my-site']);
    await runGenerator(
        'fin docker ps --format {{.Names}}', ['cli', 'web']);
  });
}
