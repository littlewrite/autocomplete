import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/git_profile.dart';
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
  test('git-profile JSON binds the use generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGitProfileHandlers(handlers);
    final source = await File('assets/specs/g/git-profile.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gitProfileListPostProcessHandler));
    expect(document['name'], 'git-profile');

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
    expect(ids.toSet(), {gitProfileListPostProcessHandler});
  });

  test('post-processor extracts bracketed profile names', () {
    final registry = JsonHandlerRegistry();
    registerGitProfileHandlers(registry);
    final output = '[personal]\n'
        '[work]\n'
        '[opensource]\n';

    final profiles =
        registry.postProcess(gitProfileListPostProcessHandler)!(output);
    expect(profiles.map((item) => item.nameSingle ?? ''),
        ['personal', 'work', 'opensource']);
    expect(profiles.first.description, 'Use profile "personal"');
  });

  test('post-processor returns empty for output without profiles', () {
    final registry = JsonHandlerRegistry();
    registerGitProfileHandlers(registry);
    expect(
      registry.postProcess(gitProfileListPostProcessHandler)!(''),
      isEmpty,
    );
    expect(
      registry.postProcess(gitProfileListPostProcessHandler)!(
          'not a profile line\n'
          '[unterminated\n'
          ']also not a profile\n'),
      isEmpty,
    );
  });

  test('post-processor matches a profile on a final line without newline', () {
    final registry = JsonHandlerRegistry();
    registerGitProfileHandlers(registry);
    final profiles =
        registry.postProcess(gitProfileListPostProcessHandler)!('[personal]');
    expect(profiles.map((item) => item.nameSingle ?? ''), ['personal']);
  });

  test('git-profile list generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitProfileHandlers(registry);
    final adapter = _FakeAdapter({
      'git-profile list': const ProcessRunResult(
        stdout: '[personal]\n[work]\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/git-profile.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'git-profile list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'git-profile', tokenLength: 11, complete: true),
        CommandToken(token: 'use', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['personal', 'work']);
  });
}
