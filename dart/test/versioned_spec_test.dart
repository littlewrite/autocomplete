import 'package:autocomplete/autocomplete.dart';
import 'package:test/test.dart';

class _ProcessInvocation {
  const _ProcessInvocation({
    required this.executable,
    required this.arguments,
  });

  final String executable;
  final List<String> arguments;
}

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter({
    Map<String, String>? envs,
    Map<String, ProcessRunResult>? processResults,
  })  : _envs = envs ?? const {'HOME': '/home/test'},
        _processResults = processResults ?? const {};

  final Map<String, String> _envs;
  final Map<String, ProcessRunResult> _processResults;
  final List<_ProcessInvocation> processInvocations = [];

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
    processInvocations.add(_ProcessInvocation(
      executable: executable,
      arguments: List<String>.from(arguments),
    ));
    final key = [executable, ...arguments].join(' ');
    return _processResults[key] ?? const ProcessRunResult(stdout: '');
  }
}

Future<String> _getToolVersion(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'versioned-tool',
    args: ['--version'],
  ));
  return cleanVersion(result.stdout) ?? '';
}

void main() {
  group('createVersionedSpec', () {
    const command = 'ac_versioned_spec_test';
    const olderCommand = 'ac_versioned_spec_old_fallback_test';

    tearDown(() {
      unregisterSpec(command);
      unregisterSpec(olderCommand);
      clearDefaultCache();
    });

    test('selects the best matching version via adapter-backed executeCommand',
        () async {
      var oldLoads = 0;
      var newLoads = 0;

      registerSpec(
        command,
        () => createVersionedSpec(
          specName: command,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async {
                oldLoads += 1;
                return FigSpec(
                  name: command,
                  subcommands: [FigSubcommand(name: 'old-breakdown')],
                );
              },
            ),
            FigVersionedSpecEntry(
              version: '0.10.0',
              load: () async {
                newLoads += 1;
                return FigSpec(
                  name: command,
                  subcommands: [FigSubcommand(name: 'new-auth')],
                );
              },
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.9.5'),
        },
      );

      final result = await getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('old-breakdown'));
      expect(
          result.suggestions.map((s) => s.name), isNot(contains('new-auth')));
      expect(oldLoads, 1);
      expect(newLoads, 0);
      expect(adapter.processInvocations, hasLength(1));
      expect(adapter.processInvocations.single.executable, 'versioned-tool');
      expect(adapter.processInvocations.single.arguments, ['--version']);

      await getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(oldLoads, 1);
      expect(newLoads, 0);
    });

    test('reuses the detected version across token changes', () async {
      var loads = 0;

      registerSpec(
        command,
        () => createVersionedSpec(
          specName: command,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async {
                loads += 1;
                return FigSpec(
                  name: command,
                  options: [FigOption(name: '--flag')],
                );
              },
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.9.5'),
        },
      );

      final first = await getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
        adapter,
      );
      final second = await getSuggestions(
        '$command --',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(first, isNotNull);
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name), contains('--flag'));
      expect(adapter.processInvocations, hasLength(1));
      expect(loads, 1);
    });

    test('reuses the detected version across cwd changes within one engine',
        () async {
      var loads = 0;

      registerSpec(
        command,
        () => createVersionedSpec(
          specName: command,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async {
                loads += 1;
                return FigSpec(
                  name: command,
                  options: [FigOption(name: '--flag')],
                );
              },
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.9.5'),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$command ',
        '/work-a',
        Shell.bash,
      );
      final second = await engine.getSuggestions(
        '$command ',
        '/work-b',
        Shell.bash,
      );

      expect(first, isNotNull);
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name), contains('--flag'));
      expect(adapter.processInvocations, hasLength(1));
      expect(loads, 2);
    });

    test('clearDynamicSuggestion keeps generated spec + version cache', () async {
      var loads = 0;

      registerSpec(
        command,
        () => createVersionedSpec(
          specName: command,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async {
                loads += 1;
                return FigSpec(
                  name: command,
                  options: [FigOption(name: '--flag')],
                );
              },
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.9.5'),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
      );
      engine.clearDynamicSuggestion();
      final second = await engine.getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
      );

      expect(first, isNotNull);
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name), contains('--flag'));
      expect(adapter.processInvocations, hasLength(1));
      // Generated spec (from versioned spec load) is preserved across
      // clearDynamicSuggestion — only per-request dynamic results are cleared.
      expect(loads, 1);
    });

    test('new engine re-detects the version', () async {
      registerSpec(
        command,
        () => createVersionedSpec(
          specName: command,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async => FigSpec(
                name: command,
                options: [FigOption(name: '--flag')],
              ),
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.9.5'),
        },
      );
      final firstEngine = AutocompleteEngine(adapter: adapter);
      final secondEngine = AutocompleteEngine(adapter: adapter);

      final first = await firstEngine.getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
      );
      final second = await secondEngine.getSuggestions(
        '$command ',
        '/work',
        Shell.bash,
      );

      expect(first, isNotNull);
      expect(second, isNotNull);
      expect(adapter.processInvocations, hasLength(2));
    });

    test('falls back to the latest known spec for older unknown versions',
        () async {
      registerSpec(
        olderCommand,
        () => createVersionedSpec(
          specName: olderCommand,
          versionFiles: [
            FigVersionedSpecEntry(
              version: '0.9.0',
              load: () async => FigSpec(
                name: olderCommand,
                subcommands: [FigSubcommand(name: 'legacy')],
              ),
            ),
            FigVersionedSpecEntry(
              version: '0.10.0',
              load: () async => FigSpec(
                name: olderCommand,
                subcommands: [FigSubcommand(name: 'latest')],
              ),
            ),
          ],
          getVersionCommand: _getToolVersion,
        ),
      );

      final adapter = _FakeAdapter(
        processResults: const {
          'versioned-tool --version':
              ProcessRunResult(stdout: 'versioned-tool 0.8.7'),
        },
      );

      final result = await getSuggestions(
        '$olderCommand ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('latest'));
      expect(result.suggestions.map((s) => s.name), isNot(contains('legacy')));
    });
  });
}
