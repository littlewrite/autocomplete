import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/softwareupdate.dart';
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
  test('softwareupdate JSON binds the update generator to the one '
      'post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerSoftwareupdateHandlers(handlers);
    final source =
        await File('assets/specs/s/softwareupdate.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(softwareupdateUpdatesPostProcessHandler));
    expect(document['name'], 'softwareupdate');

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
    expect(ids.toSet(), {softwareupdateUpdatesPostProcessHandler});
  });

  test('softwareupdate post-processor parses `* Label: <name>` rows', () {
    final registry = JsonHandlerRegistry();
    registerSoftwareupdateHandlers(registry);
    const output = 'Software Update Tool\n'
        '\n'
        'Finding available software\n'
        'Software Update found the following new or updated software:\n'
        '* Label: macOS Ventura 13.5\n'
        '* Label: Safari 16.6\n'
        '\tTitle: Safari, Version: 16.6, Size: 132604KiB, Recommended: YES';

    final updates = registry
        .postProcess(softwareupdateUpdatesPostProcessHandler)!(output);
    expect(updates.map((item) => item.nameSingle),
        ['macOS Ventura 13.5', 'Safari 16.6']);
    expect(updates.map((item) => item.insertValue),
        ['"macOS Ventura 13.5"', '"Safari 16.6"']);
    expect(updates.map((item) => item.description),
        ['Available update', 'Available update']);
  });

  test('softwareupdate post-processor drops non-label lines and empty output',
      () {
    final registry = JsonHandlerRegistry();
    registerSoftwareupdateHandlers(registry);
    final postProcess =
        registry.postProcess(softwareupdateUpdatesPostProcessHandler)!;
    expect(
        postProcess('Software Update Tool\nNo updates available'), isEmpty);
    expect(postProcess(''), isEmpty);
  });

  test('softwareupdate update generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerSoftwareupdateHandlers(registry);
    final adapter = _FakeAdapter({
      'softwareupdate --list': const ProcessRunResult(
        stdout: 'Software Update found the following new or updated software:\n'
            '* Label: macOS Ventura 13.5\n'
            '* Label: Safari 16.6\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/s/softwareupdate.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'softwareupdate --list');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'softwareupdate', tokenLength: 14, complete: true),
        CommandToken(token: '--install', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['macOS Ventura 13.5', 'Safari 16.6']);
  });
}
