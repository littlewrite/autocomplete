import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/sysctl.dart';
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
  test('sysctl JSON binds the name generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSysctlHandlers(handlers);
    final source = await File('assets/specs/s/sysctl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(sysctlNamesPostProcessHandler));
    expect(document['name'], 'sysctl');

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
    expect(ids.toSet(), {sysctlNamesPostProcessHandler});
  });

  test('sysctl name post-processor maps each line to a variable suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerSysctlHandlers(registry);
    const output = 'kern.ostype\nkern.osrelease\nhw.machine';

    final names = registry.postProcess(sysctlNamesPostProcessHandler)!(output);
    expect(names.map((item) => item.nameSingle),
        ['kern.ostype', 'kern.osrelease', 'hw.machine']);
    expect(names.map((item) => item.description),
        ['Variable name', 'Variable name', 'Variable name']);
  });

  test('sysctl name post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerSysctlHandlers(registry);
    expect(registry.postProcess(sysctlNamesPostProcessHandler)!(''), isEmpty);
  });

  test('sysctl name generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSysctlHandlers(registry);
    final adapter = _FakeAdapter({
      'sysctl -A -N': const ProcessRunResult(
        stdout: 'kern.ostype\nkern.osrelease\nhw.machine',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/sysctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'sysctl -A -N');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'sysctl', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['kern.ostype', 'kern.osrelease', 'hw.machine']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Variable name', 'Variable name', 'Variable name']);
  });
}
