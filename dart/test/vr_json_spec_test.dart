import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/vr.dart';
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

/// Returns the first generator whose static script map runs [command],
/// searching the root args and the whole subcommand tree.
FigGenerator? generatorByCommand(FigSpec spec, String command) {
  FigGenerator? find(List<FigArg> args) {
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is Map && script['command'] == command) return generator;
      }
    }
    return null;
  }

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final inArgs = find(subcommand.args ?? const <FigArg>[]);
      if (inArgs != null) return inArgs;
      if (subcommand.options != null) {
        for (final option in subcommand.options!) {
          final inOption = find(option.args ?? const <FigArg>[]);
          if (inOption != null) return inOption;
        }
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  final rootArg = find(spec.args ?? const <FigArg>[]);
  if (rootArg != null) return rootArg;
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('vr JSON binds every generator to the script-generator post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerVrHandlers(handlers);
    final source = await File('assets/specs/v/vr.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(vrScriptGeneratorPostProcessHandler));
    expect(document['name'], 'vr');

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
    expect(ids.toSet(), {vrScriptGeneratorPostProcessHandler});
  });

  test('script-generator post-processor parses bullet lines and descriptions',
      () {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);
    const output = '    • start:dev\n'
        '      Start the dev server\n'
        '    • build\n'
        '      Build the project\n'
        '    • lint';

    final suggestions =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''), [
      'start:dev',
      'build',
      'lint',
    ]);
    expect(suggestions.map((item) => item.description), [
      'Start the dev server',
      'Build the project',
      null,
    ]);
  });

  test('script-generator post-processor leaves description null without a next '
      'line', () {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);
    const output = '    • start:dev\n    • build';

    final suggestions =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''), [
      'start:dev',
      'build',
    ]);
    // The next line becomes the description even when it is itself a bullet;
    // only the final bullet has no following line and therefore null.
    expect(suggestions.map((item) => item.description), ['• build', null]);
  });

  test('script-generator post-processor skips non-bullet and empty lines', () {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);
    const output = 'Velociraptor scripts:\n'
        '\n'
        '    • fmt\n'
        '      Format the code\n'
        'not a script line\n'
        '\n'
        '    • test\n';

    final suggestions =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['fmt', 'test']);
    expect(suggestions.map((item) => item.description), [
      'Format the code',
      null,
    ]);
  });

  test('script-generator post-processor keeps an empty trimmed following line '
      'as description', () {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);
    // A whitespace-only line survives the non-empty filter and trims to ''.
    const output = '    • a\n'
        '    \n'
        '    • b';

    final suggestions =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(output);
    expect(suggestions.map((item) => item.nameSingle ?? ''), ['a', 'b']);
    expect(suggestions.map((item) => item.description), ['', null]);
  });

  test('script-generator post-processor returns empty for empty or scriptless '
      'output', () {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);

    final empty =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!('');
    expect(empty, isEmpty);

    final noScripts =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(
            'no scripts listed here');
    expect(noScripts, isEmpty);

    final trailingNewline =
        registry.postProcess(vrScriptGeneratorPostProcessHandler)!(
            '    • fmt\n');
    expect(trailingNewline.map((item) => item.nameSingle ?? ''), ['fmt']);
  });

  test('vr generator runs its script and post-processes end to end', () async {
    final registry = JsonHandlerRegistry();
    registerVrHandlers(registry);
    final adapter = _FakeAdapter({
      'vr': const ProcessRunResult(
        stdout: '    • start:dev\n'
            '      Start the dev server\n'
            '    • build\n'
            '      Build the project\n'
            '    • lint',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/v/vr.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByCommand(spec, 'vr');
    expect(generator, isNotNull, reason: 'no vr script generator in the spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'vr', tokenLength: 2, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['start:dev', 'build', 'lint']);
  });
}
