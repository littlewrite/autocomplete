import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/ollama.dart';
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
  test('ollama JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerOllamaHandlers(handlers);
    final source = await File('assets/specs/o/ollama.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(ollamaListModelsPostProcessHandler));
    expect(source, contains(ollamaRunningModelsPostProcessHandler));
    expect(document['name'], 'ollama');

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
      ollamaListModelsPostProcessHandler,
      ollamaRunningModelsPostProcessHandler,
    });
  });

  test('list models post-processor trims and splits into one name per line',
      () {
    final registry = JsonHandlerRegistry();
    registerOllamaHandlers(registry);
    final output = '  llama2\nmistral\ncodellama  \n';

    final models = registry
        .postProcess(ollamaListModelsPostProcessHandler)!(output);
    expect(models.map((item) => item.nameSingle ?? ''),
        ['llama2', 'mistral', 'codellama']);
  });

  test('running models post-processor applies the same transformation', () {
    final registry = JsonHandlerRegistry();
    registerOllamaHandlers(registry);
    final output = 'llama2\nqwen2.5:7b';

    final models = registry
        .postProcess(ollamaRunningModelsPostProcessHandler)!(output);
    expect(models.map((item) => item.nameSingle ?? ''),
        ['llama2', 'qwen2.5:7b']);
  });

  test('internal blank lines are preserved like the TypeScript split', () {
    final registry = JsonHandlerRegistry();
    registerOllamaHandlers(registry);
    final output = 'llama2\n\nmistral';

    final models = registry
        .postProcess(ollamaListModelsPostProcessHandler)!(output);
    expect(models.map((item) => item.nameSingle ?? ''),
        ['llama2', '', 'mistral']);
  });

  test('empty output keeps a single empty suggestion like the TypeScript trim',
      () {
    final registry = JsonHandlerRegistry();
    registerOllamaHandlers(registry);

    // `''.trim()` is `''`, and `''.split('\n')` is `['']`, so the faithful port
    // yields one empty-name suggestion rather than an empty list.
    final empty = registry
        .postProcess(ollamaListModelsPostProcessHandler)!('');
    expect(empty.map((item) => item.nameSingle ?? ''), ['']);

    final whitespace =
        registry.postProcess(ollamaListModelsPostProcessHandler)!('  \n  ');
    expect(whitespace.map((item) => item.nameSingle ?? ''), ['']);
  });

  test('ollama generators run their scripts and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerOllamaHandlers(registry);
    const lsScript = r"bash -c ollama ls | awk '!/NAME/ { print $1 }'";
    const psScript = r"bash -c ollama ps | awk '!/NAME/ { print $1 }'";
    final adapter = _FakeAdapter({
      lsScript: const ProcessRunResult(
        stdout: 'llama2\nmistral\ncodellama',
        stderr: '',
        exitCode: 0,
      ),
      psScript: const ProcessRunResult(
        stdout: 'llama2\nqwen2.5:7b',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/o/ollama.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'ollama', tokenLength: 6, complete: true),
          CommandToken(token: 'show', tokenLength: 4, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator(lsScript, ['llama2', 'mistral', 'codellama']);
    await runGenerator(psScript, ['llama2', 'qwen2.5:7b']);
  });
}
