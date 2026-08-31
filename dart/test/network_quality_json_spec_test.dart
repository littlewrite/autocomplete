import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/network_quality.dart';
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
  test('networkQuality JSON binds its generator to the post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNetworkQualityHandlers(handlers);
    final source =
        await File('assets/specs/n/networkQuality.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(networkQualityInterfacesPostProcessHandler));
    expect(document['name'], 'networkQuality');

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
    expect(ids.toSet(), {networkQualityInterfacesPostProcessHandler});
  });

  test('post-processor extracts device names from hardware port blocks', () {
    final registry = JsonHandlerRegistry();
    registerNetworkQualityHandlers(registry);
    final output = 'Hardware Port: Wi-Fi\n'
        'Device: en0\n'
        'Ethernet Address: 00:00:00:00:00:00\n'
        '\n'
        'Hardware Port: Bluetooth PAN\n'
        'Device: en1\n'
        'Ethernet Address: 00:00:00:00:00:00\n'
        '\n'
        'VLAN Configurations\n'
        '===================\n';

    final interfaces =
        registry.postProcess(networkQualityInterfacesPostProcessHandler)!
            (output);
    expect(interfaces.map((item) => item.nameSingle), ['en0', 'en1']);
    expect(interfaces.first.description, 'Wi-Fi');
    expect(interfaces.last.description, 'Bluetooth PAN');
  });

  test('post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerNetworkQualityHandlers(registry);

    expect(
        registry.postProcess(networkQualityInterfacesPostProcessHandler)!(''),
        isEmpty);
  });

  test('post-processor returns an empty list when no hardware ports match', () {
    final registry = JsonHandlerRegistry();
    registerNetworkQualityHandlers(registry);

    final output = 'VLAN Configurations\n'
        '===================\n';
    expect(
        registry.postProcess(networkQualityInterfacesPostProcessHandler)!
            (output),
        isEmpty);
  });

  test('networkQuality -I generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerNetworkQualityHandlers(registry);
    final adapter = _FakeAdapter({
      'networksetup -listallhardwareports': const ProcessRunResult(
        stdout: 'Hardware Port: Wi-Fi\n'
            'Device: en0\n'
            'Ethernet Address: 00:00:00:00:00:00\n'
            '\n'
            'Hardware Port: Bluetooth PAN\n'
            'Device: en1\n'
            'Ethernet Address: 00:00:00:00:00:00\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/n/networkQuality.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator =
        generatorByScript(spec, 'networksetup -listallhardwareports');
    expect(generator, isNotNull,
        reason: 'no generator for the -I script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'networkQuality', tokenLength: 14, complete: true),
        CommandToken(token: '-I', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['en0', 'en1']);
  });
}
