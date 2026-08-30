import 'dart:convert';

import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

class _AzAdapter implements CompleteAdapter {
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
    expect(executable, 'az');
    expect(arguments, ['version', '-o', 'json']);
    versionCalls++;
    return const ProcessRunResult(stdout: '{"azure-cli":"2.53.0"}');
  }
}

void main() {
  test('strict mode rejects an unknown version resolver', () {
    expect(
      () => figSpecFromJsonString(
        jsonEncode({
          'schemaVersion': 1,
          'name': 'versioned-tool',
          'versionedSpec': {
            'cacheKey': 'versioned-tool',
            'getVersion': {'handler': 'test.missing.version'},
            'versions': [
              {'version': '1.0.0', 'loadSpec': 'versioned-tool/1.0.0'},
            ],
          },
        }),
        handlers: JsonHandlerRegistry(),
        versionedSpecReader: (_) async => FigSpec(name: 'versioned-tool'),
      ),
      throwsA(isA<JsonSpecFormatException>()),
    );
  });

  test('versioned JSON selects and caches the matching deferred spec',
      () async {
    final files = <String, String>{
      'index.json': jsonEncode({
        'schemaVersion': 1,
        'commands': {
          'az': {'file': 'a/az.json'},
          'az/2.53.0': {
            'file': 'a/az--2.53.0.json',
            'aliasOf': 'az',
          },
        },
      }),
      'a/az.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'az',
        'versionedSpec': {
          'cacheKey': 'az',
          'getVersion': {
            'handler': 'manual.src_az.index.getversioncommand',
            'version': 1,
          },
          'versions': [
            {'version': '2.53.0', 'loadSpec': 'az/2.53.0'},
          ],
        },
      }),
      'a/az--2.53.0.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'az',
        'subcommands': [
          {'name': 'account', 'description': 'Manage subscriptions'},
        ],
      }),
    };
    final reads = <String>[];
    final handlers = JsonHandlerRegistry();
    registerMigratedJsonHandlers(handlers);
    await registerJsonSpecs(
      reader: (path) async {
        reads.add(path);
        return files[path]!;
      },
      handlers: handlers,
    );

    final adapter = _AzAdapter();
    final engine = AutocompleteEngine(adapter: adapter);
    final initial = await engine.getSuggestions('az ', '', Shell.bash);
    final narrowed = await engine.getSuggestions('az a', '', Shell.bash);

    expect(initial!.suggestions.map((item) => item.name), contains('account'));
    expect(narrowed!.suggestions.map((item) => item.name), contains('account'));
    expect(adapter.versionCalls, 1);
    expect(reads, ['index.json', 'a/az.json', 'a/az--2.53.0.json']);
  });
}
