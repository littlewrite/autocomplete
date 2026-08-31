import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/gource.dart';
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
/// [scriptCommand], searching options and the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final option in subcommand.options ?? const <FigOption>[]) {
        for (final arg in option.args ?? const <FigArg>[]) {
          for (final generator in arg.generatorsList) {
            final script = generator.script;
            if (script is List && script.join(' ') == scriptCommand) {
              return generator;
            }
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
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('gource JSON binds its generator to the screen-number post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGourceHandlers(handlers);
    final source = await File('assets/specs/g/gource.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gourceScreenNumbersPostProcessHandler));
    expect(document['name'], 'gource');

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
    expect(ids.toSet(), {gourceScreenNumbersPostProcessHandler});
  });

  test('screen-numbers post-processor numbers each display across adapters',
      () {
    final registry = JsonHandlerRegistry();
    registerGourceHandlers(registry);
    const output = '{"SPDisplaysDataType":['
        '{"_name":"Apple M1","spdisplays_ndrvs":'
        '[{"_name":"Color LCD"},{"_name":"DELL U2720Q"}]},'
        '{"_name":"AMD Radeon","spdisplays_ndrvs":'
        '[{"_name":"External Monitor"}]}'
        ']}';

    final screens =
        registry.postProcess(gourceScreenNumbersPostProcessHandler)!(output);
    expect(screens.map((item) => item.nameSingle ?? ''), ['1', '2', '3']);
    expect(screens.map((item) => item.description),
        ['Color LCD', 'DELL U2720Q', 'External Monitor']);
    expect(screens.map((item) => item.icon), ['🖥️', '🖥️', '🖥️']);
  });

  test('screen-numbers post-processor ignores adapters without displays', () {
    final registry = JsonHandlerRegistry();
    registerGourceHandlers(registry);
    const output = '{"SPDisplaysDataType":['
        '{"_name":"Apple M1"},'
        '{"_name":"Intel GPU","spdisplays_ndrvs":[]}'
        ']}';

    final screens =
        registry.postProcess(gourceScreenNumbersPostProcessHandler)!(output);
    expect(screens, isEmpty);
  });

  test('screen-numbers post-processor returns empty for empty or absent data',
      () {
    final registry = JsonHandlerRegistry();
    registerGourceHandlers(registry);

    final emptyOutput = registry.postProcess(gourceScreenNumbersPostProcessHandler)!('');
    expect(emptyOutput, isEmpty);

    final noAdapters =
        registry.postProcess(gourceScreenNumbersPostProcessHandler)!('{}');
    expect(noAdapters, isEmpty);

    final emptyAdapters = registry
        .postProcess(gourceScreenNumbersPostProcessHandler)!(
            '{"SPDisplaysDataType":[]}');
    expect(emptyAdapters, isEmpty);
  });

  test('screen-numbers post-processor returns empty on errors', () {
    final registry = JsonHandlerRegistry();
    registerGourceHandlers(registry);

    final commandNotFound = registry
        .postProcess(gourceScreenNumbersPostProcessHandler)!(
            'zsh: command not found: system_profiler');
    expect(commandNotFound, isEmpty);

    final broken = registry
        .postProcess(gourceScreenNumbersPostProcessHandler)!('not json');
    expect(broken, isEmpty);

    final wrongShape = registry
        .postProcess(gourceScreenNumbersPostProcessHandler)!('[1,2,3]');
    expect(wrongShape, isEmpty);
  });

  test('gource screen generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGourceHandlers(registry);
    final adapter = _FakeAdapter({
      'system_profiler SPDisplaysDataType -json': const ProcessRunResult(
        stdout: '{"SPDisplaysDataType":['
            '{"_name":"Apple M1","spdisplays_ndrvs":'
            '[{"_name":"Color LCD"},{"_name":"DELL U2720Q"}]}'
            ']}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/g/gource.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(
        spec, 'system_profiler SPDisplaysDataType -json');
    expect(generator, isNotNull,
        reason: 'no generator for the --screen arg in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'gource', tokenLength: 6, complete: true),
        CommandToken(token: '--screen', tokenLength: 8, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['1', '2']);
  });
}
