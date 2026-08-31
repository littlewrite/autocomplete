import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/fnm.dart';
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
  test('fnm JSON binds every generator to the two post-process IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerFnmHandlers(handlers);
    final source = await File('assets/specs/f/fnm.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(fnmVersionGeneratorPostProcessHandler));
    expect(source, contains(fnmRemoteVersionGeneratorPostProcessHandler));
    expect(document['name'], 'fnm');

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
      fnmVersionGeneratorPostProcessHandler,
      fnmRemoteVersionGeneratorPostProcessHandler,
    });
  });

  test('version generator strips the two marker chars and reverses lines', () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);
    final output = '* v18.16.1\n  v16.20.2\n  v20.5.1 default';

    final versions =
        registry.postProcess(fnmVersionGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle),
        ['v20.5.1', 'v16.20.2', 'v18.16.1']);
    expect(versions.map((item) => item.displayName),
        ['v20.5.1 default', 'v16.20.2', 'v18.16.1']);
    expect(versions.map((item) => item.description),
        ['Node.js v20.5.1 default', 'Node.js v16.20.2', 'Node.js v18.16.1']);
  });

  test('version generator keeps the empty entry from a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);
    final output = '* v18.16.1\n';

    final versions =
        registry.postProcess(fnmVersionGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle), ['', 'v18.16.1']);
  });

  test('version generator maps empty output to one empty suggestion', () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);

    final versions =
        registry.postProcess(fnmVersionGeneratorPostProcessHandler)!('');
    expect(versions, hasLength(1));
    expect(versions.single.nameSingle, '');
    expect(versions.single.displayName, '');
    expect(versions.single.description, 'Node.js ');
  });

  test('remote version generator keeps LTS and latest releases', () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);
    final output = 'v18.14.1\nv18.16.0 (Hydrogen)\nv20.3.0\nv20.5.1 (Iron)';

    final versions = registry
        .postProcess(fnmRemoteVersionGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle),
        ['lts/Iron', 'v20.3.0', 'lts/Hydrogen', 'v18.14.1']);
    expect(versions.map((item) => item.displayName),
        ['v20.5.1 (Iron)', null, 'v18.16.0 (Hydrogen)', null]);
    expect(versions.map((item) => item.description), [
      'Node.js v20.5.1 (Iron)',
      'Node.js v20.3.0',
      'Node.js v18.16.0 (Hydrogen)',
      'Node.js v18.14.1',
    ]);
  });

  test('remote version generator keeps the beta adjacent to the latest LTS',
      () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);
    final output = 'v20.10.0\nv21.0.0';

    final versions = registry
        .postProcess(fnmRemoteVersionGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle), ['v21.0.0', 'v20.10.0']);
  });

  test('remote version generator handles a single version', () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);

    final versions = registry
        .postProcess(fnmRemoteVersionGeneratorPostProcessHandler)!('v20.5.1');
    expect(versions.map((item) => item.nameSingle), ['v20.5.1']);
    expect(versions.single.description, 'Node.js v20.5.1');
  });

  test('remote version generator returns empty on empty or unparseable output',
      () {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);

    expect(
        registry
            .postProcess(fnmRemoteVersionGeneratorPostProcessHandler)!(''),
        isEmpty);
    expect(
        registry
            .postProcess(fnmRemoteVersionGeneratorPostProcessHandler)!('oops'),
        isEmpty);
  });

  test('fnm generators run their scripts and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerFnmHandlers(registry);
    final adapter = _FakeAdapter({
      'fnm list': const ProcessRunResult(
        stdout: '* v18.16.1\n  v16.20.2',
        stderr: '',
        exitCode: 0,
      ),
      'fnm list-remote': const ProcessRunResult(
        stdout: 'v18.14.1\nv18.16.0 (Hydrogen)\nv20.3.0\nv20.5.1 (Iron)',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/f/fnm.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    Future<void> runGenerator(
        String scriptCommand, List<String> names) async {
      final generator = generatorByScript(spec, scriptCommand);
      expect(generator, isNotNull,
          reason: 'no generator for $scriptCommand in the parsed spec');
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'fnm', tokenLength: 3, complete: true),
          CommandToken(token: 'uninstall', tokenLength: 9, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(), names,
          reason: 'generator $scriptCommand');
    }

    await runGenerator('fnm list', ['v16.20.2', 'v18.16.1']);
    await runGenerator('fnm list-remote',
        ['lts/Iron', 'v20.3.0', 'lts/Hydrogen', 'v18.14.1']);
  });
}
