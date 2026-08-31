import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/eb.dart';
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
  test('eb JSON binds every generator to the generateNames declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerEbHandlers(handlers);
    final source = await File('assets/specs/e/eb.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ebGenerateNamesPostProcessHandler));
    expect(document['name'], 'eb');

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
    expect(ids, isNotEmpty);
    expect(ids.toSet(), {ebGenerateNamesPostProcessHandler});
  });

  test('generateNames post-processor trims lines and strips the star marker',
      () {
    final registry = JsonHandlerRegistry();
    registerEbHandlers(registry);
    const output = '  * production\n'
        '  development  \n'
        '   staging';

    final names =
        registry.postProcess(ebGenerateNamesPostProcessHandler)!(output);
    expect(names.map((item) => item.nameSingle ?? ''),
        ['production', 'development', 'staging']);
  });

  test('generateNames post-processor strips a leading star with inner spaces',
      () {
    final registry = JsonHandlerRegistry();
    registerEbHandlers(registry);

    final starred =
        registry.postProcess(ebGenerateNamesPostProcessHandler)!('*  prod');
    expect(starred.single.nameSingle ?? '', 'prod');

    final plain =
        registry.postProcess(ebGenerateNamesPostProcessHandler)!('  dev  ');
    expect(plain.single.nameSingle ?? '', 'dev');
  });

  test('generateNames post-processor tolerates a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerEbHandlers(registry);

    final names = registry
        .postProcess(ebGenerateNamesPostProcessHandler)!('* production\n');
    expect(names.map((item) => item.nameSingle ?? ''), ['production']);
  });

  test('generateNames post-processor keeps an empty entry for empty output', () {
    final registry = JsonHandlerRegistry();
    registerEbHandlers(registry);

    // Faithful to the TS: trim('') is '', split on '\n' yields one empty
    // line, which becomes one suggestion with an empty name.
    final names =
        registry.postProcess(ebGenerateNamesPostProcessHandler)!('');
    expect(names, hasLength(1));
    expect(names.single.nameSingle ?? '', '');
  });

  test('eb list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerEbHandlers(registry);
    final adapter = _FakeAdapter({
      'eb list': const ProcessRunResult(
        stdout: '* production\n'
            '  development  ',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/eb.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'eb list');
    expect(generator, isNotNull,
        reason: 'no generator for eb list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'eb', tokenLength: 2, complete: true),
        CommandToken(token: 'deploy', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['production', 'development']);
  });
}
