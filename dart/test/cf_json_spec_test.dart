import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/cf.dart';
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

FigGenerator _generatorWithScript(FigSpec spec, String scriptJoined) {
  return spec.subcommands!
      .expand((subcommand) => subcommand.args ?? const <FigArg>[])
      .expand((arg) => arg.generatorsList)
      .firstWhere((candidate) {
        final script = candidate.script;
        return script is List && script.join(' ') == scriptJoined;
      });
}

void main() {
  test('cf JSON binds every generator to the four declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerCfHandlers(handlers);
    final source = await File('assets/specs/c/cf.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(cfAppNamesPostProcessHandler));
    expect(source, contains(cfOrgsPostProcessHandler));
    expect(source, contains(cfSpacesPostProcessHandler));
    expect(source, contains(cfServicesPostProcessHandler));
    expect(document['name'], 'cf');

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
      cfAppNamesPostProcessHandler,
      cfOrgsPostProcessHandler,
      cfSpacesPostProcessHandler,
      cfServicesPostProcessHandler,
    });
  });

  test('app names post-processor skips the four header rows', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final output = 'Getting apps in org test-org / space test-space as '
        'user@example.com...\n'
        'OK\n'
        '\n'
        'name\n'
        'my-app\n'
        'web\n';

    final names =
        registry.postProcess(cfAppNamesPostProcessHandler)!(output);
    expect(names.map((item) => item.nameSingle ?? ''), ['my-app', 'web']);
    expect(names.map((item) => item.description), ['App name', 'App name']);
  });

  test('orgs post-processor skips the three header rows', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final output = 'Getting orgs as user@example.com...\n'
        '\n'
        'name\n'
        'test-org\n';

    final orgs = registry.postProcess(cfOrgsPostProcessHandler)!(output);
    expect(orgs.map((item) => item.nameSingle ?? ''), ['test-org']);
    expect(orgs.single.description, 'Org');
  });

  test('spaces post-processor skips the three header rows', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final output = 'Getting spaces in org test-org as user@example.com...\n'
        '\n'
        'name\n'
        'test-space\n';

    final spaces = registry.postProcess(cfSpacesPostProcessHandler)!(output);
    expect(spaces.map((item) => item.nameSingle ?? ''), ['test-space']);
    expect(spaces.single.description, 'Space');
  });

  test('services post-processor skips the four header rows', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final output = 'Getting services in org test-org / space test-space as '
        'user@example.com...\n'
        'OK\n'
        '\n'
        'name\n'
        'my-service\n';

    final services =
        registry.postProcess(cfServicesPostProcessHandler)!(output);
    expect(services.map((item) => item.nameSingle ?? ''), ['my-service']);
    expect(services.single.description, 'Service');
  });

  test('empty output produces no suggestions for every handler', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    for (final id in [
      cfAppNamesPostProcessHandler,
      cfOrgsPostProcessHandler,
      cfSpacesPostProcessHandler,
      cfServicesPostProcessHandler,
    ]) {
      expect(registry.postProcess(id)!(''), isEmpty);
    }
  });

  test('output shorter than the header rows produces no suggestions', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    expect(registry.postProcess(cfAppNamesPostProcessHandler)!('a\nb'), isEmpty);
    expect(registry.postProcess(cfOrgsPostProcessHandler)!('a'), isEmpty);
    expect(registry.postProcess(cfSpacesPostProcessHandler)!('a\nb'), isEmpty);
    expect(registry.postProcess(cfServicesPostProcessHandler)!('a'), isEmpty);
  });

  test('internal blank lines are preserved like the TypeScript slice', () {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final output = 'h1\nh2\nh3\nh4\n\nweb\n';

    final names =
        registry.postProcess(cfAppNamesPostProcessHandler)!(output);
    expect(names.map((item) => item.nameSingle ?? ''), ['', 'web']);
  });

  test('app generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c cf apps | cut -d " " -f1': const ProcessRunResult(
        stdout: 'Getting apps in org test-org / space test-space as '
            'user@example.com...\n'
            'OK\n'
            '\n'
            'name\n'
            'my-app\n'
            'web\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cf.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _generatorWithScript(
        spec, 'bash -c cf apps | cut -d " " -f1');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cf', tokenLength: 2, complete: true),
        CommandToken(token: 'app', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-app', 'web']);
    expect(suggestions.first.description, 'App name');
  });

  test('orgs generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final adapter = _FakeAdapter({
      'cf orgs': const ProcessRunResult(
        stdout: 'Getting orgs as user@example.com...\n'
            '\n'
            'name\n'
            'test-org\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cf.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _generatorWithScript(spec, 'cf orgs');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cf', tokenLength: 2, complete: true),
        CommandToken(token: 'org', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['test-org']);
    expect(suggestions.single.description, 'Org');
  });

  test('spaces generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final adapter = _FakeAdapter({
      'cf spaces': const ProcessRunResult(
        stdout: 'Getting spaces in org test-org as user@example.com...\n'
            '\n'
            'name\n'
            'test-space\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cf.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _generatorWithScript(spec, 'cf spaces');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cf', tokenLength: 2, complete: true),
        CommandToken(token: 'space', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['test-space']);
    expect(suggestions.single.description, 'Space');
  });

  test('services generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCfHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c cf services | cut -d " " -f1 ': const ProcessRunResult(
        stdout: 'Getting services in org test-org / space test-space as '
            'user@example.com...\n'
            'OK\n'
            '\n'
            'name\n'
            'my-service\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cf.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _generatorWithScript(
        spec, 'bash -c cf services | cut -d " " -f1 ');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cf', tokenLength: 2, complete: true),
        CommandToken(token: 'delete-service', tokenLength: 15, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-service']);
    expect(suggestions.single.description, 'Service');
  });
}
