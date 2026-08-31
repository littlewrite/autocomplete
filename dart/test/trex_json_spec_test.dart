import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/trex.dart';
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
  test('trex JSON binds every generator to the two post-process IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerTrexHandlers(handlers);
    final source = await File('assets/specs/t/trex.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(trexDependenciesPostProcessHandler));
    expect(source, contains(trexScriptsPostProcessHandler));
    expect(document['name'], 'trex');

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
      trexDependenciesPostProcessHandler,
      trexScriptsPostProcessHandler,
    });
  });

  test('dependencies post-processor maps import aliases to URLs', () {
    final registry = JsonHandlerRegistry();
    registerTrexHandlers(registry);
    const output = '{"imports":{"std/":"https://deno.land/std@0.180.0/",'
        '"oak/":"https://deno.land/x/oak@v11.1.0/"}}';

    final deps =
        registry.postProcess(trexDependenciesPostProcessHandler)!(output);
    expect(deps.map((item) => item.nameSingle), ['std/', 'oak/']);
    expect(deps.map((item) => item.description),
        ['https://deno.land/std@0.180.0/', 'https://deno.land/x/oak@v11.1.0/']);
    expect(deps.map((item) => item.icon), ['🦖', '🦖']);
  });

  test('dependencies post-processor returns empty on missing imports and errors',
      () {
    final registry = JsonHandlerRegistry();
    registerTrexHandlers(registry);
    final postProcess =
        registry.postProcess(trexDependenciesPostProcessHandler)!;

    expect(postProcess(''), isEmpty);
    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{}'), isEmpty);
    expect(postProcess('{"imports":null}'), isEmpty);
  });

  test('scripts post-processor maps script aliases with a fixed description', () {
    final registry = JsonHandlerRegistry();
    registerTrexHandlers(registry);
    const output = '{"scripts":{"dev":"deno run -A main.ts",'
        '"start":"deno task start"}}';

    final scripts = registry.postProcess(trexScriptsPostProcessHandler)!(output);
    expect(scripts.map((item) => item.nameSingle), ['dev', 'start']);
    expect(scripts.map((item) => item.description),
        ['trex script', 'trex script']);
    expect(scripts.map((item) => item.icon), ['🚀', '🚀']);
  });

  test('scripts post-processor returns empty on missing scripts and errors', () {
    final registry = JsonHandlerRegistry();
    registerTrexHandlers(registry);
    final postProcess = registry.postProcess(trexScriptsPostProcessHandler)!;

    expect(postProcess(''), isEmpty);
    expect(postProcess('not json'), isEmpty);
    expect(postProcess('{}'), isEmpty);
    expect(postProcess('{"scripts":[]}'), isEmpty);
  });

  test('each trex generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTrexHandlers(registry);
    final adapter = _FakeAdapter({
      'cat import_map.json': const ProcessRunResult(
        stdout: '{"imports":{"std/":"https://deno.land/std@0.180.0/",'
            '"oak/":"https://deno.land/x/oak@v11.1.0/"}}',
        stderr: '',
        exitCode: 0,
      ),
      'cat run.json': const ProcessRunResult(
        stdout:
            '{"scripts":{"dev":"deno run -A main.ts","start":"deno task start"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/trex.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'trex', tokenLength: 4, complete: true),
          CommandToken(token: 'delete', tokenLength: 6, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('cat import_map.json', ['std/', 'oak/']);
    await runGenerator('cat run.json', ['dev', 'start']);
  });
}
