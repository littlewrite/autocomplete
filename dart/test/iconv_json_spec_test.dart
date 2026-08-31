import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/iconv.dart';
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

/// Returns the first option-argument generator whose static script (joined)
/// matches [scriptCommand]. The iconv spec has no subcommands, so only the
/// top-level options need to be searched.
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  for (final option in spec.options ?? const <FigOption>[]) {
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

void main() {
  test('iconv JSON binds every generator to the two post-process IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerIconvHandlers(handlers);
    final source = await File('assets/specs/i/iconv.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(iconvFromCodePostProcessHandler));
    expect(source, contains(iconvToCodePostProcessHandler));
    expect(document['name'], 'iconv');

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
      iconvFromCodePostProcessHandler,
      iconvToCodePostProcessHandler,
    });
  });

  test('from-code post-processor maps each encoding line to an arg suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerIconvHandlers(registry);
    const output = 'ANSI_X3.4-1968\nASCII\nUTF-8\nUTF-16';

    final encodings =
        registry.postProcess(iconvFromCodePostProcessHandler)!(output);
    expect(encodings.map((item) => item.nameSingle ?? ''),
        ['ANSI_X3.4-1968', 'ASCII', 'UTF-8', 'UTF-16']);
    expect(encodings.map((item) => item.description),
        ['ANSI_X3.4-1968', 'ASCII', 'UTF-8', 'UTF-16']);
    expect(encodings.map((item) => item.type), [
      SuggestionType.arg,
      SuggestionType.arg,
      SuggestionType.arg,
      SuggestionType.arg,
    ]);
  });

  test('to-code post-processor maps each encoding line to an arg suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerIconvHandlers(registry);
    const output = 'ISO-8859-1\nUTF-7';

    final encodings =
        registry.postProcess(iconvToCodePostProcessHandler)!(output);
    expect(encodings.map((item) => item.nameSingle ?? ''),
        ['ISO-8859-1', 'UTF-7']);
    expect(encodings.map((item) => item.description), ['ISO-8859-1', 'UTF-7']);
    expect(encodings.map((item) => item.type),
        [SuggestionType.arg, SuggestionType.arg]);
  });

  test('post-processors drop blank lines, so empty output yields no suggestions',
      () {
    final registry = JsonHandlerRegistry();
    registerIconvHandlers(registry);

    final fromCode =
        registry.postProcess(iconvFromCodePostProcessHandler)!('');
    expect(fromCode, isEmpty);

    final toCode = registry.postProcess(iconvToCodePostProcessHandler)!('');
    expect(toCode, isEmpty);
  });

  test('post-processor ignores the blank entry from a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerIconvHandlers(registry);
    const output = 'ASCII\nUTF-8\n';

    final encodings =
        registry.postProcess(iconvToCodePostProcessHandler)!(output);
    expect(encodings.map((item) => item.nameSingle ?? ''), ['ASCII', 'UTF-8']);
  });

  test('the encoding generators run their script and post-process end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerIconvHandlers(registry);
    const script = "bash -c iconv -l | command tr ' ' '\\n' | sort";
    final adapter = _FakeAdapter({
      script: const ProcessRunResult(
        stdout: 'ANSI_X3.4-1968\nASCII\nUTF-8\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/i/iconv.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorByScript(spec, script);
    expect(generator, isNotNull,
        reason: 'no generator for the encoding script in the parsed spec');
    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'iconv', tokenLength: 5, complete: true),
        CommandToken(token: '-f', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['ANSI_X3.4-1968', 'ASCII', 'UTF-8']);
  });
}
