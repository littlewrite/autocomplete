import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/chsh.dart';
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
/// [scriptCommand], searching the top-level option args.
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
  test('chsh JSON binds the generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerChshHandlers(handlers);
    final source = await File('assets/specs/c/chsh.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(chshShellsPostProcessHandler));
    expect(document['name'], 'chsh');

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
    expect(ids.toSet(), {chshShellsPostProcessHandler});
  });

  test('shells post-processor strips the current-shell star', () {
    final registry = JsonHandlerRegistry();
    registerChshHandlers(registry);
    final output = '/bin/bash\n'
        '/bin/zsh*\n'
        '/bin/fish\n';

    final shells =
        registry.postProcess(chshShellsPostProcessHandler)!(output);
    expect(shells.map((item) => item.nameSingle),
        ['/bin/bash', '/bin/zsh', '/bin/fish']);
  });

  test('shells post-processor trims leading whitespace from lines', () {
    final registry = JsonHandlerRegistry();
    registerChshHandlers(registry);
    const output = '  /bin/bash\n\t/bin/tcsh\n';

    final shells =
        registry.postProcess(chshShellsPostProcessHandler)!(output);
    expect(shells.map((item) => item.nameSingle), ['/bin/bash', '/bin/tcsh']);
  });

  test('shells post-processor returns empty on fatal preamble', () {
    final registry = JsonHandlerRegistry();
    registerChshHandlers(registry);

    final fatal =
        registry.postProcess(chshShellsPostProcessHandler)!('fatal: error');
    expect(fatal, isEmpty);
  });

  test('shells post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerChshHandlers(registry);

    final empty = registry.postProcess(chshShellsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('chsh generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerChshHandlers(registry);
    final adapter = _FakeAdapter({
      'chsh -l': const ProcessRunResult(
        stdout: '/bin/bash\n'
            '/bin/zsh*\n'
            '/bin/fish\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/chsh.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'chsh -l');
    expect(generator, isNotNull, reason: 'no generator for chsh -l');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'chsh', tokenLength: 4, complete: true),
        CommandToken(token: '-s', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['/bin/bash', '/bin/zsh', '/bin/fish']);
  });
}
