import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/wifi_password.dart';
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
  test('wifi-password JSON binds its generator to the postProcess handler',
      () async {
    final handlers = JsonHandlerRegistry();
    registerWifiPasswordHandlers(handlers);
    final source =
        await File('assets/specs/w/wifi-password.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(wifiPasswordPostProcessHandler));
    expect(document['name'], 'wifi-password');
  });

  test('post-processor drops the header and trims each network name', () {
    final registry = JsonHandlerRegistry();
    registerWifiPasswordHandlers(registry);
    const output = 'Preferred networks on Wi-Fi:\n'
        '\n'
        'HomeWifi\n'
        'CoffeeShop\n';

    final networks =
        registry.postProcess(wifiPasswordPostProcessHandler)!(output);
    expect(networks.map((item) => item.nameSingle ?? ''),
        ['HomeWifi', 'CoffeeShop']);
  });

  test('post-processor returns empty for empty or blank output', () {
    final registry = JsonHandlerRegistry();
    registerWifiPasswordHandlers(registry);

    expect(registry.postProcess(wifiPasswordPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(wifiPasswordPostProcessHandler)!('\n\n'), isEmpty);
  });

  test('wifi-password generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerWifiPasswordHandlers(registry);
    final script = r"networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -listpreferredwirelessnetworks";
    final adapter = _FakeAdapter({
      'bash -c $script': const ProcessRunResult(
        stdout: 'Preferred networks on Wi-Fi:\n'
            '\n'
            'HomeWifi\n'
            'CoffeeShop\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source =
        await File('assets/specs/w/wifi-password.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'wifi-password', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['HomeWifi', 'CoffeeShop']);
  });
}
