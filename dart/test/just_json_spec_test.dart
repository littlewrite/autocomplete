import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/just.dart';
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

/// A deterministic `just --dump --dump-format json` document: a bare recipe,
/// a singular-parameter recipe, a variadic (star) recipe, a private recipe, one
/// alias, and two assignments.
const _dumpJson = '{'
    '"aliases":{"b":{"name":"b","target":"build"}},'
    '"assignments":{'
    '"NAME":{"name":"NAME","export":false,"value":"world"},'
    '"PORT":{"name":"PORT","export":true,"value":"8080"}'
    '},'
    '"recipes":{'
    '"build":{"name":"build","doc":"Build the project","body":[],'
    '"dependencies":[],"parameters":[],"priors":0,"private":false,'
    '"quiet":false,"shebang":false},'
    '"test":{"name":"test","doc":"Run the tests","body":[],'
    '"dependencies":[],"parameters":[{"default":null,"export":false,'
    '"kind":"singular","name":"FILTER"}],"priors":0,"private":false,'
    '"quiet":false,"shebang":false},'
    '"echo":{"name":"echo","doc":null,"body":[],"dependencies":[],'
    '"parameters":[{"default":null,"export":false,"kind":"star",'
    '"name":"ARGS"}],"priors":0,"private":false,"quiet":false,'
    '"shebang":false},'
    '"secret":{"name":"secret","doc":null,"body":[],"dependencies":[],'
    '"parameters":[],"priors":0,"private":true,"quiet":false,'
    '"shebang":false}'
    '}}';

/// Recursively collects every `handler` string in the parsed JSON document.
List<String> _collectHandlerIds(dynamic node) {
  final ids = <String>[];
  void visit(dynamic value) {
    if (value is Map) {
      final handler = value['handler'];
      if (handler is String) ids.add(handler);
      for (final child in value.values) {
        visit(child);
      }
    } else if (value is List) {
      for (final child in value) {
        visit(child);
      }
    }
  }

  visit(node);
  return ids;
}

void main() {
  test('just JSON binds every generator to the seven declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerJustHandlers(handlers);
    final source = await File('assets/specs/j/just.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(justSetVariableScriptHandler));
    expect(source, contains(justSetVariablePostProcessHandler));
    expect(source, contains(justShowRecipeScriptHandler));
    expect(source, contains(justShowRecipePostProcessHandler));
    expect(source, contains(justArgsTriggerHandler));
    expect(source, contains(justArgsScriptHandler));
    expect(source, contains(justArgsPostProcessHandler));
    expect(document['name'], 'just');

    expect(_collectHandlerIds(document).toSet(), {
      justSetVariableScriptHandler,
      justSetVariablePostProcessHandler,
      justShowRecipeScriptHandler,
      justShowRecipePostProcessHandler,
      justArgsTriggerHandler,
      justArgsScriptHandler,
      justArgsPostProcessHandler,
    });
  });

  test('script handler builds the Justfile dump command', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final script = registry.script(justArgsScriptHandler)!;

    const base = ['just', '--unstable', '--dump', '--dump-format', 'json'];
    expect(script(['just', '']), base);
    expect(script(['just', '--set', '']), base);

    const withPath = [
      'just',
      '--unstable',
      '--dump',
      '--dump-format',
      'json',
      '--justfile',
      'Justfile',
    ];
    expect(script(['just', '-f', 'Justfile']), withPath);
    expect(script(['just', '-fJustfile']), withPath);
    expect(script(['just', '-sfJustfile']), withPath);
    expect(script(['just', '--justfile=Justfile']), withPath);
    expect(script(['just', '--justfile', 'Justfile']), withPath);
    // A trailing --justfile with nothing after it falls back to searching.
    expect(script(['just', '--justfile']), base);
  });

  test('all three script IDs share the same dump command', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final tokens = ['just', '-f', 'Justfile'];
    const expected = [
      'just',
      '--unstable',
      '--dump',
      '--dump-format',
      'json',
      '--justfile',
      'Justfile',
    ];
    expect(registry.script(justSetVariableScriptHandler)!(tokens), expected);
    expect(registry.script(justShowRecipeScriptHandler)!(tokens), expected);
    expect(registry.script(justArgsScriptHandler)!(tokens), expected);
  });

  test('trigger fires only when a token completes', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final trigger = registry.trigger(justArgsTriggerHandler)!;
    expect(trigger('', 'build'), isTrue);
    expect(trigger('', ''), isFalse);
    expect(trigger('build', ''), isFalse);
    expect(trigger('build', 'buil'), isFalse);
  });

  test('--set variable post-processor lists every assignment', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final postProcess = registry.postProcess(justSetVariablePostProcessHandler)!;

    final variables = postProcess(_dumpJson);
    expect(variables.map((item) => item.nameSingle), ['NAME', 'PORT']);
    expect(variables.every((item) => item.icon == 'fig://icon?type=string'),
        isTrue);

    expect(postProcess('not json'), isEmpty);
  });

  test('--show post-processor lists recipes then aliases', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final postProcess = registry.postProcess(justShowRecipePostProcessHandler)!;

    final suggestions = postProcess(_dumpJson);
    expect(suggestions.map((item) => item.nameSingle),
        ['build', 'test', 'echo', 'b']);
    expect(suggestions[0].description, 'Build the project');
    expect(suggestions[0].insertValue, 'build');
    expect(suggestions[1].insertValue, 'test ');
    expect(suggestions[2].insertValue, 'echo ');
    expect(suggestions[2].description, 'Recipe');
    expect(suggestions[3].description, "Alias for 'build'");
    expect(suggestions[3].icon, 'fig://icon?type=commandkey');
  });

  test('root args post-processor shows usage for parameterized recipes', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final postProcess = registry.postProcess(justArgsPostProcessHandler)!;

    final suggestions = postProcess(_dumpJson);
    expect(suggestions.map((item) => item.nameSingle),
        ['build', 'test', 'echo', 'b']);
    expect(suggestions[0].displayName, 'build');
    expect(suggestions[1].displayName, 'test <FILTER>');
    expect(suggestions[2].displayName, 'echo [ARGS...]');
  });

  test('root args post-processor is empty inside a recipe argument range', () {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final postProcess = registry.postProcess(justArgsPostProcessHandler)!;

    // `test` takes a single FILTER argument; `echo` is variadic. The argument
    // tokens must not collide with recipe/alias names (as in the TS source, a
    // token that names a recipe or alias breaks the backward scan).
    expect(postProcess(_dumpJson, ['just', 'test', 'x']), isEmpty);
    expect(postProcess(_dumpJson, ['just', 'echo', 'x', 'y', 'z']), isEmpty);
    expect(postProcess(_dumpJson, ['just', 'echo', 'x', 'y', 'z', 'w']),
        isEmpty);
    // After a recipe with no arguments a following token is a new recipe.
    expect(postProcess(_dumpJson, ['just', 'build']).isNotEmpty, isTrue);
  });

  test('recipe generator runs the JSON dump end to end', () async {
    final registry = JsonHandlerRegistry();
    registerJustHandlers(registry);
    final adapter = _FakeAdapter({
      'just --unstable --dump --dump-format json': const ProcessRunResult(
        stdout: _dumpJson,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/j/just.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'just', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test', 'echo', 'b']);
    expect(suggestions.map((suggestion) => suggestion.description).toList(), [
      'Build the project',
      'Run the tests',
      'Recipe',
      "Alias for 'build'",
    ]);
  });
}
