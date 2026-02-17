// Local adapter using dart:io. Copy this file into your project when you need
// a VM/CLI implementation of [CompleteAdapter]. Do not use on web (dart:io is not available).

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

/// Local [CompleteAdapter]: uses dart:io and Process.run.
/// Use on VM only (CLI, server). For web or remote, implement [CompleteAdapter] yourself.
class LocalCompleteAdapter implements CompleteAdapter {
  @override
  Map<String, String> getEnvs() => Map<String, String>.from(Platform.environment);

  @override
  String? getEnv(String envKey) => Platform.environment[envKey];

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async {
    if (cwd.startsWith('~')) {
      final home = Platform.environment['HOME'] ?? '';
      if (cwd == '~' || cwd == '~/') return home;
      if (cwd.startsWith('~/')) return '$home${cwd.substring(1)}';
    }
    return cwd;
  }

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    final dir = Directory(path);
    if (!await dir.exists()) return [];
    final out = <FileSystemEntry>[];
    await for (final e in dir.list(followLinks: false)) {
      final name = e.path.split(Platform.pathSeparator).last;
      if (name.isEmpty || name == '.') continue;
      if (e is Directory) {
        out.add(FileSystemEntry(name: name, isDirectory: true));
      } else {
        if (foldersOnly) continue;
        if (extensions != null && extensions.isNotEmpty) {
          final ext = name.contains('.') ? name.split('.').last : '';
          if (!extensions.any((x) => x == ext)) continue;
        }
        out.add(FileSystemEntry(name: name, isDirectory: false));
      }
    }
    return out;
  }

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  }) async {
    final result = await Process.run(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      runInShell: false,
    );
    return ProcessRunResult(
      stdout: (result.stdout as String?) ?? '',
      stderr: (result.stderr as String?) ?? '',
      exitCode: result.exitCode,
    );
  }
}
