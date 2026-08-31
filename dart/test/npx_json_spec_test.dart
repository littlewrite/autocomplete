import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/npx.dart';
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

/// The static `ls -1 node_modules/.bin/` script shipped by the npx JSON.
const _binScript = r"until [[ -d node_modules/ ]] || [[ $PWD = '/' ]]; do cd ..; done; ls -1 node_modules/.bin/";

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching root args, options, and the subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? fromArgs(List<FigArg>? args) {
    if (args == null) return null;
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

  FigGenerator? fromOptions(List<FigOption>? options) {
    if (options == null) return null;
    for (final option in options) {
      final found = fromArgs(option.args);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? fromSubcommands(List<FigSubcommand>? subcommands) {
    if (subcommands == null) return null;
    for (final subcommand in subcommands) {
      final inArgs = fromArgs(subcommand.args);
      if (inArgs != null) return inArgs;
      final inOptions = fromOptions(subcommand.options);
      if (inOptions != null) return inOptions;
      final nested = fromSubcommands(subcommand.subcommands);
      if (nested != null) return nested;
    }
    return null;
  }

  final inRootArgs = fromArgs(spec.args);
  if (inRootArgs != null) return inRootArgs;
  final inRootOptions = fromOptions(spec.options);
  if (inRootOptions != null) return inRootOptions;
  return fromSubcommands(spec.subcommands);
}

void main() {
  test('npx JSON binds every generator to the one declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerNpxHandlers(handlers);
    final source = await File('assets/specs/n/npx.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(npxPostProcessHandler));
    expect(document['name'], 'npx');

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
    expect(ids.toSet(), {npxPostProcessHandler});
  });

  test('post-processor drops names that already ship as npx suggestions', () {
    final registry = JsonHandlerRegistry();
    registerNpxHandlers(registry);
    final output = 'vite\n'
        'next\n'
        'my-custom-bin\n'
        'another-bin\n';

    final suggestions =
        registry.postProcess(npxPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle),
        ['my-custom-bin', 'another-bin']);
    expect(suggestions.first.icon, 'fig://icon?type=command');
    expect(suggestions.first.loadSpec, 'my-custom-bin');
  });

  test('post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerNpxHandlers(registry);

    expect(registry.postProcess(npxPostProcessHandler)!(''), isEmpty);
  });

  test('npx generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNpxHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_binScript': const ProcessRunResult(
        stdout: 'vite\n'
            'next\n'
            'my-custom-bin\n'
            'another-bin\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/npx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'bash -c $_binScript');
    expect(generator, isNotNull,
        reason: 'no generator for the npx bin script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'npx', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-custom-bin', 'another-bin']);
  });
}
