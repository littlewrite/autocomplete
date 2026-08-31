import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mkinitcpio.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching root options and their args.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final option in spec.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
  }
  return null;
}

void main() {
  test('mkinitcpio JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerMkinitcpioHandlers(handlers);
    final source =
        await File('assets/specs/m/mkinitcpio.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mkinitcpioPresetsPostProcessHandler));
    expect(document['name'], 'mkinitcpio');

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
    expect(ids.toSet(), {mkinitcpioPresetsPostProcessHandler});
  });

  test('post-processor strips the trailing .preset suffix from each line', () {
    final registry = JsonHandlerRegistry();
    registerMkinitcpioHandlers(registry);
    final output = 'linux.preset\n'
        'linux-lts.preset\n'
        'linux-zen\n';

    final presets =
        registry.postProcess(mkinitcpioPresetsPostProcessHandler)!(output);
    expect(presets.map((item) => item.nameSingle),
        ['linux', 'linux-lts', 'linux-zen']);
  });

  test('post-processor trims surrounding whitespace before splitting', () {
    final registry = JsonHandlerRegistry();
    registerMkinitcpioHandlers(registry);
    final output = '\n'
        'linux.preset\n'
        'linux-lts.preset\n'
        '\n';

    final presets =
        registry.postProcess(mkinitcpioPresetsPostProcessHandler)!(output);
    expect(presets.map((item) => item.nameSingle), ['linux', 'linux-lts']);
  });

  test('post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerMkinitcpioHandlers(registry);

    expect(registry.postProcess(mkinitcpioPresetsPostProcessHandler)!(''),
        isEmpty);
  });

  test('mkinitcpio --preset generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerMkinitcpioHandlers(registry);
    final adapter = _FakeAdapter({
      'ls /etc/mkinitcpio.d': const ProcessRunResult(
        stdout: 'linux.preset\n'
            'linux-lts.preset\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/m/mkinitcpio.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'ls /etc/mkinitcpio.d');
    expect(generator, isNotNull,
        reason: 'no generator for the --preset script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mkinitcpio', tokenLength: 10, complete: true),
        CommandToken(token: '-p', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['linux', 'linux-lts']);
  });
}
