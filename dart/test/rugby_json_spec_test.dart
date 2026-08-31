import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rugby.dart';
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

const _planListOutput = 'core\n'
    'release';

void main() {
  test('rugby JSON binds the generateSpec and plan postProcess handlers',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRugbyHandlers(handlers);
    final source = await File('assets/specs/r/rugby.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'rugby');
    expect(source, contains(rugbyGenerateSpecHandler));
    expect(source, contains(rugbyPlanListPostProcessHandler));
    expect(_referencedHandlers(document), {
      rugbyGenerateSpecHandler,
      rugbyPlanListPostProcessHandler,
    });
  });

  test('generateSpec runs rugby plan list', () async {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    final source = await File('assets/specs/r/rugby.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generateSpec = spec.generateSpec!;

    String? seenCommand;
    String? seenArgs;
    final generated = await generateSpec(
      const ['rugby', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(
            stdout: _planListOutput, stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'rugby');
    expect(seenArgs, 'plan list');
    expect(generated, isNotNull);
    expect(generated!.name, 'plan');
  });

  test('generateSpec turns each plan into a plan subcommand', () async {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    final source = await File('assets/specs/r/rugby.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rugby', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: _planListOutput, stderr: '', status: 0),
    );

    final subcommands = generated!.subcommands!;
    expect(subcommands.map((s) => s.nameList.first).toList(), ['core', 'release']);
    expect(subcommands.first.description, 'Run plan "core"');
    expect(subcommands.first.priority, 77);
    expect(subcommands.first.icon, '✈️');
    expect(
        subcommands.first.options!.map((o) => o.nameList.join(',')).toList(), [
      '--path,-p',
      '--rollback,-r',
      '--output,-o',
      '--verbose,-v',
      '--help,-h',
    ]);
    expect(subcommands.first.options!.first.args!.first.defaultValue,
        '.rugby/plans.yml');
  });

  test('generateSpec returns null on empty plan output', () async {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    final source = await File('assets/specs/r/rugby.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);

    final generated = await spec.generateSpec!(
      const ['rugby', ''],
      (input) async => const ExecuteCommandOutput(
          stdout: '', stderr: '', status: 0),
    );

    expect(generated, isNull);
  });

  test('plan post-processor lists plans with a run description', () {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    final suggestions =
        registry.postProcess(rugbyPlanListPostProcessHandler)!(_planListOutput);
    expect(suggestions.map((s) => s.nameSingle ?? '').toList(),
        ['core', 'release']);
    expect(suggestions.first.description, 'Run plan "core"');
    expect(suggestions.first.priority, 77);
    expect(suggestions.first.icon, '✈️');
  });

  test('plan post-processor handles empty output', () {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    expect(
        registry.postProcess(rugbyPlanListPostProcessHandler)!(''), isEmpty);
  });

  test('plan generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerRugbyHandlers(registry);
    final adapter = _FakeAdapter({
      'rugby plan list': const ProcessRunResult(
        stdout: _planListOutput,
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/rugby.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.subcommands!
        .expand((subcommand) => subcommand.args ?? const <FigArg>[])
        .expand((arg) => arg.generatorsList)
        .firstWhere((candidate) {
          final script = candidate.script;
          return script is List && script.join(' ') == 'rugby plan list';
        });

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rugby', tokenLength: 5, complete: true),
        CommandToken(token: 'plan', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((s) => s.name).toList(), ['core', 'release']);
  });
}
