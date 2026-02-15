// Completion adapter: abstract file system and process so runtime can run
// locally or remotely (e.g. SSH). When [CompleteAdapter] is null, runtime
// uses dart:io and Process.run; when non-null, it uses the adapter.

import 'dart:io';

import 'shell.dart';

/// One entry from listing a directory (name + type).
class FileSystemEntry {
  const FileSystemEntry({required this.name, required this.isDirectory});

  final String name;
  final bool isDirectory;
}

/// Result of running a process (executable + args).
class ProcessRunResult {
  const ProcessRunResult({
    required this.stdout,
    this.stderr = '',
    this.exitCode = 0,
  });

  final String stdout;
  final String stderr;
  final int exitCode;
}

/// Adapter for path resolution, directory listing, and process execution.
/// Implement this to run completion in a different environment (e.g. remote via SSH).
/// When [getSuggestions] is called without an adapter, the default local behavior
/// (dart:io + Process.run) is used.
abstract class CompleteAdapter {
  /// Resolve [cwd] for path completion (e.g. expand ~ to home).
  Future<String> resolveCwd(String cwd, Shell shell);

  /// List directory at [path]. [foldersOnly] restricts to directories;
  /// [extensions] filters files by extension (e.g. ['dart']). Return empty list
  /// if path does not exist or is not a directory.
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  });

  /// Run [executable] with [arguments] in [workingDirectory] (if provided).
  /// Returns stdout (and optionally stderr/exitCode) for generator postProcess.
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  });
}

/// Local adapter: uses dart:io and Process.run (same as default when no adapter).
/// Use this to exercise the adapter path in tests or when you want one code path.
class LocalCompleteAdapter implements CompleteAdapter {
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
