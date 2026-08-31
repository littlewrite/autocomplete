import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/herd.dart';
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
  test('herd JSON binds the help generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerHerdHandlers(handlers);
    final source = await File('assets/specs/h/herd.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(herdHelpCommandsPostProcessHandler));
    expect(document['name'], 'herd');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
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
    expect(ids.toSet(), {herdHelpCommandsPostProcessHandler});
  });

  test('help generator post-processor parses herd list --raw output', () {
    final registry = JsonHandlerRegistry();
    registerHerdHandlers(registry);
    final output = 'completion   Dump the shell completion script\n'
        'composer     Proxy Composer commands with isolated site\'s PHP '
        'executable\n'
        'directory-listing  Determine directory-listing behavior. Default is '
        'off, which means a 404 will display\n';

    final commands =
        registry.postProcess(herdHelpCommandsPostProcessHandler)!(output);
    expect(commands.map((item) => item.nameSingle),
        ['completion', 'composer', 'directory-listing']);
    expect(commands[0].description, 'Dump the shell completion script');
    expect(commands[1].description,
        'Proxy Composer commands with isolated site\'s PHP executable');
    expect(commands[2].description,
        'Determine directory-listing behavior. Default is off, which means a '
        '404 will display');
  });

  test('help generator post-processor skips blank lines and trailing newline',
      () {
    final registry = JsonHandlerRegistry();
    registerHerdHandlers(registry);
    final output = '\n'
        'completion   Dump the shell completion script\n'
        '   \n'
        '  \n';

    final commands =
        registry.postProcess(herdHelpCommandsPostProcessHandler)!(output);
    expect(commands.map((item) => item.nameSingle), ['completion']);
    expect(commands.first.description, 'Dump the shell completion script');
  });

  test('help generator post-processor keeps name-only lines', () {
    final registry = JsonHandlerRegistry();
    registerHerdHandlers(registry);
    final output = 'completion   Dump the shell completion script\n'
        'init:fresh\n';

    final commands =
        registry.postProcess(herdHelpCommandsPostProcessHandler)!(output);
    expect(commands.map((item) => item.nameSingle),
        ['completion', 'init:fresh']);
    expect(commands[1].description, isNull);
  });

  test('help generator post-processor returns empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerHerdHandlers(registry);
    final commands = registry
        .postProcess(herdHelpCommandsPostProcessHandler)!('');
    expect(commands, isEmpty);
  });

  test('herd help generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerHerdHandlers(registry);
    final adapter = _FakeAdapter({
      'herd list --raw': const ProcessRunResult(
        stdout: 'completion   Dump the shell completion script\n'
            'composer     Proxy Composer commands with isolated site\'s PHP '
            'executable\n'
            'secure       Secure the given domain with a trusted TLS '
            'certificate\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/h/herd.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'herd list --raw';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'herd', tokenLength: 4, complete: true),
        CommandToken(token: 'help', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['completion', 'composer', 'secure']);
  });
}
