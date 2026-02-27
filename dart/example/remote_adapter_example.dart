// Example: use a remote [CompleteAdapter] for completion (e.g. SSH or HTTP backend).
// This file shows a minimal [RemoteCompleteAdapter] stub. In production you would
// implement listDirectory/runProcess by calling your remote server (HTTP, SSH, etc.).
//
//   dart run example/remote_adapter_example.dart "ls "
//   dart run example/remote_adapter_example.dart "cd " --shell zsh

import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

/// Simple remote adapter stub. Implements [CompleteAdapter] by returning
/// empty/mock data. Replace with real HTTP/SSH calls to your remote host.
class RemoteCompleteAdapter implements CompleteAdapter {
  RemoteCompleteAdapter({this.remoteCwd = '/', Map<String, String>? env})
      : _env = env ?? const {};

  final String remoteCwd;
  final Map<String, String> _env;

  @override
  Map<String, String> getEnvs() => Map<String, String>.from(_env);

  @override
  String? getEnv(String envKey) => _env[envKey];

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async {
    if (cwd.startsWith('~')) {
      final home = _env['HOME'] ?? '/tmp';
      if (cwd == '~' || cwd == '~/') return home;
      if (cwd.startsWith('~/')) return '$home${cwd.substring(1)}';
    }
    return cwd.isEmpty ? remoteCwd : cwd;
  }

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    // Stub: in production, send request to remote (e.g. HTTP GET /list?path=...).
    return [];
  }

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  }) async {
    // Stub: in production, send request to remote (e.g. HTTP POST /run).
    return const ProcessRunResult(stdout: '', stderr: '', exitCode: 0);
  }
}

Shell _parseShell(String name) {
  switch (name.toLowerCase()) {
    case 'bash':
      return Shell.bash;
    case 'zsh':
      return Shell.zsh;
    case 'fish':
      return Shell.fish;
    case 'pwsh':
      return Shell.pwsh;
    case 'powershell':
      return Shell.powershell;
    case 'cmd':
      return Shell.cmd;
    case 'xonsh':
      return Shell.xonsh;
    case 'nushell':
      return Shell.nushell;
    default:
      return Shell.bash;
  }
}

void main(List<String> args) async {
  String? cmd;
  var shell = Shell.bash;

  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--shell' || args[i] == '-s') {
      if (i + 1 < args.length) {
        shell = _parseShell(args[++i]);
      }
    } else if (!args[i].startsWith('-')) {
      cmd = args[i];
      break;
    }
  }

  if (cmd == null || cmd.isEmpty) {
    print(
        'Usage: dart run example/remote_adapter_example.dart <command_line> [--shell bash]');
    print('Example: dart run example/remote_adapter_example.dart "ls "');
    exit(1);
  }

  registerBuiltinSpecs();
  final cwd = Directory.current.path;
  final adapter = RemoteCompleteAdapter(
    remoteCwd: '/',
    env: {'HOME': '/tmp'},
  );

  final engine = AutocompleteEngine();
  final blob = await engine.getSuggestions(cmd, cwd, shell, adapter);
  if (blob == null) {
    print('(no spec or no suggestions; remote adapter is a stub)');
    exit(0);
  }

  if (blob.argumentDescription != null) {
    print('Argument: ${blob.argumentDescription}');
  }
  for (final s in blob.suggestions) {
    print('${s.name}\t${s.description ?? ""}');
  }
  print(
      '(${blob.suggestions.length} suggestions, charactersToDrop: ${blob.charactersToDrop})');
}
