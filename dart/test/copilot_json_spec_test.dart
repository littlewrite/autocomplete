import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/copilot.dart';
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

/// Collects the handler ids referenced by every generator in the JSON doc.
List<String> _collectHandlerIds(dynamic node) {
  final ids = <String>[];
  if (node is! Map) return ids;
  final generators = node['generators'];
  if (generators != null) {
    for (final generator in generators is List ? generators : [generators]) {
      final postProcess = (generator as Map)['postProcess'];
      if (postProcess is Map) {
        ids.add(postProcess['handler'] as String);
      }
    }
  }
  for (final value in node.values) {
    if (value is List) {
      for (final item in value) {
        ids.addAll(_collectHandlerIds(item));
      }
    } else if (value is Map) {
      ids.addAll(_collectHandlerIds(value));
    }
  }
  return ids;
}

/// Flattens every generator reachable from the spec (positional args, option
/// args, and nested subcommands).
Iterable<FigGenerator> _allGenerators(FigSpec spec) sync* {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    yield* _subcommandGenerators(subcommand);
  }
}

Iterable<FigGenerator> _subcommandGenerators(FigSubcommand subcommand) sync* {
  for (final arg in subcommand.args ?? const <FigArg>[]) {
    yield* arg.generatorsList;
  }
  for (final option in subcommand.options ?? const <FigOption>[]) {
    for (final arg in option.args ?? const <FigArg>[]) {
      yield* arg.generatorsList;
    }
  }
  for (final child in subcommand.subcommands ?? const <FigSubcommand>[]) {
    yield* _subcommandGenerators(child);
  }
}

void main() {
  test('copilot JSON binds every generator to the declaration ID', () async {
    final handlers = JsonHandlerRegistry();
    registerCopilotHandlers(handlers);
    final source = await File('assets/specs/c/copilot.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(copilotApplicationNamePostProcessHandler));
    expect(document['name'], 'copilot');

    expect(_collectHandlerIds(document).toSet(),
        {copilotApplicationNamePostProcessHandler});
  });

  test('application name post-processor extracts the application key', () {
    final registry = JsonHandlerRegistry();
    registerCopilotHandlers(registry);
    final output = 'application: wordpress\n';

    final suggestions = registry
        .postProcess(copilotApplicationNamePostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['wordpress']);
    expect(suggestions.single.icon, 'fig://icon?type=aws');
  });

  test('application name post-processor returns empty for blank output', () {
    final registry = JsonHandlerRegistry();
    registerCopilotHandlers(registry);
    final suggestions = registry
        .postProcess(copilotApplicationNamePostProcessHandler)!('   \n');
    expect(suggestions, isEmpty);
  });

  test('application name post-processor returns empty when key is missing', () {
    final registry = JsonHandlerRegistry();
    registerCopilotHandlers(registry);
    final suggestions = registry
        .postProcess(copilotApplicationNamePostProcessHandler)!(
            'environment: prod\n');
    expect(suggestions, isEmpty);
  });

  test('application name post-processor returns empty on parse errors', () {
    final registry = JsonHandlerRegistry();
    registerCopilotHandlers(registry);
    // A document that is not a YAML mapping has no application to suggest.
    final notAMap = registry
        .postProcess(copilotApplicationNamePostProcessHandler)!
        .call('plain string');
    expect(notAMap, isEmpty);
    // Malformed YAML throws inside loadYaml; the handler swallows it.
    final malformed = registry
        .postProcess(copilotApplicationNamePostProcessHandler)!
        .call('application: [unclosed');
    expect(malformed, isEmpty);
  });

  test('application generator runs the workspace script end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCopilotHandlers(registry);
    final adapter = _FakeAdapter({
      'cat copilot/.workspace': const ProcessRunResult(
        stdout: 'application: my-app\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/copilot.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _allGenerators(spec).firstWhere((candidate) {
      final script = candidate.script;
      return script is List && script.join(' ') == 'cat copilot/.workspace';
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'copilot', tokenLength: 7, complete: true),
        CommandToken(token: 'env', tokenLength: 3, complete: true),
        CommandToken(token: 'ls', tokenLength: 2, complete: true),
        CommandToken(token: '--app', tokenLength: 5, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['my-app']);
    expect(suggestions.single.icon, 'fig://icon?type=aws');
  });
}
