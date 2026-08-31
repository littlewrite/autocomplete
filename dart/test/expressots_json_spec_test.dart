import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/expressots.dart';
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
  FigGenerator? findInOptions(List<FigOption> options) {
    for (final option in options) {
      for (final arg in option.args ?? const <FigArg>[]) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            return generator;
          }
        }
      }
    }
    return null;
  }

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
      if (subcommand.options != null) {
        final found = findInOptions(subcommand.options!);
        if (found != null) return found;
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  final inRootOptions = findInOptions(spec.options ?? const []);
  if (inRootOptions != null) return inRootOptions;
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('expressots JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerExpressotsHandlers(handlers);
    final source = await File('assets/specs/e/expressots.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(expressotsTemplatesPostProcessHandler));
    expect(source, contains(expressotsPackageManagerPostProcessHandler));
    expect(document['name'], 'expressots');

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
      expressotsTemplatesPostProcessHandler,
      expressotsPackageManagerPostProcessHandler,
    });
  });

  test('templates post-processor suggests the two supported templates', () {
    final registry = JsonHandlerRegistry();
    registerExpressotsHandlers(registry);

    final templates =
        registry.postProcess(expressotsTemplatesPostProcessHandler)!(
            'any script output');
    expect(templates.map((item) => item.nameSingle ?? ''),
        ['opinionated', 'non-opinionated']);
    expect(templates.map((item) => item.description), [
      'An opinionated ExpressoTS application',
      'An ExpressoTS application',
    ]);
  });

  test('templates post-processor ignores empty output', () {
    final registry = JsonHandlerRegistry();
    registerExpressotsHandlers(registry);

    final templates =
        registry.postProcess(expressotsTemplatesPostProcessHandler)!('');
    expect(templates.map((item) => item.nameSingle ?? ''),
        ['opinionated', 'non-opinionated']);
  });

  test('package-manager post-processor suggests npm, yarn, and pnpm', () {
    final registry = JsonHandlerRegistry();
    registerExpressotsHandlers(registry);

    final managers =
        registry.postProcess(expressotsPackageManagerPostProcessHandler)!(
            'any script output');
    expect(managers.map((item) => item.nameSingle ?? ''),
        ['npm', 'yarn', 'pnpm']);
    expect(managers.map((item) => item.description), ['', '', '']);
  });

  test('package-manager post-processor ignores empty output', () {
    final registry = JsonHandlerRegistry();
    registerExpressotsHandlers(registry);

    final managers =
        registry.postProcess(expressotsPackageManagerPostProcessHandler)!('');
    expect(managers.map((item) => item.nameSingle ?? ''),
        ['npm', 'yarn', 'pnpm']);
  });

  test('each expressots generator runs its script and post-processes end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerExpressotsHandlers(registry);
    final adapter = _FakeAdapter({
      'expressots templates': const ProcessRunResult(
        stdout: '',
        stderr: '',
        exitCode: 0,
      ),
      'expressots package manager': const ProcessRunResult(
        stdout: '',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/e/expressots.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'expressots', tokenLength: 10, complete: true),
          CommandToken(token: 'new', tokenLength: 3, complete: true),
          CommandToken(token: '--template', tokenLength: 10, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('expressots templates', ['opinionated', 'non-opinionated']);
    await runGenerator(
        'expressots package manager', ['npm', 'yarn', 'pnpm']);
  });
}
