import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/specs/@usermn/sdc/sdc.dart' as sdc;
import 'package:autocomplete/specs/heroku/index.dart' as heroku;
import 'package:autocomplete/specs/shopify/index.dart' as shopify;
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
    final key = [executable, ...arguments].join(' ');
    processInvocations.add(key);
    return _processResults[key] ?? const ProcessRunResult(stdout: '');
  }
}

void main() {
  tearDown(() {
    unregisterSpec('heroku');
    unregisterSpec('shopify');
    unregisterSpec('sdc');
  });

  test('heroku uses versioned index and selects 8.6.0 commands', () async {
    registerSpec('heroku', () => heroku.completionSpec);

    final adapter = _FakeAdapter(
      processResults: const {
        'heroku --version': ProcessRunResult(stdout: 'heroku/8.6.2 darwin-x64'),
      },
    );

    final result = await getSuggestions(
      'heroku ',
      '/work',
      Shell.bash,
      adapter,
    );

    expect(result, isNotNull);
    expect(result!.suggestions.map((s) => s.name), contains('authorizations'));
    expect(adapter.processInvocations, ['heroku --version']);
  });

  test('shopify suggests theme directly without nested shopify layer',
      () async {
    registerSpec('shopify', () => shopify.completionSpec);

    final adapter = _FakeAdapter(
      processResults: const {
        'shopify version': ProcessRunResult(stdout: '3.12.1'),
      },
    );

    final result = await getSuggestions(
      'shopify ',
      '/work',
      Shell.bash,
      adapter,
    );

    expect(result, isNotNull);
    final names = result!.suggestions.map((s) => s.name).toList();
    expect(names, contains('theme'));
    expect(names, isNot(contains('shopify')));
    expect(adapter.processInvocations, ['shopify version']);
  });

  test('sdc resolves version through npx adapter command', () async {
    registerSpec('sdc', () => sdc.usermnSdcSpec);

    final adapter = _FakeAdapter(
      processResults: const {
        'npx @usermn/sdc --version': ProcessRunResult(stdout: '0.0.7'),
      },
    );

    final result = await getSuggestions(
      'sdc --',
      '/work',
      Shell.bash,
      adapter,
    );

    expect(result, isNotNull);
    final names = result!.suggestions.map((s) => s.name).toList();
    expect(names, contains('--debug-options'));
    expect(names, contains('--confirm-commands'));
    expect(adapter.processInvocations, ['npx @usermn/sdc --version']);
  });
}
