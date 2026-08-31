import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/okteto.dart';
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

/// Depth-first search for a generator whose script equals [script].
FigGenerator? _findGenerator(
  List<FigSubcommand>? subcommands,
  List<FigOption>? options,
  List<FigArg>? args,
  String script,
) {
  for (final arg in args ?? <FigArg>[]) {
    for (final generator in arg.generatorsList) {
      final generatorScript = generator.script;
      if (generatorScript is List &&
          generatorScript.join(' ') == script) {
        return generator;
      }
    }
  }
  for (final option in options ?? <FigOption>[]) {
    final found = _findGenerator(null, null, option.args, script);
    if (found != null) return found;
  }
  for (final subcommand in subcommands ?? <FigSubcommand>[]) {
    final found = _findGenerator(
        subcommand.subcommands, subcommand.options, subcommand.args, script);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('okteto JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerOktetoHandlers(handlers);
    final source = await File('assets/specs/o/okteto.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(oktetoContextsPostProcessHandler));
    expect(source, contains(oktetoNamespacesPostProcessHandler));
    expect(document['name'], 'okteto');

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
      oktetoContextsPostProcessHandler,
      oktetoNamespacesPostProcessHandler,
    });
  });

  test('contexts post-processor drops the header and takes the first token',
      () {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final output = 'NAME            NAMESPACE\n'
        'cloud-okteto    admin\n'
        'dev             paul\n'
        '*prod           admin';

    final contexts =
        registry.postProcess(oktetoContextsPostProcessHandler)!(output);
    expect(contexts.map((item) => item.nameSingle ?? ''),
        ['cloud-okteto', 'dev', 'prod']);
    expect(
        contexts.map((item) => item.description), ['Context', 'Context', 'Context']);
    expect(contexts.map((item) => item.icon), [
      'fig://icon?type=okteto',
      'fig://icon?type=okteto',
      'fig://icon?type=okteto',
    ]);
  });

  test('namespaces post-processor uses the namespace description', () {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final output = 'NAME\n'
        'engineering\n'
        '*sales';

    final namespaces =
        registry.postProcess(oktetoNamespacesPostProcessHandler)!(output);
    expect(namespaces.map((item) => item.nameSingle ?? ''),
        ['engineering', 'sales']);
    expect(namespaces.map((item) => item.description),
        ['Namespace', 'Namespace']);
  });

  test('post-processors return an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    expect(
        registry.postProcess(oktetoContextsPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(oktetoNamespacesPostProcessHandler)!(''), isEmpty);
  });

  test('post-processors drop a lone header line (no data rows)', () {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final output = 'NAME            NAMESPACE';
    expect(
        registry.postProcess(oktetoContextsPostProcessHandler)!(output),
        isEmpty);
  });

  test('post-processors keep a trailing empty entry for a trailing newline',
      () {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final output = 'NAME\n'
        'ctx-a\n'
        'ctx-b\n';
    final contexts =
        registry.postProcess(oktetoContextsPostProcessHandler)!(output);
    expect(contexts.map((item) => item.nameSingle ?? ''),
        ['ctx-a', 'ctx-b', '']);
    expect(contexts.last.description, 'Context');
  });

  test('okteto context list generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final adapter = _FakeAdapter({
      'okteto context list': const ProcessRunResult(
        stdout: 'NAME            NAMESPACE\n'
            'cloud-okteto    admin\n'
            'dev             paul\n'
            '*prod           admin',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/o/okteto.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _findGenerator(
        spec.subcommands, spec.options, spec.args, 'okteto context list');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'okteto', tokenLength: 6, complete: true),
        CommandToken(token: 'context', tokenLength: 7, complete: true),
        CommandToken(token: 'use', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['cloud-okteto', 'dev', 'prod']);
  });

  test('okteto namespace list generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerOktetoHandlers(registry);
    final adapter = _FakeAdapter({
      'okteto namespace list': const ProcessRunResult(
        stdout: 'NAME\n'
            'engineering\n'
            '*sales',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/o/okteto.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _findGenerator(
        spec.subcommands, spec.options, spec.args, 'okteto namespace list');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'okteto', tokenLength: 6, complete: true),
        CommandToken(token: 'namespace', tokenLength: 9, complete: true),
        CommandToken(token: 'use', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['engineering', 'sales']);
  });
}
