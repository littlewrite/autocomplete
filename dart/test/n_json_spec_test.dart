import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/n.dart';
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
  test('n JSON binds every generator to the version arg post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNHandlers(handlers);
    final source = await File('assets/specs/n/n.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(nVersionArgGeneratorPostProcessHandler));
    expect(document['name'], 'n');

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
    expect(ids.toSet(), {nVersionArgGeneratorPostProcessHandler});
  });

  test('version post-processor drops the header and emits full, '
      'major.minor and major names', () {
    final registry = JsonHandlerRegistry();
    registerNHandlers(registry);
    final output = '  \n16.1.2\n16.1.3\n20.5.1';

    final versions =
        registry.postProcess(nVersionArgGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle),
        ['16.1.2', '16.1', '16', '16.1.3', '20.5.1', '20.5', '20']);
    expect(versions.first.nameList, ['16.1.2', 'v16.1.2']);
    expect(versions.first.description, 'Node.js 16.1.2');
    expect(versions[2].nameList, ['16', 'v16']);
    expect(versions[2].description, 'Node.js 16');
  });

  test('version post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerNHandlers(registry);

    expect(
        registry.postProcess(nVersionArgGeneratorPostProcessHandler)!(''),
        isEmpty);
  });

  test('version post-processor returns empty for a header without versions',
      () {
    final registry = JsonHandlerRegistry();
    registerNHandlers(registry);

    expect(
        registry.postProcess(nVersionArgGeneratorPostProcessHandler)!('oops'),
        isEmpty);
  });

  test('version post-processor keeps the empty entry from a trailing newline',
      () {
    final registry = JsonHandlerRegistry();
    registerNHandlers(registry);
    final output = '  \n16.1.2\n';

    final versions =
        registry.postProcess(nVersionArgGeneratorPostProcessHandler)!(output);
    expect(versions.map((item) => item.nameSingle),
        ['16.1.2', '16.1', '16', '', '.undefined']);
    expect(versions[3].nameList, ['', 'v']);
    expect(versions[3].description, 'Node.js ');
    expect(versions[4].nameList, ['.undefined', 'v.undefined']);
    expect(versions[4].description, 'Node.js .undefined');
  });

  test('n generator runs n lsr --all and post-processes end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNHandlers(registry);
    final adapter = _FakeAdapter({
      'n lsr --all': const ProcessRunResult(
        stdout: '  \n16.1.2\n16.2.0\n20.5.1',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/n/n.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'n lsr --all');
    expect(generator, isNotNull,
        reason: 'no generator for n lsr --all in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'n', tokenLength: 1, complete: true),
        CommandToken(token: 'install', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    // Suggestion names are the longest alias of each [version, v<version>]
    // pair, so the end-to-end run surfaces the `v`-prefixed forms.
    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      'v16.1.2',
      'v16.1',
      'v16',
      'v16.2.0',
      'v16.2',
      'v20.5.1',
      'v20.5',
      'v20',
    ]);
  });
}
