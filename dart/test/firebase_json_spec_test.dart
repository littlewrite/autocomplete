import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/firebase.dart';
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
  test('firebase JSON binds every generator to the project alias post-process '
      'ID', () async {
    final handlers = JsonHandlerRegistry();
    registerFirebaseHandlers(handlers);
    final source = await File('assets/specs/f/firebase.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(firebaseProjectAliasesPostProcessHandler));
    expect(document['name'], 'firebase');

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
    expect(ids.toSet(), {firebaseProjectAliasesPostProcessHandler});
  });

  test('project aliases post-processor skips the header and trims the name',
      () {
    final registry = JsonHandlerRegistry();
    registerFirebaseHandlers(registry);
    final output = '┌──────────────────────┬──────────────┬────────────┬'
        '──────────────────────┐\n'
        '│ Project Display Name │ Project ID   │ Number     │ '
        'Resource Location     │\n'
        '├──────────────────────┼──────────────┼────────────┼'
        '──────────────────────┤\n'
        '│ My Awesome Project   │ my-awesome   │ 123456789  │ '
        'us-central1           │\n'
        '│ Another App          │ another-app  │ 987654321  │ '
        'us-central1           │\n'
        '└──────────────────────┴──────────────┴────────────┴'
        '──────────────────────┘\n';

    final aliases =
        registry.postProcess(firebaseProjectAliasesPostProcessHandler)!(output);
    expect(aliases.map((item) => item.nameSingle ?? '').toList(),
        ['My Awesome Project', 'Another App']);
    expect(aliases.map((item) => item.description).toList(),
        ['ProjectAlias', 'ProjectAlias']);
  });

  test('project aliases post-processor handles empty and header-only output',
      () {
    final registry = JsonHandlerRegistry();
    registerFirebaseHandlers(registry);

    final empty =
        registry.postProcess(firebaseProjectAliasesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final headerOnly = registry
        .postProcess(firebaseProjectAliasesPostProcessHandler)!(
            '┌──────────────────────┐\n'
            '│ Project Display Name │\n'
            '└──────────────────────┘\n');
    expect(headerOnly, isEmpty);

    final noMatches = registry
        .postProcess(firebaseProjectAliasesPostProcessHandler)!(
            'no box-drawing rows here\n');
    expect(noMatches, isEmpty);
  });

  test('firebase use generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirebaseHandlers(registry);
    final adapter = _FakeAdapter({
      'firebase projects:list': const ProcessRunResult(
        stdout: '┌──────────────────────┬──────────────┬────────────┬'
            '──────────────────────┐\n'
            '│ Project Display Name │ Project ID   │ Number     │ '
            'Resource Location     │\n'
            '├──────────────────────┼──────────────┼────────────┼'
            '──────────────────────┤\n'
            '│ My Awesome Project   │ my-awesome   │ 123456789  │ '
            'us-central1           │\n'
            '└──────────────────────┴──────────────┴────────────┴'
            '──────────────────────┘\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/firebase.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'firebase projects:list');
    expect(generator, isNotNull,
        reason: 'no generator for firebase projects:list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'firebase', tokenLength: 8, complete: true),
        CommandToken(token: 'use', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['My Awesome Project']);
  });
}
