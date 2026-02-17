// Completion adapter: abstract file system and process so runtime can run
// locally or remotely (e.g. SSH). Implement this and pass to [getSuggestions].
// For a local (dart:io) implementation, see example/local_adapter.dart (copy to your project).

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
abstract class CompleteAdapter {
  /// All environment variables. Use [getEnv] for a single key.
  Map<String, String> getEnvs();

  /// One environment variable by [envKey]. Returns null if not set.
  String? getEnv(String envKey);

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
