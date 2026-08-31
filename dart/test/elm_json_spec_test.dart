import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/elm.dart';
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
  test('elm JSON binds its generator to the packages post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerElmHandlers(handlers);
    final source = await File('assets/specs/e/elm.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(elmPackagesPostProcessHandler));
    expect(document['name'], 'elm');

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
    expect(ids.toSet(), {elmPackagesPostProcessHandler});
  });

  test('packages post-processor maps name and summary', () {
    final registry = JsonHandlerRegistry();
    registerElmHandlers(registry);
    const output = '[{"name":"elm/core","summary":"Core Elm library"},'
        '{"name":"elm/html","summary":"HTML rendering in Elm"}]';

    final packages =
        registry.postProcess(elmPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle), ['elm/core', 'elm/html']);
    expect(packages.map((item) => item.description),
        ['Core Elm library', 'HTML rendering in Elm']);
  });

  test('packages post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerElmHandlers(registry);

    final broken =
        registry.postProcess(elmPackagesPostProcessHandler)!('not json');
    expect(broken, isEmpty);

    final empty = registry.postProcess(elmPackagesPostProcessHandler)!('');
    expect(empty, isEmpty);

    final objectNotArray =
        registry.postProcess(elmPackagesPostProcessHandler)!('{}');
    expect(objectNotArray, isEmpty);
  });

  test('packages post-processor preserves a null name for a missing field', () {
    final registry = JsonHandlerRegistry();
    registerElmHandlers(registry);
    const output = '[{"summary":"No name field here"}]';

    final packages =
        registry.postProcess(elmPackagesPostProcessHandler)!(output);
    expect(packages.single.nameSingle, isNull);
    expect(packages.single.description, 'No name field here');
  });

  test('elm install generator runs its curl script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerElmHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -sH accept-encoding: gzip --compressed '
          'https://package.elm-lang.org/search.json': const ProcessRunResult(
        stdout: '[{"name":"elm/core","summary":"Core Elm library"},'
            '{"name":"elm/json","summary":"Work with JSON in Elm"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/elm.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    const scriptCommand = 'curl -sH accept-encoding: gzip --compressed '
        'https://package.elm-lang.org/search.json';
    final generator = generatorByScript(spec, scriptCommand);
    expect(generator, isNotNull,
        reason: 'no generator for $scriptCommand in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'elm', tokenLength: 3, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'elm/core', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['elm/core', 'elm/json']);
  });
}
