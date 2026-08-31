import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mamba.dart';
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
  test('mamba JSON binds every generator to the four declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMambaHandlers(handlers);
    final source = await File('assets/specs/m/mamba.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mambaEnvsPostProcessHandler));
    expect(source, contains(mambaInstalledPackagesPostProcessHandler));
    expect(source, contains(mambaSearchScriptHandler));
    expect(source, contains(mambaSearchPostProcessHandler));
    expect(document['name'], 'mamba');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['script', 'postProcess']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      mambaEnvsPostProcessHandler,
      mambaInstalledPackagesPostProcessHandler,
      mambaSearchScriptHandler,
      mambaSearchPostProcessHandler,
    });
  });

  test('envs post-processor marks the active environment', () {
    final registry = JsonHandlerRegistry();
    registerMambaHandlers(registry);
    final output = '# conda environments:\n'
        '#\n'
        'base            *  /opt/conda\n'
        'mlenv              /opt/conda/envs/mlenv\n';

    final envs = registry.postProcess(mambaEnvsPostProcessHandler)!(output);
    expect(envs.map((item) => item.nameSingle), ['base', 'mlenv']);
    expect(envs.map((item) => item.priority), [100, 50]);
    expect(envs.map((item) => item.icon), ['✅', '🐍']);
    expect(envs.map((item) => item.description),
        ['/opt/conda', '/opt/conda/envs/mlenv']);
  });

  test('installed packages post-processor parses conda list JSON', () {
    final registry = JsonHandlerRegistry();
    registerMambaHandlers(registry);
    const output = '[{"name":"numpy","version":"1.24.3","platform":"osx-64"},'
        '{"name":"pandas","version":"2.0.1","platform":"osx-64"}]';

    final packages =
        registry.postProcess(mambaInstalledPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle), ['numpy', 'pandas']);
    expect(packages.map((item) => item.description),
        ['1.24.3 - osx-64', '2.0.1 - osx-64']);
  });

  test('search script handler builds conda search from the current token',
      () async {
    final registry = JsonHandlerRegistry();
    registerMambaHandlers(registry);
    final script = registry.script(mambaSearchScriptHandler)!;

    expect(script(['mamba', 'install', 'numpy']),
        ['conda', 'search', 'numpy', '--json']);
    expect(script(['mamba', 'install', '']), ['conda', 'search', '', '--json']);
  });

  test('search post-processor maps each package to its newest build', () {
    final registry = JsonHandlerRegistry();
    registerMambaHandlers(registry);
    const output = '{"numpy":[{"version":"1.24.3","subdir":"osx-64"},'
        '{"version":"1.25.0","subdir":"osx-64"}],'
        '"pandas":[{"version":"2.0.1","subdir":"osx-64"}]}';

    final results =
        registry.postProcess(mambaSearchPostProcessHandler)!(output);
    expect(results.map((item) => item.nameSingle), ['numpy', 'pandas']);
    expect(results.map((item) => item.description),
        ['1.25.0 - osx-64', '2.0.1 - osx-64']);
  });

  test('install generator runs the dynamic search script end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMambaHandlers(registry);
    final adapter = _FakeAdapter({
      'conda search numpy --json': const ProcessRunResult(
        stdout: '{"numpy":[{"version":"1.25.0","subdir":"osx-64"}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mamba.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final install = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('install'));
    final searchGenerator = install.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      searchGenerator,
      const [
        CommandToken(token: 'mamba', tokenLength: 5, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'numpy', tokenLength: 5, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(), ['numpy']);
    expect(suggestions.single.description, '1.25.0 - osx-64');
  });
}
