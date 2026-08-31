import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/networksetup.dart';
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
  const hardwareportsOutput =
      'Hardware Port: Wi-Fi\n'
      'Device: en0\n'
      'Ethernet Address: xx:xx\n'
      '\n'
      'Hardware Port: Bluetooth PAN\n'
      'Device: en1\n'
      'Ethernet Address: yy:yy';

  const networkservicesOutput =
      'An asterisk (*) denotes that a network service is disabled.\n'
      'Wi-Fi\n'
      '* Bluetooth PAN\n'
      'Ethernet';

  test('networksetup JSON binds every generator to the seven declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNetworksetupHandlers(handlers);
    final source = await File('assets/specs/n/networksetup.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(networksetupHardwarePortsPostProcessHandler));
    expect(source, contains(networksetupNetworkServicesPostProcessHandler));
    expect(source, contains(networksetupWirelessInterfacesPostProcessHandler));
    expect(source, contains(networksetupInterfacesPostProcessHandler));
    expect(source, contains(networksetupBondsPostProcessHandler));
    expect(source, contains(networksetupPppoeServicesPostProcessHandler));
    expect(source, contains(networksetupLocationsPostProcessHandler));
    expect(document['name'], 'networksetup');

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
      networksetupHardwarePortsPostProcessHandler,
      networksetupNetworkServicesPostProcessHandler,
      networksetupWirelessInterfacesPostProcessHandler,
      networksetupInterfacesPostProcessHandler,
      networksetupBondsPostProcessHandler,
      networksetupPppoeServicesPostProcessHandler,
      networksetupLocationsPostProcessHandler,
    });
  });

  test('hardware ports post-processor parses each port block', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final ports =
        registry.postProcess(networksetupHardwarePortsPostProcessHandler)!(
            hardwareportsOutput);
    expect(ports.map((item) => item.nameSingle ?? ''), ['Wi-Fi', 'Bluetooth PAN']);
    expect(ports.map((item) => item.description), ['Interface: en0', 'Interface: en1']);
  });

  test('hardware ports post-processor returns empty for malformed output', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    expect(
        registry.postProcess(networksetupHardwarePortsPostProcessHandler)!(''),
        isEmpty);
    expect(
        registry.postProcess(networksetupHardwarePortsPostProcessHandler)!(
            'Hardware Port: OnlyName'),
        isEmpty);
  });

  test('network services post-processor skips the note and marks disabled', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final services =
        registry.postProcess(networksetupNetworkServicesPostProcessHandler)!(
            networkservicesOutput);
    expect(services.map((item) => item.nameSingle ?? ''),
        ['Wi-Fi', 'Bluetooth PAN', 'Ethernet']);
    expect(services.map((item) => item.description), [
      'Network service',
      'Disabled network service',
      'Network service',
    ]);
  });

  test('network services post-processor drops blank lines', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final services =
        registry.postProcess(networksetupNetworkServicesPostProcessHandler)!(
            '  Wi-Fi  \n\n   \n');
    expect(services.map((item) => item.nameSingle ?? ''), ['Wi-Fi']);
    expect(services.single.description, 'Network service');
  });

  test('wireless interfaces post-processor keeps only the Wi-Fi device', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final wireless =
        registry.postProcess(networksetupWirelessInterfacesPostProcessHandler)!(
            hardwareportsOutput);
    expect(wireless.map((item) => item.nameSingle ?? ''), ['en0']);
    expect(wireless.single.description, 'Hardwareport: Wi-Fi');
  });

  test('wireless interfaces post-processor returns empty without Wi-Fi', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final wireless =
        registry.postProcess(networksetupWirelessInterfacesPostProcessHandler)!(
            'Hardware Port: Ethernet\nDevice: en1\nEthernet Address: aa');
    expect(wireless, isEmpty);
  });

  test('interfaces post-processor suggests the device per hardware port', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final interfaces =
        registry.postProcess(networksetupInterfacesPostProcessHandler)!(
            hardwareportsOutput);
    expect(interfaces.map((item) => item.nameSingle ?? ''), ['en0', 'en1']);
    expect(interfaces.map((item) => item.description),
        ['Hardwareport: Wi-Fi', 'Hardwareport: Bluetooth PAN']);
  });

  test('interfaces post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    expect(
        registry.postProcess(networksetupInterfacesPostProcessHandler)!(''),
        isEmpty);
  });

  test('bonds post-processor suggests the user-defined bond name', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final bonds =
        registry.postProcess(networksetupBondsPostProcessHandler)!(
            'Bond Interface: bond0\n'
            'interface name: bond0\n'
            'user-defined-name: My Bond\n'
            'Status: active\n'
            '\n'
            'Bond Interface: bond1\n'
            'interface name: bond1\n'
            'user-defined-name: Backup Bond\n'
            'Status: active');
    expect(bonds.map((item) => item.nameSingle ?? ''),
        ['My Bond', 'Backup Bond']);
    expect(bonds.map((item) => item.description), ['Bonds', 'Bonds']);
  });

  test('bonds post-processor returns empty on malformed output', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    expect(
        registry.postProcess(networksetupBondsPostProcessHandler)!(
            'interface name: bond0\n'),
        isEmpty);
  });

  test('PPPoE services post-processor trims lines and drops blanks', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final pppoe = registry.postProcess(networksetupPppoeServicesPostProcessHandler)!(
        '  PPPoE One  \n\n   \nPPPoE Two');
    expect(pppoe.map((item) => item.nameSingle ?? ''), ['PPPoE One', 'PPPoE Two']);
    expect(pppoe.map((item) => item.description), ['PPPoE Service', 'PPPoE Service']);
  });

  test('PPPoE services post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    expect(
        registry.postProcess(networksetupPppoeServicesPostProcessHandler)!(
            '\n  \n'),
        isEmpty);
  });

  test('locations post-processor trims lines and drops blanks', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    final locations =
        registry.postProcess(networksetupLocationsPostProcessHandler)!(
            '  Home  \n\nOffice\nWork');
    expect(locations.map((item) => item.nameSingle ?? ''),
        ['Home', 'Office', 'Work']);
    expect(locations.map((item) => item.description),
        ['Network Location', 'Network Location', 'Network Location']);
  });

  test('locations post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);

    expect(
        registry.postProcess(networksetupLocationsPostProcessHandler)!('   '),
        isEmpty);
  });

  test('each networksetup generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerNetworksetupHandlers(registry);
    final adapter = _FakeAdapter({
      'networksetup -listallhardwareports': const ProcessRunResult(
        stdout: hardwareportsOutput,
        stderr: '',
        exitCode: 0,
      ),
      'networksetup -listallnetworkservices': const ProcessRunResult(
        stdout: networkservicesOutput,
        stderr: '',
        exitCode: 0,
      ),
      'networksetup -listBonds': const ProcessRunResult(
        stdout: 'Bond Interface: bond0\n'
            'interface name: bond0\n'
            'user-defined-name: My Bond\n'
            'Status: active',
        stderr: '',
        exitCode: 0,
      ),
      'networksetup -listpppoeservices': const ProcessRunResult(
        stdout: 'PPPoE One\n\n  PPPoE Two  ',
        stderr: '',
        exitCode: 0,
      ),
      'networksetup -listlocations': const ProcessRunResult(
        stdout: 'Home\n\n  Office  \nWork',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/networksetup.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String subcommandName, List<String> names) async {
      final subcommand = spec.subcommands!.firstWhere((candidate) {
        final name = candidate.name;
        return name is String && name == subcommandName;
      });
      final generator = subcommand.args!
          .expand((arg) => arg.generatorsList)
          .firstWhere((candidate) => candidate.script is List);
      final suggestions = await runGeneratorSuggestions(
        generator,
        [
          const CommandToken(
              token: 'networksetup', tokenLength: 12, complete: true),
          CommandToken(
              token: subcommandName,
              tokenLength: subcommandName.length,
              complete: true),
          const CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator for $subcommandName');
    }

    await runGenerator('-getmacaddress', ['Wi-Fi', 'Bluetooth PAN']);
    await runGenerator('-getinfo', ['Wi-Fi', 'Bluetooth PAN', 'Ethernet']);
    await runGenerator('-getairportnetwork', ['en0']);
    await runGenerator('-isBondSupported', ['en0', 'en1']);
    await runGenerator('-deleteBond', ['My Bond']);
    await runGenerator('-showpppoestatus', ['PPPoE One', 'PPPoE Two']);
    await runGenerator('-deletelocation', ['Home', 'Office', 'Work']);
  });
}
