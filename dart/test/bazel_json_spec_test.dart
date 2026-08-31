import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/bazel.dart';
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

void main() {
  test('bazel JSON binds every BUILD-file generator to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerBazelHandlers(handlers);
    final source = await File('assets/specs/b/bazel.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(bazelBuildFilesPostProcessHandler));
    expect(document['name'], 'bazel');

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
    expect(ids.toSet(), {bazelBuildFilesPostProcessHandler});
  });

  test('post-processor maps BUILD file paths and names to bazel targets', () {
    final registry = JsonHandlerRegistry();
    registerBazelHandlers(registry);
    // Stdout deliberately has no trailing newline; the source splits on '\n'
    // keeping empty entries, which match nothing and would be harmless, but the
    // fixture keeps the common script-output shape.
    final output = '----.//lib/BUILD\n'
        'load("@rules_cc//cc:defs.bzl", "cc_library")\n'
        'cc_library(\n'
        '    name = "hello-time",\n'
        '    srcs = ["hello-time.cc"],\n'
        ')\n'
        '----.//main/BUILD\n'
        'cc_binary(\n'
        '    name = "hello-main",\n'
        '    deps = ["//lib:hello-time"],\n'
        ')';

    final targets =
        registry.postProcess(bazelBuildFilesPostProcessHandler)!(output);
    expect(targets.map((item) => item.nameSingle ?? ''),
        ['//lib:hello-time', '//main:hello-main']);
    expect(targets.first.description, 'Bazel target');
    expect(targets.first.icon, '🎯');
    expect(targets.first.priority, 80);
  });

  test('post-processor handles root BUILD files and non-matching lines', () {
    final registry = JsonHandlerRegistry();
    registerBazelHandlers(registry);
    final output = '----./BUILD\n'
        'name = "root-target"\n'
        'some random text\n'
        'name = "other-target" with trailing text\n';

    final targets =
        registry.postProcess(bazelBuildFilesPostProcessHandler)!(output);
    // A root `----./BUILD` line parses to an empty captured path, so targets
    // are produced as `:name`.
    expect(targets.map((item) => item.nameSingle ?? ''),
        [':root-target', ':other-target']);
  });

  test('post-processor returns empty list for empty or non-matching output',
      () {
    final registry = JsonHandlerRegistry();
    registerBazelHandlers(registry);
    expect(
        registry.postProcess(bazelBuildFilesPostProcessHandler)!(''), isEmpty);
    expect(
        registry.postProcess(bazelBuildFilesPostProcessHandler)!(
            'random text\nnot a target'),
        isEmpty);
  });

  test('bazel BUILD-file generator runs through the adapter end to end',
      () async {
    final handlers = JsonHandlerRegistry();
    registerBazelHandlers(handlers);
    final source = await File('assets/specs/b/bazel.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List &&
              script.length == 3 &&
              script.first == 'bash';
        });

    // A static List script resolves to command = script[0], args = script[1..],
    // so the adapter key is exactly the script list joined with spaces.
    final scriptKey = (generator.script as List).join(' ');
    final adapter = _FakeAdapter({
      scriptKey: const ProcessRunResult(
        stdout: '----.//lib/BUILD\n'
            'name = "hello-time"\n'
            '----.//main/BUILD\n'
            'name = "hello-main"',
        stderr: '',
        exitCode: 0,
      ),
    });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'bazel', tokenLength: 5, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['//lib:hello-time', '//main:hello-main']);
  });
}
