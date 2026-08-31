import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/turbo.dart';
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

/// The `bash -c` script baked into the turbo JSON, verbatim after JSON
/// decoding. A raw string keeps the `$PWD` literal.
const _turboScript =
    r"until [[ ( -f turbo.json || $PWD = '/' ) ]]; do cd ..; done; cat turbo.json";

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? match(FigGenerator generator) {
    final script = generator.script;
    if (script is List && script.join(' ') == scriptCommand) return generator;
    return null;
  }

  FigGenerator? fromArg(FigArg arg) {
    for (final generator in arg.generatorsList) {
      final found = match(generator);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? visitSubcommand(FigSubcommand sub) {
    for (final arg in sub.args ?? const <FigArg>[]) {
      final found = fromArg(arg);
      if (found != null) return found;
    }
    if (sub.subcommands != null) {
      for (final nested in sub.subcommands!) {
        final found = visitSubcommand(nested);
        if (found != null) return found;
      }
    }
    return null;
  }

  for (final arg in spec.args ?? const <FigArg>[]) {
    final found = fromArg(arg);
    if (found != null) return found;
  }
  for (final sub in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visitSubcommand(sub);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('turbo JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerTurboHandlers(handlers);
    final source = await File('assets/specs/t/turbo.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(turboTasksPostProcessHandler));
    expect(document['name'], 'turbo');

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
    expect(ids.toSet(), {turboTasksPostProcessHandler});
  });

  test('task post-processor turns pipeline keys into tasks', () {
    final registry = JsonHandlerRegistry();
    registerTurboHandlers(registry);
    final output = r'{"$schema":"https://turborepo.org/schema.json",'
        r'"pipeline":{"build":{"dependsOn":["^build"],'
        r'"outputs":[".next/**","!.next/cache/**"]},'
        r'"test":{"dependsOn":["build"]},'
        r'"lint":{"outputs":["coverage/**"]},'
        r'"deploy":{}}}';

    final tasks = registry.postProcess(turboTasksPostProcessHandler)!(output);
    expect(tasks.map((item) => item.nameSingle),
        ['build', 'test', 'lint', 'deploy']);
    expect(tasks.map((item) => item.description), [
      "Task: depends on '^build', outputs '.next/**', '!.next/cache/**'",
      "Task: depends on 'build'",
      "Task: outputs 'coverage/**'",
      'Task',
    ]);
  });

  test('task post-processor returns an empty list for empty or invalid output',
      () {
    final registry = JsonHandlerRegistry();
    registerTurboHandlers(registry);
    expect(registry.postProcess(turboTasksPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(turboTasksPostProcessHandler)!('not json'), isEmpty);
    expect(registry
        .postProcess(turboTasksPostProcessHandler)!('{"pipeline": []}'),
        isEmpty);
  });

  test('turbo run tasks generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTurboHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_turboScript': const ProcessRunResult(
        stdout: '{"pipeline":{"build":{"dependsOn":["^build"]},'
            '"test":{},"lint":{"outputs":["coverage/**"]}}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/turbo.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'bash -c $_turboScript');
    expect(generator, isNotNull,
        reason: 'no generator for the turbo bash -c script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'turbo', tokenLength: 5, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test', 'lint']);
  });
}
