import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/scarb.dart';
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
/// [scriptCommand], searching subcommand args, option args, and nested
/// subcommands across the whole spec tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? visitSubcommand(FigSubcommand subcommand) {
    for (final arg in subcommand.args ?? const <FigArg>[]) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    for (final option in subcommand.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
    }
    for (final nested in subcommand.subcommands ?? const <FigSubcommand>[]) {
      final found = visitSubcommand(nested);
      if (found != null) return found;
    }
    return null;
  }

  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visitSubcommand(subcommand);
    if (found != null) return found;
  }
  return null;
}

void main() {
  const memberOutput = '{"workspace":{'
      '"members":["hello_world /path/to/hello_world","foo"]}}';

  test('scarb JSON binds every generator to the six post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerScarbHandlers(handlers);
    final source = await File('assets/specs/s/scarb.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(scarbAddMembersPostProcessHandler));
    expect(source, contains(scarbRemoveMembersPostProcessHandler));
    expect(source, contains(scarbBuildMembersPostProcessHandler));
    expect(source, contains(scarbFmtMembersPostProcessHandler));
    expect(source, contains(scarbRunMembersPostProcessHandler));
    expect(source, contains(scarbTestMembersPostProcessHandler));
    expect(document['name'], 'scarb');

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
      scarbAddMembersPostProcessHandler,
      scarbRemoveMembersPostProcessHandler,
      scarbBuildMembersPostProcessHandler,
      scarbFmtMembersPostProcessHandler,
      scarbRunMembersPostProcessHandler,
      scarbTestMembersPostProcessHandler,
    });
  });

  test('workspace members post-processor takes the name before the space', () {
    final registry = JsonHandlerRegistry();
    registerScarbHandlers(registry);

    for (final id in [
      scarbAddMembersPostProcessHandler,
      scarbRemoveMembersPostProcessHandler,
      scarbBuildMembersPostProcessHandler,
      scarbFmtMembersPostProcessHandler,
      scarbRunMembersPostProcessHandler,
      scarbTestMembersPostProcessHandler,
    ]) {
      final members = registry.postProcess(id)!(memberOutput);
      expect(members.map((item) => item.nameSingle), ['hello_world', 'foo'],
          reason: id);
    }
  });

  test('workspace members post-processor keeps a bare member name', () {
    final registry = JsonHandlerRegistry();
    registerScarbHandlers(registry);
    const output = '{"workspace":{"members":["solo","a /x","b /x/y"]}}';

    final members =
        registry.postProcess(scarbAddMembersPostProcessHandler)!(output);
    expect(members.map((item) => item.nameSingle), ['solo', 'a', 'b']);
  });

  test('workspace members post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerScarbHandlers(registry);

    final broken =
        registry.postProcess(scarbAddMembersPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(scarbAddMembersPostProcessHandler)!('');
    expect(empty, isEmpty);
  });

  test('workspace members post-processor handles missing workspace/members', () {
    final registry = JsonHandlerRegistry();
    registerScarbHandlers(registry);

    final noWorkspace =
        registry.postProcess(scarbAddMembersPostProcessHandler)!('{}');
    expect(noWorkspace, isEmpty);

    final noMembers = registry.postProcess(scarbAddMembersPostProcessHandler)!(
        '{"workspace":{}}');
    expect(noMembers, isEmpty);

    final emptyMembers = registry.postProcess(scarbAddMembersPostProcessHandler)!(
        '{"workspace":{"members":[]}}');
    expect(emptyMembers, isEmpty);
  });

  test('each scarb generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerScarbHandlers(registry);
    final adapter = _FakeAdapter({
      'scarb metadata --format-version 1 --no-deps': const ProcessRunResult(
        stdout:
            '{"workspace":{"members":["hello_world /path/to/hello_world",'
            '"foo"]}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/scarb.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    const scriptCommand = 'scarb metadata --format-version 1 --no-deps';
    final generator = generatorByScript(spec, scriptCommand);
    expect(generator, isNotNull,
        reason: 'no generator for $scriptCommand in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'scarb', tokenLength: 5, complete: true),
        CommandToken(token: 'build', tokenLength: 5, complete: true),
        CommandToken(token: '--package', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['hello_world', 'foo']);
  });
}
