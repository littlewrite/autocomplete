import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

class _Adapter implements CompleteAdapter {
  @override
  Map<String, String> getEnvs() => const {};

  @override
  String? getEnv(String envKey) => null;

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(String path,
          {bool foldersOnly = false, List<String>? extensions}) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(String executable, List<String> arguments,
          {String? workingDirectory,
          Map<String, String?>? environment}) async =>
      const ProcessRunResult(
          stdout: '', stderr: 'permission denied', exitCode: 7);
}

void main() {
  test(
      'dynamic script diagnostics include handler, command, and process details',
      () async {
    String? message;
    Object? error;
    final generator = FigGenerator(
      script: const ['git', 'branch'],
      splitOn: '\n',
      debugHandlers: const {
        'script': 'git.branches@subcommands[0].args[0].generators[0].script',
      },
    );

    final result = await runGeneratorSuggestions(
      generator,
      [
        const CommandToken(
          token: 'git',
          tokenLength: 3,
          complete: true,
          isOption: false,
          isQuoted: false,
        ),
      ],
      '/tmp/repo',
      _Adapter(),
      logger: (text, [cause, _]) {
        message = text;
        error = cause;
      },
    );

    expect(result, isEmpty);
    expect(message, contains('kind=script+splitOn'));
    expect(
        message,
        contains(
            'handler=git.branches@subcommands[0].args[0].generators[0].script'));
    expect(message, contains('command=git'));
    expect(message, contains('cwd=/tmp/repo'));
    expect(message, contains('script=git branch'));
    expect(message, contains('exitCode=7'));
    expect(message, contains('stderr=permission denied'));
    expect(error, isA<Exception>());
  });
}
