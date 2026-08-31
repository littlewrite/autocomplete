import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/hugo.dart';
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
  test('hugo JSON binds the generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerHugoHandlers(handlers);
    final source = await File('assets/specs/h/hugo.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(hugoArchetypesPostProcessHandler));
    expect(document['name'], 'hugo');

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
    expect(ids.toSet(), {hugoArchetypesPostProcessHandler});
  });

  test('archetypes post-processor strips extensions and drops blank lines',
      () {
    final registry = JsonHandlerRegistry();
    registerHugoHandlers(registry);
    final postProcess = registry.postProcess(hugoArchetypesPostProcessHandler)!;

    final suggestions = postProcess('post.md\ndefault.md\n');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['post', 'default']);
    expect(suggestions.first.icon, 'fig://icon?type=string');
  });

  test('archetypes post-processor returns no suggestions for empty output', () {
    final registry = JsonHandlerRegistry();
    registerHugoHandlers(registry);
    final postProcess = registry.postProcess(hugoArchetypesPostProcessHandler)!;

    expect(postProcess(''), isEmpty);
    expect(postProcess('\n\n'), isEmpty);
    expect(postProcess('a.md\n\nb.md').map((item) => item.nameSingle ?? ''),
        ['a', 'b']);
  });

  test('archetypes post-processor mirrors the no-extension slice quirk', () {
    final registry = JsonHandlerRegistry();
    registerHugoHandlers(registry);
    final postProcess = registry.postProcess(hugoArchetypesPostProcessHandler)!;

    // JS slice(0, -1) drops the final character when the file has no dot.
    expect(
        postProcess('README').map((item) => item.nameSingle ?? ''), ['READM']);
  });

  test('hugo new --kind generator runs ls through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerHugoHandlers(registry);
    final adapter = _FakeAdapter({
      'ls ./archetypes/': const ProcessRunResult(
        stdout: 'post.md\ndefault.md\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/h/hugo.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => <FigArg>[
              ...(subcommand.args ?? const <FigArg>[]),
              ...(subcommand.options ?? const <FigOption>[])
                  .expand((option) => option.args ?? const <FigArg>[]),
            ])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'ls ./archetypes/';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'hugo', tokenLength: 4, complete: true),
        CommandToken(token: 'new', tokenLength: 3, complete: true),
        CommandToken(token: '-k', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['post', 'default']);
  });
}
