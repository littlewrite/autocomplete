import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/serverless.dart';
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

/// Collects every `handler` string referenced under a dynamic field
/// (`generators`, `postProcess`, `custom`, or `generateSpec`) anywhere in the
/// JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

/// A minimal `serverless-compose.yml` fixture with two services.
const _composeYaml = 'services:\n'
    '  auth: {}\n'
    '  api: {}\n';

/// The shipped serverless JSON cannot be parsed as-is: the `invoke` and
/// `invoke local` subcommands carry `options: [{}]` — nameless option objects
/// that the strict JSON parser rejects (`Expected name string or string array`).
/// [MissingJsonHandlerPolicy.returnEmpty] does not cover malformed static
/// options, so the tests strip those empty option entries before parsing so the
/// root generateSpec binding stays reachable.
dynamic _stripNamelessOptions(dynamic node) {
  if (node is Map) {
    final result = <String, dynamic>{};
    node.forEach((key, value) {
      if (key == 'options' && value is List) {
        result['options'] = value
            .where((item) => !(item is Map && item.isEmpty))
            .map((item) => _stripNamelessOptions(item))
            .toList();
      } else {
        result[key.toString()] = _stripNamelessOptions(value);
      }
    });
    return result;
  }
  if (node is List) {
    return node.map((item) => _stripNamelessOptions(item)).toList();
  }
  return node;
}

/// Loads serverless.json with the malformed nameless options stripped and the
/// generateSpec handler bound.
Future<FigSpec> _serverlessSpec(JsonHandlerRegistry registry) async {
  final source = await File('assets/specs/s/serverless.json').readAsString();
  final cleaned = jsonEncode(_stripNamelessOptions(jsonDecode(source)));
  return figSpecFromJsonString(cleaned, handlers: registry);
}

void main() {
  test('serverless JSON binds the root generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerServerlessHandlers(handlers);
    final source = await File('assets/specs/s/serverless.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'serverless');
    expect(source, contains(serverlessGenerateSpecHandler));
    expect(_referencedHandlers(document), {serverlessGenerateSpecHandler});
  });

  test('generateSpec cats serverless-compose.yml', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerServerlessHandlers(registry);
    final spec = await _serverlessSpec(registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec(
      const ['serverless', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(
            stdout: _composeYaml, stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'cat');
    expect(seenArgs, 'serverless-compose.yml');
    expect(generated, isNotNull);
    expect(generated!.name, 'serverless');
  });

  test('generateSpec turns each service into a serverless subcommand', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerServerlessHandlers(registry);
    final spec = await _serverlessSpec(registry);

    final generated = await spec.generateSpec!(
      const ['serverless', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: _composeYaml, stderr: '', status: 0),
    );

    final subcommands = generated!.subcommands!;
    expect(subcommands.map((s) => s.nameList.first).toList(), ['auth', 'api']);
    for (final subcommand in subcommands) {
      expect(subcommand.priority, 100);
      expect(subcommand.loadSpec, 'serverless');
      expect(subcommand.icon, 'fig://icon?type=box');
      // Description is the joined tokens.
      expect(subcommand.description, 'serverless,');
    }
  });

  test('generateSpec returns null on empty or invalid YAML', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerServerlessHandlers(registry);
    final spec = await _serverlessSpec(registry);

    Future<FigSpec?> generateWith(String stdout) => spec.generateSpec!(
          const ['serverless', ''],
          (input) async => ExecuteCommandOutput(
              stdout: stdout, stderr: '', status: 0),
        );

    expect(await generateWith(''), isNull);
    expect(await generateWith('not: [valid'), isNull);
    expect(await generateWith('services:'), isNull);
  });

  test('generateSpec returns null when the current token is a service',
      () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerServerlessHandlers(registry);
    final spec = await _serverlessSpec(registry);

    final generated = await spec.generateSpec!(
      const ['api', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: _composeYaml, stderr: '', status: 0),
    );

    expect(generated, isNull);
  });

  test('generateSpec runs end to end through the adapter', () async {
    final registry = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerServerlessHandlers(registry);
    final adapter = _FakeAdapter({
      'cat serverless-compose.yml': const ProcessRunResult(
        stdout: 'services:\n'
            '  auth: {}\n'
            '  api: {}\n'
            '  billing: {}\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final spec = await _serverlessSpec(registry);
    final generated = await spec.generateSpec!(
      const ['serverless', ''],
      (input) async {
        final result = await adapter.runProcess(input.command, input.args);
        return ExecuteCommandOutput(
          stdout: result.stdout,
          stderr: result.stderr,
          status: result.exitCode,
        );
      },
    );

    expect(generated!.subcommands!.map((s) => s.nameList.first).toList(),
        ['auth', 'api', 'billing']);
  });
}
