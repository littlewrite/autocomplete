import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/doppler.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the whole subcommand tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  return visit(spec.subcommands ?? const []);
}

void main() {
  test('doppler JSON binds every generator to the four post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDopplerHandlers(handlers);
    final source = await File('assets/specs/d/doppler.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(dopplerConfigsPostProcessHandler));
    expect(source, contains(dopplerEnvironmentsPostProcessHandler));
    expect(source, contains(dopplerProjectsPostProcessHandler));
    expect(source, contains(dopplerSecretsPostProcessHandler));
    expect(document['name'], 'doppler');

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
      dopplerConfigsPostProcessHandler,
      dopplerEnvironmentsPostProcessHandler,
      dopplerProjectsPostProcessHandler,
      dopplerSecretsPostProcessHandler,
    });
  });

  test('environments post-processor maps id and name with priority 100', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    const output = '[{"id":"dev","name":"Development"},'
        '{"id":"prod","name":"Production"}]';

    final environments =
        registry.postProcess(dopplerEnvironmentsPostProcessHandler)!(output);
    expect(environments.map((item) => item.nameSingle), ['dev', 'prod']);
    expect(environments.map((item) => item.description),
        ['Development', 'Production']);
    expect(environments.map((item) => item.priority), [100, 100]);
  });

  test('environments post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);

    final broken =
        registry.postProcess(dopplerEnvironmentsPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(dopplerEnvironmentsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('configs post-processor maps name and environment with priority 100',
      () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    const output = '[{"name":"dev","environment":"development"},'
        '{"name":"prod","environment":"production"}]';

    final configs =
        registry.postProcess(dopplerConfigsPostProcessHandler)!(output);
    expect(configs.map((item) => item.nameSingle), ['dev', 'prod']);
    expect(configs.map((item) => item.description),
        ['development', 'production']);
    expect(configs.map((item) => item.priority), [100, 100]);
  });

  test('configs post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);

    final broken =
        registry.postProcess(dopplerConfigsPostProcessHandler)!('not json');
    expect(broken, isEmpty);

    final objectNotArray =
        registry.postProcess(dopplerConfigsPostProcessHandler)!('{}');
    expect(objectNotArray, isEmpty);
  });

  test('projects post-processor maps id and name with priority 100', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    const output = '[{"id":"abc123","name":"Backend"},'
        '{"id":"def456","name":"Frontend"}]';

    final projects =
        registry.postProcess(dopplerProjectsPostProcessHandler)!(output);
    expect(projects.map((item) => item.nameSingle), ['abc123', 'def456']);
    expect(projects.map((item) => item.description), ['Backend', 'Frontend']);
    expect(projects.map((item) => item.priority), [100, 100]);
  });

  test('projects post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);

    final broken =
        registry.postProcess(dopplerProjectsPostProcessHandler)!('[]bad');
    expect(broken, isEmpty);
  });

  test('secrets post-processor maps the object keys with priority 100', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    const output = '{"API_KEY":"sk-live-123","DATABASE_URL":"postgres://db"}';

    final secrets =
        registry.postProcess(dopplerSecretsPostProcessHandler)!(output);
    expect(secrets.map((item) => item.nameSingle), ['API_KEY', 'DATABASE_URL']);
    expect(secrets.map((item) => item.priority), [100, 100]);
  });

  test('secrets post-processor handles an empty object and parse errors', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);

    final emptyObject =
        registry.postProcess(dopplerSecretsPostProcessHandler)!('{}');
    expect(emptyObject, isEmpty);

    final broken =
        registry.postProcess(dopplerSecretsPostProcessHandler)!('not json');
    expect(broken, isEmpty);
  });

  test('array post-processors preserve a null id for a missing field', () {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    const output = '[{"name":"Unattached"}]';

    final environments =
        registry.postProcess(dopplerEnvironmentsPostProcessHandler)!(output);
    expect(environments.single.nameSingle, isNull);
    expect(environments.single.description, 'Unattached');
    expect(environments.single.priority, 100);
  });

  test('each doppler generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerDopplerHandlers(registry);
    final adapter = _FakeAdapter({
      'doppler configs --json': const ProcessRunResult(
        stdout: '[{"name":"dev","environment":"development"},'
            '{"name":"prod","environment":"production"}]',
        stderr: '',
        exitCode: 0,
      ),
      'doppler environments --json': const ProcessRunResult(
        stdout: '[{"id":"prod","name":"Production"}]',
        stderr: '',
        exitCode: 0,
      ),
      'doppler projects --json': const ProcessRunResult(
        stdout: '[{"id":"abc123","name":"Backend"}]',
        stderr: '',
        exitCode: 0,
      ),
      'doppler secrets --only-names --json': const ProcessRunResult(
        stdout: '{"API_KEY":"sk-live-123","DATABASE_URL":"postgres://db"}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/d/doppler.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'doppler', tokenLength: 7, complete: true),
          CommandToken(token: 'configs', tokenLength: 7, complete: true),
          CommandToken(token: 'delete', tokenLength: 6, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('doppler configs --json', ['dev', 'prod']);
    await runGenerator('doppler environments --json', ['prod']);
    await runGenerator('doppler projects --json', ['abc123']);
    await runGenerator(
        'doppler secrets --only-names --json', ['API_KEY', 'DATABASE_URL']);
  });
}
