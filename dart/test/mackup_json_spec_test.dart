import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mackup.dart';
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
  test('mackup JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerMackupHandlers(handlers);
    final source = await File('assets/specs/m/mackup.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mackupApplicationsPostProcessHandler));
    expect(document['name'], 'mackup');

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
    expect(ids.toSet(), {mackupApplicationsPostProcessHandler});
  });

  test('post-processor strips the three-char prefix from dashed lines', () {
    final registry = JsonHandlerRegistry();
    registerMackupHandlers(registry);
    final output = 'Available applications:\n'
        '-  adobe\n'
        '-  afuse\n'
        '-  alacritty\n';

    final applications =
        registry.postProcess(mackupApplicationsPostProcessHandler)!(output);
    expect(applications.map((item) => item.nameSingle),
        ['adobe', 'afuse', 'alacritty']);
  });

  test('post-processor drops lines without a dash', () {
    final registry = JsonHandlerRegistry();
    registerMackupHandlers(registry);
    final output = 'Header line\n'
        '-  git\n'
        'another header\n'
        '-  vim\n';

    final applications =
        registry.postProcess(mackupApplicationsPostProcessHandler)!(output);
    expect(applications.map((item) => item.nameSingle), ['git', 'vim']);
  });

  test('post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerMackupHandlers(registry);

    expect(
        registry.postProcess(mackupApplicationsPostProcessHandler)!(''), isEmpty);
  });

  test('post-processor tolerates short dashed lines without throwing', () {
    final registry = JsonHandlerRegistry();
    registerMackupHandlers(registry);
    final output = '-\n'
        '-  git\n'
        '--\n';

    final applications =
        registry.postProcess(mackupApplicationsPostProcessHandler)!(output);
    expect(applications.map((item) => item.nameSingle),
        ['', 'git', '']);
  });

  test('mackup list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMackupHandlers(registry);
    final adapter = _FakeAdapter({
      'mackup list': const ProcessRunResult(
        stdout: '-  adobe\n'
            '-  afuse\n'
            '-  git\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mackup.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'mackup list');
    expect(generator, isNotNull,
        reason: 'no generator for mackup list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mackup', tokenLength: 6, complete: true),
        CommandToken(token: 'show', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['adobe', 'afuse', 'git']);
  });
}
