import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/tfsec.dart';
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
  test('tfsec JSON binds the workspace generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerTfsecHandlers(handlers);
    final source = await File('assets/specs/t/tfsec.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(tfsecWorkspacePostProcessHandler));
    expect(document['name'], 'tfsec');

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
    expect(ids.toSet(), {tfsecWorkspacePostProcessHandler});
  });

  test('tfsec workspace post-processor strips the active `*` marker and '
      'trims', () {
    final registry = JsonHandlerRegistry();
    registerTfsecHandlers(registry);
    const output = '  default\n* production\n  staging';

    final workspaces =
        registry.postProcess(tfsecWorkspacePostProcessHandler)!(output);
    expect(workspaces.map((item) => item.nameSingle),
        ['default', 'production', 'staging']);
    expect(workspaces.map((item) => item.description),
        ['Terraform workspaces', 'Terraform workspaces', 'Terraform '
            'workspaces']);
  });

  test('tfsec workspace post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerTfsecHandlers(registry);
    expect(
        registry.postProcess(tfsecWorkspacePostProcessHandler)!(''), isEmpty);
  });

  test('tfsec workspace generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerTfsecHandlers(registry);
    final adapter = _FakeAdapter({
      'terraform workspace list': const ProcessRunResult(
        stdout: '  default\n* production\n  staging',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/t/tfsec.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'terraform workspace list');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'tfsec', tokenLength: 5, complete: true),
        CommandToken(token: '--workspace', tokenLength: 11, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['default', 'production', 'staging']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(),
        ['Terraform workspaces', 'Terraform workspaces', 'Terraform '
            'workspaces']);
  });
}
