import 'dart:io';
import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/runtime.dart'; // Import runtime to access AutocompleteEngine
import '../local_adapter.dart';

// Helper to get memory usage (RSS in KB)
Future<int> getMemoryUsage() async {
  try {
    // macOS/Linux compatible: ps -o rss -p <pid>
    // Note: On some systems, this might fail or require permissions.
    // For a rough estimate, this is fine.
    if (Platform.isMacOS || Platform.isLinux) {
      final result = await Process.run('ps', ['-o', 'rss=', '-p', '$pid']);
      if (result.exitCode == 0) {
        final val = int.tryParse(result.stdout.toString().trim()) ?? 0;
        return val * 1024; // Convert KB to Bytes for precision
      }
    }
  } catch (e) {
    // ignore
  }
  return 0;
}

Future<void> runScenario(
  String mode,
  List<String> commands,
  String cwd,
  Shell shell,
  CompleteAdapter adapter,
  int iterations,
) async {
  print(
      '\n=== Scenario: $mode (${commands.length} commands, $iterations iterations each) ===');

  AutocompleteEngine? engine;
  Future<SuggestionBlob?> Function(String, String, Shell, CompleteAdapter)
      completer;

  if (mode == 'functional') {
    completer = getSuggestions;
    clearDefaultCache();
  } else {
    engine = AutocompleteEngine();
    completer = engine.getSuggestions;
  }

  // Warmup (first command only)
  await completer(commands.first, cwd, shell, adapter);

  // Force GC
  await Future.delayed(Duration(milliseconds: 100));

  final startMem = await getMemoryUsage();
  final stopwatch = Stopwatch()..start();

  // Simulate user session: run different commands in sequence
  for (var i = 0; i < iterations; i++) {
    for (final cmd in commands) {
      await completer(cmd, cwd, shell, adapter);
    }
  }

  stopwatch.stop();
  final endMem = await getMemoryUsage();

  if (engine != null) {
    engine.dispose();
  } else {
    clearDefaultCache();
  }

  final totalOps = iterations * commands.length;
  final totalTime = stopwatch.elapsedMilliseconds;
  final avgTime = totalTime / totalOps;
  final opsSec = totalOps / (totalTime / 1000);
  final memDelta = (endMem - startMem) / 1024 / 1024; // MB

  print('Total Ops: $totalOps');
  print('Total Time: ${totalTime} ms');
  print('Average Time: ${avgTime.toStringAsFixed(3)} ms/op');
  print('Ops/sec: ${opsSec.toStringAsFixed(2)}');
  print('Memory Delta: ${memDelta.toStringAsFixed(4)} MB');
  print('End Memory (RSS): ${(endMem / 1024 / 1024).toStringAsFixed(2)} MB');
}

void main(List<String> args) async {
  registerBuiltinSpecs();
  final cwd = Directory.current.path;
  final adapter = LocalCompleteAdapter();
  final shell = Shell.zsh;
  final iterations = 50; // Lower iterations since we loop commands

  // Simulate a realistic developer session
  final commands = [
    'git ', // Root command
    'git c', // Subcommand partial
    'git commit ', // Subcommand
    'git commit -', // Option
    'git remote ', // Nested subcommand
    'npm ', // Different tool
    'npm i', // Subcommand
    'cd ', // Builtin
    'git status', // Another git command
    'git checkout ', // Heavy spec?
  ];

  if (args.isEmpty) {
    print('Usage: dart run example/bench/benchmark.dart <mode>');
    print('Modes: functional, oo');
    exit(1);
  }

  final mode = args[0];
  await runScenario(mode, commands, cwd, shell, adapter, iterations);
}
