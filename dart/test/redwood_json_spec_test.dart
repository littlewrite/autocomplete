import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/redwood.dart';
import 'package:test/test.dart';

const _redwoodScript = r"bash -c until [[ -f redwood.toml ]] || [[ $PWD = '/' ]]; do cd ..; done; ls -1p scripts/";

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
/// [scriptCommand], searching the top-level args and the whole subcommand tree
/// (including option args).
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? hitInArgs(List<FigArg> args) {
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

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final hit = hitInArgs(subcommand.args ?? const <FigArg>[]);
      if (hit != null) return hit;
      for (final option in subcommand.options ?? const <FigOption>[]) {
        final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
        if (optionHit != null) return optionHit;
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  final topLevel = hitInArgs(spec.args ?? const <FigArg>[]);
  if (topLevel != null) return topLevel;
  for (final option in spec.options ?? const <FigOption>[]) {
    final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
    if (optionHit != null) return optionHit;
  }
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('redwood JSON binds the script generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRedwoodHandlers(handlers);
    final source = await File('assets/specs/r/redwood.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(redwoodScriptsPostProcessHandler));
    expect(document['name'], 'redwood');

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
    expect(ids.toSet(), {redwoodScriptsPostProcessHandler});
  });

  test('redwood script post-processor keeps .js/.ts files without extensions',
      () {
    final registry = JsonHandlerRegistry();
    registerRedwoodHandlers(registry);
    const output = 'clean-cache.js\n'
        'build.js\n'
        'db/\n'
        'seed.ts';

    final scripts =
        registry.postProcess(redwoodScriptsPostProcessHandler)!(output);
    expect(scripts.map((item) => item.nameSingle),
        ['clean-cache', 'build', 'seed']);
    expect(scripts.map((item) => item.description),
        ['Script', 'Script', 'Script']);
    expect(scripts.every((item) => item.icon ==
        'https://avatars.githubusercontent.com/u/45050444?s=200&v=4'), isTrue);
  });

  test('redwood script post-processor handles empty and whitespace output', () {
    final registry = JsonHandlerRegistry();
    registerRedwoodHandlers(registry);
    expect(
        registry.postProcess(redwoodScriptsPostProcessHandler)!(''), isEmpty);
    expect(registry.postProcess(redwoodScriptsPostProcessHandler)!('   '),
        isEmpty);
  });

  test('redwood script generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRedwoodHandlers(registry);
    final adapter = _FakeAdapter({
      _redwoodScript: const ProcessRunResult(
        stdout: 'clean-cache.js\nbuild.js\nseed.ts\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/redwood.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, _redwoodScript);
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'redwood', tokenLength: 7, complete: true),
        CommandToken(token: 'exec', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['clean-cache', 'build', 'seed']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Script', 'Script', 'Script']);
  });
}
