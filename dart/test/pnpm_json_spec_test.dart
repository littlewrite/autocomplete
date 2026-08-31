import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/pnpm.dart';
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

const _packageJsonScript = [
  'bash',
  '-c',
  "until [[ -f package.json ]] || [[ \$PWD = '/' ]]; do cd ..; done; cat package.json",
];

/// Collects every `handler` string referenced under `generators` or
/// `generateSpec` anywhere in the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' || key == 'generateSpec') &&
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

void main() {
  test('pnpm JSON binds every dynamic value to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerPnpmHandlers(handlers);
    final source = await File('assets/specs/p/pnpm.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(pnpmScriptsGeneratorHandler));
    expect(source, contains(pnpmGenerateSpecHandler));
    expect(document['name'], 'pnpm');
    expect(_referencedHandlers(document), {
      pnpmScriptsGeneratorHandler,
      pnpmGenerateSpecHandler,
    });
  });

  test('scripts generator returns scripts with fig overrides and npm icon',
      () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);
    final handler = registry.custom(pnpmScriptsGeneratorHandler)!;

    final suggestions = await handler(
      ['pnpm', 'run', ''],
      (input) async => const ExecuteCommandOutput(
        stdout:
            '{"scripts":{"build":"dart compile","test":"dart test"},'
            '"fig":{"build":{"description":"Custom build","priority":80}}}',
        stderr: '',
        status: 0,
      ),
      null,
    );
    expect(suggestions.map((item) => item.nameSingle), ['build', 'test']);
    expect(suggestions.first.description, 'Custom build');
    expect(suggestions.first.priority, 80);
    expect(suggestions.last.icon, 'fig://icon?type=npm');
    expect(suggestions.last.description, 'dart test');
  });

  test('scripts generator picks the yarn icon for the yarn client', () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);
    final handler = registry.custom(pnpmScriptsGeneratorHandler)!;

    final suggestions = await handler(
      ['yarn', 'run', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '{"scripts":{"build":"dart compile"}}',
        stderr: '',
        status: 0,
      ),
      null,
    );
    expect(suggestions.single.icon, 'fig://icon?type=yarn');
  });

  test('scripts generator returns empty on empty output and parse errors',
      () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);
    final handler = registry.custom(pnpmScriptsGeneratorHandler)!;

    Future<List<FigSuggestion>> run(String stdout) => handler(
          ['pnpm', 'run', ''],
          (input) async =>
              ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
          null,
        );

    expect(await run(''), isEmpty);
    expect(await run('   \n'), isEmpty);
    expect(await run('not json'), isEmpty);
    // A package.json without a scripts object yields no suggestions.
    expect(await run('{"dependencies":{"vite":"2.0.0"}}'), isEmpty);
  });

  test('generateSpec exposes nodeCli dependencies as pnpm subcommands',
      () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);

    final spec = await registry.generateSpec(pnpmGenerateSpecHandler)!(
      ['pnpm', ''],
      (input) async => const ExecuteCommandOutput(
        stdout:
            '{"dependencies":{"lodash":"4.17.21","vite":"2.0.0"},'
            '"devDependencies":{"jest":"29.0.0"},'
            '"optionalDependencies":{"tsc":"1.0.0"}}',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec, isNotNull);
    expect(spec!.name, 'pnpm');
    expect(spec.subcommands!.map((item) => item.nameList.first),
        ['vite', 'jest', 'tsc']);
    expect(spec.subcommands!.first.icon, 'fig://icon?type=package');
    expect(spec.subcommands!.first.loadSpec, 'vite');
  });

  test('generateSpec drops packages already present in the tokens', () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);

    final spec = await registry.generateSpec(pnpmGenerateSpecHandler)!(
      ['pnpm', 'vite'],
      (input) async => const ExecuteCommandOutput(
        stdout: '{"dependencies":{"lodash":"4.17.21","vite":"2.0.0",'
            '"jest":"29.0.0"}}',
        stderr: '',
        status: 0,
      ),
    );
    expect(spec!.subcommands!.map((item) => item.nameList.first), ['jest']);
  });

  test('generateSpec handles empty output and parse errors', () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);

    Future<FigSpec?> run(String stdout) {
      final handler = registry.generateSpec(pnpmGenerateSpecHandler)!;
      return handler(
        ['pnpm', ''],
        (input) async =>
            ExecuteCommandOutput(stdout: stdout, stderr: '', status: 0),
      );
    }

    final emptySpec = await run('');
    expect(emptySpec, isNotNull);
    expect(emptySpec!.name, 'pnpm');
    expect(emptySpec.subcommands, isEmpty);

    final brokenSpec = await run('not json');
    expect(brokenSpec, isNotNull);
    expect(brokenSpec!.subcommands, isEmpty);
  });

  test('pnpm scripts generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerPnpmHandlers(registry);
    final adapter = _FakeAdapter({
      _packageJsonScript.join(' '): const ProcessRunResult(
        stdout: '{"scripts":{"build":"dart compile","test":"dart test"}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/p/pnpm.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'pnpm', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['build', 'test']);
  });
}
