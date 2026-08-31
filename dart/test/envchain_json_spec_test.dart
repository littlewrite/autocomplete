import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/envchain.dart';
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
/// [scriptCommand], searching root args and the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visitArgs(List<FigArg>? args) {
    for (final arg in args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  final root = visitArgs(spec.args);
  if (root != null) return root;

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final fromArgs = visitArgs(subcommand.args);
      if (fromArgs != null) return fromArgs;
      for (final option in subcommand.options ?? const <FigOption>[]) {
        final fromOption = visitArgs(option.args);
        if (fromOption != null) return fromOption;
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
  test('envchain JSON binds every generator to the namespaces declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerEnvchainHandlers(handlers);
    final source = await File('assets/specs/e/envchain.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(envchainNamespacesPostProcessHandler));
    expect(document['name'], 'envchain');

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
    expect(ids.toSet(), {envchainNamespacesPostProcessHandler});
  });

  test('namespaces post-processor dedupes lines and describes each namespace',
      () {
    final registry = JsonHandlerRegistry();
    registerEnvchainHandlers(registry);
    // No trailing newline: the source keeps empty entries, so an output ending
    // in '\n' would add an empty suggestion. Deliberately omit it here.
    const output = 'alpha\nbeta\nalpha\ngamma';

    final namespaces =
        registry.postProcess(envchainNamespacesPostProcessHandler)!(output);
    expect(namespaces.map((item) => item.nameSingle), ['alpha', 'beta', 'gamma']);
    expect(namespaces.map((item) => item.description),
        ['NAMESPACE alpha', 'NAMESPACE beta', 'NAMESPACE gamma']);
  });

  test('namespaces post-processor keeps a trailing empty entry after a newline',
      () {
    final registry = JsonHandlerRegistry();
    registerEnvchainHandlers(registry);
    const output = 'alpha\nbeta\n';

    final namespaces =
        registry.postProcess(envchainNamespacesPostProcessHandler)!(output);
    expect(namespaces.map((item) => item.nameSingle), ['alpha', 'beta', '']);
    expect(namespaces.last.description, 'NAMESPACE ');
  });

  test('namespaces post-processor maps a fully empty output to one empty name',
      () {
    final registry = JsonHandlerRegistry();
    registerEnvchainHandlers(registry);

    // ''.split('\n') is [''] in both Dart and JS, so the source yields a single
    // suggestion named '' with description 'NAMESPACE '.
    final namespaces =
        registry.postProcess(envchainNamespacesPostProcessHandler)!('');
    expect(namespaces, hasLength(1));
    expect(namespaces.single.nameSingle, '');
    expect(namespaces.single.description, 'NAMESPACE ');
  });

  test('envchain list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEnvchainHandlers(registry);
    final adapter = _FakeAdapter({
      'envchain --list': const ProcessRunResult(
        stdout: 'home\nwork\npersonal\nwork',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/envchain.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'envchain --list');
    expect(generator, isNotNull,
        reason: 'no generator for envchain --list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'envchain', tokenLength: 9, complete: true),
        CommandToken(token: '--set', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['home', 'work', 'personal']);
  });
}
