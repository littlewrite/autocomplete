import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/stepzen.dart';
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

/// Finds the `start --endpoint` generator in the parsed spec.
FigGenerator? _endpointGenerator(FigSpec spec) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (subcommand.name != 'start') continue;
    for (final option in subcommand.options ?? const <FigOption>[]) {
      if (option.nameList.contains('--endpoint')) {
        final args = option.args ?? const <FigArg>[];
        if (args.isNotEmpty && args.first.generatorsList.isNotEmpty) {
          return args.first.generatorsList.first;
        }
      }
    }
  }
  return null;
}

/// Finds the `import` args generator in the parsed spec.
FigGenerator? _importGenerator(FigSpec spec) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (subcommand.name != 'import') continue;
    final args = subcommand.args ?? const <FigArg>[];
    if (args.isNotEmpty && args.first.generatorsList.isNotEmpty) {
      return args.first.generatorsList.first;
    }
  }
  return null;
}

void main() {
  test('StepZen JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerStepzenHandlers(handlers);
    final source = await File('assets/specs/s/StepZen.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(stepzenEndpointsPostProcessHandler));
    expect(source, contains(stepzenImportSchemasPostProcessHandler));
    expect(document['name'], 'StepZen');

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
      stepzenEndpointsPostProcessHandler,
      stepzenImportSchemasPostProcessHandler,
    });
  });

  test('endpoint postProcess parses `stepzen list schemas` JSON output', () {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final handler = registry.postProcess(stepzenEndpointsPostProcessHandler)!;
    final suggestions = handler('["/api/account", "/api/storefront"]');
    expect(suggestions.map((item) => item.nameSingle ?? ''),
        ['/api/account', '/api/storefront']);
    expect(suggestions.first.description, 'StepZen endpoint');
    expect(suggestions.first.icon, isNull);
  });

  test('endpoint postProcess is empty for malformed output', () {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final handler = registry.postProcess(stepzenEndpointsPostProcessHandler)!;
    expect(handler('not json'), isEmpty);
    expect(handler('{"object": true}'), isEmpty);
    expect(handler(''), isEmpty);
  });

  test('import postProcess keeps schema directories and drops dotfiles', () {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final handler =
        registry.postProcess(stepzenImportSchemasPostProcessHandler)!;
    final suggestions = handler(
        '[{"name": "ecommerce", "type": "dir"}, '
        '{"name": ".hidden", "type": "dir"}, '
        '{"name": "README.md", "type": "file"}]');
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['ecommerce']);
    expect(suggestions.single.description, 'Stepzen schema');
    expect(suggestions.single.icon, '📦');
  });

  test('import postProcess is empty for malformed output', () {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final handler =
        registry.postProcess(stepzenImportSchemasPostProcessHandler)!;
    expect(handler('not json'), isEmpty);
    expect(handler('"just a string"'), isEmpty);
  });

  test('`start --endpoint` generator runs `stepzen list schemas` end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final adapter = _FakeAdapter({
      'stepzen list schemas': const ProcessRunResult(
        stdout: '["/api/account", "/api/storefront"]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/StepZen.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _endpointGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no start --endpoint generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'stepzen', tokenLength: 7, complete: true),
        CommandToken(token: 'start', tokenLength: 5, complete: true),
        CommandToken(token: '--endpoint', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['/api/account', '/api/storefront']);
    expect(suggestions.first.description, 'StepZen endpoint');
  });

  test('`import` args generator runs the GitHub contents curl end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerStepzenHandlers(registry);
    final adapter = _FakeAdapter({
      'curl https://api.github.com/repos/steprz/stepzen-schemas/contents':
          const ProcessRunResult(
        stdout: '[{"name": "ecommerce", "type": "dir"}, '
            '{"name": ".hidden", "type": "dir"}, '
            '{"name": "README.md", "type": "file"}]',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/StepZen.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _importGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no import args generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'stepzen', tokenLength: 7, complete: true),
        CommandToken(token: 'import', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['ecommerce']);
    expect(suggestions.single.description, 'Stepzen schema');
    expect(suggestions.single.icon, '📦');
  });
}
