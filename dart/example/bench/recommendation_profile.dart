import 'dart:io';

import 'package:autocomplete/autocomplete.dart';

import '../local_adapter.dart';

class _Stats {
  _Stats(this.name);

  final String name;
  final List<int> _samplesUs = [];

  int get count => _samplesUs.length;
  int get totalUs => _samplesUs.fold(0, (a, b) => a + b);
  double get avgMs => count == 0 ? 0 : (totalUs / count) / 1000.0;

  void add(Duration elapsed) {
    _samplesUs.add(elapsed.inMicroseconds);
  }

  double percentileMs(double p) {
    if (_samplesUs.isEmpty) return 0;
    final sorted = List<int>.from(_samplesUs)..sort();
    final idx = ((sorted.length - 1) * p).round();
    return sorted[idx] / 1000.0;
  }

  String pretty() {
    return '$name: '
        'count=$count, '
        'total=${(totalUs / 1000.0).toStringAsFixed(2)}ms, '
        'avg=${avgMs.toStringAsFixed(2)}ms, '
        'p50=${percentileMs(0.50).toStringAsFixed(2)}ms, '
        'p95=${percentileMs(0.95).toStringAsFixed(2)}ms';
  }
}

class ProfilingAdapter implements CompleteAdapter {
  ProfilingAdapter(this._inner);

  final CompleteAdapter _inner;

  final _resolveCwdStats = _Stats('adapter.resolveCwd');
  final _listDirectoryStats = _Stats('adapter.listDirectory');
  final _runProcessStats = _Stats('adapter.runProcess');

  void clearStats() {
    _resolveCwdStats._samplesUs.clear();
    _listDirectoryStats._samplesUs.clear();
    _runProcessStats._samplesUs.clear();
  }

  void printStats() {
    print(_resolveCwdStats.pretty());
    print(_listDirectoryStats.pretty());
    print(_runProcessStats.pretty());
  }

  @override
  String? getEnv(String envKey) => _inner.getEnv(envKey);

  @override
  Map<String, String> getEnvs() => _inner.getEnvs();

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    final sw = Stopwatch()..start();
    try {
      return await _inner.listDirectory(
        path,
        foldersOnly: foldersOnly,
        extensions: extensions,
      );
    } finally {
      sw.stop();
      _listDirectoryStats.add(sw.elapsed);
    }
  }

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async {
    final sw = Stopwatch()..start();
    try {
      return await _inner.resolveCwd(cwd, shell);
    } finally {
      sw.stop();
      _resolveCwdStats.add(sw.elapsed);
    }
  }

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    Map<String, String?>? environment,
    String? workingDirectory,
  }) async {
    final sw = Stopwatch()..start();
    try {
      return await _inner.runProcess(
        executable,
        arguments,
        environment: environment,
        workingDirectory: workingDirectory,
      );
    } finally {
      sw.stop();
      _runProcessStats.add(sw.elapsed);
    }
  }
}

class _CallResult {
  _CallResult({
    required this.label,
    required this.elapsed,
    required this.suggestionCount,
  });

  final String label;
  final Duration elapsed;
  final int suggestionCount;
}

Future<_CallResult> _timedSuggestion({
  required String label,
  required AutocompleteEngine engine,
  required String input,
  required String cwd,
  required Shell shell,
  required CompleteAdapter adapter,
  required bool verboseRuntime,
}) async {
  final sw = Stopwatch()..start();
  final result = await engine.getSuggestions(
    input,
    cwd,
    shell,
    logger:
        verboseRuntime ? null : (String _, [Object? __, StackTrace? ___]) {},
  );
  sw.stop();
  return _CallResult(
    label: label,
    elapsed: sw.elapsed,
    suggestionCount: result?.suggestions.length ?? 0,
  );
}

void _printCall(String phase, _CallResult r) {
  print(
    '[$phase] ${r.label.padRight(26)} '
    '${r.elapsed.inMilliseconds.toString().padLeft(4)}ms '
    '(suggestions=${r.suggestionCount})',
  );
}

Future<void> _runColdAndWarmScenario({
  required String name,
  required List<String> commandFlow,
  required int warmRepeats,
  required String cwd,
  required Shell shell,
  required ProfilingAdapter adapter,
  required bool verboseRuntime,
}) async {
  print('\n=== Scenario: $name ===');
  print('Flow: ${commandFlow.join(' -> ')}');

  final coldEngine = AutocompleteEngine(adapter: adapter);
  clearDefaultCache();
  adapter.clearStats();

  for (var i = 0; i < commandFlow.length; i++) {
    final phase = i == 0 ? 'cold-first' : 'cold-second+';
    final r = await _timedSuggestion(
      label: commandFlow[i],
      engine: coldEngine,
      input: commandFlow[i],
      cwd: cwd,
      shell: shell,
      adapter: adapter,
      verboseRuntime: verboseRuntime,
    );
    _printCall(phase, r);
  }

  print('Adapter breakdown (cold run):');
  adapter.printStats();

  final warmEngine = AutocompleteEngine(adapter: adapter);
  clearDefaultCache();
  adapter.clearStats();

  final allUs = <int>[];
  final firstStepUs = <int>[];
  final secondStepUs = <int>[];

  for (var i = 0; i < warmRepeats; i++) {
    for (var step = 0; step < commandFlow.length; step++) {
      final r = await _timedSuggestion(
        label: commandFlow[step],
        engine: warmEngine,
        input: commandFlow[step],
        cwd: cwd,
        shell: shell,
        adapter: adapter,
        verboseRuntime: verboseRuntime,
      );
      final us = r.elapsed.inMicroseconds;
      allUs.add(us);
      if (step == 0) firstStepUs.add(us);
      if (step == 1) secondStepUs.add(us);
    }
  }

  double _pct(List<int> src, double p) {
    if (src.isEmpty) return 0;
    final sorted = List<int>.from(src)..sort();
    final idx = ((sorted.length - 1) * p).round();
    return sorted[idx] / 1000.0;
  }

  double _avgMs(List<int> src) =>
      src.isEmpty ? 0 : src.reduce((a, b) => a + b) / src.length / 1000.0;

  print('\nWarm repeats: $warmRepeats rounds');
  print(
      'all calls: n=${allUs.length}, avg=${_avgMs(allUs).toStringAsFixed(2)}ms, p50=${_pct(allUs, 0.50).toStringAsFixed(2)}ms, p95=${_pct(allUs, 0.95).toStringAsFixed(2)}ms');
  print(
      'step1 only: n=${firstStepUs.length}, avg=${_avgMs(firstStepUs).toStringAsFixed(2)}ms, p50=${_pct(firstStepUs, 0.50).toStringAsFixed(2)}ms, p95=${_pct(firstStepUs, 0.95).toStringAsFixed(2)}ms');
  if (secondStepUs.isNotEmpty) {
    print(
        'step2 only: n=${secondStepUs.length}, avg=${_avgMs(secondStepUs).toStringAsFixed(2)}ms, p50=${_pct(secondStepUs, 0.50).toStringAsFixed(2)}ms, p95=${_pct(secondStepUs, 0.95).toStringAsFixed(2)}ms');
  }

  print('Adapter breakdown (warm repeats):');
  adapter.printStats();

  coldEngine.dispose();
  warmEngine.dispose();
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
      return Shell.zsh;
  }
}

Future<void> main(List<String> args) async {
  registerBuiltinSpecs();

  var shell = Shell.zsh;
  var rounds = 40;
  var verboseRuntime = false;

  for (var i = 0; i < args.length; i++) {
    if ((args[i] == '--shell' || args[i] == '-s') && i + 1 < args.length) {
      shell = _parseShell(args[++i]);
      continue;
    }
    if ((args[i] == '--rounds' || args[i] == '-n') && i + 1 < args.length) {
      rounds = int.tryParse(args[++i]) ?? rounds;
      continue;
    }
    if (args[i] == '--verbose-runtime') {
      verboseRuntime = true;
      continue;
    }
  }

  final cwd = Directory.current.path;
  final adapter = ProfilingAdapter(LocalCompleteAdapter());

  print('cwd=$cwd');
  print('shell=$shell');
  print('rounds=$rounds');
  print('Tip: 重点看 cold-first vs step2 only，判断“首次慢”还是“选中 spec 后仍慢”。');

  await _runColdAndWarmScenario(
    name: 'git root -> after select spec',
    commandFlow: const ['git ', 'git ch'],
    warmRepeats: rounds,
    cwd: cwd,
    shell: shell,
    adapter: adapter,
    verboseRuntime: verboseRuntime,
  );

  await _runColdAndWarmScenario(
    name: 'git commit path',
    commandFlow: const ['git commit ', 'git commit -'],
    warmRepeats: rounds,
    cwd: cwd,
    shell: shell,
    adapter: adapter,
    verboseRuntime: verboseRuntime,
  );

  await _runColdAndWarmScenario(
    name: 'cd path style',
    commandFlow: const ['cd ~/', 'cd ~/Do'],
    warmRepeats: rounds,
    cwd: cwd,
    shell: shell,
    adapter: adapter,
    verboseRuntime: verboseRuntime,
  );
}
