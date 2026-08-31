import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/git_cliff.dart';
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
  test('git-cliff JSON binds the range generator to the postprocess ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGitCliffHandlers(handlers);
    final source = await File('assets/specs/g/git-cliff.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gitCliffCommitsPostProcessHandler));
    expect(document['name'], 'git-cliff');

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
    expect(ids.toSet(), {gitCliffCommitsPostProcessHandler});
  });

  test('commits post-processor turns rev-list lines into range suggestions',
      () {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final output = 'abc1234 feat: add config\n'
        'def5678 fix: typo\n';

    final commits = registry
        .postProcess(gitCliffCommitsPostProcessHandler)!(output, ['git-cliff']);
    expect(commits.map((item) => item.nameSingle ?? ''),
        ['abc1234', 'def5678', 'HEAD']);
    expect(commits.first.insertValue, 'abc1234..');
    expect(commits.first.icon, 'fig://icon?type=node');
    expect(commits.first.priority, 1);
    expect(commits.first.description, 'feat: add config');
    expect(commits.last.nameSingle, 'HEAD');
    expect(commits.last.insertValue, 'HEAD..');
    expect(commits.last.priority, 5);
  });

  test('commits post-processor drops the range suffix when the token has ..',
      () {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final output = 'abc1234 feat: add config\n';

    final commits = registry
        .postProcess(gitCliffCommitsPostProcessHandler)!(output, ['v1..v2']);
    expect(commits.first.insertValue, 'abc1234');
    expect(commits.last.insertValue, 'HEAD');
  });

  test('commits post-processor returns empty on fatal error output', () {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final commits = registry.postProcess(
        gitCliffCommitsPostProcessHandler)!('fatal: not a git repository\n');
    expect(commits, isEmpty);
  });

  test('commits post-processor strips a leading warning line', () {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final output = 'warning: run without --name is deprecated\n'
        'abc1234 feat: add config\n';

    final commits =
        registry.postProcess(gitCliffCommitsPostProcessHandler)!(output, []);
    expect(commits.map((item) => item.nameSingle ?? ''),
        ['abc1234', 'HEAD']);
    expect(commits.first.description, 'feat: add config');
  });

  test('commits post-processor handles empty output gracefully', () {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final commits =
        registry.postProcess(gitCliffCommitsPostProcessHandler)!('');
    expect(commits.map((item) => item.nameSingle ?? ''), ['HEAD']);
  });

  test('git-cliff range generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitCliffHandlers(registry);
    final adapter = _FakeAdapter({
      'git rev-list --all --oneline --abbrev-commit': const ProcessRunResult(
        stdout: 'abc1234 feat: add config\n'
            'def5678 fix: typo\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/git-cliff.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
      final script = candidate.script;
      return script is List &&
          script.join(' ') == 'git rev-list --all --oneline --abbrev-commit';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'git-cliff', tokenLength: 9, complete: true),
        CommandToken(token: 'v1..v2', tokenLength: 6, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['abc1234', 'def5678', 'HEAD']);
  });
}
