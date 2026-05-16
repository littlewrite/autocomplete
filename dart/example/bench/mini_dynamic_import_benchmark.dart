import 'dart:convert';
import 'dart:io';

const int commandCount = 160;
const int subcommandCount = 14;
const int optionsPerSubcommand = 6;
const int coldLoadCount = 160;
const int hotIterations = 60000;
const int handlerIterations = 200000;
const int sampleRuns = 5;
const Duration processTimeout = Duration(seconds: 90);

Future<void> main(List<String> args) async {
  final root = Directory(
    args.isNotEmpty ? args.first : '/private/tmp/autocomplete_mini_bench',
  );
  if (root.existsSync()) {
    root.deleteSync(recursive: true);
  }
  root.createSync(recursive: true);

  final generated = _generateFixtures(root);
  final rows = <_ResultSummary>[];

  final pureJit = await _runSamples(
    'pure-dart jit',
    Platform.executable,
    [generated.pureDart.path],
    root.path,
  );
  rows.add(pureJit);

  final jsonJit = await _runSamples(
    'json jit',
    Platform.executable,
    [generated.jsonRuntime.path, generated.jsonData.path],
    root.path,
  );
  rows.add(jsonJit);

  final pureCompile = await _run(
    'compile pure-dart',
    Platform.executable,
    [
      'compile',
      'exe',
      generated.pureDart.path,
      '-o',
      generated.pureExe.path,
    ],
    root.path,
  );

  final jsonCompile = await _run(
    'compile json-runtime',
    Platform.executable,
    [
      'compile',
      'exe',
      generated.jsonRuntime.path,
      '-o',
      generated.jsonExe.path,
    ],
    root.path,
  );

  if (pureCompile.exitCode == 0) {
    final pureExeRun = await _runSamples(
      'pure-dart exe',
      generated.pureExe.path,
      const [],
      root.path,
    );
    rows.add(pureExeRun);
  } else {
    rows.add(_ResultSummary.failed('pure-dart exe', pureCompile));
  }

  if (jsonCompile.exitCode == 0) {
    final jsonExeRun = await _runSamples(
      'json exe',
      generated.jsonExe.path,
      [generated.jsonData.path],
      root.path,
    );
    rows.add(jsonExeRun);
  } else {
    rows.add(_ResultSummary.failed('json exe', jsonCompile));
  }

  final report = _renderReport(generated, rows, pureCompile, jsonCompile);
  final reportFile = File('${root.path}/mini_dynamic_import_report.md')
    ..writeAsStringSync(report);

  print(report);
  print('Report: ${reportFile.path}');
}

_Generated _generateFixtures(Directory root) {
  final pureDart = File('${root.path}/pure_dart.dart');
  final jsonRuntime = File('${root.path}/json_runtime.dart');
  final jsonData = Directory('${root.path}/json_specs')..createSync();
  final jsonSpecs = Directory('${jsonData.path}/specs')..createSync();
  final pureExe = File('${root.path}/pure_dart_exe');
  final jsonExe = File('${root.path}/json_runtime_exe');

  final index = <String, Object?>{
    'version': 1,
    'specs': <String, Object?>{},
  };
  final allJsonTexts = <String>[];

  final pure = StringBuffer()
    ..writeln("import 'dart:io';")
    ..writeln(commonRuntimeSource)
    ..writeln('MiniSpec buildSpec(String name) {')
    ..writeln('  switch (name) {');

  for (var command = 0; command < commandCount; command++) {
    final name = _commandName(command);
    final spec = _specJson(command);
    final jsonText = jsonEncode(spec);
    allJsonTexts.add(jsonText);
    File('${jsonSpecs.path}/$name.json').writeAsStringSync(jsonText);
    (index['specs']! as Map<String, Object?>)[name] = {
      'path': 'specs/$name.json',
    };

    pure
      ..writeln("    case '$name':")
      ..write('      return ')
      ..write(_specDartLiteral(command))
      ..writeln(';');
  }

  pure
    ..writeln('    default:')
    ..writeln("      throw StateError('unknown spec: \$name');")
    ..writeln('  }')
    ..writeln('}')
    ..writeln(pureProviderSource)
    ..writeln(benchMainSource);
  pureDart.writeAsStringSync(pure.toString());

  File('${jsonData.path}/index.json').writeAsStringSync(jsonEncode(index));
  File('${jsonData.path}/specs.jsonl.gz').writeAsBytesSync(
    gzip.encode(utf8.encode(allJsonTexts.join('\n'))),
  );

  jsonRuntime.writeAsStringSync(
    [
      "import 'dart:convert';",
      "import 'dart:io';",
      commonRuntimeSource,
      jsonProviderSource,
      benchMainSource,
    ].join('\n'),
  );

  return _Generated(
    root: root,
    pureDart: pureDart,
    jsonRuntime: jsonRuntime,
    jsonData: jsonData,
    pureExe: pureExe,
    jsonExe: jsonExe,
  );
}

Map<String, Object?> _specJson(int command) {
  final commandName = _commandName(command);
  return {
    'name': commandName,
    'subcommands': [
      for (var sub = 0; sub < subcommandCount; sub++)
        {
          'name': '$commandName-sub-$sub',
          'description': 'Synthetic subcommand $sub for $commandName',
          'options': [
            for (var opt = 0; opt < optionsPerSubcommand; opt++)
              {
                'name': ['-o$opt', '--option-$opt'],
                'description': 'Synthetic option $opt',
              },
          ],
        },
    ],
  };
}

String _specDartLiteral(int command) {
  final commandName = _commandName(command);
  final subcommands = StringBuffer();
  for (var sub = 0; sub < subcommandCount; sub++) {
    if (sub > 0) subcommands.write(',');
    subcommands
      ..write('MiniSubcommand(')
      ..write(_dartString('$commandName-sub-$sub'))
      ..write(',[');
    for (var opt = 0; opt < optionsPerSubcommand; opt++) {
      if (opt > 0) subcommands.write(',');
      subcommands
        ..write('MiniOption([')
        ..write(_dartString('-o$opt'))
        ..write(',')
        ..write(_dartString('--option-$opt'))
        ..write('])');
    }
    subcommands.write('])');
  }
  return 'MiniSpec(${_dartString(commandName)},[$subcommands])';
}

String _commandName(int index) => 'cmd${index.toString().padLeft(3, '0')}';

String _dartString(String value) => jsonEncode(value);

Future<_RunResult> _run(
  String label,
  String executable,
  List<String> arguments,
  String workingDirectory,
) async {
  final watch = Stopwatch()..start();
  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    environment: const {
      'HOME': '/tmp',
      'DART_SUPPRESS_ANALYTICS': 'true',
    },
    includeParentEnvironment: true,
  );
  final stdoutFuture = process.stdout.transform(utf8.decoder).join();
  final stderrFuture = process.stderr.transform(utf8.decoder).join();
  var timedOut = false;
  final exitCode = await process.exitCode.timeout(
    processTimeout,
    onTimeout: () {
      timedOut = true;
      process.kill();
      return -15;
    },
  );
  final stdout = await stdoutFuture;
  final stderr = await stderrFuture;
  watch.stop();
  return _RunResult(
    label: label,
    exitCode: exitCode,
    stdout: stdout,
    stderr: timedOut
        ? '$stderr\nTimed out after ${processTimeout.inSeconds}s.'
        : stderr,
    elapsedMs: watch.elapsedMilliseconds,
  );
}

Future<_ResultSummary> _runSamples(
  String label,
  String executable,
  List<String> arguments,
  String workingDirectory,
) async {
  final samples = <_MetricRow>[];
  var exitCode = 0;
  for (var i = 0; i < sampleRuns; i++) {
    final run = await _run(label, executable, arguments, workingDirectory);
    exitCode = run.exitCode;
    if (run.exitCode != 0) {
      return _ResultSummary.failed(label, run);
    }
    samples.add(_MetricRow.fromRun(run));
  }
  return _ResultSummary(label: label, exitCode: exitCode, samples: samples);
}

String _renderReport(
  _Generated generated,
  List<_ResultSummary> rows,
  _RunResult pureCompile,
  _RunResult jsonCompile,
) {
  final jsonBytes = _directoryBytes(generated.jsonData);
  final jsonGzipBytes =
      File('${generated.jsonData.path}/specs.jsonl.gz').lengthSync();

  final buffer = StringBuffer()
    ..writeln('# Mini Dynamic Import Benchmark')
    ..writeln()
    ..writeln('| Setting | Value |')
    ..writeln('| --- | ---: |')
    ..writeln('| commands | $commandCount |')
    ..writeln('| subcommands/command | $subcommandCount |')
    ..writeln('| options/subcommand | $optionsPerSubcommand |')
    ..writeln('| cold loaded commands | $coldLoadCount |')
    ..writeln('| hot cached lookups | $hotIterations |')
    ..writeln('| handler lookups | $handlerIterations |')
    ..writeln('| samples/mode | $sampleRuns |')
    ..writeln()
    ..writeln('## Disk')
    ..writeln()
    ..writeln('| Artifact | Bytes |')
    ..writeln('| --- | ---: |')
    ..writeln('| pure Dart source | ${generated.pureDart.lengthSync()} |')
    ..writeln('| JSON runtime source | ${generated.jsonRuntime.lengthSync()} |')
    ..writeln('| JSON data directory | $jsonBytes |')
    ..writeln('| JSON specs jsonl gzip | $jsonGzipBytes |')
    ..writeln(
      '| pure Dart executable | ${_fileLengthOrZero(generated.pureExe)} |',
    )
    ..writeln(
      '| JSON runtime executable | ${_fileLengthOrZero(generated.jsonExe)} |',
    )
    ..writeln()
    ..writeln('## CPU and RSS medians')
    ..writeln()
    ..writeln(
      '| Mode | Samples | Startup ms | Cold load ms | Hot loop ms | Handler loop ms | Start RSS MB | After index RSS MB | After cold RSS MB | After hot RSS MB | Exit |',
    )
    ..writeln(
        '| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |');
  for (final row in rows) {
    buffer.writeln(row.toMainMarkdown());
  }

  buffer
    ..writeln()
    ..writeln('## Load breakdown medians')
    ..writeln()
    ..writeln(
      '| Mode | Index read ms | Index decode ms | Spec read ms | Spec decode ms | Spec fromJson ms | Pure build ms |',
    )
    ..writeln('| --- | ---: | ---: | ---: | ---: | ---: | ---: |');
  for (final row in rows) {
    buffer.writeln(row.toBreakdownMarkdown());
  }

  buffer
    ..writeln()
    ..writeln('## Compile')
    ..writeln()
    ..writeln('| Target | Exit | Wall ms |')
    ..writeln('| --- | ---: | ---: |')
    ..writeln(
      '| pure Dart executable | ${pureCompile.exitCode} | ${pureCompile.elapsedMs} |',
    )
    ..writeln(
      '| JSON runtime executable | ${jsonCompile.exitCode} | ${jsonCompile.elapsedMs} |',
    );

  if (pureCompile.exitCode != 0) {
    buffer
      ..writeln()
      ..writeln('pure Dart compile stderr:')
      ..writeln('```text')
      ..writeln(pureCompile.stderr.trim())
      ..writeln('```');
  }
  if (jsonCompile.exitCode != 0) {
    buffer
      ..writeln()
      ..writeln('JSON runtime compile stderr:')
      ..writeln('```text')
      ..writeln(jsonCompile.stderr.trim())
      ..writeln('```');
  }

  return buffer.toString();
}

int _directoryBytes(Directory directory) {
  var total = 0;
  for (final entity in directory.listSync(recursive: true)) {
    if (entity is File) total += entity.lengthSync();
  }
  return total;
}

int _fileLengthOrZero(File file) => file.existsSync() ? file.lengthSync() : 0;

class _Generated {
  const _Generated({
    required this.root,
    required this.pureDart,
    required this.jsonRuntime,
    required this.jsonData,
    required this.pureExe,
    required this.jsonExe,
  });

  final Directory root;
  final File pureDart;
  final File jsonRuntime;
  final Directory jsonData;
  final File pureExe;
  final File jsonExe;
}

class _RunResult {
  const _RunResult({
    required this.label,
    required this.exitCode,
    required this.stdout,
    required this.stderr,
    required this.elapsedMs,
  });

  final String label;
  final int exitCode;
  final String stdout;
  final String stderr;
  final int elapsedMs;
}

class _MetricRow {
  const _MetricRow({
    required this.label,
    required this.exitCode,
    required this.startupMs,
    required this.coldLoadMs,
    required this.hotLoopMs,
    required this.handlerLoopMs,
    required this.startRssMb,
    required this.afterIndexRssMb,
    required this.afterColdRssMb,
    required this.afterHotRssMb,
    required this.indexReadMs,
    required this.indexDecodeMs,
    required this.specReadMs,
    required this.specDecodeMs,
    required this.specFromJsonMs,
    required this.specBuildMs,
  });

  factory _MetricRow.fromRun(_RunResult run) {
    final values = <String, String>{};
    for (final line in const LineSplitter().convert(run.stdout)) {
      final split = line.indexOf('=');
      if (split <= 0) continue;
      values[line.substring(0, split)] = line.substring(split + 1);
    }

    double doubleValue(String key) => double.tryParse(values[key] ?? '') ?? 0;

    return _MetricRow(
      label: run.label,
      exitCode: run.exitCode,
      startupMs: doubleValue('startupMs'),
      coldLoadMs: doubleValue('coldLoadMs'),
      hotLoopMs: doubleValue('hotLoopMs'),
      handlerLoopMs: doubleValue('handlerLoopMs'),
      startRssMb: doubleValue('startRssMb'),
      afterIndexRssMb: doubleValue('afterIndexRssMb'),
      afterColdRssMb: doubleValue('afterColdRssMb'),
      afterHotRssMb: doubleValue('afterHotRssMb'),
      indexReadMs: doubleValue('indexReadMs'),
      indexDecodeMs: doubleValue('indexDecodeMs'),
      specReadMs: doubleValue('specReadMs'),
      specDecodeMs: doubleValue('specDecodeMs'),
      specFromJsonMs: doubleValue('specFromJsonMs'),
      specBuildMs: doubleValue('specBuildMs'),
    );
  }

  final String label;
  final int exitCode;
  final double startupMs;
  final double coldLoadMs;
  final double hotLoopMs;
  final double handlerLoopMs;
  final double startRssMb;
  final double afterIndexRssMb;
  final double afterColdRssMb;
  final double afterHotRssMb;
  final double indexReadMs;
  final double indexDecodeMs;
  final double specReadMs;
  final double specDecodeMs;
  final double specFromJsonMs;
  final double specBuildMs;
}

class _ResultSummary {
  const _ResultSummary({
    required this.label,
    required this.exitCode,
    required this.samples,
  });

  factory _ResultSummary.failed(String label, _RunResult run) {
    return _ResultSummary(
        label: label, exitCode: run.exitCode, samples: const []);
  }

  final String label;
  final int exitCode;
  final List<_MetricRow> samples;

  double _median(double Function(_MetricRow row) value) {
    if (samples.isEmpty) return 0;
    final values = samples.map(value).toList()..sort();
    final middle = values.length ~/ 2;
    if (values.length.isOdd) return values[middle];
    return (values[middle - 1] + values[middle]) / 2;
  }

  String toMainMarkdown() {
    String f(double value) => value.toStringAsFixed(2);
    return '| $label | ${samples.length} | ${f(_median((e) => e.startupMs))} | '
        '${f(_median((e) => e.coldLoadMs))} | '
        '${f(_median((e) => e.hotLoopMs))} | '
        '${f(_median((e) => e.handlerLoopMs))} | '
        '${f(_median((e) => e.startRssMb))} | '
        '${f(_median((e) => e.afterIndexRssMb))} | '
        '${f(_median((e) => e.afterColdRssMb))} | '
        '${f(_median((e) => e.afterHotRssMb))} | $exitCode |';
  }

  String toBreakdownMarkdown() {
    String f(double value) => value.toStringAsFixed(2);
    return '| $label | ${f(_median((e) => e.indexReadMs))} | '
        '${f(_median((e) => e.indexDecodeMs))} | '
        '${f(_median((e) => e.specReadMs))} | '
        '${f(_median((e) => e.specDecodeMs))} | '
        '${f(_median((e) => e.specFromJsonMs))} | '
        '${f(_median((e) => e.specBuildMs))} |';
  }
}

const String commonRuntimeSource = r'''
class MiniSpec {
  const MiniSpec(this.name, this.subcommands);

  factory MiniSpec.fromJson(Map<String, dynamic> json) {
    return MiniSpec(
      json['name'] as String,
      (json['subcommands'] as List)
          .cast<Map<String, dynamic>>()
          .map(MiniSubcommand.fromJson)
          .toList(),
    );
  }

  final String name;
  final List<MiniSubcommand> subcommands;
}

class MiniSubcommand {
  const MiniSubcommand(this.name, this.options);

  factory MiniSubcommand.fromJson(Map<String, dynamic> json) {
    return MiniSubcommand(
      json['name'] as String,
      (json['options'] as List)
          .cast<Map<String, dynamic>>()
          .map(MiniOption.fromJson)
          .toList(),
    );
  }

  final String name;
  final List<MiniOption> options;
}

class MiniOption {
  const MiniOption(this.names);

  factory MiniOption.fromJson(Map<String, dynamic> json) {
    return MiniOption((json['name'] as List).cast<String>());
  }

  final List<String> names;
}

abstract class MiniProvider {
  void loadIndex();
  MiniSpec loadSpec(String name);
  int runHandlerLoop(int iterations);

  double get indexReadMs;
  double get indexDecodeMs;
  double get specReadMs;
  double get specDecodeMs;
  double get specFromJsonMs;
  double get specBuildMs;
}

int suggest(MiniSpec spec, String prefix) {
  var count = 0;
  for (final subcommand in spec.subcommands) {
    if (subcommand.name.startsWith(prefix)) count++;
    for (final option in subcommand.options) {
      for (final name in option.names) {
        if (name.startsWith(prefix)) count++;
      }
    }
  }
  return count;
}

double rssMb() => ProcessInfo.currentRss / 1024 / 1024;

String commandName(int index) => 'cmd${index.toString().padLeft(3, '0')}';
''';

const String pureProviderSource = r'''
class PureDartProvider implements MiniProvider {
  final Map<String, MiniSpec> _cache = {};
  var _specBuildMs = 0.0;

  @override
  void loadIndex() {}

  @override
  MiniSpec loadSpec(String name) {
    return _cache.putIfAbsent(name, () {
      final watch = Stopwatch()..start();
      final spec = buildSpec(name);
      watch.stop();
      _specBuildMs += watch.elapsedMicroseconds / 1000.0;
      return spec;
    });
  }

  @override
  int runHandlerLoop(int iterations) {
    var checksum = 0;
    for (var i = 0; i < iterations; i++) {
      checksum += _directHandler(i);
    }
    return checksum;
  }

  int _directHandler(int value) => (value % 17) + 1;

  @override
  double get indexReadMs => 0;

  @override
  double get indexDecodeMs => 0;

  @override
  double get specReadMs => 0;

  @override
  double get specDecodeMs => 0;

  @override
  double get specFromJsonMs => 0;

  @override
  double get specBuildMs => _specBuildMs;
}

MiniProvider createProvider(List<String> args) => PureDartProvider();
''';

const String jsonProviderSource = r'''
class JsonProvider implements MiniProvider {
  JsonProvider(this.root);

  final String root;
  final Map<String, String> _index = {};
  final Map<String, MiniSpec> _cache = {};
  final Map<String, int Function(int)> _handlers = {
    'handler.syntheticScore.v1': (value) => (value % 17) + 1,
  };

  var _indexReadMs = 0.0;
  var _indexDecodeMs = 0.0;
  var _specReadMs = 0.0;
  var _specDecodeMs = 0.0;
  var _specFromJsonMs = 0.0;

  @override
  void loadIndex() {
    final readWatch = Stopwatch()..start();
    final text = File('$root/index.json').readAsStringSync();
    readWatch.stop();
    _indexReadMs += readWatch.elapsedMicroseconds / 1000.0;

    final decodeWatch = Stopwatch()..start();
    final decoded = jsonDecode(text) as Map<String, dynamic>;
    decodeWatch.stop();
    _indexDecodeMs += decodeWatch.elapsedMicroseconds / 1000.0;

    final specs = decoded['specs'] as Map<String, dynamic>;
    for (final entry in specs.entries) {
      _index[entry.key] = (entry.value as Map<String, dynamic>)['path'] as String;
    }
  }

  @override
  MiniSpec loadSpec(String name) {
    return _cache.putIfAbsent(name, () {
      final path = _index[name];
      if (path == null) throw StateError('unknown spec: $name');
      final readWatch = Stopwatch()..start();
      final text = File('$root/$path').readAsStringSync();
      readWatch.stop();
      _specReadMs += readWatch.elapsedMicroseconds / 1000.0;

      final decodeWatch = Stopwatch()..start();
      final decoded = jsonDecode(text) as Map<String, dynamic>;
      decodeWatch.stop();
      _specDecodeMs += decodeWatch.elapsedMicroseconds / 1000.0;

      final fromJsonWatch = Stopwatch()..start();
      final spec = MiniSpec.fromJson(decoded);
      fromJsonWatch.stop();
      _specFromJsonMs += fromJsonWatch.elapsedMicroseconds / 1000.0;
      return spec;
    });
  }

  @override
  int runHandlerLoop(int iterations) {
    var checksum = 0;
    for (var i = 0; i < iterations; i++) {
      checksum += _handlers['handler.syntheticScore.v1']!(i);
    }
    return checksum;
  }

  @override
  double get indexReadMs => _indexReadMs;

  @override
  double get indexDecodeMs => _indexDecodeMs;

  @override
  double get specReadMs => _specReadMs;

  @override
  double get specDecodeMs => _specDecodeMs;

  @override
  double get specFromJsonMs => _specFromJsonMs;

  @override
  double get specBuildMs => 0;
}

MiniProvider createProvider(List<String> args) => JsonProvider(args.first);
''';

const String benchMainSource = r'''
void main(List<String> args) {
  final startRss = rssMb();
  final startupWatch = Stopwatch()..start();
  final provider = createProvider(args);
  provider.loadIndex();
  startupWatch.stop();
  final afterIndexRss = rssMb();

  var checksum = 0;
  final coldWatch = Stopwatch()..start();
  for (var i = 0; i < 160; i++) {
    checksum += suggest(provider.loadSpec(commandName(i)), '-');
  }
  coldWatch.stop();
  final afterColdRss = rssMb();

  final hotWatch = Stopwatch()..start();
  for (var i = 0; i < 60000; i++) {
    checksum += suggest(provider.loadSpec(commandName(i % 48)), '--option-1');
  }
  hotWatch.stop();
  final afterHotRss = rssMb();

  final handlerWatch = Stopwatch()..start();
  checksum += provider.runHandlerLoop(200000);
  handlerWatch.stop();

  print('startupMs=${startupWatch.elapsedMicroseconds / 1000.0}');
  print('coldLoadMs=${coldWatch.elapsedMicroseconds / 1000.0}');
  print('hotLoopMs=${hotWatch.elapsedMicroseconds / 1000.0}');
  print('handlerLoopMs=${handlerWatch.elapsedMicroseconds / 1000.0}');
  print('startRssMb=$startRss');
  print('afterIndexRssMb=$afterIndexRss');
  print('afterColdRssMb=$afterColdRss');
  print('afterHotRssMb=$afterHotRss');
  print('indexReadMs=${provider.indexReadMs}');
  print('indexDecodeMs=${provider.indexDecodeMs}');
  print('specReadMs=${provider.specReadMs}');
  print('specDecodeMs=${provider.specDecodeMs}');
  print('specFromJsonMs=${provider.specFromJsonMs}');
  print('specBuildMs=${provider.specBuildMs}');
  print('checksum=$checksum');
}
''';
