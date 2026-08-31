import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/vultr_cli.dart';
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
/// [scriptCommand], searching the whole subcommand and option tree.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? match(FigGenerator generator) {
    final script = generator.script;
    if (script is List && script.join(' ') == scriptCommand) return generator;
    return null;
  }

  FigGenerator? fromArg(FigArg arg) {
    for (final generator in arg.generatorsList) {
      final found = match(generator);
      if (found != null) return found;
    }
    return null;
  }

  FigGenerator? visitSubcommand(FigSubcommand sub) {
    for (final arg in sub.args ?? const <FigArg>[]) {
      final found = fromArg(arg);
      if (found != null) return found;
    }
    for (final option in sub.options ?? const <FigOption>[]) {
      for (final arg in option.args ?? const <FigArg>[]) {
        final found = fromArg(arg);
        if (found != null) return found;
      }
    }
    if (sub.subcommands != null) {
      for (final nested in sub.subcommands!) {
        final found = visitSubcommand(nested);
        if (found != null) return found;
      }
    }
    return null;
  }

  for (final arg in spec.args ?? const <FigArg>[]) {
    final found = fromArg(arg);
    if (found != null) return found;
  }
  for (final sub in spec.subcommands ?? const <FigSubcommand>[]) {
    final found = visitSubcommand(sub);
    if (found != null) return found;
  }
  return null;
}

void main() {
  test('vultr-cli JSON binds both generators to their declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerVultrCliHandlers(handlers);
    final source = await File('assets/specs/v/vultr-cli.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(vultrCliInstanceDeletePostProcessHandler));
    expect(source, contains(vultrCliInstanceGetPostProcessHandler));
    expect(document['name'], 'vultr-cli');

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
      vultrCliInstanceDeletePostProcessHandler,
      vultrCliInstanceGetPostProcessHandler,
    });
  });

  test('instance list post-processor drops header/footer and keeps the ID',
      () {
    final registry = JsonHandlerRegistry();
    registerVultrCliHandlers(registry);
    final output = 'ID\tLABEL\tDATE CREATED\tSTATUS\tIPV4\tIPV6\tPORT\n'
        '5b9f1e2d3c4a\tweb\t2022-06-01 09:00:00\tactive\t192.0.2.10\t2001:db8::\t4000\n'
        '5b9f1e2d3c4b\tdb\t2022-06-02 10:00:00\tactive\t192.0.2.11\t2001:db8::1\t5432\n'
        '5b9f1e2d3c4c\tcache\t2022-06-03 11:00:00\tactive\t192.0.2.12\t2001:db8::2\t6379\n'
        '\t\n'
        'Rows: 3\n';

    final instances = registry
        .postProcess(vultrCliInstanceDeletePostProcessHandler)!(output);
    expect(instances.map((item) => item.nameSingle),
        ['5b9f1e2d3c4a', '5b9f1e2d3c4b', '5b9f1e2d3c4c']);
    expect(instances.map((item) => item.description), [
      'web\t2022-06-01 09:00:00',
      'db\t2022-06-02 10:00:00',
      'cache\t2022-06-03 11:00:00',
    ]);
  });

  test('both instance post-processors share the same parse', () {
    final registry = JsonHandlerRegistry();
    registerVultrCliHandlers(registry);
    final output = 'ID\tLABEL\tDATE CREATED\tSTATUS\tIPV4\tIPV6\tPORT\n'
        '5b9f1e2d3c4a\tweb\t2022-06-01 09:00:00\tactive\t192.0.2.10\t2001:db8::\t4000\n'
        'Rows: 1\n'
        '\n';

    final viaDelete = registry
        .postProcess(vultrCliInstanceDeletePostProcessHandler)!(output);
    final viaGet =
        registry.postProcess(vultrCliInstanceGetPostProcessHandler)!(output);
    expect(viaDelete.map((item) => item.nameSingle),
        ['5b9f1e2d3c4a']);
    expect(viaGet.map((item) => item.nameSingle), ['5b9f1e2d3c4a']);
    expect(viaGet.first.description, 'web\t2022-06-01 09:00:00');
  });

  test('instance post-processor returns an empty list for empty output', () {
    final registry = JsonHandlerRegistry();
    registerVultrCliHandlers(registry);
    expect(registry.postProcess(vultrCliInstanceDeletePostProcessHandler)!(''),
        isEmpty);
    expect(registry.postProcess(vultrCliInstanceGetPostProcessHandler)!(''),
        isEmpty);
  });

  test('vultr-cli instance list generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerVultrCliHandlers(registry);
    final adapter = _FakeAdapter({
      'vultr-cli instance list': const ProcessRunResult(
        stdout: 'ID\tLABEL\tSTATUS\tIPV4\tIPV6\tPORT\n'
            '5b9f1e2d3c4a\tweb\tactive\t192.0.2.10\t2001:db8::\t4000\n'
            '5b9f1e2d3c4b\tdb\tactive\t192.0.2.11\t2001:db8::1\t5432\n'
            'Rows: 2\n'
            '\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/v/vultr-cli.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, 'vultr-cli instance list');
    expect(generator, isNotNull,
        reason: 'no generator for vultr-cli instance list in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'vultr-cli', tokenLength: 9, complete: true),
        CommandToken(token: 'instance', tokenLength: 8, complete: true),
        CommandToken(token: 'get', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['5b9f1e2d3c4a', '5b9f1e2d3c4b']);
  });
}
