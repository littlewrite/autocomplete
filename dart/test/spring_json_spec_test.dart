import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/spring.dart';
import 'package:test/test.dart';

const _curlKey =
    'curl -sfL -H Accept: application/json https://start.spring.io/metadata/client';

/// A minimal Initializr metadata payload exercising every section the spring
/// generators read.
const _metadataJson = '''
{
  "bootVersion": {
    "type": "single-select",
    "default": "3.2.5",
    "values": [
      {"id": "3.2.5", "name": "3.2.5"},
      {"id": "3.1.12", "name": "3.1.12 (SNAPSHOT)"}
    ]
  },
  "dependencies": {
    "type": "checkbox",
    "values": [
      {
        "name": "Web",
        "values": [
          {"id": "web", "name": "Spring Web", "description": "Build web, including RESTful, applications using Spring MVC."},
          {"id": "webflux", "name": "Spring Reactive Web", "description": "Build reactive web applications with Spring WebFlux."}
        ]
      },
      {
        "name": "Security",
        "values": [
          {"id": "security", "name": "Spring Security", "description": "Highly customizable authentication and access-control framework for Spring applications."}
        ]
      },
      {
        "name": "SQL",
        "values": [
          {"id": "data-jpa", "name": "Spring Data JPA", "description": "Persist data in SQL stores with Java Persistence API using Spring Data and Hibernate."}
        ]
      }
    ]
  },
  "javaVersion": {
    "type": "single-select",
    "default": "17",
    "values": [
      {"id": "21", "name": "21"},
      {"id": "17", "name": "17"},
      {"id": "11", "name": "11"}
    ]
  }
}
''';

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

/// Builds an [ExecuteCommandFunction] from an adapter, mirroring the runtime's
/// `_createExecuteCommand`.
ExecuteCommandFunction _executor(CompleteAdapter adapter) {
  return (input) async {
    final result = await adapter.runProcess(input.command, input.args);
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

_FakeAdapter _metadataAdapter() {
  return _FakeAdapter({
    _curlKey:
        const ProcessRunResult(stdout: _metadataJson, stderr: '', exitCode: 0),
  });
}

/// Finds the `init` subcommand's `--dependencies` generator in the parsed spec.
FigGenerator? _dependenciesGenerator(FigSpec spec) {
  for (final sub in spec.subcommands ?? const <FigSubcommand>[]) {
    if (sub.nameList.contains('init')) {
      for (final option in sub.options ?? const <FigOption>[]) {
        if (option.nameList.contains('-d')) {
          for (final arg in option.args ?? const <FigArg>[]) {
            if (arg.generatorsList.isNotEmpty) return arg.generatorsList.first;
          }
        }
      }
    }
  }
  return null;
}

void main() {
  setUp(resetSpringHandlersCache);

  test('spring JSON binds every generator to the five declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerSpringHandlers(handlers);
    final source =
        await File('assets/specs/s/spring/spring.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(springDependencyGeneratorCustomHandler));
    expect(source, contains(springVersionGeneratorCustomHandler));
    expect(source, contains(springDependencyGeneratorGetQueryTermHandler));
    expect(document['name'], 'spring');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final handler = node['handler'];
      if (handler is String) ids.add(handler);
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids.toSet(), {
      springDependencyGeneratorGetQueryTermHandler,
      springDependencyGeneratorTriggerHandler,
      springDependencyGeneratorCustomHandler,
      springJavaVersionGeneratorCustomHandler,
      springVersionGeneratorCustomHandler,
    });
  });

  test('dependency trigger re-runs when the last comma moves', () {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);
    final trigger = registry.trigger(springDependencyGeneratorTriggerHandler)!;
    expect(trigger('a,b', 'a'), isTrue);
    expect(trigger('ab,', 'ab'), isTrue);
    expect(trigger('a,b', 'a,b'), isFalse);
    expect(trigger('ab', 'ab'), isFalse);
  });

  test('dependency getQueryTerm returns the text after the last comma',
      () async {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);

    final term = await registry
        .custom(springDependencyGeneratorGetQueryTermHandler)!(
            ['spring', 'init', '-d', 'web,data'], null, null);
    expect(term.single.nameSingle, 'data');

    final single = await registry
        .custom(springDependencyGeneratorGetQueryTermHandler)!(
            ['spring', 'init', '-d', 'web'], null, null);
    expect(single.single.nameSingle, 'web');
  });

  test('dependency custom handler parses Initializr metadata', () async {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);
    final adapter = _metadataAdapter();

    // Empty value suggests every dependency, sorted by display name.
    final all = await registry.custom(springDependencyGeneratorCustomHandler)!(
        ['spring', 'init', '-d', ''], _executor(adapter), null);
    expect(all.map((item) => item.nameSingle ?? '').toList(),
        ['data-jpa', 'webflux', 'security', 'web']);
    final web = all.firstWhere((item) => item.nameSingle == 'web');
    expect(web.displayName, 'Spring Web');
    expect(web.description,
        'Build web, including RESTful, applications using Spring MVC.');

    // Already-typed ids are filtered out of the same cached metadata.
    final filtered = await registry.custom(springDependencyGeneratorCustomHandler)!(
        ['spring', 'init', '-d', 'web'], _executor(adapter), null);
    expect(filtered.map((item) => item.nameSingle ?? '').toList(),
        ['data-jpa', 'webflux', 'security']);
  });

  test('dependency custom handler is empty when metadata fetch fails',
      () async {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);
    final adapter = _FakeAdapter({
      _curlKey:
          const ProcessRunResult(stdout: '', stderr: 'error', exitCode: 1),
    });

    final all = await registry.custom(springDependencyGeneratorCustomHandler)!(
        ['spring', 'init', '-d', ''], _executor(adapter), null);
    expect(all, isEmpty);
  });

  test('version and java version handlers list boot / java versions',
      () async {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);
    final adapter = _metadataAdapter();

    final versions = await registry.custom(springVersionGeneratorCustomHandler)!(
        ['spring', 'init', '-b', ''], _executor(adapter), null);
    expect(versions.map((item) => item.nameSingle ?? '').toList(),
        ['3.2.5', '3.1.12']);
    expect(versions.last.displayName, '3.1.12 (SNAPSHOT)');

    final java = await registry.custom(springJavaVersionGeneratorCustomHandler)!(
        ['spring', 'init', '-j', ''], _executor(adapter), null);
    expect(java.map((item) => item.nameSingle ?? '').toList(),
        ['21', '17', '11']);
  });

  test('spring init dependencies generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerSpringHandlers(registry);
    final adapter = _metadataAdapter();

    final source =
        await File('assets/specs/s/spring/spring.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _dependenciesGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no --dependencies generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'spring', tokenLength: 6, complete: true),
        CommandToken(token: 'init', tokenLength: 4, complete: true),
        CommandToken(token: '-d', tokenLength: 2, complete: true),
        CommandToken(token: 'web', tokenLength: 3, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['data-jpa', 'webflux', 'security']);
    expect(suggestions.first.description,
        'Persist data in SQL stores with Java Persistence API using Spring Data and Hibernate.');
  });
}
