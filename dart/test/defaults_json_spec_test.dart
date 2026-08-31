import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/defaults.dart';
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
  test('defaults JSON binds every generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDefaultsHandlers(handlers);
    final source = await File('assets/specs/d/defaults.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(defaultsDomainsPostProcessHandler));
    expect(document['name'], 'defaults');

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
    expect(ids.toSet(), {defaultsDomainsPostProcessHandler});
  });

  test('domains post-processor splits on commas and trims each name', () {
    final registry = JsonHandlerRegistry();
    registerDefaultsHandlers(registry);
    const output = 'com.apple.dock,com.apple.finder,org.example';

    final domains =
        registry.postProcess(defaultsDomainsPostProcessHandler)!(output);
    expect(domains.map((item) => item.nameSingle ?? ''),
        ['com.apple.dock', 'com.apple.finder', 'org.example']);
  });

  test('domains post-processor trims surrounding whitespace', () {
    final registry = JsonHandlerRegistry();
    registerDefaultsHandlers(registry);
    const output = ' com.apple.dock , com.apple.finder ';

    final domains =
        registry.postProcess(defaultsDomainsPostProcessHandler)!(output);
    expect(domains.map((item) => item.nameSingle ?? ''),
        ['com.apple.dock', 'com.apple.finder']);
  });

  test('domains post-processor mirrors the TS split on empty output', () {
    final registry = JsonHandlerRegistry();
    registerDefaultsHandlers(registry);

    // `''.split(',')` yields `['']`, so the faithful port emits one
    // suggestion whose name trims to the empty string.
    final domains =
        registry.postProcess(defaultsDomainsPostProcessHandler)!('');
    expect(domains.length, 1);
    expect(domains.single.nameSingle ?? '', isEmpty);
  });

  test('defaults domains generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerDefaultsHandlers(registry);
    final adapter = _FakeAdapter({
      'defaults domains': const ProcessRunResult(
        stdout: 'com.apple.dock,com.apple.finder,org.example',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/defaults.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'defaults domains');
    expect(generator, isNotNull,
        reason: 'no generator for `defaults domains` in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'defaults', tokenLength: 8, complete: true),
        CommandToken(token: 'read', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['com.apple.dock', 'com.apple.finder', 'org.example']);
  });
}
