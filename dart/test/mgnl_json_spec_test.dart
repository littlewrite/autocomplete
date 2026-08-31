import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/mgnl.dart';
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
  test('mgnl JSON binds every generator path to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerMgnlHandlers(handlers);
    final source = await File('assets/specs/m/mgnl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(mgnlInstallLightModuleHandler));
    expect(source, contains(mgnlSearchLightModuleHandler));
    expect(document['name'], 'mgnl');

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
      mgnlInstallLightModuleHandler,
      mgnlSearchLightModuleHandler,
    });
  });

  test('light-module handler queries npms.io with the magnolia keyword',
      () async {
    final registry = JsonHandlerRegistry();
    registerMgnlHandlers(registry);
    final handler = registry.custom(mgnlInstallLightModuleHandler)!;

    final packages = await handler(['mgnl', 'install', 'light'], (input) async {
      expect(input.command, 'curl');
      expect(input.args, [
        '-s',
        '-H',
        'Accept: application/json',
        'https://api.npms.io/v2/search?size=20&q=light'
            '+keywords:magnolia-light-module',
      ]);
      return const ExecuteCommandOutput(
        stdout:
            '{"results":[{"package":{"name":"magnolia-light-module-1","description":"First"}},'
            '{"package":{"name":"magnolia-light-module-2","description":"Second"}}]}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(packages.map((item) => item.nameSingle),
        ['magnolia-light-module-1', 'magnolia-light-module-2']);
    expect(packages.map((item) => item.description), ['First', 'Second']);
  });

  test('light-module handler returns version suggestions for a trailing @',
      () async {
    final registry = JsonHandlerRegistry();
    registerMgnlHandlers(registry);
    final handler = registry.custom(mgnlSearchLightModuleHandler)!;

    final versions = await handler(
        ['mgnl', 'search', 'magnolia-light-module@'], (input) async {
      expect(input.args.last, 'https://registry.npmjs.org/magnolia-light-module');
      return const ExecuteCommandOutput(
        stdout:
            '{"dist-tags":{"latest":"2.0.0"},"versions":{"1.0.0":{},"2.0.0":{}}}',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(versions.map((item) => item.nameSingle), ['latest', '2.0.0', '1.0.0']);
    expect(versions.first.description, '2.0.0');
  });

  test('light-module handler degrades to empty on empty token, bad JSON, '
      'and command failure', () async {
    final registry = JsonHandlerRegistry();
    registerMgnlHandlers(registry);
    final handler = registry.custom(mgnlInstallLightModuleHandler)!;

    // Empty search term returns no suggestions before running any command.
    var called = false;
    expect(await handler(['mgnl', 'install', ''], (input) async {
      called = true;
      return const ExecuteCommandOutput(
        stdout: '',
        stderr: '',
        status: 0,
      );
    }, null), isEmpty);
    expect(called, isFalse);

    // A malformed JSON body parses to an empty list.
    expect(await handler(['mgnl', 'install', 'light'], (input) async {
      return const ExecuteCommandOutput(
        stdout: 'not json',
        stderr: '',
        status: 0,
      );
    }, null), isEmpty);

    // A non-zero exit yields no suggestions.
    expect(await handler(['mgnl', 'install', 'light'], (input) async {
      return const ExecuteCommandOutput(
        stdout: '',
        stderr: 'boom',
        status: 1,
      );
    }, null), isEmpty);

    // A missing executeCommand is a no-op.
    expect(await handler(['mgnl', 'install', 'light'], null, null), isEmpty);
  });

  test('install generator runs the light-module search through the adapter '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMgnlHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -s -H Accept: application/json '
              'https://api.npms.io/v2/search?size=20&q=light'
              '+keywords:magnolia-light-module':
          const ProcessRunResult(
        stdout:
            '{"results":[{"package":{"name":"magnolia-light-module-1","description":"First"}},'
            '{"package":{"name":"magnolia-light-module-2","description":"Second"}}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mgnl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final install = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('install'));
    final generator = install.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mgnl', tokenLength: 4, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'light', tokenLength: 5, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['magnolia-light-module-1', 'magnolia-light-module-2']);
  });

  test('search generator runs the light-module search through the adapter '
      'end to end', () async {
    final registry = JsonHandlerRegistry();
    registerMgnlHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -s -H Accept: application/json '
              'https://api.npms.io/v2/search?size=20&q=demo'
              '+keywords:magnolia-light-module':
          const ProcessRunResult(
        stdout:
            '{"results":[{"package":{"name":"magnolia-light-module-demo","description":"Demo"}}]}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/mgnl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final search = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('search'));
    final generator = search.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'mgnl', tokenLength: 4, complete: true),
        CommandToken(token: 'search', tokenLength: 6, complete: true),
        CommandToken(token: 'demo', tokenLength: 4, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.single.name, 'magnolia-light-module-demo');
  });
}
