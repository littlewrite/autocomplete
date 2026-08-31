import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rake.dart';
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
/// [scriptCommand], searching the top-level args and the whole subcommand tree
/// (including option args).
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? hitInArgs(List<FigArg> args) {
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

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final hit = hitInArgs(subcommand.args ?? const <FigArg>[]);
      if (hit != null) return hit;
      for (final option in subcommand.options ?? const <FigOption>[]) {
        final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
        if (optionHit != null) return optionHit;
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  final topLevel = hitInArgs(spec.args ?? const <FigArg>[]);
  if (topLevel != null) return topLevel;
  for (final option in spec.options ?? const <FigOption>[]) {
    final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
    if (optionHit != null) return optionHit;
  }
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('rake JSON binds the task generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRakeHandlers(handlers);
    final source = await File('assets/specs/r/rake.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(rakeTasksPostProcessHandler));
    expect(document['name'], 'rake');

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
    expect(ids.toSet(), {rakeTasksPostProcessHandler});
  });

  test('rake task post-processor parses `rake <task> # <description>` rows',
      () {
    final registry = JsonHandlerRegistry();
    registerRakeHandlers(registry);
    final output = 'rake build    # Build the app\n'
        'rake db:migrate  # Run the migrations\n'
        'rake clean     # Remove build artifacts';

    final tasks =
        registry.postProcess(rakeTasksPostProcessHandler)!(output);
    expect(tasks.map((item) => item.nameSingle),
        ['build', 'db:migrate', 'clean']);
    expect(tasks.map((item) => item.description),
        ['Build the app', 'Run the migrations', 'Remove build artifacts']);
  });

  test('rake task post-processor handles a description-less row and empty '
      'output', () {
    final registry = JsonHandlerRegistry();
    registerRakeHandlers(registry);

    // A row without a `#` separator keeps the task name with no description.
    final bare = registry
        .postProcess(rakeTasksPostProcessHandler)!('rake lint');
    expect(bare.map((item) => item.nameSingle), ['lint']);
    expect(bare.single.description, isNull);

    expect(
        registry.postProcess(rakeTasksPostProcessHandler)!(''), isEmpty);
  });

  test('rake task generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerRakeHandlers(registry);
    final adapter = _FakeAdapter({
      'rake --tasks --silent': const ProcessRunResult(
        stdout: 'rake build    # Build the app\n'
            'rake db:migrate  # Run the migrations\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rake.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'rake --tasks --silent');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rake', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'db:migrate']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Build the app', 'Run the migrations']);
  });
}
