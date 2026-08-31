import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/cargo.dart';
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
/// [scriptCommand], searching the whole subcommand tree including options.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  void visitArg(FigArg arg, List<FigGenerator> matches) {
    for (final generator in arg.generatorsList) {
      final script = generator.script;
      if (script is List && script.join(' ') == scriptCommand) {
        matches.add(generator);
      }
    }
  }

  void visitSubcommand(FigSubcommand subcommand, List<FigGenerator> matches) {
    for (final arg in subcommand.args ?? const <FigArg>[]) {
      visitArg(arg, matches);
    }
    for (final option in subcommand.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        visitArg(arg, matches);
      }
    }
    for (final nested in subcommand.subcommands ?? const <FigSubcommand>[]) {
      visitSubcommand(nested, matches);
    }
  }

  final matches = <FigGenerator>[];
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    visitSubcommand(subcommand, matches);
  }
  return matches.isNotEmpty ? matches.first : null;
}

void main() {
  test('cargo JSON binds the generator to the package-generator post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerCargoHandlers(handlers);
    final source = await File('assets/specs/c/cargo.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(cargoPackageGeneratorPostProcessHandler));
    expect(document['name'], 'cargo');

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
    expect(ids.toSet(), {cargoPackageGeneratorPostProcessHandler});
  });

  test('package post-processor maps name, icon, and version description', () {
    final registry = JsonHandlerRegistry();
    registerCargoHandlers(registry);
    const output = '{"packages":['
        '{"name":"serde","version":"1.0.152","description":"A serialization framework"},'
        '{"name":"local","version":"0.1.0"}'
        ']}';

    final packages =
        registry.postProcess(cargoPackageGeneratorPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle), ['serde', 'local']);
    expect(packages.map((item) => item.icon), ['📦', '📦']);
    expect(packages.map((item) => item.description), [
      '1.0.152 - A serialization framework',
      '0.1.0',
    ]);
  });

  test('package post-processor keeps the version-only description when missing',
      () {
    final registry = JsonHandlerRegistry();
    registerCargoHandlers(registry);
    const output =
        '{"packages":[{"name":"bin","version":"2.0.0","description":null},'
        '{"name":"lib","version":"3.1.4"}]}';

    final packages =
        registry.postProcess(cargoPackageGeneratorPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle), ['bin', 'lib']);
    expect(packages.map((item) => item.description), ['2.0.0', '3.1.4']);
  });

  test('package post-processor returns empty on parse errors and empty input',
      () {
    final registry = JsonHandlerRegistry();
    registerCargoHandlers(registry);

    final broken =
        registry.postProcess(cargoPackageGeneratorPostProcessHandler)!('oops');
    expect(broken, isEmpty);

    final empty =
        registry.postProcess(cargoPackageGeneratorPostProcessHandler)!('');
    expect(empty, isEmpty);

    final missingPackages =
        registry.postProcess(cargoPackageGeneratorPostProcessHandler)!('{}');
    expect(missingPackages, isEmpty);

    final noPackages = registry
        .postProcess(cargoPackageGeneratorPostProcessHandler)!('{"packages":[]}');
    expect(noPackages, isEmpty);
  });

  test('cargo package generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerCargoHandlers(registry);
    const scriptCommand = 'cargo metadata --format-version 1 --no-deps';
    final adapter = _FakeAdapter({
      scriptCommand: const ProcessRunResult(
        stdout: '{"packages":['
            '{"name":"serde","version":"1.0.152","description":"A serialization framework"},'
            '{"name":"local","version":"0.1.0"}'
            ']}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/c/cargo.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, scriptCommand);
    expect(generator, isNotNull,
        reason: 'no generator for $scriptCommand in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'cargo', tokenLength: 5, complete: true),
        CommandToken(token: 'deny', tokenLength: 4, complete: true),
        CommandToken(token: '--exclude', tokenLength: 9, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['serde', 'local']);
  });
}
