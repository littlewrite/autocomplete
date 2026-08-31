import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/git_flow.dart';
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

void main() {
  test('git-flow JSON references exactly the typeBranches generator', () async {
    final handlers = JsonHandlerRegistry();
    registerGitFlowHandlers(handlers);
    final source = await File('assets/specs/g/git-flow.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'git-flow');
    expect(source, contains(gitFlowTypeBranchesCustomHandler));
    expect(_referencedHandlers(document), {gitFlowTypeBranchesCustomHandler});
  });

  test('typeBranches generator filters branches by the git-flow prefix',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitFlowHandlers(registry);

    final suggestions = await registry.custom(gitFlowTypeBranchesCustomHandler)!(
      ['git-flow', 'feature', 'finish', ''],
      (input) async {
        final args = input.args.join(' ');
        if (args.startsWith('config --get')) {
          expect(input.args, ['config', '--get', 'gitflow.prefix.feature']);
          return const ExecuteCommandOutput(
            stdout: 'feature/\n',
            stderr: '',
            status: 0,
          );
        }
        expect(input.args, [
          '--no-optional-locks',
          'branch',
          '-a',
          '--no-color',
          '--sort=-committerdate',
        ]);
        return const ExecuteCommandOutput(
          stdout: '  feature/login\n* feature/cache\n+ feature/cleanup\n'
              '  develop\n  remotes/origin/feature/login\n',
          stderr: '',
          status: 0,
        );
      },
      null,
    );

    expect(suggestions.map((s) => s.name).toList(),
        ['login', 'cache', 'cleanup']);
    expect(suggestions.first.description, 'feature branch');
    expect(suggestions.first.icon, 'fig://icon?type=git');
  });

  test('typeBranches generator yields nothing when the prefix is unset',
      () async {
    final registry = JsonHandlerRegistry();
    registerGitFlowHandlers(registry);

    final suggestions = await registry.custom(gitFlowTypeBranchesCustomHandler)!(
      ['git-flow', 'release', 'finish', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 0),
      null,
    );

    expect(suggestions, isEmpty);
  });

  test('typeBranches generator runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry();
    registerGitFlowHandlers(registry);
    final adapter = _FakeAdapter({
      'git config --get gitflow.prefix.feature': const ProcessRunResult(
        stdout: 'feature/\n',
        stderr: '',
        exitCode: 0,
      ),
      'git --no-optional-locks branch -a --no-color --sort=-committerdate':
          const ProcessRunResult(
        stdout: '  feature/login\n* develop\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/git-flow.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final feature =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('feature'));
    final finish =
        feature.subcommands!.firstWhere((s) => s.nameList.contains('finish'));
    final generator = finish.args!.first.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'git-flow', tokenLength: 8, complete: true),
        CommandToken(token: 'feature', tokenLength: 7, complete: true),
        CommandToken(token: 'finish', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['login']);
  });
}
