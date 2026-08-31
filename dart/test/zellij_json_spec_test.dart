import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/zellij.dart';
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
///
/// Scripts may be materialized either as a plain token array or as a
/// command-object map (`{"command": ..., "args": [...]}`); both are matched.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  bool matches(dynamic script) {
    if (script is List) return script.join(' ') == scriptCommand;
    if (script is Map) {
      final command = script['command'];
      final rawArgs = script['args'];
      if (command is! String) return false;
      final argList = rawArgs is List
          ? rawArgs.map((e) => e.toString()).toList()
          : const <String>[];
      return [command, ...argList].join(' ') == scriptCommand;
    }
    return false;
  }

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      for (final arg in subcommand.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          if (matches(generator.script)) {
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
  test('zellij JSON binds every generator to the sessions post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerZellijHandlers(handlers);
    final source = await File('assets/specs/z/zellij.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(zellijGenerateSessionsPostProcessHandler));
    expect(document['name'], 'zellij');

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
    expect(ids.toSet(), {zellijGenerateSessionsPostProcessHandler});
  });

  test('sessions post-processor returns empty when no sessions are active', () {
    final registry = JsonHandlerRegistry();
    registerZellijHandlers(registry);

    final sessions = registry
        .postProcess(zellijGenerateSessionsPostProcessHandler)!(
            'No active zellij sessions found');
    expect(sessions, isEmpty);
  });

  test('sessions post-processor parses created sessions with metadata', () {
    final registry = JsonHandlerRegistry();
    registerZellijHandlers(registry);
    const output = 'my-session [Created 2 hours ago]\n'
        'plain';

    final sessions = registry
        .postProcess(zellijGenerateSessionsPostProcessHandler)!(output);
    expect(sessions.map((item) => item.nameSingle),
        ['my-session', 'plain']);
    expect(sessions.map((item) => item.description),
        ['Created 2 hours ago', '']);
    expect(sessions.map((item) => item.icon), ['📟', '📟']);
    expect(sessions.map((item) => item.priority), [75, 75]);
  });

  test('sessions post-processor marks EXITED sessions with a warning icon', () {
    final registry = JsonHandlerRegistry();
    registerZellijHandlers(registry);
    const output = 'dead-session [Created 3 days ago] (EXITED)';

    final sessions = registry
        .postProcess(zellijGenerateSessionsPostProcessHandler)!(output);
    expect(sessions.single.nameSingle, 'dead-session');
    expect(sessions.single.description, 'Created 3 days ago (EXITED)');
    expect(sessions.single.icon, '⚠️');
    expect(sessions.single.priority, 51);
  });

  test('sessions post-processor drops empty entries and trailing newlines', () {
    final registry = JsonHandlerRegistry();
    registerZellijHandlers(registry);

    final empty =
        registry.postProcess(zellijGenerateSessionsPostProcessHandler)!('');
    expect(empty, isEmpty);

    final trailing = registry.postProcess(zellijGenerateSessionsPostProcessHandler)!
        ('my-session [Created 2 hours ago]\n\n');
    expect(trailing.map((item) => item.nameSingle), ['my-session']);
  });

  test('zellij list-sessions generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerZellijHandlers(registry);
    final adapter = _FakeAdapter({
      'zellij list-sessions -n': const ProcessRunResult(
        stdout: 'my-session [Created 2 hours ago]\n'
            'dead-session [Created 3 days ago] (EXITED)',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/z/zellij.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'zellij list-sessions -n');
    expect(generator, isNotNull,
        reason: 'no generator for zellij list-sessions -n in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'zellij', tokenLength: 6, complete: true),
        CommandToken(token: 'attach', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    final list = suggestions.toList();

    expect(list.map((suggestion) => suggestion.name).toList(),
        ['my-session', 'dead-session']);
    expect(list.first.icon, '📟');
    expect(list.first.priority, 75);
    expect(list.last.icon, '⚠️');
    expect(list.last.priority, 51);
  });
}
