import 'dart:convert';

import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

class _FigAdapter implements CompleteAdapter {
  _FigAdapter(this.version);

  final String version;
  var versionCalls = 0;

  @override
  String? getEnv(String envKey) => null;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    expect(executable, 'fig');
    expect(arguments, ['--version']);
    versionCalls++;
    return ProcessRunResult(stdout: 'Fig $version');
  }
}

Map<String, String> _files() => {
      'index.json': jsonEncode({
        'schemaVersion': 1,
        'commands': {
          'fig': {'file': 'f/fig.json'},
          'fig/1.0.0': {
            'file': 'f/fig--1.0.0.json',
            'aliasOf': 'fig',
          },
          'fig/2.0.0': {
            'file': 'f/fig--2.0.0.json',
            'aliasOf': 'fig',
          },
        },
      }),
      'f/fig.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'fig',
        'versionedSpec': {
          'cacheKey': 'fig',
          'getVersion': {
            'handler': 'manual.src_fig.index.getversioncommand',
            'version': 1,
          },
          'versions': [
            {'version': '1.0.0', 'loadSpec': 'fig/1.0.0'},
            {'version': '2.0.0', 'loadSpec': 'fig/2.0.0'},
          ],
        },
      }),
      'f/fig--1.0.0.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'fig',
        'subcommands': [
          {'name': 'legacy'},
        ],
      }),
      'f/fig--2.0.0.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'fig',
        'subcommands': [
          {'name': 'current'},
        ],
      }),
    };

void main() {
  test('fig resolver selects the matching JSON version and caches detection',
      () async {
    final reads = <String>[];
    final handlers = JsonHandlerRegistry();
    registerMigratedJsonHandlers(handlers);
    final files = _files();
    await registerJsonSpecs(
      reader: (path) async {
        reads.add(path);
        return files[path]!;
      },
      handlers: handlers,
    );

    final adapter = _FigAdapter('1.8.3');
    final engine = AutocompleteEngine(adapter: adapter);
    final first = await engine.getSuggestions('fig ', '', Shell.bash);
    final second = await engine.getSuggestions('fig l', '', Shell.bash);

    expect(first!.suggestions.map((item) => item.name), contains('legacy'));
    expect(second!.suggestions.map((item) => item.name), contains('legacy'));
    expect(adapter.versionCalls, 1);
    expect(reads, ['index.json', 'f/fig.json', 'f/fig--1.0.0.json']);
  });
}
