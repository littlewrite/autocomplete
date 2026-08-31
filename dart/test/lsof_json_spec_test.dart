import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/lsof.dart';
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

/// Returns the generators attached to the `-i` option's argument, in JSON
/// declaration order.
List<FigGenerator> iGenerators(FigSpec spec) {
  final option = spec.options!.firstWhere((o) => o.nameList.contains('-i'));
  return option.args!.first.generatorsList;
}

void main() {
  test('lsof JSON binds every generator to the four post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerLsofHandlers(handlers);
    final source = await File('assets/specs/l/lsof.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(lsofIpVersionsPostProcessHandler));
    expect(source, contains(lsofProtocolsPostProcessHandler));
    expect(source, contains(lsofHostsPostProcessHandler));
    expect(source, contains(lsofServicesPostProcessHandler));
    expect(document['name'], 'lsof');

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
      lsofIpVersionsPostProcessHandler,
      lsofProtocolsPostProcessHandler,
      lsofHostsPostProcessHandler,
      lsofServicesPostProcessHandler,
    });
  });

  test('IP version post-processor suggests 4 and 6', () {
    final registry = JsonHandlerRegistry();
    registerLsofHandlers(registry);

    final suggestions =
        registry.postProcess(lsofIpVersionsPostProcessHandler)!('ignored');
    expect(suggestions.map((s) => s.nameSingle ?? ''), ['4', '6']);
  });

  test('protocol post-processor prefixes tcp/udp from the -i4 token', () {
    final registry = JsonHandlerRegistry();
    registerLsofHandlers(registry);
    final handler = registry.postProcess(lsofProtocolsPostProcessHandler)!;

    final attached = handler('', ['lsof', '-i4', '']);
    expect(attached.map((s) => s.nameSingle ?? ''),
        ['-i4tcp', '-i4udp', '-i4TCP', '-i4UDP']);

    final separated = handler('', ['lsof', '-i', '4tcp']);
    expect(separated.map((s) => s.nameSingle ?? ''),
        ['4tcp', '4udp', '4TCP', '4UDP']);

    // No IP-version prefix typed yet: plain protocol names.
    final plain = handler('', ['lsof', '-i', 'udp']);
    expect(plain.map((s) => s.nameSingle ?? ''),
        ['tcp', 'udp', 'TCP', 'UDP']);

    // No tokens at all: default to plain protocol names.
    final noTokens = handler('');
    expect(noTokens.map((s) => s.nameSingle ?? ''),
        ['tcp', 'udp', 'TCP', 'UDP']);
  });

  test('host post-processor keeps only IPv4 ifconfig lines with an @ prefix',
      () {
    final registry = JsonHandlerRegistry();
    registerLsofHandlers(registry);
    final handler = registry.postProcess(lsofHostsPostProcessHandler)!;

    const ifconfig = 'lo0: flags=8049<UP,LOOPBACK,RUNNING,MULTICAST> mtu 16384\n'
        '\tinet 127.0.0.1 netmask 0xff000000\n'
        '\tinet6 ::1 prefixlen 128\n'
        'en0: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500\n'
        '\tinet 192.168.1.5 netmask 0xffffff00 broadcast 192.168.1.255\n'
        '\tinet6 fe80::1e3f:2a1b:9c4d:5e6f%en0 prefixlen 64';

    final hosts = handler(ifconfig, ['lsof', '-i', '4tcp@']);
    expect(hosts.map((s) => s.nameSingle ?? ''),
        ['4tcp@127.0.0.1', '4tcp@192.168.1.5']);

    // A token that already carries the `-i@` prefix (attached to the option).
    final attached = handler(ifconfig, ['lsof', '-i@']);
    expect(attached.map((s) => s.nameSingle ?? ''),
        ['-i@127.0.0.1', '-i@192.168.1.5']);

    // No token with an '@' yet: the '@' prefix alone is used.
    final bare = handler(ifconfig, ['lsof', '-i', '4tcp']);
    expect(bare.map((s) => s.nameSingle ?? ''),
        ['@127.0.0.1', '@192.168.1.5']);

    // Empty output yields no suggestions.
    expect(handler(''), isEmpty);

    // Output with no `inet ` lines (only inet6 / junk) yields no suggestions.
    expect(handler('inet6 ::1 prefixlen 128\nlo0: mtu 16384'), isEmpty);
  });

  test('service post-processor prefixes well-known ports from the : token', () {
    final registry = JsonHandlerRegistry();
    registerLsofHandlers(registry);
    final handler = registry.postProcess(lsofServicesPostProcessHandler)!;

    final afterHost = handler('', ['lsof', '-i', '4tcp@192.168.1.5:h']);
    expect(afterHost.map((s) => s.nameSingle ?? ''), [
      '4tcp@192.168.1.5:http',
      '4tcp@192.168.1.5:https',
      '4tcp@192.168.1.5:who',
      '4tcp@192.168.1.5:time',
    ]);

    // Colon attached to the option itself (`lsof -i:h`).
    final attached = handler('', ['lsof', '-i:h']);
    expect(attached.map((s) => s.nameSingle ?? ''),
        ['-i:http', '-i:https', '-i:who', '-i:time']);

    // No token with a colon: plain ':service' names.
    final noTokens = handler('');
    expect(noTokens.map((s) => s.nameSingle ?? ''),
        [':http', ':https', ':who', ':time']);

    // Trailing colon with no service character yet keeps the bare prefix.
    final trailingColon = handler('', ['lsof', '-i', '4tcp@192.168.1.5:']);
    expect(trailingColon.map((s) => s.nameSingle ?? ''),
        [':http', ':https', ':who', ':time']);
  });

  test('each lsof -i generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerLsofHandlers(registry);
    final adapter = _FakeAdapter({
      'echo': const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
      'ifconfig': const ProcessRunResult(
        stdout: 'lo0: flags=8049<UP,LOOPBACK,RUNNING,MULTICAST> mtu 16384\n'
            '\tinet 127.0.0.1 netmask 0xff000000\n'
            '\tinet6 ::1 prefixlen 128\n'
            'en0: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500\n'
            '\tinet 192.168.1.5 netmask 0xffffff00 broadcast 192.168.1.255\n'
            '\tinet6 fe80::1e3f:2a1b:9c4d:5e6f%en0 prefixlen 64',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/l/lsof.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = iGenerators(spec);
    expect(generators, hasLength(4));

    Future<List<String>> runGen(
        FigGenerator generator, List<String> tokenNames) async {
      final suggestions = await runGeneratorSuggestions(
        generator,
        tokenNames
            .map((token) => CommandToken(
                  token: token,
                  tokenLength: token.length,
                  complete: token.isNotEmpty,
                ))
            .toList(),
        '/work',
        adapter,
      );
      return suggestions.map((s) => s.name).toList();
    }

    expect(await runGen(generators[0], ['lsof', '-i', '']), ['4', '6']);

    expect(await runGen(generators[1], ['lsof', '-i4', '']),
        ['-i4tcp', '-i4udp', '-i4TCP', '-i4UDP']);

    expect(await runGen(generators[2], ['lsof', '-i', '4tcp@']),
        ['4tcp@127.0.0.1', '4tcp@192.168.1.5']);

    expect(await runGen(generators[3], ['lsof', '-i', '4tcp@192.168.1.5:h']), [
      '4tcp@192.168.1.5:http',
      '4tcp@192.168.1.5:https',
      '4tcp@192.168.1.5:who',
      '4tcp@192.168.1.5:time',
    ]);
  });
}
