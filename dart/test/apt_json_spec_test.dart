import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/apt.dart';
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
  test('apt JSON uses reviewed declaration-based generators', () async {
    final handlers = JsonHandlerRegistry();
    registerAptHandlers(handlers);
    final source = await File('assets/specs/a/apt.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(aptPackagesCustomHandler));
    expect(source, contains(aptPackagesTriggerHandler));
    expect(source, contains(aptInstalledPackagesPostProcessHandler));
    expect(source, contains(aptUpgradablePackagesPostProcessHandler));
    expect(document['name'], 'apt');

    // Every generator path binds to one of the four declaration IDs.
    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'trigger', 'postProcess']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      aptPackagesCustomHandler,
      aptPackagesTriggerHandler,
      aptInstalledPackagesPostProcessHandler,
      aptUpgradablePackagesPostProcessHandler,
    });
  });

  test('packages custom handler searches and strips apt list output', () async {
    final registry = JsonHandlerRegistry();
    registerAptHandlers(registry);
    final handler = registry.custom(aptPackagesCustomHandler)!;

    final packages = await handler(['apt', 'install', 'ap'], (input) async {
      expect(input.command, 'apt');
      expect(input.args, ['list']);
      return const ExecuteCommandOutput(
        stdout: 'apt/stable 2.6.1 amd64\napache2/stable 2.4.57 amd64\n'
            'bash/stable 5.2 amd64\n',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(packages.map((item) => item.nameSingle), ['apt', 'apache2']);
    expect(packages.first.description, 'Package');
    expect(packages.first.icon, '📦');

    // An empty current token skips the apt query entirely.
    var called = false;
    final skipped = await handler(['apt', 'install', ''], (input) async {
      called = true;
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    }, null);
    expect(skipped, isEmpty);
    expect(called, isFalse);
  });

  test('packages trigger transitions only between empty and non-empty', () {
    final registry = JsonHandlerRegistry();
    registerAptHandlers(registry);
    final trigger = registry.trigger(aptPackagesTriggerHandler)!;
    expect(trigger('', 'bash'), isTrue);
    expect(trigger('ap', ''), isTrue);
    expect(trigger('ap', 'a'), isFalse);
    expect(trigger('apt', 'apt'), isFalse);
  });

  test('installed and upgradable post-processors extract package names', () {
    final registry = JsonHandlerRegistry();
    registerAptHandlers(registry);
    const output = 'adduser/stable,now 3.118 amd64 [installed]\n'
        'apt/stable,now 2.6.1 amd64 [installed]\n';

    final installed =
        registry.postProcess(aptInstalledPackagesPostProcessHandler)!(output);
    expect(installed.map((item) => item.nameSingle), ['adduser', 'apt']);
    expect(installed.first.description, 'Package');

    final upgradable =
        registry.postProcess(aptUpgradablePackagesPostProcessHandler)!(output);
    expect(upgradable.map((item) => item.nameSingle), ['adduser', 'apt']);
  });

  test('install generator runs apt list through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerAptHandlers(registry);
    final adapter = _FakeAdapter({
      'apt list': const ProcessRunResult(
        stdout: 'apt/stable 2.6.1 amd64\napache2/stable 2.4.57 amd64\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/a/apt.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final install = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('install'));
    final packagesGenerator = install.args!.single.generators!.first;

    final suggestions = await runGeneratorSuggestions(
      packagesGenerator,
      const [
        CommandToken(token: 'apt', tokenLength: 3, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: 'ap', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['apt', 'apache2']);
  });
}
