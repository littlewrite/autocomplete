import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pipx.dart';
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
  test('pipx JSON binds every generator to the packages post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPipxHandlers(handlers);
    final source = await File('assets/specs/p/pipx.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(pipxInstalledPackagesPostProcessHandler));
    expect(document['name'], 'pipx');

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
    expect(ids.toSet(), {pipxInstalledPackagesPostProcessHandler});
  });

  test('installed packages post-processor takes the first token per line', () {
    final registry = JsonHandlerRegistry();
    registerPipxHandlers(registry);
    const output = 'httpx\nblack\nrequests';

    final packages =
        registry.postProcess(pipxInstalledPackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle),
        ['httpx', 'black', 'requests']);
    expect(packages.map((item) => item.description),
        ['Installed package', 'Installed package', 'Installed package']);
  });

  test('installed packages post-processor keeps only the first space token',
      () {
    final registry = JsonHandlerRegistry();
    registerPipxHandlers(registry);
    const output = 'black /Users/me/.local/share/pipx/venvs/black';

    final packages =
        registry.postProcess(pipxInstalledPackagesPostProcessHandler)!(output);
    expect(packages.single.nameSingle, 'black');
    expect(packages.single.description, 'Installed package');
  });

  test('installed packages post-processor handles empty and trailing-newline '
      'output faithfully', () {
    final registry = JsonHandlerRegistry();
    registerPipxHandlers(registry);

    // '' splits to [''] which yields a single empty-name suggestion, matching
    // the TS source (no filtering of empty lines).
    final empty =
        registry.postProcess(pipxInstalledPackagesPostProcessHandler)!('');
    expect(empty, hasLength(1));
    expect(empty.single.nameSingle, '');

    // split('\n') keeps a trailing empty entry, so 'httpx\n' is two lines.
    final trailing =
        registry.postProcess(pipxInstalledPackagesPostProcessHandler)!(
            'httpx\n');
    expect(trailing.map((item) => item.nameSingle), ['httpx', '']);
  });

  test('pipx list --short generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerPipxHandlers(registry);
    final adapter = _FakeAdapter({
      'pipx list --short': const ProcessRunResult(
        stdout: 'httpx\nblack\nrequests',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pipx.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'pipx list --short';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pipx', tokenLength: 4, complete: true),
        CommandToken(token: 'inject', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['httpx', 'black', 'requests']);
  });
}
