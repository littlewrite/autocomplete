import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/specs/infracost/index.dart' as infracost;
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter({
    Map<String, String>? envs,
    Map<String, ProcessRunResult>? processResults,
  })  : _envs = envs ?? const {'HOME': '/home/test'},
        _processResults = processResults ?? const {};

  final Map<String, String> _envs;
  final Map<String, ProcessRunResult> _processResults;
  final List<String> processInvocations = [];

  @override
  String? getEnv(String envKey) => _envs[envKey];

  @override
  Map<String, String> getEnvs() => Map<String, String>.from(_envs);

  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    return const [];
  }

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    processInvocations.add([executable, ...arguments].join(' '));
    final key = [executable, ...arguments].join(' ');
    return _processResults[key] ?? const ProcessRunResult(stdout: '');
  }
}

void main() {
  tearDown(() {
    unregisterSpec('infracost');
  });

  test('infracost root suggests auth directly without nested infracost layer',
      () async {
    registerSpec('infracost', () => infracost.completionSpec);

    final adapter = _FakeAdapter(
      processResults: const {
        'infracost --version': ProcessRunResult(stdout: 'infracost 0.10.0'),
      },
    );

    final result = await getSuggestions(
      'infracost ',
      '/work',
      Shell.bash,
      adapter,
    );

    expect(result, isNotNull);
    final names = result!.suggestions.map((s) => s.name).toList();
    expect(names, contains('auth'));
    expect(names, isNot(contains('infracost')));
  });
}
