import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rancher.dart';
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

void main() {
  test('rancher JSON binds both generator postProcess handler IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerRancherHandlers(handlers);
    final source = await File('assets/specs/r/rancher.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rancherServerListDeletePostProcessHandler));
    expect(source, contains(rancherServerListSwitchPostProcessHandler));
    expect(document['name'], 'rancher');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), {
      rancherServerListDeletePostProcessHandler,
      rancherServerListSwitchPostProcessHandler,
    });
  });

  test('server list post-processor drops the current server and keeps URLs',
      () {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final output = 'CURRENT   SERVER      URL\n'
        '*         local       https://localhost:1234\n'
        '          production  https://rancher.example.com\n'
        '          staging     https://rancher.staging.example.com\n';

    final servers = registry
        .postProcess(rancherServerListSwitchPostProcessHandler)!(output);
    // The source reads `match(/\S+/g)[1]` as the name; for rows with an empty
    // CURRENT column that token is the URL, and there is no third token.
    expect(servers.map((item) => item.nameSingle ?? ''),
        ['https://rancher.example.com', 'https://rancher.staging.example.com']);
    expect(servers[0].description, isNull);
    expect(servers[0].icon, 'https://rancher.com/docs/img/favicon.png');
  });

  test('server list post-processor emits placeholder when only current server',
      () {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final output = 'CURRENT   SERVER  URL\n'
        '*         local   https://localhost:1234\n';

    final servers =
        registry.postProcess(rancherServerListDeletePostProcessHandler)!(output);
    expect(servers.map((item) => item.nameSingle ?? ''),
        ['No other servers found to swtich to']);
    expect(servers.single.description, '');
  });

  test('server list post-processor emits placeholder on empty output', () {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final servers =
        registry.postProcess(rancherServerListSwitchPostProcessHandler)!('');
    expect(servers.map((item) => item.nameSingle ?? ''),
        ['No other servers found to swtich to']);
  });

  test('server list post-processor emits placeholder on a header-only output',
      () {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final output = 'CURRENT   SERVER      URL\n';

    final servers =
        registry.postProcess(rancherServerListDeletePostProcessHandler)!(output);
    expect(servers.map((item) => item.nameSingle ?? ''),
        ['No other servers found to swtich to']);
  });

  test('rancher server switch generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final adapter = _FakeAdapter({
      'rancher server ls': const ProcessRunResult(
        stdout: 'CURRENT   SERVER      URL\n'
            '*         local       https://localhost:1234\n'
            '          production  https://rancher.example.com\n'
            '          staging     https://rancher.staging.example.com\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rancher.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final server = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'server');
    final switchSubcommand = server.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'switch');
    final generator = switchSubcommand.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'rancher server ls';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rancher', tokenLength: 7, complete: true),
        CommandToken(token: 'server', tokenLength: 6, complete: true),
        CommandToken(token: 'switch', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['https://rancher.example.com', 'https://rancher.staging.example.com']);
  });

  test('rancher server delete generator also binds the server list handler',
      () async {
    final registry = JsonHandlerRegistry();
    registerRancherHandlers(registry);
    final adapter = _FakeAdapter({
      'rancher server ls': const ProcessRunResult(
        stdout: 'CURRENT   SERVER      URL\n'
            '*         local       https://localhost:1234\n'
            '          old-node    https://rancher.example.com\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rancher.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final server = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'server');
    final deleteSubcommand = server.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'delete');
    final generator = deleteSubcommand.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'rancher server ls';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rancher', tokenLength: 7, complete: true),
        CommandToken(token: 'server', tokenLength: 6, complete: true),
        CommandToken(token: 'delete', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['https://rancher.example.com']);
  });
}
