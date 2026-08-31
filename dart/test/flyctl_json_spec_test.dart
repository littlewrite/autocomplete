import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/flyctl.dart';
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

List<FigGenerator> _collectGenerators(FigSubcommand subcommand) {
  final result = <FigGenerator>[];
  for (final arg in subcommand.args ?? const <FigArg>[]) {
    result.addAll(arg.generatorsList);
  }
  for (final option in subcommand.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      result.addAll(arg.generatorsList);
    }
  }
  for (final nested in subcommand.subcommands ?? const <FigSubcommand>[]) {
    result.addAll(_collectGenerators(nested));
  }
  return result;
}

void main() {
  test('flyctl JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFlyctlHandlers(handlers);
    final source = await File('assets/specs/f/flyctl.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(flyctlFlyAppsPostProcessHandler));
    expect(source, contains(flyctlFlyOrgsPostProcessHandler));
    expect(document['name'], 'flyctl');

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
      flyctlFlyAppsPostProcessHandler,
      flyctlFlyOrgsPostProcessHandler,
    });
  });

  test('apps post-processor maps status to a green/yellow/red icon', () {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    const output = '['
        '{"ID":"my-app","Status":"running","Organization":{"Slug":"personal"}},'
        '{"ID":"other-app","Status":"pending","Organization":{"Slug":"acme"}},'
        '{"ID":"down-app","Status":"suspended","Organization":{"Slug":"acme"}}'
        ']';

    final apps = registry.postProcess(flyctlFlyAppsPostProcessHandler)!(output);
    expect(apps.map((item) => item.nameSingle),
        ['my-app', 'other-app', 'down-app']);
    expect(apps.map((item) => item.icon), ['🟢', '🟡', '🔴']);
    expect(apps.map((item) => item.description),
        ['Organization: personal', 'Organization: acme', 'Organization: acme']);
  });

  test('apps post-processor tolerates empty, invalid, and non-list output', () {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    final handler = registry.postProcess(flyctlFlyAppsPostProcessHandler)!;

    expect(handler(''), isEmpty);
    expect(handler('not json'), isEmpty);
    expect(handler('{}'), isEmpty);
    expect(handler('[]'), isEmpty);
  });

  test('apps post-processor tolerates missing Organization and ID fields', () {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    const output = '[{"ID":"lonely-app"},{"Status":"deployed"}]';

    final apps = registry.postProcess(flyctlFlyAppsPostProcessHandler)!(output);
    expect(apps.length, 2);
    expect(apps.first.nameSingle, 'lonely-app');
    expect(apps.first.description, 'Organization: ');
    expect(apps.first.icon, '🔴');
    expect(apps.last.nameSingle, '');
    expect(apps.last.icon, '🟢');
  });

  test('orgs post-processor sorts personal first then alphabetically', () {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    const output = '{"acme":"Acme Corp","personal":"Personal",'
        '"zeta":"Zeta Org"}';

    final orgs = registry.postProcess(flyctlFlyOrgsPostProcessHandler)!(output);
    expect(orgs.map((item) => item.nameSingle), ['personal', 'acme', 'zeta']);
    expect(orgs.map((item) => item.icon), ['👤', '🏢', '🏢']);
    expect(orgs.map((item) => item.description),
        ['Personal', 'Acme Corp', 'Zeta Org']);
  });

  test('orgs post-processor tolerates empty, invalid, and non-map output', () {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    final handler = registry.postProcess(flyctlFlyOrgsPostProcessHandler)!;

    expect(handler(''), isEmpty);
    expect(handler('not json'), isEmpty);
    expect(handler('[]'), isEmpty);
    expect(handler('{}'), isEmpty);
  });

  test('apps list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    final adapter = _FakeAdapter({
      'flyctl apps list --json': const ProcessRunResult(
        stdout: '[{"ID":"my-app","Status":"running",'
            '"Organization":{"Slug":"personal"}},'
            '{"ID":"other-app","Status":"pending",'
            '"Organization":{"Slug":"acme"}}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/flyctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final appsGenerator = spec.subcommands!
        .expand(_collectGenerators)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'flyctl apps list --json';
        });

    final suggestions = await runGeneratorSuggestions(
      appsGenerator,
      const [
        CommandToken(token: 'flyctl', tokenLength: 6, complete: true),
        CommandToken(token: 'apps', tokenLength: 4, complete: true),
        CommandToken(token: 'restart', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-app', 'other-app']);
    expect(suggestions.first.icon, '🟢');
    expect(suggestions.first.description, 'Organization: personal');
  });

  test('orgs list generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFlyctlHandlers(registry);
    final adapter = _FakeAdapter({
      'fly orgs list --json': const ProcessRunResult(
        stdout: '{"acme":"Acme Corp","personal":"Personal"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/flyctl.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final orgsGenerator = spec.subcommands!
        .expand(_collectGenerators)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'fly orgs list --json';
        });

    final suggestions = await runGeneratorSuggestions(
      orgsGenerator,
      const [
        CommandToken(token: 'flyctl', tokenLength: 6, complete: true),
        CommandToken(token: 'apps', tokenLength: 4, complete: true),
        CommandToken(token: 'create', tokenLength: 6, complete: true),
        CommandToken(token: '--org', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['personal', 'acme']);
    expect(suggestions.first.icon, '👤');
    expect(suggestions.first.description, 'Personal');
  });
}
