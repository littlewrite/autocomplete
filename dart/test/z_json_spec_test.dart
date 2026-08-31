import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/z.dart';
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

void main() {
  test('z JSON binds its generator to the custom handler', () async {
    final handlers = JsonHandlerRegistry();
    registerZHandlers(handlers);
    final source = await File('assets/specs/z/z.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(zCustomHandler));
    expect(document['name'], 'z');
  });

  test('custom merges zoxide history and cwd folders, deduped by path',
      () async {
    final registry = JsonHandlerRegistry();
    registerZHandlers(registry);
    final handler = registry.custom(zCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}),
    );
    final results = <String, ExecuteCommandOutput>{
      'zoxide query --list --score': const ExecuteCommandOutput(
        stdout: '35 /Users/paul/projects/blog\n'
            '2 /work/lib\n'
            '7 /work/src\n',
        stderr: '',
        status: 0,
      ),
      'bash -c ls -d */': const ExecuteCommandOutput(
        stdout: 'lib/\nbin/\n',
        stderr: '',
        status: 0,
      ),
    };
    Future<ExecuteCommandOutput> executeCommand(ExecuteCommandInput input) async {
      final key = [input.command, ...input.args].join(' ');
      return results[key] ??
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    }

    final suggestions = await handler(const ['z', ''], executeCommand, context);

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['/Users/paul/projects/blog', 'lib', 'src', 'bin']);
    // '/work/lib' comes from zoxide; the cwd listing duplicate is dropped.
    expect(suggestions.where((item) => item.nameSingle == 'lib').length, 1);
    expect(suggestions.map((item) => item.description),
        ['Score: 35', 'Score: 2', 'Score: 7', 'Score: 0']);
    expect(suggestions.map((item) => item.priority).toList(),
        [35, 9000, 9000, 8999]);
  });

  test('custom passes the joined query to zoxide when a term is present',
      () async {
    final registry = JsonHandlerRegistry();
    registerZHandlers(registry);
    final handler = registry.custom(zCustomHandler)!;
    final context = FigGeneratorContext(
      currentWorkingDirectory: '/work',
      adapter: _FakeAdapter({}),
    );

    final executed = <String>[];
    final results = <String, ExecuteCommandOutput>{
      'zoxide query --list --score -- proj': const ExecuteCommandOutput(
        stdout: '3 /Users/paul/projects\n',
        stderr: '',
        status: 0,
      ),
      'bash -c ls -d */': const ExecuteCommandOutput(
        stdout: 'src/\n',
        stderr: '',
        status: 0,
      ),
    };
    Future<ExecuteCommandOutput> executeCommand(
        ExecuteCommandInput input) async {
      final key = [input.command, ...input.args].join(' ');
      executed.add(key);
      return results[key] ??
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
    }

    final suggestions = await handler(const ['z', 'proj'], executeCommand, context);

    expect(executed, contains('zoxide query --list --score -- proj'));
    expect(suggestions.first.nameSingle, '/Users/paul/projects');
  });

  test('custom returns empty without a context', () async {
    final registry = JsonHandlerRegistry();
    registerZHandlers(registry);
    final handler = registry.custom(zCustomHandler)!;

    expect(await handler(const ['z', ''], null, null), isEmpty);
  });

  test('z generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerZHandlers(registry);
    final adapter = _FakeAdapter({
      'zoxide query --list --score': const ProcessRunResult(
        stdout: '35 /Users/paul/projects/blog\n'
            '2 /work/lib\n'
            '7 /work/src\n',
        stderr: '',
        exitCode: 0,
      ),
      'bash -c ls -d */': const ProcessRunResult(
        stdout: 'lib/\nbin/\n',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/z/z.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'z', tokenLength: 1, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['/Users/paul/projects/blog', 'lib', 'src', 'bin']);
  });
}
