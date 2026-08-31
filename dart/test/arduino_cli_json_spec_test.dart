import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/arduino_cli.dart';
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

/// Recursively finds the first generator whose static script matches [script].
FigGenerator _firstGeneratorWithScript(FigSpec spec, String script) {
  FigGenerator? found;
  void visitArgs(List<FigArg>? args) {
    if (args == null || found != null) return;
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final rawScript = generator.script;
        if (rawScript is List && rawScript.join(' ') == script) {
          found = generator;
          return;
        }
      }
    }
  }

  void visitOptions(List<FigOption>? options) {
    if (options == null || found != null) return;
    for (final option in options) {
      visitArgs(option.args);
      if (found != null) return;
    }
  }

  void visitSubcommands(List<FigSubcommand>? subcommands) {
    if (subcommands == null || found != null) return;
    for (final subcommand in subcommands) {
      visitArgs(subcommand.args);
      if (found != null) return;
      visitOptions(subcommand.options);
      if (found != null) return;
      visitSubcommands(subcommand.subcommands);
    }
  }

  visitArgs(spec.args);
  visitOptions(spec.options);
  visitSubcommands(spec.subcommands);
  return found!;
}

void main() {
  const boardListJson = '['
      '{"matching_boards":[{"name":"Arduino Uno","fqbn":"arduino:avr:uno"}],'
      '"port":{"address":"/dev/ttyACM0","protocol":"serial"}},'
      '{"matching_boards":[{"name":"Arduino Nano","fqbn":"arduino:avr:nano"}],'
      '"port":{"address":"/dev/ttyACM1","protocol":"serial"}},'
      '{"matching_boards":[],"port":{"address":"/dev/ttyACM2","protocol":"serial"}},'
      '{"port":{"address":"/dev/ttyACM3","protocol":"serial"}}'
      ']';

  test('arduino-cli JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerArduinoCliHandlers(handlers);
    final source =
        await File('assets/specs/a/arduino-cli.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(arduinoCliFqbnsPostProcessHandler));
    expect(source, contains(arduinoCliPortsPostProcessHandler));
    expect(document['name'], 'arduino-cli');

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
      arduinoCliFqbnsPostProcessHandler,
      arduinoCliPortsPostProcessHandler,
    });
  });

  test('FQBNs post-processor maps matching boards and filters the rest', () {
    final registry = JsonHandlerRegistry();
    registerArduinoCliHandlers(registry);

    final fqbns = registry
        .postProcess(arduinoCliFqbnsPostProcessHandler)!(boardListJson);
    expect(fqbns.map((item) => item.nameSingle ?? '').toList(),
        ['arduino:avr:uno', 'arduino:avr:nano']);
    expect(fqbns.map((item) => item.description).toList(), [
      'Arduino Uno on port /dev/ttyACM0',
      'Arduino Nano on port /dev/ttyACM1',
    ]);
  });

  test('ports post-processor maps matching boards and filters the rest', () {
    final registry = JsonHandlerRegistry();
    registerArduinoCliHandlers(registry);

    final ports =
        registry.postProcess(arduinoCliPortsPostProcessHandler)!(boardListJson);
    expect(ports.map((item) => item.nameSingle ?? '').toList(),
        ['/dev/ttyACM0', '/dev/ttyACM1']);
    expect(ports.map((item) => item.description).toList(), [
      'Arduino Uno port connection',
      'Arduino Nano port connection',
    ]);
  });

  test('post-processors return empty for empty and malformed output', () {
    final registry = JsonHandlerRegistry();
    registerArduinoCliHandlers(registry);

    expect(registry.postProcess(arduinoCliFqbnsPostProcessHandler)!('[]'),
        isEmpty);
    expect(registry.postProcess(arduinoCliPortsPostProcessHandler)!('[]'),
        isEmpty);
    expect(registry.postProcess(arduinoCliFqbnsPostProcessHandler)!('not json'),
        isEmpty);
    expect(registry.postProcess(arduinoCliPortsPostProcessHandler)!('{}'),
        isEmpty);
  });

  test('post-processors return empty when required fields are missing', () {
    final registry = JsonHandlerRegistry();
    registerArduinoCliHandlers(registry);

    // A matching board without a port entry.
    const noPort = '[{"matching_boards":[{"name":"Arduino Uno",'
        '"fqbn":"arduino:avr:uno"}]}]';
    expect(registry.postProcess(arduinoCliFqbnsPostProcessHandler)!(noPort),
        isEmpty);
    expect(registry.postProcess(arduinoCliPortsPostProcessHandler)!(noPort),
        isEmpty);
  });

  test('board list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerArduinoCliHandlers(registry);
    final adapter = _FakeAdapter({
      'arduino-cli board list --format json': const ProcessRunResult(
        stdout: '['
            '{"matching_boards":[{"name":"Arduino Uno",'
            '"fqbn":"arduino:avr:uno"}],'
            '"port":{"address":"/dev/ttyACM0","protocol":"serial"}},'
            '{"matching_boards":[{"name":"Arduino Mega",'
            '"fqbn":"arduino:avr:mega"}],'
            '"port":{"address":"/dev/ttyACM1","protocol":"serial"}}'
            ']',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/a/arduino-cli.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _firstGeneratorWithScript(
        spec, 'arduino-cli board list --format json');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'arduino-cli', tokenLength: 11, complete: true),
        CommandToken(token: 'board', tokenLength: 5, complete: true),
        CommandToken(token: 'attach', tokenLength: 6, complete: true),
        CommandToken(token: '-b', tokenLength: 2, complete: true, isOption: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['arduino:avr:uno', 'arduino:avr:mega']);
  });
}
