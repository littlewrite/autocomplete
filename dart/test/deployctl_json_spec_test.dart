import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/deployctl.dart';
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
  test('deployctl JSON binds every generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDeployctlHandlers(handlers);
    final source = await File('assets/specs/d/deployctl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(deployctlVersionsPostProcessHandler));
    expect(document['name'], 'deployctl');

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
    expect(ids.toSet(), {deployctlVersionsPostProcessHandler});
  });

  test('versions post-processor maps every version and stars the latest', () {
    final registry = JsonHandlerRegistry();
    registerDeployctlHandlers(registry);
    const output =
        '{"latest":"1.30.0","versions":["1.29.0","1.30.0","1.31.0"]}';

    final versions =
        registry.postProcess(deployctlVersionsPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle ?? ''),
        ['1.29.0', '1.30.0', '1.31.0']);
    expect(versions.map((item) => item.icon), ['🦕', '⭐️', '🦕']);
  });

  test('versions post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDeployctlHandlers(registry);

    final broken =
        registry.postProcess(deployctlVersionsPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(deployctlVersionsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('versions post-processor returns empty when versions is absent', () {
    final registry = JsonHandlerRegistry();
    registerDeployctlHandlers(registry);

    final missing =
        registry.postProcess(deployctlVersionsPostProcessHandler)!('{}');
    expect(missing, isEmpty);

    final notAnArray =
        registry.postProcess(deployctlVersionsPostProcessHandler)!(
            '{"latest":"1.0.0","versions":"1.0.0"}');
    expect(notAnArray, isEmpty);
  });

  test('deployctl upgrade versions generator runs through the adapter end to '
      'end', () async {
    final registry = JsonHandlerRegistry();
    registerDeployctlHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -sL https://cdn.deno.land/deploy/meta/versions.json':
          const ProcessRunResult(
        stdout:
            '{"latest":"1.31.0","versions":["1.30.0","1.31.0"]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/deployctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.join(' ') ==
                  'curl -sL https://cdn.deno.land/deploy/meta/versions.json';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'deployctl', tokenLength: 9, complete: true),
        CommandToken(token: 'upgrade', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['1.30.0', '1.31.0']);
  });
}
