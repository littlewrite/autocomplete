import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/systemctl.dart';
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
  test('systemctl JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSystemctlHandlers(handlers);
    final source = await File('assets/specs/s/systemctl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(systemctlUnitCustomHandler));
    expect(source, contains(systemctlUnitFileCustomHandler));
    expect(document['name'], 'systemctl');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) ids.add(custom['handler'] as String);
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
      systemctlUnitCustomHandler,
      systemctlUnitFileCustomHandler,
    });
  });

  test('unit custom handler maps JSON to sorted status-aware suggestions',
      () async {
    final registry = JsonHandlerRegistry();
    registerSystemctlHandlers(registry);
    final handler = registry.custom(systemctlUnitCustomHandler)!;

    final units = await handler(['systemctl', 'start', ''], (input) async {
      expect(input.command, 'systemctl');
      expect(input.args, ['list-units', '-o', 'json', '--all', '--full']);
      return const ExecuteCommandOutput(
        stdout:
            '[{"unit":"ssh.service","active":"active","description":"Secure shell"},'
            '{"unit":"docker.service","active":"inactive","description":"Engine"},'
            '{"unit":"cron.service","active":"failed","description":"Scheduler"}]',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(units.map((item) => item.nameSingle),
        ['cron.service', 'docker.service', 'ssh.service']);
    expect(units.map((item) => item.icon), ['❌', '🛑', '✅']);
    expect(units.map((item) => item.description),
        ['Failed - Scheduler', 'Inactive - Engine', 'Active - Secure shell']);
  });

  test('unit custom handler forwards a --user flag already on the line',
      () async {
    final registry = JsonHandlerRegistry();
    registerSystemctlHandlers(registry);
    final handler = registry.custom(systemctlUnitCustomHandler)!;

    await handler(['systemctl', '--user', 'status', ''], (input) async {
      expect(input.args,
          ['list-units', '-o', 'json', '--all', '--full', '--user']);
      return const ExecuteCommandOutput(
        stdout: '[]',
        stderr: '',
        status: 0,
      );
    }, null);
  });

  test('unit-file custom handler maps state to emoji and capitalized text',
      () async {
    final registry = JsonHandlerRegistry();
    registerSystemctlHandlers(registry);
    final handler = registry.custom(systemctlUnitFileCustomHandler)!;

    final files = await handler(['systemctl', 'enable', ''], (input) async {
      expect(input.command, 'systemctl');
      expect(input.args, ['list-unit-files', '-o', 'json', '--all', '--full']);
      return const ExecuteCommandOutput(
        stdout: '[{"unit_file":"ssh.service","state":"enabled"},'
            '{"unit_file":"docker.service","state":"disabled"},'
            '{"unit_file":"getty@.service","state":"static"}]',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(files.map((item) => item.nameSingle),
        ['docker.service', 'getty@.service', 'ssh.service']);
    expect(files.map((item) => item.icon), ['🛑', '❓', '✅']);
    expect(files.map((item) => item.description),
        ['Disabled', 'Static', 'Enabled']);
  });

  test('start generator runs list-units through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerSystemctlHandlers(registry);
    final adapter = _FakeAdapter({
      'systemctl list-units -o json --all --full': const ProcessRunResult(
        stdout:
            '[{"unit":"docker.service","active":"inactive","description":"Engine"},'
            '{"unit":"ssh.service","active":"active","description":"Secure shell"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/systemctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final start = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('start'));
    final unitGenerator = start.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      unitGenerator,
      const [
        CommandToken(token: 'systemctl', tokenLength: 9, complete: true),
        CommandToken(token: 'start', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['docker.service', 'ssh.service']);
  });
}
