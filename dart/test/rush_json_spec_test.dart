import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rush.dart';
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
  test('rush JSON binds every generator to the two declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerRushHandlers(handlers);
    final source = await File('assets/specs/r/rush.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rushNpmSearchHandler));
    expect(source, contains(rushProjectsPostProcessHandler));
    expect(document['name'], 'rush');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          if (generator is! Map) continue;
          if (generator['handler'] is String) {
            ids.add(generator['handler'] as String);
          }
          for (final field in ['script', 'postProcess']) {
            final value = generator[field];
            if (value is Map && value['handler'] is String) {
              ids.add(value['handler'] as String);
            }
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
    expect(ids.toSet(), {
      rushNpmSearchHandler,
      rushProjectsPostProcessHandler,
    });
  });

  test('projects post-processor parses rush.json and strips comments', () {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final output = '{\n'
        '  // monorepo config\n'
        '  /* block comment */\n'
        '  "projects": [\n'
        '    { "packageName": "@myorg/app", "shouldPublish": true },\n'
        '    { "packageName": "@myorg/lib" }\n'
        '  ]\n'
        '}\n';

    final projects =
        registry.postProcess(rushProjectsPostProcessHandler)!(output);
    expect(projects.map((item) => item.nameSingle),
        ['@myorg/app', '@myorg/lib']);
    expect(projects.map((item) => item.description), ['Projects', 'Projects']);
  });

  test('projects post-processor handles empty output', () {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!(''),
      isEmpty,
    );
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!('   '),
      isEmpty,
    );
  });

  test('projects post-processor tolerates invalid JSON', () {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!('not json'),
      isEmpty,
    );
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!('{"projects":'),
      isEmpty,
    );
  });

  test('projects post-processor returns empty when projects is missing', () {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!(
          '{"name":"rush"}'),
      isEmpty,
    );
    expect(
      registry.postProcess(rushProjectsPostProcessHandler)!(
          '{"projects": 42}'),
      isEmpty,
    );
  });

  test('npm search handler returns package suggestions', () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final handler = registry.custom(rushNpmSearchHandler)!;

    final packages =
        await handler(['rush', 'add', '--package', 'dart'], (input) async {
      expect(input.command, 'curl');
      expect(input.args.last, contains('search/suggestions?q=dart'));
      return const ExecuteCommandOutput(
        stdout: '[{"package":{"name":"dart","description":"SDK"}}]',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(packages.single.nameSingle, 'dart');
    expect(packages.single.description, 'SDK');
  });

  test('npm search handler returns versions for a trailing @ token', () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final handler = registry.custom(rushNpmSearchHandler)!;

    final versions =
        await handler(['rush', 'add', '--package', 'dart@'], (input) async {
      expect(input.args.last, 'https://registry.npmjs.org/dart');
      return const ExecuteCommandOutput(
        stdout:
            '{"dist-tags":{"latest":"2.0.0"},"versions":{"1.0.0":{},"2.0.0":{}}}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(
        versions.map((item) => item.nameSingle), ['latest', '2.0.0', '1.0.0']);
  });

  test('npm search handler returns versions for a scoped package', () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final handler = registry.custom(rushNpmSearchHandler)!;

    final versions = await handler(
        ['rush', 'add', '--package', '@myorg/lib@'], (input) async {
      expect(input.args.last, 'https://registry.npmjs.org/@myorg/lib');
      return const ExecuteCommandOutput(
        stdout: '{"dist-tags":{"latest":"3.0.0"},'
            '"versions":{"1.0.0":{},"2.0.0":{},"3.0.0":{}}}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(
        versions.map((item) => item.nameSingle),
        ['latest', '3.0.0', '2.0.0', '1.0.0']);
  });

  test('npm search handler returns empty for missing or empty search term',
      () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final handler = registry.custom(rushNpmSearchHandler)!;

    expect(await handler(const [], null, null), isEmpty);
    expect(await handler(const ['rush', 'add'], null, null), isEmpty);
    expect(
        await handler(['rush', 'add', '--package', ''],
            (input) async => const ExecuteCommandOutput(
                stdout: '[{"package":{"name":"x"}}]',
                stderr: '',
                status: 0),
            null),
        isEmpty);
  });

  test('npm search handler returns empty on command failure or bad JSON',
      () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final handler = registry.custom(rushNpmSearchHandler)!;

    expect(
        await handler(['rush', 'add', '--package', 'dart'], (input) async =>
            const ExecuteCommandOutput(
                stdout: 'oops', stderr: '', status: 1),
            null),
        isEmpty);

    expect(
        await handler(['rush', 'add', '--package', 'dart'], (input) async =>
            const ExecuteCommandOutput(
                stdout: 'not-json', stderr: '', status: 0),
            null),
        isEmpty);
  });

  test('add --package generator runs the npm search handler end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -s -H Accept: application/json '
          'https://api.npms.io/v2/search/suggestions?q=dart&size=20':
          const ProcessRunResult(
        stdout: '[{"package":{"name":"dart","description":"SDK"}}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rush.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final add = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('add'));
    final packageOption = add.options!
        .firstWhere((option) => option.nameList.contains('--package'));
    final generator = packageOption.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rush', tokenLength: 4, complete: true),
        CommandToken(token: 'add', tokenLength: 3, complete: true),
        CommandToken(token: '--package', tokenLength: 9, complete: true),
        CommandToken(token: 'dart', tokenLength: 4, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), ['dart']);
    expect(suggestions.single.description, 'SDK');
  });

  test('project generator runs the rush.json script and post-processor '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerRushHandlers(registry);

    final source = await File('assets/specs/r/rush.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.options ?? const <FigOption>[])
        .expand((option) => option.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.isNotEmpty &&
              script.join(' ').contains('cat rush.json');
        });
    final scriptKey = (generator.script as List).join(' ');
    final adapter = _FakeAdapter({
      scriptKey: const ProcessRunResult(
        stdout: '{\n'
            '  // comments are ignored\n'
            '  "projects": [\n'
            '    { "packageName": "@myorg/app" },\n'
            '    { "packageName": "@myorg/lib" }\n'
            '  ]\n'
            '}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rush', tokenLength: 4, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: '--to', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(),
        ['@myorg/app', '@myorg/lib']);
    expect(
        suggestions.map((suggestion) => suggestion.description).toList(),
        ['Projects', 'Projects']);
  });
}
