import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/tmuxinator.dart';
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
  test('tmuxinator JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTmuxinatorHandlers(handlers);
    final source = await File('assets/specs/t/tmuxinator.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(tmuxinatorProjectsPostProcessHandler));
    expect(source, contains(tmuxinatorTmuxSessionsPostProcessHandler));
    expect(document['name'], 'tmuxinator');

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
      tmuxinatorProjectsPostProcessHandler,
      tmuxinatorTmuxSessionsPostProcessHandler,
    });
  });

  test('projects post-processor skips the header line and names every line',
      () {
    final registry = JsonHandlerRegistry();
    registerTmuxinatorHandlers(registry);
    final output = '# Name\n'
        'work\n'
        'side-project';

    final projects =
        registry.postProcess(tmuxinatorProjectsPostProcessHandler)!(output);
    expect(projects.map((item) => item.nameSingle), ['work', 'side-project']);
    expect(projects.map((item) => item.description), ['Project', 'Project']);
  });

  test('projects post-processor returns empty for fatal output and empty input',
      () {
    final registry = JsonHandlerRegistry();
    registerTmuxinatorHandlers(registry);

    final fatal = registry
        .postProcess(tmuxinatorProjectsPostProcessHandler)!('fatal: no project');
    expect(fatal, isEmpty);

    final singleLine = registry
        .postProcess(tmuxinatorProjectsPostProcessHandler)!('only-header');
    expect(singleLine, isEmpty);

    final empty =
        registry.postProcess(tmuxinatorProjectsPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('tmux sessions post-processor takes the name before the colon', () {
    final registry = JsonHandlerRegistry();
    registerTmuxinatorHandlers(registry);
    final output = 'work: 1 windows (created Thu Jun  1 09:00:00 2026)\n'
        'api: 2 windows (created Thu Jun  1 09:05:00 2026)';

    final sessions =
        registry.postProcess(tmuxinatorTmuxSessionsPostProcessHandler)!(output);
    expect(sessions.map((item) => item.nameSingle), ['work', 'api']);
    expect(sessions.map((item) => item.description), [
      'Tmux Session - work: 1 windows (created Thu Jun  1 09:00:00 2026)',
      'Tmux Session - api: 2 windows (created Thu Jun  1 09:05:00 2026)',
    ]);
  });

  test('tmux sessions post-processor handles fatal, empty, and colon-less lines',
      () {
    final registry = JsonHandlerRegistry();
    registerTmuxinatorHandlers(registry);

    final fatal = registry
        .postProcess(tmuxinatorTmuxSessionsPostProcessHandler)!('fatal: tmux');
    expect(fatal, isEmpty);

    // Empty input splits to a single empty line: one suggestion with an empty
    // name, mirroring the JS map over [""].
    final empty =
        registry.postProcess(tmuxinatorTmuxSessionsPostProcessHandler)!('');
    expect(empty, hasLength(1));
    expect(empty.single.nameSingle ?? '', '');
    expect(empty.single.description, 'Tmux Session - ');

    // A colon-less line yields an empty name (JS substring(0, -1) is empty).
    final noColon = registry
        .postProcess(tmuxinatorTmuxSessionsPostProcessHandler)!('orphan');
    expect(noColon.single.nameSingle ?? '', '');
    expect(noColon.single.description, 'Tmux Session - orphan');
  });

  test('tmuxinator generators run their scripts and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTmuxinatorHandlers(registry);
    final adapter = _FakeAdapter({
      'tmuxinator list -n': const ProcessRunResult(
        stdout: 'Name\n'
            'work\n'
            'api\n',
        stderr: '',
        exitCode: 0,
      ),
      'tmux ls': const ProcessRunResult(
        stdout: 'work: 1 windows (created Thu Jun  1 09:00:00 2026)\n'
            'api: 2 windows (created Thu Jun  1 09:05:00 2026)\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tmuxinator.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'tmuxinator', tokenLength: 10, complete: true),
          CommandToken(token: 'copy', tokenLength: 4, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('tmuxinator list -n', ['work', 'api']);
    await runGenerator('tmux ls', ['work', 'api']);
  });
}
