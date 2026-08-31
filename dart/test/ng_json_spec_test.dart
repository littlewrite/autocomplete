import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ng.dart';
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
/// [scriptCommand], searching both subcommand args and option args across the
/// whole subcommand tree (the ng generator lives on the `--project` option).
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? findInArgs(List<FigArg> args) {
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  FigGenerator? visit(FigSubcommand subcommand) {
    final direct = findInArgs(subcommand.args ?? const <FigArg>[]);
    if (direct != null) return direct;
    for (final option in subcommand.options ?? const <FigOption>[]) {
      final fromOption = findInArgs(option.args ?? const <FigArg>[]);
      if (fromOption != null) return fromOption;
    }
    for (final nested in subcommand.subcommands ?? const <FigSubcommand>[]) {
      final found = visit(nested);
      if (found != null) return found;
    }
    return null;
  }

  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visit(subcommand);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('ng JSON binds every generator to the two project post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNgHandlers(handlers);
    final source = await File('assets/specs/n/ng.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ngComponentProjectsPostProcessHandler));
    expect(source, contains(ngClassProjectsPostProcessHandler));
    expect(document['name'], 'ng');

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
      ngComponentProjectsPostProcessHandler,
      ngClassProjectsPostProcessHandler,
    });
  });

  test('projects post-processor maps project names to their project type', () {
    final registry = JsonHandlerRegistry();
    registerNgHandlers(registry);
    const output = '{"my-app":{"projectType":"application"},'
        '"my-lib":{"projectType":"library"}}';

    final projects =
        registry.postProcess(ngComponentProjectsPostProcessHandler)!(output);
    expect(projects.map((item) => item.nameSingle), ['my-app', 'my-lib']);
    expect(projects.map((item) => item.description),
        ['application', 'library']);
  });

  test('projects post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerNgHandlers(registry);

    final broken =
        registry.postProcess(ngComponentProjectsPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(ngComponentProjectsPostProcessHandler)!('');
    expect(empty, isEmpty);

    final arrayNotObject =
        registry.postProcess(ngComponentProjectsPostProcessHandler)!('[]');
    expect(arrayNotObject, isEmpty);
  });

  test('both project post-processors share the same mapping behavior', () {
    final registry = JsonHandlerRegistry();
    registerNgHandlers(registry);
    const output = '{"core":{"projectType":"application"}}';

    final component =
        registry.postProcess(ngComponentProjectsPostProcessHandler)!(output);
    final classProjects =
        registry.postProcess(ngClassProjectsPostProcessHandler)!(output);
    expect(component.map((item) => item.nameSingle), ['core']);
    expect(classProjects.map((item) => item.nameSingle), ['core']);
    expect(classProjects.single.description, 'application');
  });

  test('projects post-processor keeps a null description for a missing type',
      () {
    final registry = JsonHandlerRegistry();
    registerNgHandlers(registry);
    const output = '{"legacy":{}}';

    final projects =
        registry.postProcess(ngClassProjectsPostProcessHandler)!(output);
    expect(projects.single.nameSingle, 'legacy');
    expect(projects.single.description, isNull);
  });

  test('ng config projects generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerNgHandlers(registry);
    final adapter = _FakeAdapter({
      'ng config projects': const ProcessRunResult(
        stdout: '{"my-app":{"projectType":"application"},'
            '"my-lib":{"projectType":"library"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/ng.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'ng config projects');
    expect(generator, isNotNull,
        reason: 'no generator for ng config projects in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ng', tokenLength: 2, complete: true),
        CommandToken(token: 'generate', tokenLength: 8, complete: true),
        CommandToken(token: 'component', tokenLength: 9, complete: true),
        CommandToken(token: '--project', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-app', 'my-lib']);
  });
}
