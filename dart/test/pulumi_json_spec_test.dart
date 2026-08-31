import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pulumi.dart';
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

void main() {
  test('pulumi JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerPulumiHandlers(handlers);
    final source = await File('assets/specs/p/pulumi.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(pulumiStacksPostProcessHandler));
    expect(document['name'], 'pulumi');

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
    expect(ids.toSet(), {pulumiStacksPostProcessHandler});
  });

  test('stacks post-processor maps stack names and descriptions', () {
    final registry = JsonHandlerRegistry();
    registerPulumiHandlers(registry);
    const output = '[{"name":"dev","description":"development stack"},'
        '{"name":"prod","description":"production stack"}]';

    final stacks = registry.postProcess(pulumiStacksPostProcessHandler)!(output);
    expect(stacks.map((item) => item.nameSingle ?? ''), ['dev', 'prod']);
    expect(stacks.map((item) => item.description), [
      'development stack',
      'production stack',
    ]);
  });

  test('stacks post-processor handles a missing description', () {
    final registry = JsonHandlerRegistry();
    registerPulumiHandlers(registry);
    const output = '[{"name":"dev"},{"name":"prod"}]';

    final stacks = registry.postProcess(pulumiStacksPostProcessHandler)!(output);
    expect(stacks.map((item) => item.nameSingle ?? ''), ['dev', 'prod']);
    expect(stacks.map((item) => item.description), [null, null]);
  });

  test('stacks post-processor returns an empty list on invalid output', () {
    final registry = JsonHandlerRegistry();
    registerPulumiHandlers(registry);
    expect(
        registry.postProcess(pulumiStacksPostProcessHandler)!('not json'),
        isEmpty);
    expect(registry.postProcess(pulumiStacksPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(pulumiStacksPostProcessHandler)!('{"name":"dev"}'),
        isEmpty);
  });

  test('stack generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPulumiHandlers(registry);
    final adapter = _FakeAdapter({
      'pulumi stack ls --json': const ProcessRunResult(
        stdout: '[{"name":"dev","description":"development stack"},'
            '{"name":"prod","description":"production stack"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pulumi.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final stack = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('stack'));
    final rm = stack.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('rm'));
    final generator = rm.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pulumi', tokenLength: 6, complete: true),
        CommandToken(token: 'stack', tokenLength: 5, complete: true),
        CommandToken(token: 'rm', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['dev', 'prod']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['development stack', 'production stack']);
  });
}
