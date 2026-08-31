import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/black.dart';
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
/// [scriptCommand], searching root args, root option args, and the whole
/// subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  bool matches(FigGenerator generator) {
    final script = generator.script;
    return script is List && script.join(' ') == scriptCommand;
  }

  FigGenerator? visitSubcommand(FigSubcommand subcommand) {
    for (final arg in subcommand.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        if (matches(generator)) return generator;
      }
    }
    for (final option in subcommand.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          if (matches(generator)) return generator;
        }
      }
    }
    if (subcommand.subcommands != null) {
      for (final nested in subcommand.subcommands!) {
        final found = visitSubcommand(nested);
        if (found != null) return found;
      }
    }
    return null;
  }

  for (final arg in spec.args ?? const <FigArg>[]) {
    for (final generator in arg.generatorsList) {
      if (matches(generator)) return generator;
    }
  }
  for (final option in spec.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        if (matches(generator)) return generator;
      }
    }
  }
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visitSubcommand(subcommand);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('black JSON binds the generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerBlackHandlers(handlers);
    final source = await File('assets/specs/b/black.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(blackVersionsPostProcessHandler));
    expect(document['name'], 'black');

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
    expect(ids.toSet(), {blackVersionsPostProcessHandler});
  });

  test('versions post-processor takes the tab-separated release tag', () {
    final registry = JsonHandlerRegistry();
    registerBlackHandlers(registry);
    const output = 'v24.1.0\tLatest\tToday\n'
        'v23.12.1\t24.1.0\tLast month\n'
        'v23.10.1\t23.12.1\tTwo months ago';

    final versions =
        registry.postProcess(blackVersionsPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle),
        ['v24.1.0', 'v23.12.1', 'v23.10.1']);
    expect(versions.every((item) => item.description == 'Version'), isTrue);
  });

  test('versions post-processor returns empty without a Latest column', () {
    final registry = JsonHandlerRegistry();
    registerBlackHandlers(registry);

    final noReleases =
        registry.postProcess(blackVersionsPostProcessHandler)!('no releases');
    expect(noReleases, isEmpty);

    final empty = registry.postProcess(blackVersionsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('--required-version generator runs gh release list end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerBlackHandlers(registry);
    final adapter = _FakeAdapter({
      'gh release list --repo psf/black': const ProcessRunResult(
        stdout: 'v24.1.0\tLatest\tToday\n'
            'v23.12.1\t24.1.0\tLast month',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/black.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'gh release list --repo psf/black');
    expect(generator, isNotNull,
        reason: 'no generator for gh release list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'black', tokenLength: 5, complete: true),
        CommandToken(
            token: '--required-version', tokenLength: 18, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['v24.1.0', 'v23.12.1']);
  });
}
