import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/robot.dart';
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

const _findRobotScript =
    r'bash -c for i in $(find -E . -regex ".*.robot" -type f); do cat -s $i ; done';
const _findRobotOrResourceScript =
    r'bash -c for i in $(find -E . -regex ".*.(robot|resource)" -type f); do cat -s $i ; done';

FigGenerator generatorForOption(FigSpec spec, String optionName) {
  final option =
      spec.options!.firstWhere((option) => option.nameList.contains(optionName));
  return option.args!.single.generators!.single;
}

void main() {
  test('robot JSON binds every generator path to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRobotHandlers(handlers);
    final source = await File('assets/specs/r/robot.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(robotTagsPostProcessHandler));
    expect(source, contains(robotTestCasesPostProcessHandler));
    expect(source, contains(robotVariablesCustomHandler));
    expect(document['name'], 'robot');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['postProcess', 'custom']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      robotTagsPostProcessHandler,
      robotTestCasesPostProcessHandler,
      robotVariablesCustomHandler,
    });
  });

  test('tags post-processor parses [Tags] lines, dedupes, and skips comments',
      () {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final output = '*** Test Cases ***\n'
        'First Test\n'
        '    [Tags]    smoke  critical\n'
        '    Log    Hello\n'
        '\n'
        'Second Test\n'
        '    [Tags]    smoke  regression   # a comment is ignored\n'
        '    Log    World\n'
        '\n'
        'Third Test\n'
        '    [Tags]    dev  local\n'
        '    Log    X\n';

    final tags = registry.postProcess(robotTagsPostProcessHandler)!(output);
    expect(tags.map((item) => item.nameSingle ?? ''),
        ['smoke', 'critical', 'regression', 'dev', 'local']);
    expect(tags.first.description, 'Tag');
    expect(tags.first.icon, '🏷');
  });

  test('tags post-processor returns empty without [Tags] lines', () {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    expect(registry.postProcess(robotTagsPostProcessHandler)!(''), isEmpty);
    final noTags = registry.postProcess(robotTagsPostProcessHandler)!(
        '*** Test Cases ***\nMy Test\n    Log    Hi\n');
    expect(noTags, isEmpty);
  });

  test('test cases post-processor parses *** Test Cases *** blocks', () {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final output = '*** Settings ***\n'
        'Library    OperatingSystem\n'
        '\n'
        '*** Test Cases ***\n'
        'My First Test\n'
        '    [Tags]    smoke\n'
        '    Log    Hello\n'
        'Second  Test  With  Double  Spaces\n'
        '    Log    World\n'
        'Third Test # comment\n'
        '    Log    X\n'
        'FourthTest\n'
        '    Log    Y\n'
        '\n'
        '*** Keywords ***\n'
        'My Keyword\n'
        '    Log    Z\n';

    final cases =
        registry.postProcess(robotTestCasesPostProcessHandler)!(output);
    expect(cases.map((item) => item.nameSingle ?? ''),
        ['My First Test', 'Third Test', 'FourthTest', 'My Keyword']);
    expect(cases.first.description, 'Test case');
  });

  test('test cases post-processor returns empty without a block', () {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    expect(
        registry.postProcess(robotTestCasesPostProcessHandler)!(''), isEmpty);
    final noBlock = registry.postProcess(robotTestCasesPostProcessHandler)!(
        '*** Settings ***\nLibrary    X\n');
    expect(noBlock, isEmpty);
  });

  test('variables custom handler scans robot and resource files for variables',
      () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final handler = registry.custom(robotVariablesCustomHandler)!;

    final variables = await handler(['robot', '-v', 'MY'], (input) async {
      expect(input.command, 'bash');
      expect(input.args, [
        '-c',
        r'for i in $(find -E . -regex ".*.(robot|resource)" -type f); do cat -s $i ; done',
      ]);
      return const ExecuteCommandOutput(
        stdout: '*** Variables ***\n'
            '\${MY_APP_NAME}    Robot App\n'
            '\${MY_TOKEN}    secret\n'
            'MY_PLAIN    plain\n'
            '\n',
        stderr: '',
        status: 0,
      );
    }, null);

    expect(variables.map((item) => item.nameSingle ?? ''),
        ['MY_APP_NAME', 'MY_TOKEN']);
    expect(variables.first.description, 'Variable');
  });

  test('variables custom handler stays idle while typing a value', () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final handler = registry.custom(robotVariablesCustomHandler)!;

    var calls = 0;
    final variables = await handler(['robot', '-v', 'MY_APP:'], (input) async {
      calls++;
      return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    }, null);

    expect(calls, 0);
    expect(variables, isEmpty);
  });

  test('variables custom handler returns empty on command failure', () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final handler = registry.custom(robotVariablesCustomHandler)!;

    final variables = await handler(['robot', '-v', 'MY'], (input) async {
      return const ExecuteCommandOutput(stdout: '', stderr: 'boom', status: 1);
    }, null);
    expect(variables, isEmpty);
  });

  test('variables custom handler tolerates an empty token list', () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final handler = registry.custom(robotVariablesCustomHandler)!;

    final variables = await handler(const [], (input) async {
      return const ExecuteCommandOutput(
        stdout: '\${A_VAR}    x\n',
        stderr: '',
        status: 0,
      );
    }, null);
    expect(variables.map((item) => item.nameSingle ?? ''), ['A_VAR']);
  });

  test('tags generator runs the find script through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final adapter = _FakeAdapter({
      _findRobotScript: const ProcessRunResult(
        stdout: '    [Tags]    smoke  critical\n'
            '    [Tags]    smoke  regression\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/robot.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorForOption(spec, '--include');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'robot', tokenLength: 5, complete: true),
        CommandToken(token: '-i', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['smoke', 'critical', 'regression']);
  });

  test('test cases generator runs the find script through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final adapter = _FakeAdapter({
      _findRobotScript: const ProcessRunResult(
        stdout: '*** Test Cases ***\n'
            'My First Test\n'
            '    Log    Hello\n'
            'Second  Test  Double  Space\n'
            '    Log    World\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/robot.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorForOption(spec, '--test');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'robot', tokenLength: 5, complete: true),
        CommandToken(token: '-t', tokenLength: 2, complete: true),
        CommandToken(token: 'My', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['My First Test']);
  });

  test('variables generator runs the find script through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final adapter = _FakeAdapter({
      _findRobotOrResourceScript: const ProcessRunResult(
        stdout: '\${MY_APP_NAME}    Robot App\n'
            '\${MY_TOKEN}    secret\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/robot.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorForOption(spec, '--variable');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'robot', tokenLength: 5, complete: true),
        CommandToken(token: '-v', tokenLength: 2, complete: true),
        CommandToken(token: 'MY', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['MY_APP_NAME', 'MY_TOKEN']);
  });

  test('variables generator stays idle while typing a value end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerRobotHandlers(registry);
    final adapter = _FakeAdapter({});

    final source = await File('assets/specs/r/robot.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = generatorForOption(spec, '--variable');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'robot', tokenLength: 5, complete: true),
        CommandToken(token: '-v', tokenLength: 2, complete: true),
        CommandToken(token: 'MY_APP:', tokenLength: 7, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions, isEmpty);
  });
}
