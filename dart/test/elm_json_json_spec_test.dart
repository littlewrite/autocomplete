import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/elm_json.dart';
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
  test('elm-json JSON binds every generator to the package list post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerElmJsonHandlers(handlers);
    final source = await File('assets/specs/e/elm-json.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(elmJsonPackageListPostProcessHandler));
    expect(document['name'], 'elm-json');

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
    expect(ids.toSet(), {elmJsonPackageListPostProcessHandler});
  });

  test('package list post-processor maps name and summary', () {
    final registry = JsonHandlerRegistry();
    registerElmJsonHandlers(registry);
    const output = '[{"name":"elm/core","summary":"Core library for Elm"},'
        '{"name":"elm/html","summary":"HTML rendering library"},'
        '{"name":"elm/json","summary":"Work with JSON values"}]';

    final packages =
        registry.postProcess(elmJsonPackageListPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''),
        ['elm/core', 'elm/html', 'elm/json']);
    expect(packages.map((item) => item.description), [
      'Core library for Elm',
      'HTML rendering library',
      'Work with JSON values',
    ]);
  });

  test('package list post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerElmJsonHandlers(registry);

    final broken =
        registry.postProcess(elmJsonPackageListPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(elmJsonPackageListPostProcessHandler)!('');
    expect(empty, isEmpty);

    final objectNotArray =
        registry.postProcess(elmJsonPackageListPostProcessHandler)!('{}');
    expect(objectNotArray, isEmpty);
  });

  test('package list post-processor keeps a package missing its summary', () {
    final registry = JsonHandlerRegistry();
    registerElmJsonHandlers(registry);
    const output = '[{"name":"elm/http","summary":"HTTP requests"},'
        '{"name":"elm/time"}]';

    final packages =
        registry.postProcess(elmJsonPackageListPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''),
        ['elm/http', 'elm/time']);
    expect(packages.first.description, 'HTTP requests');
    expect(packages.last.description, isNull);
  });

  test('elm-json package list generator runs end to end through the adapter',
      () async {
    final registry = JsonHandlerRegistry();
    registerElmJsonHandlers(registry);
    const scriptCommand =
        'curl -sH accept-encoding: gzip --compressed '
        'https://package.elm-lang.org/search.json';
    final adapter = _FakeAdapter({
      scriptCommand: const ProcessRunResult(
        stdout: '[{"name":"elm/core","summary":"Core library for Elm"},'
            '{"name":"elm/html","summary":"HTML rendering library"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/elm-json.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, scriptCommand);
    expect(generator, isNotNull,
        reason: 'no generator for $scriptCommand in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'elm-json', tokenLength: 8, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['elm/core', 'elm/html']);
  });
}
