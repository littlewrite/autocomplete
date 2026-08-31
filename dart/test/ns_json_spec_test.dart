import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ns.dart';
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
/// subcommands.
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
  test('ns JSON binds its generator to the post-process ID', () async {
    final handlers = JsonHandlerRegistry();
    registerNsHandlers(handlers);
    final source = await File('assets/specs/n/ns.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(nsTemplatesPostProcessHandler));
    expect(document['name'], 'ns');

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
    expect(ids.toSet(), {nsTemplatesPostProcessHandler});
  });

  test('post-processor maps GitHub contents JSON to nativescript templates', () {
    final registry = JsonHandlerRegistry();
    registerNsHandlers(registry);
    final output = '['
        '  {"name": "nativescript-angular"},'
        '  {"name": "nativescript-vue"}'
        ']';

    final templates =
        registry.postProcess(nsTemplatesPostProcessHandler)!(output);
    expect(templates.map((item) => item.nameSingle),
        ['@nativescript/nativescript-angular', '@nativescript/nativescript-vue']);
    expect(templates.first.description, 'Template nativescript-angular');
  });

  test('post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerNsHandlers(registry);

    expect(
        registry.postProcess(nsTemplatesPostProcessHandler)!(''), isEmpty);
  });

  test('post-processor returns an empty list for non-array JSON', () {
    final registry = JsonHandlerRegistry();
    registerNsHandlers(registry);

    expect(registry.postProcess(nsTemplatesPostProcessHandler)!('{}'), isEmpty);
  });

  test('ns --template generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNsHandlers(registry);
    final adapter = _FakeAdapter({
      'curl -sfL https://api.github.com/repos/NativeScript/nativescript-app-templates/contents/packages':
          const ProcessRunResult(
        stdout: '['
            '  {"name": "nativescript-angular"},'
            '  {"name": "nativescript-vue"}'
            ']',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/ns.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(
        spec,
        'curl -sfL '
        'https://api.github.com/repos/NativeScript/nativescript-app-templates/contents/packages');
    expect(generator, isNotNull,
        reason: 'no generator for the --template script in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'ns', tokenLength: 2, complete: true),
        CommandToken(token: 'create', tokenLength: 6, complete: true),
        CommandToken(token: '--template', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      '@nativescript/nativescript-angular',
      '@nativescript/nativescript-vue',
    ]);
  });
}
