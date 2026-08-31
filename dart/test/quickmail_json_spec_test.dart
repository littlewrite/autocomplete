import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/quickmail.dart';
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

/// Returns every generator whose static script (joined) matches
/// [scriptCommand], searching subcommand args and option args recursively.
List<FigGenerator> generatorsByScript(FigSpec spec, String scriptCommand) {
  final result = <FigGenerator>[];
  void visitSubcommand(FigSubcommand subcommand) {
    void collect(List<FigArg> args) {
      for (final arg in args) {
        for (final generator in arg.generatorsList) {
          final script = generator.script;
          if (script is List && script.join(' ') == scriptCommand) {
            result.add(generator);
          }
        }
      }
    }

    collect(subcommand.args ?? const <FigArg>[]);
    for (final option in subcommand.options ?? const <FigOption>[]) {
      collect(option.args ?? const <FigArg>[]);
    }
    for (final nested in subcommand.subcommands ?? const <FigSubcommand>[]) {
      visitSubcommand(nested);
    }
  }

  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    visitSubcommand(subcommand);
  }
  return result;
}

void main() {
  test('quickmail JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerQuickmailHandlers(handlers);
    final source = await File('assets/specs/q/quickmail.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(quickmailTemplateListPostProcessHandler));
    expect(source, contains(quickmailTemplateEditPostProcessHandler));
    expect(document['name'], 'quickmail');

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
      quickmailTemplateListPostProcessHandler,
      quickmailTemplateEditPostProcessHandler,
    });
  });

  test('template post-processor maps each line to name, description and icon',
      () {
    final registry = JsonHandlerRegistry();
    registerQuickmailHandlers(registry);
    const output = 'welcome\nnewsletter\ninvoice\n';

    final templates = registry
        .postProcess(quickmailTemplateListPostProcessHandler)!(output);
    expect(templates.map((item) => item.nameSingle),
        ['welcome', 'newsletter', 'invoice']);
    expect(templates.map((item) => item.description),
        ['welcome', 'newsletter', 'invoice']);
    expect(templates.map((item) => item.icon),
        ['fig://icon?type=box', 'fig://icon?type=box', 'fig://icon?type=box']);
  });

  test('template post-processor skips blank lines', () {
    final registry = JsonHandlerRegistry();
    registerQuickmailHandlers(registry);
    const output = '\nwelcome\n\nnewsletter\n';

    final templates = registry
        .postProcess(quickmailTemplateEditPostProcessHandler)!(output);
    expect(templates.map((item) => item.nameSingle), ['welcome', 'newsletter']);
  });

  test('template post-processor returns empty on empty output', () {
    final registry = JsonHandlerRegistry();
    registerQuickmailHandlers(registry);

    final empty = registry
        .postProcess(quickmailTemplateListPostProcessHandler)!('');
    expect(empty, isEmpty);

    final whitespace = registry
        .postProcess(quickmailTemplateListPostProcessHandler)!('   \n  \n');
    expect(whitespace, isEmpty);
  });

  test('both quickmail generators run their script and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerQuickmailHandlers(registry);
    final adapter = _FakeAdapter({
      'quickmail template listall': const ProcessRunResult(
        stdout: 'welcome\nnewsletter\ninvoice\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/q/quickmail.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generators = generatorsByScript(spec, 'quickmail template listall');
    expect(generators, hasLength(2));

    for (final generator in generators) {
      final suggestions = await runGeneratorSuggestions(
        generator,
        const [
          CommandToken(token: 'quickmail', tokenLength: 9, complete: true),
          CommandToken(token: 'send', tokenLength: 4, complete: true),
          CommandToken(token: '-t', tokenLength: 2, complete: true),
          CommandToken(token: '', tokenLength: 0, complete: false),
        ],
        '/work',
        adapter,
      );
      expect(suggestions.map((suggestion) => suggestion.name).toList(),
          ['welcome', 'newsletter', 'invoice']);
    }
  });
}
