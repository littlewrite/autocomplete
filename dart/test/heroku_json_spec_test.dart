import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/heroku.dart';
import 'package:test/test.dart';

class _HerokuAdapter implements CompleteAdapter {
  @override
  String? getEnv(String envKey) => null;

  @override
  Map<String, String> getEnvs() => const {};

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async =>
      const [];

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    expect(executable, 'heroku');
    if (arguments.join(' ') == '--version') {
      return const ProcessRunResult(stdout: 'heroku/8.6.0 darwin-x64 node-v18');
    }
    expect(arguments, ['apps', '--all', '--json']);
    return const ProcessRunResult(stdout: '[{"name":"example-app"}]');
  }
}

void main() {
  test('heroku resolver and shared app generator retain source behavior',
      () async {
    final handlers = JsonHandlerRegistry();
    registerHerokuHandlers(handlers);
    final adapter = _HerokuAdapter();
    Future<ExecuteCommandOutput> execute(ExecuteCommandInput input) async {
      final result = await adapter.runProcess(input.command, input.args);
      return ExecuteCommandOutput(
        stdout: result.stdout,
        stderr: result.stderr,
        status: result.exitCode,
      );
    }

    final version = await handlers.version(herokuVersionHandler)!(
      execute,
    );
    expect(version, '8.6.0');

    final apps = await handlers.custom(herokuAppGeneratorHandlers.first)!(
      const [],
      execute,
      null,
    );
    expect(apps.single.nameSingle, 'example-app');
    expect(apps.single.description, 'example-app');
  });
}
