import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rubocop.dart';
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
/// [scriptCommand], searching the root spec's options and top-level args.
/// rubocop has no subcommands.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? fromArgs(List<FigArg> args) {
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  for (final option in spec.options ?? const <FigOption>[]) {
    final found = fromArgs(option.args ?? const <FigArg>[]);
    if (found != null) return found;
  }
  for (final arg in spec.args ?? const <FigArg>[]) {
    final found = fromArgs([arg]);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('rubocop JSON binds every generator to the cops post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRubocopHandlers(handlers);
    final source = await File('assets/specs/r/rubocop.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rubocopCopsPostProcessHandler));
    expect(document['name'], 'rubocop');

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
    expect(ids.toSet(), {rubocopCopsPostProcessHandler});
  });

  test('cops post-processor drops the trailing colon from the cop name', () {
    final registry = JsonHandlerRegistry();
    registerRubocopHandlers(registry);
    // Two cop blocks separated by a blank line; stdout does not end in a
    // newline. The first non-comment line of each block loses its last char.
    const output = '# Supports --autocorrect\n'
        'Style/FrozenStringLiteralComment:\n'
        '  Description: Add the frozen_string_literal comment.\n'
        '  Enabled: true\n'
        '\n'
        '# Supports --autocorrect\n'
        'Layout/EmptyLineAfterMagicComment:\n'
        '  Enabled: false\n';

    final cops =
        registry.postProcess(rubocopCopsPostProcessHandler)!(output);
    expect(cops.map((item) => item.nameSingle),
        ['Style/FrozenStringLiteralComment', 'Layout/EmptyLineAfterMagicComment']);
  });

  test('cops post-processor mirrors the empty-output behavior of the source',
      () {
    final registry = JsonHandlerRegistry();
    registerRubocopHandlers(registry);
    // `''.split('\n\n')` yields one empty block, whose only line is empty, so
    // the source produces a single empty-name suggestion (not an empty list).
    final cops = registry.postProcess(rubocopCopsPostProcessHandler)!('');
    expect(cops, hasLength(1));
    expect(cops.single.nameSingle ?? '', '');
  });

  test('cops post-processor falls back to the last line when all are comments',
      () {
    final registry = JsonHandlerRegistry();
    registerRubocopHandlers(registry);
    // No non-comment line: JS `slice(-1)` keeps only the final line and then
    // drops its last character.
    const output = '# only a comment\n# and another';

    final cops =
        registry.postProcess(rubocopCopsPostProcessHandler)!(output);
    expect(cops.map((item) => item.nameSingle ?? ''), ['# and anothe']);
  });

  test('cops post-processor keeps a trailing empty entry from a final newline',
      () {
    final registry = JsonHandlerRegistry();
    registerRubocopHandlers(registry);
    // 'A:\n\nB:\n\n'.split('\n\n') keeps a trailing empty block, faithfully
    // producing an empty-name suggestion for it.
    const output = 'A:\n\nB:\n\n';

    final cops =
        registry.postProcess(rubocopCopsPostProcessHandler)!(output);
    expect(cops.map((item) => item.nameSingle ?? ''), ['A', 'B', '']);
  });

  test('cops generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRubocopHandlers(registry);
    final adapter = _FakeAdapter({
      'rubocop --show-cops': const ProcessRunResult(
        stdout: '# Supports --autocorrect\n'
            'Style/FrozenStringLiteralComment:\n'
            '  Enabled: true\n'
            '\n'
            'Layout/EmptyLineAfterMagicComment:\n'
            '  Enabled: false',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rubocop.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'rubocop --show-cops');
    expect(generator, isNotNull,
        reason: 'no generator for rubocop --show-cops in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rubocop', tokenLength: 7, complete: true),
        CommandToken(token: '--only', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Style/FrozenStringLiteralComment', 'Layout/EmptyLineAfterMagicComment']);
  });
}
