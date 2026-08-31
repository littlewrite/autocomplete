import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/snaplet.dart';
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

/// `snaplet snapshot ls` output. The parser skips the last two lines (the
/// snapshot-count line and the trailing empty entry left by the final
/// newline), so the raw output deliberately ends in a newline.
const _snapshotLsOutput = '\n'
    'NAME STATUS CREATED SIZE LOCATION\n'
    'my-snapshot SUCCESS Aug 1 2023 10.5 KB 💻\n'
    'cloud-snap SUCCESS Aug 2 2023 2.5 MB ☁️\n'
    'failed-snap ERROR Aug 3 2023 1.0 MB ☁️\n'
    'local-snap SUCCESS Aug 4 2023 512 KB 💻\n'
    'Total snapshots: 4\n';

void main() {
  test('snaplet JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSnapletHandlers(handlers);
    final source = await File('assets/specs/s/snaplet.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(snapletSnapshotsGeneratorPostProcessHandler));
    expect(
        source, contains(snapletSnapshotsSuccessCloudGeneratorPostProcessHandler));
    expect(source, contains(snapletDatabaseGeneratorPostProcessHandler));
    expect(document['name'], 'snaplet');

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
      snapletSnapshotsGeneratorPostProcessHandler,
      snapletSnapshotsSuccessCloudGeneratorPostProcessHandler,
      snapletDatabaseGeneratorPostProcessHandler,
    });
  });

  test('snapshots post-processor parses every row with an emoji description',
      () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);

    final snapshots =
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(
            _snapshotLsOutput);

    expect(snapshots.map((item) => item.nameSingle ?? '').toList(), [
      'my-snapshot',
      'cloud-snap',
      'failed-snap',
      'local-snap',
    ]);
    expect(snapshots.map((item) => item.description).toList(), [
      '✅ Aug 1 2023 10.5KB 💻',
      '✅ Aug 2 2023 2.5MB ☁️',
      '❌ Aug 3 2023 1.0MB ☁️',
      '✅ Aug 4 2023 512KB 💻',
    ]);
  });

  test('success-cloud post-processor keeps only cloud SUCCESS snapshots', () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);

    final snapshots = registry
        .postProcess(snapletSnapshotsSuccessCloudGeneratorPostProcessHandler)!(
            _snapshotLsOutput);

    expect(snapshots.map((item) => item.nameSingle ?? '').toList(),
        ['cloud-snap']);
    expect(snapshots.single.description, '✅ Aug 2 2023 2.5MB ☁️');
  });

  test('snapshots post-processor drops the last row without a trailing newline',
      () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    // The parser skips the last two lines (the count line plus the trailing
    // empty entry the real CLI leaves). Without a final newline, the last data
    // row lands at `length - 2` and is skipped instead.
    final output = '\n'
        'NAME STATUS CREATED SIZE LOCATION\n'
        'my-snapshot SUCCESS Aug 1 2023 10.5 KB 💻\n'
        'cloud-snap SUCCESS Aug 2 2023 2.5 MB ☁️\n'
        'Total snapshots: 2';

    final snapshots =
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(
            output);
    expect(snapshots.map((item) => item.nameSingle ?? '').toList(),
        ['my-snapshot']);
  });

  test('snapshots post-processor strips ANSI escapes and extra spaces', () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    final output = '\u001b[0m\n'
        'NAME   STATUS  CREATED  SIZE  LOCATION\n'
        'ansi-snap \u001b[32mSUCCESS\u001b[0m Aug 5 2023 1.0 KB 💻\n'
        'Total snapshots: 1\n';

    final snapshots =
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(
            output);
    expect(snapshots.map((item) => item.nameSingle ?? '').toList(),
        ['ansi-snap']);
    expect(snapshots.single.description, '✅ Aug 5 2023 1.0KB 💻');
  });

  test('snapshots post-processor returns empty on malformed output', () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    expect(
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(''),
        isEmpty);
    expect(
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(
            'not a table'),
        isEmpty);
    // Too few lines to pass the `length > 4` guard even with a NAME header.
    final short = '\n'
        'NAME STATUS CREATED SIZE LOCATION\n'
        'my-snapshot SUCCESS Aug 1 2023 10.5 KB 💻';
    expect(
        registry.postProcess(snapletSnapshotsGeneratorPostProcessHandler)!(
            short),
        isEmpty);
  });

  test('database post-processor parses name, size, and snapshot', () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    // The parser keeps every line after the header; empty rows are skipped, so
    // this stays newline-free to match the real row format exactly.
    final output = '\n'
        'NAME SIZE SNAPSHOT\n'
        'mydb 10.5 MB snapshot-2023-08-01\n'
        'analytics 2.5 GB snapshot-2023-07-15';

    final databases =
        registry.postProcess(snapletDatabaseGeneratorPostProcessHandler)!(
            output);

    expect(databases.map((item) => item.nameSingle ?? '').toList(),
        ['mydb', 'analytics']);
    expect(databases.map((item) => item.description).toList(), [
      '10.5MB (snapshot-2023-08-01)',
      '2.5GB (snapshot-2023-07-15)',
    ]);
  });

  test('database post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    expect(
        registry.postProcess(snapletDatabaseGeneratorPostProcessHandler)!(''),
        isEmpty);
  });

  test('snapshot ls generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSnapletHandlers(registry);
    final adapter = _FakeAdapter({
      'snaplet snapshot ls': const ProcessRunResult(
        stdout: _snapshotLsOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/snaplet.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    // The general snapshots generator sits on `snapshot restore` args; the
    // success-cloud generator shares the same script but is filtered.
    final snapshot =
        spec.subcommands!.firstWhere((s) => s.nameList.contains('snapshot'));
    final restore = snapshot.subcommands!
        .firstWhere((s) => s.nameList.contains('restore'));
    final generator = restore.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'snaplet', tokenLength: 7, complete: true),
        CommandToken(token: 'snapshot', tokenLength: 8, complete: true),
        CommandToken(token: 'restore', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(
        suggestions.map((suggestion) => suggestion.name).toList(), [
      'my-snapshot',
      'cloud-snap',
      'failed-snap',
      'local-snap',
    ]);
  });
}
