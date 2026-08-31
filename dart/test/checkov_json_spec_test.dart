import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/checkov.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the root options' args.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final option in spec.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
  }
  return null;
}

void main() {
  test('checkov JSON binds the branch generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCheckovHandlers(handlers);
    final source = await File('assets/specs/c/checkov.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(checkovBranchesPostProcessHandler));
    expect(document['name'], 'checkov');

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
    expect(ids.toSet(), {checkovBranchesPostProcessHandler});
  });

  test('branches post-processor strips the active marker and labels branches',
      () {
    final registry = JsonHandlerRegistry();
    registerCheckovHandlers(registry);
    final output = '  main\n'
        '* develop\n'
        '  feature/checkov\n';

    final branches =
        registry.postProcess(checkovBranchesPostProcessHandler)!(output);
    expect(branches.map((item) => item.nameSingle),
        ['main', 'develop', 'feature/checkov']);
    expect(
        branches.map((item) => item.description), ['Branch', 'Branch', 'Branch']);
  });

  test('branches post-processor returns empty on a fatal git error', () {
    final registry = JsonHandlerRegistry();
    registerCheckovHandlers(registry);

    final fatal =
        registry.postProcess(checkovBranchesPostProcessHandler)!(
            'fatal: not a git repository (or any of the parent directories)');
    expect(fatal, isEmpty);
  });

  test('branches post-processor handles empty output without artifacts', () {
    final registry = JsonHandlerRegistry();
    registerCheckovHandlers(registry);

    final empty =
        registry.postProcess(checkovBranchesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final blankLines =
        registry.postProcess(checkovBranchesPostProcessHandler)!('\n\n');
    expect(blankLines, isEmpty);
  });

  test('checkov branch generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerCheckovHandlers(registry);
    final adapter = _FakeAdapter({
      'git branch --no-color': const ProcessRunResult(
        stdout: '  main\n'
            '* develop\n'
            '  release/1.0\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/checkov.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'git branch --no-color');
    expect(generator, isNotNull,
        reason: 'no generator for git branch --no-color in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'checkov', tokenLength: 7, complete: true),
        CommandToken(token: '--branch', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['main', 'develop', 'release/1.0']);
  });
}
