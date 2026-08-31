// Hand-written dynamic handlers migrated from src/snaplet.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const snapletSnapshotsGeneratorPostProcessHandler =
    'manual.src_snaplet.definition.snapshotsgenerator.postprocess';
const snapletSnapshotsSuccessCloudGeneratorPostProcessHandler =
    'manual.src_snaplet.definition.snapshotssuccesscloudgenerator.postprocess';
const snapletDatabaseGeneratorPostProcessHandler =
    'manual.src_snaplet.definition.databasegenerator.postprocess';

class _Snapshot {
  const _Snapshot({
    required this.name,
    required this.status,
    required this.created,
    required this.size,
    required this.src,
  });

  final String name;
  final String status;
  final String created;
  final String size;
  final String src;
}

class _PreviewDatabase {
  const _PreviewDatabase({
    required this.name,
    required this.size,
    required this.snapshotName,
  });

  final String name;
  final String size;
  final String snapshotName;
}

/// Collapse runs of spaces into a single space, strip ANSI escape sequences,
/// then split into lines. Mirrors the TS `replace(/ +/g, " ")` plus the
/// terminal escape removal before `.split("\n")`.
List<String> _splitLines(String output) => output
    .replaceAll(RegExp(r' +'), ' ')
    .replaceAll(RegExp('\u001b\\[[0-9;]*[A-Za-z]'), '')
    .split('\n');

/// Pull the next column off the front, defaulting to an empty string when the
/// row is shorter than the source expects (the TS would shift `undefined`).
String _shift(List<String> columns) =>
    columns.isEmpty ? '' : columns.removeAt(0);

/// Pull [count] columns and join them. Created timestamps join with a space
/// (`${a} ${b} ${c}`), size joins with no separator (`${a}${b}`).
String _shiftJoined(List<String> columns, int count, {String separator = ''}) {
  final parts = <String>[];
  for (var i = 0; i < count && columns.isNotEmpty; i++) {
    parts.add(columns.removeAt(0));
  }
  return parts.join(separator);
}

/// `snaplet snapshot ls` rows: NAME, STATUS, CREATED, SIZE, LOCATION.
///
/// The header occupies line 1; data starts at line 2. The parser intentionally
/// skips the last two lines (the snapshot-count line and the trailing empty
/// entry left by the final newline), so the raw output must end in a newline.
/// Empty rows are skipped defensively.
List<_Snapshot> _parseSnapshotList(String output) {
  final result = <_Snapshot>[];
  final outputSplit = _splitLines(output);
  if (outputSplit.length > 4 && outputSplit[1].startsWith('NAME')) {
    for (var i = 2; i < outputSplit.length - 2; i++) {
      final columns = outputSplit[i].split(' ');
      if (columns.isEmpty || columns.first.isEmpty) continue;
      result.add(_Snapshot(
        name: _shift(columns),
        status: _shift(columns).contains('SUCCESS') ? 'SUCCESS' : 'ERROR',
        created: _shiftJoined(columns, 3, separator: ' '),
        size: _shiftJoined(columns, 2),
        src: _shift(columns).contains('☁️') ? 'CLOUD' : 'LOCAL',
      ));
    }
  }
  return result;
}

/// `snaplet database ls` rows: NAME, SIZE, SNAPSHOT. The header occupies line
/// 1; every subsequent line is parsed. Empty rows are skipped (the TS would
/// have produced an empty-named entry from a trailing blank line).
List<_PreviewDatabase> _parsePreviewDatabaseList(String output) {
  final result = <_PreviewDatabase>[];
  final outputSplit = _splitLines(output);
  if (outputSplit.length > 2 && outputSplit[1].startsWith('NAME')) {
    for (var i = 2; i < outputSplit.length; i++) {
      final columns = outputSplit[i].split(' ');
      if (columns.isEmpty || columns.first.isEmpty) continue;
      result.add(_PreviewDatabase(
        name: _shift(columns),
        size: _shiftJoined(columns, 2),
        snapshotName: _shift(columns),
      ));
    }
  }
  return result;
}

/// All snapshots from `snaplet snapshot ls`, described by status emoji,
/// creation time, size, and location emoji.
List<FigSuggestion> _snapshots(String output, [List<String>? tokens]) {
  final result = <FigSuggestion>[];
  for (final snapshot in _parseSnapshotList(output)) {
    final statusEmoji = snapshot.status == 'SUCCESS' ? '✅' : '❌';
    final locationEmoji = snapshot.src == 'CLOUD' ? '☁️' : '💻';
    result.add(FigSuggestion(
      name: snapshot.name,
      description:
          '$statusEmoji ${snapshot.created} ${snapshot.size} $locationEmoji',
    ));
  }
  return result;
}

/// Only successful snapshots stored in the cloud.
List<FigSuggestion> _snapshotsSuccessCloud(String output,
    [List<String>? tokens]) {
  final result = <FigSuggestion>[];
  for (final snapshot in _parseSnapshotList(output)) {
    if (snapshot.src != 'CLOUD' || snapshot.status != 'SUCCESS') continue;
    result.add(FigSuggestion(
      name: snapshot.name,
      description: '✅ ${snapshot.created} ${snapshot.size} ☁️',
    ));
  }
  return result;
}

/// Preview databases from `snaplet database ls`, described by size and the
/// snapshot used to create them.
List<FigSuggestion> _databases(String output, [List<String>? tokens]) {
  final result = <FigSuggestion>[];
  for (final database in _parsePreviewDatabaseList(output)) {
    result.add(FigSuggestion(
      name: database.name,
      description: '${database.size} (${database.snapshotName})',
    ));
  }
  return result;
}

/// Registers the snaplet generators referenced by the shipped snaplet JSON.
void registerSnapletHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(
      snapletSnapshotsGeneratorPostProcessHandler, _snapshots);
  registry.registerPostProcess(
      snapletSnapshotsSuccessCloudGeneratorPostProcessHandler,
      _snapshotsSuccessCloud);
  registry.registerPostProcess(
      snapletDatabaseGeneratorPostProcessHandler, _databases);
}
