import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bundle.dart';
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
  test('bundle JSON binds every generator to the gemfile gems post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerBundleHandlers(handlers);
    final source = await File('assets/specs/b/bundle.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(bundleGemfileGemsPostProcessHandler));
    expect(document['name'], 'bundle');

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
    expect(ids.toSet(), {bundleGemfileGemsPostProcessHandler});
  });

  test('gemfile gems post-processor maps each line to a Gem suggestion', () {
    final registry = JsonHandlerRegistry();
    registerBundleHandlers(registry);
    const output = 'rails\nnokogiri\npg';

    final gems =
        registry.postProcess(bundleGemfileGemsPostProcessHandler)!(output);
    expect(gems.map((item) => item.nameSingle), ['rails', 'nokogiri', 'pg']);
    expect(gems.map((item) => item.description), ['Gem', 'Gem', 'Gem']);
    expect(gems.map((item) => item.icon), ['📦', '📦', '📦']);
  });

  test('gemfile gems post-processor keeps the trailing empty entry', () {
    final registry = JsonHandlerRegistry();
    registerBundleHandlers(registry);
    const output = 'rails\n';

    final gems =
        registry.postProcess(bundleGemfileGemsPostProcessHandler)!(output);
    expect(gems.map((item) => item.nameSingle), ['rails', '']);
  });

  test('gemfile gems post-processor yields one empty-named suggestion for '
      'empty output', () {
    final registry = JsonHandlerRegistry();
    registerBundleHandlers(registry);

    // `''.split('\n')` is `['']`, so the faithful port produces one suggestion
    // with an empty name rather than no suggestions.
    final empty =
        registry.postProcess(bundleGemfileGemsPostProcessHandler)!('');
    expect(empty, hasLength(1));
    expect(empty.single.nameSingle, '');
  });

  test('gemfile gems generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerBundleHandlers(registry);
    final adapter = _FakeAdapter({
      'bundle list --name-only': const ProcessRunResult(
        stdout: 'rails\nnokogiri\npg',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/b/bundle.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'bundle list --name-only');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bundle', tokenLength: 6, complete: true),
        CommandToken(token: 'update', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['rails', 'nokogiri', 'pg']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Gem', 'Gem', 'Gem']);
  });
}
