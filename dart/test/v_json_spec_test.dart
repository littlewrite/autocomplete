import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/v.dart';
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
  test('v JSON binds every postProcess to the one declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerVHandlers(handlers);
    final source = await File('assets/specs/v/v.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(vHelpTopicsPostProcessHandler));
    expect(document['name'], 'v');

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
    expect(ids.toSet(), {vHelpTopicsPostProcessHandler});
  });

  test('help-topics post-processor strips the prefix and trailing dot', () {
    final registry = JsonHandlerRegistry();
    registerVHandlers(registry);
    final output = 'Known help topics: arrays, build, compiler, other, repl.\n';

    final suggestions =
        registry.postProcess(vHelpTopicsPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['arrays', 'build', 'compiler', 'repl']);
    expect(suggestions.map((item) => item.priority), [0, 0, 0, 0]);
    expect(suggestions.first.description, 'Display help for: "arrays"');
    expect(suggestions.last.description, 'Display help for: "repl"');
  });

  test('help-topics post-processor yields nothing on empty or short output', () {
    final registry = JsonHandlerRegistry();
    registerVHandlers(registry);
    expect(registry.postProcess(vHelpTopicsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(vHelpTopicsPostProcessHandler)!('  \n'), isEmpty);
    expect(
        registry
            .postProcess(vHelpTopicsPostProcessHandler)!('Known help topics.'),
        isEmpty);
  });

  test('v help generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerVHandlers(registry);
    final adapter = _FakeAdapter({
      'v help topics': const ProcessRunResult(
        stdout: 'Known help topics: arrays, build, compiler, other, repl.\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/v/v.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'v help topics';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'v', tokenLength: 1, complete: true),
        CommandToken(token: 'help', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['arrays', 'build', 'compiler', 'repl']);
  });
}
