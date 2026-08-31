import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/launchctl.dart';
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

void main() {
  test('launchctl JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerLaunchctlHandlers(handlers);
    final source = await File('assets/specs/l/launchctl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(launchctlListPostProcessHandler));
    expect(document['name'], 'launchctl');

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
    expect(ids.toSet(), {launchctlListPostProcessHandler});
  });

  test('list post-processor skips the header and takes the label column', () {
    final registry = JsonHandlerRegistry();
    registerLaunchctlHandlers(registry);
    final output = 'PID\tStatus\tLabel\n'
        '112\t0\tcom.apple.AirPlayUIAgent\n'
        '-\t0\tcom.apple.CoreAnalyticsDelayed';

    final suggestions =
        registry.postProcess(launchctlListPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle),
        ['com.apple.AirPlayUIAgent', 'com.apple.CoreAnalyticsDelayed']);
  });

  test('list post-processor drops lines without a label column', () {
    final registry = JsonHandlerRegistry();
    registerLaunchctlHandlers(registry);
    const output = 'PID\tStatus\tLabel\n'
        'com.apple.AirPlayUIAgent\n'
        '112\t0\tcom.apple.Real';

    final suggestions =
        registry.postProcess(launchctlListPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle), ['com.apple.Real']);
  });

  test('list post-processor ignores a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerLaunchctlHandlers(registry);
    final output = 'PID\tStatus\tLabel\n'
        '112\t0\tcom.apple.AirPlayUIAgent\n';

    final suggestions =
        registry.postProcess(launchctlListPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle),
        ['com.apple.AirPlayUIAgent']);
  });

  test('list post-processor handles empty and header-only output', () {
    final registry = JsonHandlerRegistry();
    registerLaunchctlHandlers(registry);

    final handler = registry.postProcess(launchctlListPostProcessHandler)!;
    final empty = handler('');
    expect(empty, isEmpty);

    final headerOnly = handler('PID\tStatus\tLabel');
    expect(headerOnly, isEmpty);

    // A single line with no header is treated as the header and dropped.
    final singleLine = handler('112\t0\tcom.apple.Only');
    expect(singleLine, isEmpty);
  });

  test('list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerLaunchctlHandlers(registry);
    final adapter = _FakeAdapter({
      'launchctl list': const ProcessRunResult(
        stdout: 'PID\tStatus\tLabel\n'
            '112\t0\tcom.apple.AirPlayUIAgent\n'
            '-\t0\tcom.apple.CoreAnalyticsDelayed',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/launchctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'launchctl list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'launchctl', tokenLength: 9, complete: true),
        CommandToken(token: 'start', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['com.apple.AirPlayUIAgent', 'com.apple.CoreAnalyticsDelayed']);
  });
}
