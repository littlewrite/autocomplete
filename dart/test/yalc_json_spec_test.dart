import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/yalc.dart';
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
  test('yalc JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerYalcHandlers(handlers);
    final source = await File('assets/specs/y/yalc.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(yalcGeneratePackagesPostProcessHandler));
    expect(source, contains(yalcGetRemovablePackagesPostProcessHandler));
    expect(document['name'], 'yalc');

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
      yalcGeneratePackagesPostProcessHandler,
      yalcGetRemovablePackagesPostProcessHandler,
    });
  });

  test('generatePackages rebuilds name@version from find output', () {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);
    final output = '/Users/me/.yalc/packages/my-package/1.0.0/package.json\n'
        '/Users/me/.yalc/packages/other-pkg/2.1.0/package.json\n'
        '/Users/me/.yalc/packages/@scope/pkg/0.5.0/package.json';

    final packages = registry
        .postProcess(yalcGeneratePackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''), [
      'my-package@1.0.0',
      'other-pkg@2.1.0',
      '@scope/pkg@0.5.0',
    ]);
    expect(packages.map((item) => item.icon), ['📦', '📦', '📦']);
    expect(packages.map((item) => item.description),
        ['my-package@1.0.0', 'other-pkg@2.1.0', '@scope/pkg@0.5.0']);
  });

  test('generatePackages keeps the empty entry from a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);
    final output = '/Users/me/.yalc/packages/my-package/1.0.0/package.json\n';

    final packages = registry
        .postProcess(yalcGeneratePackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? '').toList(),
        ['my-package@1.0.0', '@']);
  });

  test('generatePackages handles empty output', () {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);

    final packages = registry
        .postProcess(yalcGeneratePackagesPostProcessHandler)!('');
    expect(packages.map((item) => item.nameSingle ?? '').toList(), ['@']);
  });

  test('getRemovablePackages maps ls output verbatim', () {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);
    const output = 'my-package\nother-pkg\nscoped-pkg';

    final packages = registry
        .postProcess(yalcGetRemovablePackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? ''),
        ['my-package', 'other-pkg', 'scoped-pkg']);
    expect(packages.map((item) => item.icon), ['📦', '📦', '📦']);
    expect(packages.map((item) => item.description),
        ['my-package', 'other-pkg', 'scoped-pkg']);
  });

  test('getRemovablePackages keeps the empty entry from a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);
    const output = 'my-package\n';

    final packages = registry
        .postProcess(yalcGetRemovablePackagesPostProcessHandler)!(output);
    expect(packages.map((item) => item.nameSingle ?? '').toList(),
        ['my-package', '']);
  });

  test('yalc generators run their scripts and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerYalcHandlers(registry);
    const findScript =
        'bash -c command find ~/.yalc/packages -maxdepth 4 -iname \'package.json\'';
    final adapter = _FakeAdapter({
      findScript: const ProcessRunResult(
        stdout: '/Users/me/.yalc/packages/my-package/1.0.0/package.json\n'
            '/Users/me/.yalc/packages/other-pkg/2.1.0/package.json',
        stderr: '',
        exitCode: 0,
      ),
      'ls .yalc': const ProcessRunResult(
        stdout: 'my-package\nother-pkg',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/y/yalc.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'yalc', tokenLength: 4, complete: true),
          CommandToken(token: 'add', tokenLength: 3, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator(findScript, ['my-package@1.0.0', 'other-pkg@2.1.0']);
    await runGenerator('ls .yalc', ['my-package', 'other-pkg']);
  });
}
