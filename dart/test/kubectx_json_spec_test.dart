import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kubectx.dart';
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
/// [scriptCommand], searching root args and options.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final arg in spec.args ?? const <FigArg>[]) {
    for (final generator in arg.generatorsList) {
      final script = generator.script;
      if (script is List && script.join(' ') == scriptCommand) {
        return generator;
      }
    }
  }
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
  test('kubectx JSON binds every generator to the three post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerKubectxHandlers(handlers);
    final source = await File('assets/specs/k/kubectx.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(kubectxDeletePostProcessHandler));
    expect(source, contains(kubectxExcludeCurrentPostProcessHandler));
    expect(source, contains(kubectxCurrentPostProcessHandler));
    expect(document['name'], 'kubectx');

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
    expect(ids.toSet(), {
      kubectxDeletePostProcessHandler,
      kubectxExcludeCurrentPostProcessHandler,
      kubectxCurrentPostProcessHandler,
    });
  });

  test('delete contexts post-processor prepends "." and maps each line',
      () {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);

    final suggestions =
        registry.postProcess(kubectxDeletePostProcessHandler)!('prod\ndev\nstage');
    expect(suggestions.map((item) => item.nameSingle),
        ['.', 'prod', 'dev', 'stage']);
    expect(suggestions.first.description, 'Delete current context');
    expect(suggestions.first.priority, 90);
    expect(suggestions.first.icon, 'fig://icon?type=asterisk');
    expect(suggestions[1].priority, 95);
    expect(suggestions[1].icon, 'fig://icon?type=kubernetes');
    expect(suggestions[3].priority, 95);
    expect(suggestions[3].icon, 'fig://icon?type=kubernetes');
  });

  test('delete contexts post-processor maps lines at priority 95 after "."',
      () {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);

    final suggestions =
        registry.postProcess(kubectxDeletePostProcessHandler)!('alpha\nbeta');
    expect(suggestions.map((item) => item.nameSingle),
        ['.', 'alpha', 'beta']);
    expect(suggestions.sublist(1).map((item) => item.priority), [95, 95]);
    expect(
        suggestions.sublist(1).map((item) => item.icon),
        ['fig://icon?type=kubernetes', 'fig://icon?type=kubernetes']);
  });

  test('exclude-current post-processor maps each line at priority 90', () {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);

    final suggestions =
        registry.postProcess(kubectxExcludeCurrentPostProcessHandler)!(
            'dev\nstage');
    expect(suggestions.map((item) => item.nameSingle), ['dev', 'stage']);
    expect(suggestions.map((item) => item.priority), [90, 90]);
    expect(suggestions.first.icon, 'fig://icon?type=kubernetes');
  });

  test('line-splitting post-processors keep a trailing empty entry', () {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);

    final deleteSuggestions =
        registry.postProcess(kubectxDeletePostProcessHandler)!('dev\n');
    expect(deleteSuggestions.map((item) => item.nameSingle),
        ['.', 'dev', '']);

    final excludeSuggestions =
        registry.postProcess(kubectxExcludeCurrentPostProcessHandler)!('dev\n');
    expect(excludeSuggestions.map((item) => item.nameSingle), ['dev', '']);
  });

  test('current context post-processor returns one suggestion or empty', () {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);

    final suggestions =
        registry.postProcess(kubectxCurrentPostProcessHandler)!('prod');
    expect(suggestions.map((item) => item.nameSingle), ['prod']);
    expect(suggestions.single.priority, 100);
    expect(suggestions.single.icon, '⭐️');

    expect(registry.postProcess(kubectxCurrentPostProcessHandler)!(''), isEmpty);
  });

  test('each kubectx generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerKubectxHandlers(registry);
    final adapter = _FakeAdapter({
      'kubectx': const ProcessRunResult(
        stdout: 'prod\ndev\nstage',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c kubectx | grep -v \$(kubectx -c)': const ProcessRunResult(
        stdout: 'dev\nstage',
        stderr: '',
        exitCode: 0,
      ),
      'kubectx -c': const ProcessRunResult(
        stdout: 'prod',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/k/kubectx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'kubectx', tokenLength: 7, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('kubectx', ['.', 'prod', 'dev', 'stage']);
    await runGenerator(
        'bash -c kubectx | grep -v \$(kubectx -c)', ['dev', 'stage']);
    await runGenerator('kubectx -c', ['prod']);
  });
}
