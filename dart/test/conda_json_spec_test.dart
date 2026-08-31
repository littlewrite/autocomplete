import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/conda.dart';
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
  test('conda JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCondaHandlers(handlers);
    final source = await File('assets/specs/c/conda.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(condaInstalledPackagesPostProcessHandler));
    expect(source, contains(condaEnvironmentsPostProcessHandler));
    expect(source, contains(condaConfigsPostProcessHandler));
    expect(document['name'], 'conda');

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
    expect(ids.toSet(), {
      condaInstalledPackagesPostProcessHandler,
      condaEnvironmentsPostProcessHandler,
      condaConfigsPostProcessHandler,
    });
  });

  test('installed packages post-processor skips headers and takes the name',
      () {
    final registry = JsonHandlerRegistry();
    registerCondaHandlers(registry);
    final output = '# packages in environment at /opt/conda:\n'
        '#\n'
        '# Name  Version  Build  Channel\n'
        'python  3.11.5   abcdef  conda-forge\n'
        'numpy   1.24.3   ghijkl  conda-forge\n';

    final packages =
        registry.postProcess(condaInstalledPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle), ['python', 'numpy']);
    expect(packages.first.icon, '🐍');
  });

  test('environments post-processor skips comments and takes the env name', () {
    final registry = JsonHandlerRegistry();
    registerCondaHandlers(registry);
    final output = '# conda environments:\n'
        '#\n'
        'base            *  /opt/conda\n'
        'mlenv              /opt/conda/envs/mlenv\n';

    final environments =
        registry.postProcess(condaEnvironmentsPostProcessHandler)!(output);
    expect(environments.map((item) => item.nameSingle), ['base', 'mlenv']);
  });

  test('configs post-processor drops dashed keys', () {
    final registry = JsonHandlerRegistry();
    registerCondaHandlers(registry);
    final output = '# conda config --show\n'
        '#   channel_alias: https://conda.anaconda.org\n'
        'channel_alias: https://conda.anaconda.org\n'
        'show_channel_urls: false\n'
        'not-a-real-key: x\n';

    final configs =
        registry.postProcess(condaConfigsPostProcessHandler)!(output);
    expect(configs.map((item) => item.nameSingle),
        ['channel_alias', 'show_channel_urls']);
  });

  test('conda list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCondaHandlers(registry);
    final adapter = _FakeAdapter({
      'conda list': const ProcessRunResult(
        stdout: '# packages in environment at /opt/conda:\n'
            '#\n'
            '# Name  Version  Build  Channel\n'
            'python  3.11.5   abcdef  conda-forge\n'
            'pip     23.2.1   mnopqr  conda-forge\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/conda.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'conda list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'conda', tokenLength: 5, complete: true),
        CommandToken(token: 'remove', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['python', 'pip']);
  });
}
