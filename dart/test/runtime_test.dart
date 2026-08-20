import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/runtime_node.dart';
import 'package:test/test.dart';

class ProcessInvocation {
  const ProcessInvocation({
    required this.executable,
    required this.arguments,
    this.workingDirectory,
    this.environment,
  });

  final String executable;
  final List<String> arguments;
  final String? workingDirectory;
  final Map<String, String?>? environment;
}

class DirectoryInvocation {
  const DirectoryInvocation({
    required this.path,
    required this.foldersOnly,
    required this.extensions,
  });

  final String path;
  final bool foldersOnly;
  final List<String>? extensions;
}

class FakeAdapter implements CompleteAdapter {
  FakeAdapter({
    Map<String, List<FileSystemEntry>>? directories,
    Map<String, String>? envs,
    Map<String, ProcessRunResult>? processResults,
    Map<String, Duration>? processDelays,
  })  : _directories = directories ?? const {},
        _envs = envs ?? const {'HOME': '/home/test'},
        _processResults = processResults ?? const {},
        _processDelays = processDelays ?? const {};

  final Map<String, List<FileSystemEntry>> _directories;
  final Map<String, String> _envs;
  final Map<String, ProcessRunResult> _processResults;
  final Map<String, Duration> _processDelays;
  final List<ProcessInvocation> processInvocations = [];
  final List<DirectoryInvocation> listDirectoryInvocations = [];

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
    final normalizedPath = _normalizePath(path);
    listDirectoryInvocations.add(DirectoryInvocation(
      path: normalizedPath,
      foldersOnly: foldersOnly,
      extensions: extensions == null ? null : List<String>.from(extensions),
    ));
    final entries = _directories[normalizedPath] ?? const <FileSystemEntry>[];
    return entries.where((entry) {
      if (foldersOnly && !entry.isDirectory) return false;
      if (extensions == null || extensions.isEmpty || entry.isDirectory) {
        return true;
      }
      return extensions.any((ext) => entry.name.endsWith('.$ext'));
    }).toList();
  }

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async =>
      _normalizePath(cwd);

  @override
  Future<ProcessRunResult> runProcess(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
    Map<String, String?>? environment,
  }) async {
    processInvocations.add(ProcessInvocation(
      executable: executable,
      arguments: List<String>.from(arguments),
      workingDirectory: workingDirectory,
      environment:
          environment == null ? null : Map<String, String?>.from(environment),
    ));
    final key = [executable, ...arguments].join(' ');
    final delay = _processDelays[key];
    if (delay != null) {
      await Future<void>.delayed(delay);
    }
    return _processResults[key] ?? const ProcessRunResult(stdout: '');
  }

  String _normalizePath(String path) {
    if (path.length > 1 && path.endsWith('/')) {
      return path.substring(0, path.length - 1);
    }
    return path;
  }
}

class WindowsGitBashAdapter extends FakeAdapter implements CompletePathAdapter {
  WindowsGitBashAdapter({super.directories});

  @override
  String resolvePath(String path, Shell shell) {
    final match = RegExp(r'^/([A-Za-z])(?:/(.*))?$').firstMatch(path);
    if (match == null) return path;
    final drive = match.group(1)!.toUpperCase();
    final rest = match.group(2);
    return rest == null || rest.isEmpty ? '$drive:/' : '$drive:/$rest';
  }

  @override
  List<String> pathSeparators(Shell shell) => const [r'\', '/'];

  @override
  bool isAbsolutePath(String path, Shell shell) =>
      path.startsWith('/') || RegExp(r'^[A-Za-z]:[\\/]').hasMatch(path);
}

void main() {
  const commandForwarderCommand = 'ac_command_forwarder_test';
  const plainCommandArgCommand = 'ac_plain_command_arg_test';
  const nestedCommandOnlyCommand = 'ac_nested_command_only_test';
  const optionValueCommand = 'ac_option_value_test';
  const escapedSpaceCommand = 'ac_escaped_space_test';
  const optionDependencyCommand = 'ac_option_dependency_test';
  const dynamicCacheCommand = 'ac_dynamic_cache_test';
  const separatorCommand = 'ac_separator_test';
  const generatorTimeoutCommand = 'ac_generator_timeout_test';
  const additionalSuggestionsCommand = 'ac_additional_suggestions_test';
  const requiresSubcommandCommand = 'ac_requires_subcommand_test';
  const optionsBeforeArgsCommand = 'ac_options_before_args_test';
  const optionSeparatorCommand = 'ac_option_separator_test';
  const nonPosixFlagsCommand = 'ac_non_posix_flags_test';
  const loadSpecSemanticsRootCommand = 'ac_load_spec_semantics_root_test';
  const loadSpecSemanticsSubCommand = 'ac_load_spec_semantics_sub_test';
  const argLoadSpecRootCommand = 'ac_arg_load_spec_root_test';
  const argLoadSpecChildCommand = 'ac_arg_load_spec_child_test';

  test('suggests registered commands when explicitly enabled', () async {
    registerSpec(
      commandForwarderCommand,
      () => FigSpec(
        name: commandForwarderCommand,
        args: [
          FigArg(name: 'executable', isCommand: true, suggestCommands: true)
        ],
      ),
    );
    registerSpec('git', () => FigSpec(name: 'git'));

    final result = await getSuggestions(
      'ac_command_forwarder_test gi',
      '/work',
      Shell.bash,
      FakeAdapter(),
    );

    expect(result?.suggestions.map((suggestion) => suggestion.name),
        contains('git'));
  });

  test('does not infer command forwarding from an argument name', () async {
    registerSpec(
      plainCommandArgCommand,
      () => FigSpec(
        name: plainCommandArgCommand,
        args: [FigArg(name: 'command')],
      ),
    );

    final result = await getSuggestions(
      'ac_plain_command_arg_test gi',
      '/work',
      Shell.bash,
      FakeAdapter(),
    );

    expect(result?.suggestions.map((suggestion) => suggestion.name),
        isNot(contains('git')));
  });

  test('does not suggest registry names for isCommand alone', () async {
    registerSpec(
      nestedCommandOnlyCommand,
      () => FigSpec(
        name: nestedCommandOnlyCommand,
        args: [FigArg(name: 'executable', isCommand: true)],
      ),
    );

    final result = await getSuggestions(
      'ac_nested_command_only_test gi',
      '/work',
      Shell.bash,
      FakeAdapter(),
    );

    expect(result?.suggestions.map((suggestion) => suggestion.name),
        isNot(contains('git')));
  });
  const subcommandGenerateSpecCommand = 'ac_subcommand_generate_spec_test';
  const variadicBreakOptionCommand = 'ac_variadic_break_option_test';
  const executeCommandEnvCommand = 'ac_execute_command_env_test';
  const generatorObjectScriptCommand = 'ac_generator_object_script_test';
  const generatorSplitOnCommand = 'ac_generator_split_on_test';
  const shellPathEscapingCommand = 'ac_shell_path_escaping_test';
  const pathResolutionCommand = 'ac_path_resolution_test';
  const pathListingCacheCommand = 'ac_path_listing_cache_test';
  const incrementalGeneratorCacheCommand =
      'ac_incremental_generator_cache_test';
  const gitCheckoutBranchCacheCommand = 'ac_git_checkout_branch_cache_test';
  const tokenBoundaryCacheCommand = 'ac_token_boundary_cache_test';
  const quotedDropCommand = 'ac_quoted_drop_test';
  const templateFilterContextCommand = 'ac_template_filter_context_test';
  const variadicArgRegressionCommand = 'ac_variadic_arg_regression_test';
  const wideCharsCommand = 'ac_wide_chars_test';
  const rebuiltPostProcessCacheCommand = 'ac_rebuilt_post_process_cache_test';
  const customFunctionCacheCommand = 'ac_custom_function_cache_test';
  const singlePassSubcommandGenerateSpecCommand =
      'ac_single_pass_subcommand_generate_spec_test';
  const requestStreamingCommand = 'ac_request_streaming_test';
  const requestCancellationCommand = 'ac_request_cancellation_test';
  const requestTimeoutCommand = 'ac_request_timeout_test';

  tearDownAll(() {
    unregisterSpec(commandForwarderCommand);
    unregisterSpec(plainCommandArgCommand);
    unregisterSpec(nestedCommandOnlyCommand);
    unregisterSpec(optionValueCommand);
    unregisterSpec(escapedSpaceCommand);
    unregisterSpec(optionDependencyCommand);
    unregisterSpec(dynamicCacheCommand);
    unregisterSpec(separatorCommand);
    unregisterSpec(generatorTimeoutCommand);
    unregisterSpec(additionalSuggestionsCommand);
    unregisterSpec(requiresSubcommandCommand);
    unregisterSpec(optionsBeforeArgsCommand);
    unregisterSpec(optionSeparatorCommand);
    unregisterSpec(nonPosixFlagsCommand);
    unregisterSpec(loadSpecSemanticsRootCommand);
    unregisterSpec(loadSpecSemanticsSubCommand);
    unregisterSpec(argLoadSpecRootCommand);
    unregisterSpec(argLoadSpecChildCommand);
    unregisterSpec(subcommandGenerateSpecCommand);
    unregisterSpec(variadicBreakOptionCommand);
    unregisterSpec(executeCommandEnvCommand);
    unregisterSpec(generatorObjectScriptCommand);
    unregisterSpec(generatorSplitOnCommand);
    unregisterSpec(shellPathEscapingCommand);
    unregisterSpec(pathResolutionCommand);
    unregisterSpec(pathListingCacheCommand);
    unregisterSpec(incrementalGeneratorCacheCommand);
    unregisterSpec(gitCheckoutBranchCacheCommand);
    unregisterSpec(tokenBoundaryCacheCommand);
    unregisterSpec(quotedDropCommand);
    unregisterSpec(templateFilterContextCommand);
    unregisterSpec(variadicArgRegressionCommand);
    unregisterSpec(wideCharsCommand);
    unregisterSpec(rebuiltPostProcessCacheCommand);
    unregisterSpec(customFunctionCacheCommand);
    unregisterSpec(singlePassSubcommandGenerateSpecCommand);
    unregisterSpec(requestStreamingCommand);
    unregisterSpec(requestCancellationCommand);
    unregisterSpec(requestTimeoutCommand);
  });

  group('runtime examples', () {
    test('completes option values after --flag=value', () async {
      registerSpec(
        optionValueCommand,
        () => FigSpec(
          name: optionValueCommand,
          options: [
            FigOption(
              name: '--output',
              args: FigArg(template: 'filepaths'),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        directories: {
          '/work': const [
            FileSystemEntry(name: 'file.txt', isDirectory: false),
            FileSystemEntry(name: 'folder', isDirectory: true),
          ],
        },
      );

      final result = await getSuggestions(
        '$optionValueCommand --output=fi',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.charactersToDrop, 2);
      expect(result.suggestions.map((s) => s.name), contains('file.txt'));
    });

    test('uses raw typed length when the token contains escaped spaces',
        () async {
      registerSpec(
        escapedSpaceCommand,
        () => FigSpec(
          name: escapedSpaceCommand,
          args: [
            FigArg(
              suggestions: ['file name'],
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        r'ac_escaped_space_test file\ na',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.charactersToDrop, r'file\ na'.length);
      expect(result.suggestions.map((s) => s.name), contains('file name'));
    });

    test('escapes path suggestions for pwsh and resolves backslash paths',
        () async {
      registerSpec(
        shellPathEscapingCommand,
        () => FigSpec(
          name: shellPathEscapingCommand,
          args: [
            FigArg(
              template: 'filepaths',
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        directories: {
          'C:\\work\\dir\\': const [
            FileSystemEntry(name: 'file name.txt', isDirectory: false),
          ],
        },
      );

      final result = await getSuggestions(
        r'ac_shell_path_escaping_test dir\fi',
        r'C:\work',
        Shell.pwsh,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.charactersToDrop, 2);
      expect(result.suggestions.map((s) => s.name), contains('file` name.txt'));
    });

    test('delegates Git Bash drive paths to the path adapter', () async {
      registerSpec(
        shellPathEscapingCommand,
        () => FigSpec(
          name: shellPathEscapingCommand,
          args: [FigArg(template: 'filepaths')],
        ),
      );
      final adapter = WindowsGitBashAdapter(
        directories: {
          'D:': const [
            FileSystemEntry(name: 'workspace', isDirectory: true),
            FileSystemEntry(name: 'docs', isDirectory: true),
          ],
          'D:\\': const [
            FileSystemEntry(name: 'windows-root', isDirectory: true),
          ],
        },
      );

      final result = await getSuggestions(
        '$shellPathEscapingCommand /d/',
        'D:/work',
        Shell.bash,
        adapter,
      );

      expect(result?.suggestions.map((suggestion) => suggestion.name),
          contains('workspace/'));
      expect(adapter.listDirectoryInvocations.single.path, 'D:');

      final incompleteDrivePath = await getSuggestions(
        '$shellPathEscapingCommand /d',
        'D:/work',
        Shell.bash,
        adapter,
      );

      expect(incompleteDrivePath?.charactersToDrop, 1);
      expect(incompleteDrivePath?.suggestions.map((s) => s.name),
          contains('docs/'));

      final driveLetterResult = await getSuggestions(
        '$shellPathEscapingCommand D:\\',
        'D:/work',
        Shell.bash,
        adapter,
      );

      expect(
          driveLetterResult?.suggestions.map((suggestion) => suggestion.name),
          contains('windows-root/'));
      expect(adapter.listDirectoryInvocations.last.path, 'D:\\');
    });

    test('resolves home and root-relative path completions', () async {
      registerSpec(
        pathResolutionCommand,
        () => FigSpec(
          name: pathResolutionCommand,
          args: [
            FigArg(template: 'filepaths'),
          ],
        ),
      );

      final adapter = FakeAdapter(
        directories: {
          '/home/test': const [
            FileSystemEntry(name: 'Downloads', isDirectory: true),
            FileSystemEntry(name: 'Desktop', isDirectory: true),
          ],
          '/': const [
            FileSystemEntry(name: 'usr', isDirectory: true),
            FileSystemEntry(name: 'etc', isDirectory: true),
          ],
          '/usr': const [
            FileSystemEntry(name: 'local', isDirectory: true),
          ],
        },
      );

      final bareHome = await getSuggestions(
        '$pathResolutionCommand ~',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(bareHome, isNotNull);
      expect(bareHome!.charactersToDrop, 1);
      expect(bareHome.suggestions.map((s) => s.name), contains('~/Downloads/'));

      final homeDir = await getSuggestions(
        '$pathResolutionCommand ~/',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(homeDir, isNotNull);
      expect(homeDir!.charactersToDrop, 0);
      expect(homeDir.suggestions.map((s) => s.name), contains('Downloads/'));

      final rootDir = await getSuggestions(
        '$pathResolutionCommand /us',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(rootDir, isNotNull);
      expect(rootDir!.charactersToDrop, 2);
      expect(rootDir.suggestions.map((s) => s.name), contains('usr/'));

      final nestedRootDir = await getSuggestions(
        '$pathResolutionCommand /usr/lo',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(nestedRootDir, isNotNull);
      expect(nestedRootDir!.charactersToDrop, 2);
      expect(nestedRootDir.suggestions.map((s) => s.name), contains('local/'));
    });

    test('reuses cached directory listings while narrowing within one folder',
        () async {
      registerSpec(
        pathListingCacheCommand,
        () => FigSpec(
          name: pathListingCacheCommand,
          args: [
            FigArg(template: 'folders'),
          ],
        ),
      );

      final adapter = FakeAdapter(
        directories: {
          '/home/test': const [
            FileSystemEntry(name: 'Downloads', isDirectory: true),
            FileSystemEntry(name: 'Desktop', isDirectory: true),
            FileSystemEntry(name: 'notes.txt', isDirectory: false),
          ],
          '/home/test/Downloads': const [
            FileSystemEntry(name: 'Projects', isDirectory: true),
          ],
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final home = await engine.getSuggestions(
        '$pathListingCacheCommand ~',
        '/work',
        Shell.bash,
      );
      expect(home, isNotNull);
      expect(home!.suggestions.map((s) => s.name), contains('~/Downloads/'));

      final narrowed = await engine.getSuggestions(
        '$pathListingCacheCommand ~/Do',
        '/work',
        Shell.bash,
      );
      expect(narrowed, isNotNull);
      expect(narrowed!.suggestions.map((s) => s.name), contains('Downloads/'));

      final broadened = await engine.getSuggestions(
        '$pathListingCacheCommand ~/',
        '/work',
        Shell.bash,
      );
      expect(broadened, isNotNull);
      expect(broadened!.suggestions.map((s) => s.name), contains('Downloads/'));

      expect(
        adapter.listDirectoryInvocations.map((call) => call.path).toList(),
        equals(['/home/test']),
      );

      final widened = await engine.getSuggestions(
        '$pathListingCacheCommand ~/D',
        '/work',
        Shell.bash,
      );
      expect(widened, isNotNull);
      expect(widened!.suggestions.map((s) => s.name), contains('Downloads/'));
      expect(
        adapter.listDirectoryInvocations.map((call) => call.path).toList(),
        equals(['/home/test']),
      );

      final nested = await engine.getSuggestions(
        '$pathListingCacheCommand ~/Downloads/',
        '/work',
        Shell.bash,
      );
      expect(nested, isNotNull);
      expect(nested!.suggestions.map((s) => s.name), contains('Projects/'));
      expect(
        adapter.listDirectoryInvocations.map((call) => call.path).toList(),
        equals(['/home/test', '/home/test/Downloads']),
      );
    });

    test('reuses generator suggestions while narrowing within one token',
        () async {
      registerSpec(
        incrementalGeneratorCacheCommand,
        () => FigSpec(
          name: incrementalGeneratorCacheCommand,
          args: [
            FigArg(
              suggestions: const ['feature_static'],
              generators: const FigGenerator(
                script: ['mock-branches'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'mock-branches': ProcessRunResult(
            stdout: 'feat_alpha\nfeat_able\nmain\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$incrementalGeneratorCacheCommand feat_',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(
        first!.suggestions.map((s) => s.name),
        containsAll(['feature_static', 'feat_alpha', 'feat_able']),
      );
      expect(
        first.suggestions.take(2).map((s) => s.name).toList(),
        equals(['feat_alpha', 'feat_able']),
      );

      final narrowed = await engine.getSuggestions(
        '$incrementalGeneratorCacheCommand fe',
        '/work',
        Shell.bash,
      );
      expect(narrowed, isNotNull);
      expect(
        narrowed!.suggestions.map((s) => s.name),
        containsAll(['feature_static', 'feat_alpha', 'feat_able']),
      );
      expect(
        narrowed.suggestions.take(2).map((s) => s.name).toList(),
        equals(['feat_alpha', 'feat_able']),
      );
      expect(adapter.processInvocations.length, 1);

      final narrowedAgain = await engine.getSuggestions(
        '$incrementalGeneratorCacheCommand feat_ab',
        '/work',
        Shell.bash,
      );
      expect(narrowedAgain, isNotNull);
      expect(
        narrowedAgain!.suggestions.map((s) => s.name).toList(),
        equals(['feat_able']),
      );
      expect(adapter.processInvocations.length, 1);
    });

    test('reuses rebuilt postProcess generators across narrowing', () async {
      var generateSpecCalls = 0;
      registerSpec(
        rebuiltPostProcessCacheCommand,
        () => FigSpec(
          name: rebuiltPostProcessCacheCommand,
          generateSpec: (tokens, executeCommand) async {
            generateSpecCalls++;
            return FigSpec(
              name: rebuiltPostProcessCacheCommand,
              subcommands: [
                FigSubcommand(
                  name: 'branch',
                  args: [
                    FigArg(
                      generators: FigGenerator(
                        script: const ['list-branches'],
                        postProcess: (out, [tokens]) => out
                            .split('\n')
                            .where((line) => line.isNotEmpty)
                            .map((line) => FigSuggestion(name: line))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-branches': ProcessRunResult(
            stdout: 'alpha\nalpine\nbeta\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$rebuiltPostProcessCacheCommand branch al',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(
        first!.suggestions.map((s) => s.name),
        containsAll(['alpha', 'alpine']),
      );

      final second = await engine.getSuggestions(
        '$rebuiltPostProcessCacheCommand branch alpi',
        '/work',
        Shell.bash,
      );
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name).toList(), ['alpine']);
      expect(adapter.processInvocations.length, 1);
      expect(generateSpecCalls, 2);
    });

    test('reuses custom function generators across narrowing', () async {
      var customCalls = 0;
      registerSpec(
        customFunctionCacheCommand,
        () => FigSpec(
          name: customFunctionCacheCommand,
          args: [
            FigArg(
              generators: FigGenerator(
                custom: (tokens, executeCommand, context) async {
                  customCalls++;
                  return const [
                    FigSuggestion(name: 'alpha'),
                    FigSuggestion(name: 'alpine'),
                    FigSuggestion(name: 'beta'),
                  ];
                },
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter();
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$customFunctionCacheCommand al',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(
        first!.suggestions.map((s) => s.name),
        containsAll(['alpha', 'alpine']),
      );

      final second = await engine.getSuggestions(
        '$customFunctionCacheCommand alph',
        '/work',
        Shell.bash,
      );
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name).toList(), ['alpha']);
      expect(customCalls, 1);
    });

    test('requestSuggestions emits static then final events', () async {
      registerSpec(
        requestStreamingCommand,
        () => FigSpec(
          name: requestStreamingCommand,
          args: [
            FigArg(
              suggestions: const ['alpha-static'],
              generators: const FigGenerator(
                script: ['list-request-streaming'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-request-streaming': ProcessRunResult(
            stdout: 'alpha\nalpine\nbeta\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);
      final handle = engine.requestSuggestions(
        '$requestStreamingCommand al',
        '/work',
        Shell.bash,
        mode: SuggestionRequestMode.staticThenFinal,
      );

      final events = await handle.stream.toList();
      final result = await handle.done;

      expect(
        events.map((event) => event.kind).toList(),
        equals([
          SuggestionEventKind.staticPartial,
          SuggestionEventKind.sourcePartial,
          SuggestionEventKind.finalResult,
        ]),
      );
      expect(events[0].blob, isNotNull);
      expect(
        events[0].blob!.suggestions.map((s) => s.name).toList(),
        equals(['alpha-static']),
      );
      expect(events[1].kind, SuggestionEventKind.sourcePartial);
      expect(events[1].blob, isNotNull);
      expect(
        events[1].blob!.suggestions.map((s) => s.name),
        containsAll(['alpha', 'alpine', 'beta']),
      );
      expect(events[2].blob, isNotNull);
      expect(
        events[2].blob!.suggestions.map((s) => s.name),
        containsAll(['alpha-static', 'alpha', 'alpine']),
      );
      expect(events[0].elapsed, isNotNull);
      expect(events[2].elapsed, isNotNull);
      expect(result, isNotNull);
      expect(
        result!.suggestions.map((s) => s.name),
        containsAll(['alpha-static', 'alpha', 'alpine']),
      );
    });

    test('requestSuggestions keeps cached dynamic results in the final frame',
        () async {
      registerSpec(
        requestStreamingCommand,
        () => FigSpec(
          name: requestStreamingCommand,
          args: [
            FigArg(
              suggestions: const ['alpha-static'],
              generators: const FigGenerator(
                script: ['list-request-streaming'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-request-streaming': ProcessRunResult(
            stdout: 'alpha\nalpine\nbeta\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final primed = await engine.getSuggestions(
        '$requestStreamingCommand al',
        '/work',
        Shell.bash,
      );
      expect(primed, isNotNull);
      expect(adapter.processInvocations.length, 1);

      final handle = engine.requestSuggestions(
        '$requestStreamingCommand alp',
        '/work',
        Shell.bash,
        mode: SuggestionRequestMode.staticThenFinal,
      );
      final events = await handle.stream.toList();
      final result = await handle.done;

      expect(
        events.map((event) => event.kind).toList(),
        equals([
          SuggestionEventKind.staticPartial,
          SuggestionEventKind.finalResult,
        ]),
      );
      expect(events.last.fromCache, isTrue);
      expect(adapter.processInvocations.length, 1);
      expect(result, isNotNull);
      expect(
        result!.suggestions.map((s) => s.name),
        containsAll(['alpha-static', 'alpha', 'alpine']),
      );
    });

    test('reuses git checkout branch suggestions while widening and narrowing',
        () async {
      registerSpec(
        gitCheckoutBranchCacheCommand,
        () => FigSpec(
          name: gitCheckoutBranchCacheCommand,
          subcommands: [
            FigSubcommand(
              name: 'checkout',
              args: [
                FigArg(
                  generators: const FigGenerator(
                    script: ['mock-git-branches'],
                    splitOn: '\n',
                  ),
                ),
              ],
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'mock-git-branches': ProcessRunResult(
            stdout: 'main\nmaster\nrelease\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final initial = await engine.getSuggestions(
        '$gitCheckoutBranchCacheCommand checkout ma',
        '/work',
        Shell.bash,
      );
      expect(initial, isNotNull);
      expect(initial!.suggestions.map((s) => s.name),
          containsAll(['main', 'master']));

      final widened = await engine.getSuggestions(
        '$gitCheckoutBranchCacheCommand checkout m',
        '/work',
        Shell.bash,
      );
      expect(widened, isNotNull);
      expect(widened!.suggestions.map((s) => s.name),
          containsAll(['main', 'master']));
      expect(adapter.processInvocations.length, 1);

      final narrowed = await engine.getSuggestions(
        '$gitCheckoutBranchCacheCommand checkout mas',
        '/work',
        Shell.bash,
      );
      expect(narrowed, isNotNull);
      expect(narrowed!.suggestions.map((s) => s.name).toList(),
          equals(['master']));
      expect(adapter.processInvocations.length, 1);
    });

    test('clearDynamicSuggestion forces the active dynamic source to reload',
        () async {
      registerSpec(
        gitCheckoutBranchCacheCommand,
        () => FigSpec(
          name: gitCheckoutBranchCacheCommand,
          subcommands: [
            FigSubcommand(
              name: 'checkout',
              args: [
                FigArg(
                  generators: const FigGenerator(
                    script: ['mock-git-branches'],
                    splitOn: '\n',
                  ),
                ),
              ],
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'mock-git-branches': ProcessRunResult(
            stdout: 'main\nmaster\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$gitCheckoutBranchCacheCommand checkout ma',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(adapter.processInvocations.length, 1);

      engine.clearDynamicSuggestion();

      final second = await engine.getSuggestions(
        '$gitCheckoutBranchCacheCommand checkout ma',
        '/work',
        Shell.bash,
      );
      expect(second, isNotNull);
      expect(adapter.processInvocations.length, 2);
    });

    test('invalidates candidate cache when moving to the next shell token',
        () async {
      registerSpec(
        tokenBoundaryCacheCommand,
        () => FigSpec(
          name: tokenBoundaryCacheCommand,
          args: [
            FigArg(
              generators: FigGenerator(
                script: ['first-token-candidates'],
                splitOn: '\n',
              ),
            ),
            FigArg(
              generators: FigGenerator(
                script: ['second-token-candidates'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'first-token-candidates': ProcessRunResult(
            stdout: 'feat_alpha\nfeat_able\n',
          ),
          'second-token-candidates': ProcessRunResult(
            stdout: 'alpha\nbeta\n',
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        '$tokenBoundaryCacheCommand feat_',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(
        first!.suggestions.map((s) => s.name),
        containsAll(['feat_alpha', 'feat_able']),
      );
      expect(adapter.processInvocations.length, 1);
      expect(adapter.processInvocations.first.executable,
          'first-token-candidates');

      final second = await engine.getSuggestions(
        '$tokenBoundaryCacheCommand feat_alpha al',
        '/work',
        Shell.bash,
      );
      expect(second, isNotNull);
      expect(
          second!.suggestions.map((s) => s.name).toList(), equals(['alpha']));
      expect(adapter.processInvocations.length, 2);
      expect(adapter.processInvocations.last.executable,
          'second-token-candidates');
    });

    test('uses quoted tokenLength for charactersToDrop', () async {
      registerSpec(
        quotedDropCommand,
        () => FigSpec(
          name: quotedDropCommand,
          args: [
            FigArg(suggestions: ['file.txt', 'foobar']),
          ],
        ),
      );

      final openQuote = await getSuggestions(
        '$quotedDropCommand "fi',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(openQuote, isNotNull);
      expect(openQuote!.charactersToDrop, 3);
      expect(openQuote.suggestions.map((s) => s.name), contains('file.txt'));

      final closedQuote = await getSuggestions(
        '$quotedDropCommand "foo"',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(closedQuote, isNotNull);
      expect(closedQuote!.charactersToDrop, 5);
      expect(closedQuote.suggestions.map((s) => s.name), contains('foobar'));
    });

    test('uses display width for wide-character charactersToDrop', () async {
      registerSpec(
        wideCharsCommand,
        () => FigSpec(
          name: wideCharsCommand,
          args: [
            FigArg(suggestions: ['中文文件']),
          ],
        ),
      );

      final result = await getSuggestions(
        '$wideCharsCommand 中文',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.charactersToDrop, 4);
      expect(result.suggestions.map((s) => s.name), contains('中文文件'));
    });

    test('filters options using dependsOn and repeatability semantics',
        () async {
      registerSpec(
        optionDependencyCommand,
        () => FigSpec(
          name: optionDependencyCommand,
          options: [
            FigOption(name: '--token'),
            FigOption(name: '--refresh', dependsOn: ['--token']),
          ],
        ),
      );

      final adapter = FakeAdapter();

      final initial = await getSuggestions(
        '$optionDependencyCommand ',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(initial, isNotNull);
      expect(initial!.suggestions.map((s) => s.name), contains('--token'));
      expect(
          initial.suggestions.map((s) => s.name), isNot(contains('--refresh')));

      final afterToken = await getSuggestions(
        '$optionDependencyCommand --token ',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(afterToken, isNotNull);
      expect(afterToken!.suggestions.map((s) => s.name), contains('--refresh'));
      expect(afterToken.suggestions.map((s) => s.name),
          isNot(contains('--token')));
    });

    test('separates generateSpec cache entries by command tokens', () async {
      registerSpec(
        dynamicCacheCommand,
        () => FigSpec(
          name: dynamicCacheCommand,
          options: [
            FigOption(
              name: '--profile',
              args: FigArg(suggestions: ['a', 'b']),
            ),
          ],
          generateSpec: (tokens, executeCommand) async {
            final profile = tokens.contains('a')
                ? 'alpha'
                : tokens.contains('b')
                    ? 'beta'
                    : null;
            if (profile == null) {
              return FigSpec(name: dynamicCacheCommand);
            }
            return FigSpec(
              name: dynamicCacheCommand,
              subcommands: [FigSubcommand(name: profile)],
            );
          },
        ),
      );

      final adapter = FakeAdapter();
      final engine = AutocompleteEngine(adapter: adapter);

      final alpha = await engine.getSuggestions(
        '$dynamicCacheCommand --profile a ',
        '/work',
        Shell.bash,
      );
      expect(alpha, isNotNull);
      expect(alpha!.suggestions.map((s) => s.name), contains('alpha'));

      final beta = await engine.getSuggestions(
        '$dynamicCacheCommand --profile b ',
        '/work',
        Shell.bash,
      );
      expect(beta, isNotNull);
      expect(beta!.suggestions.map((s) => s.name), contains('beta'));
      expect(beta.suggestions.map((s) => s.name), isNot(contains('alpha')));
    });

    test('adds separator to option insertValue when the spec requires it',
        () async {
      registerSpec(
        separatorCommand,
        () => FigSpec(
          name: separatorCommand,
          options: [
            FigOption(
              name: '--config',
              args: FigArg(template: 'filepaths'),
              requiresSeparator: true,
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        '$separatorCommand --co',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      final suggestion =
          result!.suggestions.singleWhere((s) => s.name == '--config');
      expect(suggestion.insertValue, '--config=');
    });

    test('drops slow script generator results after scriptTimeout', () async {
      final generator = FigGenerator(
        script: ['slow-cmd'],
        scriptTimeout: 10,
        postProcess: (out, [tokens]) => [
          FigSuggestion(name: 'should-not-appear'),
        ],
      );
      final adapter = FakeAdapter(
        processResults: const {
          'slow-cmd': ProcessRunResult(stdout: 'late'),
        },
        processDelays: const {
          'slow-cmd': Duration(milliseconds: 50),
        },
      );

      final suggestions = await runGeneratorSuggestions(
        generator,
        parseCommand('$generatorTimeoutCommand value', Shell.bash),
        '/work',
        adapter,
      );

      expect(suggestions, isEmpty);
    });

    test('passes executeCommand env and cwd through the adapter', () async {
      registerSpec(
        executeCommandEnvCommand,
        () => FigSpec(
          name: executeCommandEnvCommand,
          args: [
            FigArg(
              generators: FigGenerator(
                custom: (tokens, executeCommand, context) async {
                  final result =
                      await executeCommand!(const ExecuteCommandInput(
                    command: 'printenv',
                    args: ['NAME'],
                    cwd: '/custom',
                    env: {'NAME': 'value', 'EMPTY': null},
                  ));
                  return [
                    FigSuggestion(name: result.stdout.trim()),
                  ];
                },
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'printenv NAME': ProcessRunResult(stdout: 'value'),
        },
      );

      final result = await getSuggestions(
        '$executeCommandEnvCommand ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('value'));
      expect(adapter.processInvocations, hasLength(1));
      final invocation = adapter.processInvocations.single;
      expect(invocation.executable, 'printenv');
      expect(invocation.arguments, ['NAME']);
      expect(invocation.workingDirectory, '/custom');
      expect(invocation.environment, {'NAME': 'value', 'EMPTY': null});
    });

    test('supports generator script objects with cwd and env', () async {
      registerSpec(
        generatorObjectScriptCommand,
        () => FigSpec(
          name: generatorObjectScriptCommand,
          args: [
            FigArg(
              generators: FigGenerator(
                script: {
                  'command': 'list-values',
                  'args': ['--scope', 'local'],
                  'cwd': '/custom',
                  'env': {'MODE': 'test'},
                },
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-values --scope local':
              ProcessRunResult(stdout: 'alpha\nbeta\n'),
        },
      );

      final result = await getSuggestions(
        '$generatorObjectScriptCommand ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name),
          containsAll(['alpha', 'beta']));
      expect(adapter.processInvocations, hasLength(1));
      final invocation = adapter.processInvocations.single;
      expect(invocation.executable, 'list-values');
      expect(invocation.arguments, ['--scope', 'local']);
      expect(invocation.workingDirectory, '/custom');
      expect(invocation.environment, {'MODE': 'test'});
    });

    test('supports script generators that only declare splitOn', () async {
      registerSpec(
        generatorSplitOnCommand,
        () => FigSpec(
          name: generatorSplitOnCommand,
          args: [
            FigArg(
              generators: const FigGenerator(
                script: ['list-values'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-values': ProcessRunResult(stdout: 'alpha\nbeta\n'),
        },
      );

      final result = await getSuggestions(
        '$generatorSplitOnCommand ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name),
          containsAll(['alpha', 'beta']));
    });

    test('passes context to filterTemplateSuggestions and keeps folder slash',
        () async {
      registerSpec(
        templateFilterContextCommand,
        () => FigSpec(
          name: templateFilterContextCommand,
          args: [
            FigArg(
              generators: FigGenerator(
                template: 'filepaths',
                filterTemplateSuggestions: (List<FigSuggestion> suggestions,
                    FigGeneratorContext context) {
                  if (context.currentWorkingDirectory != '/work') {
                    return <FigSuggestion>[];
                  }
                  return suggestions
                      .where((suggestion) => suggestion.nameSingle == 'dir/')
                      .toList();
                },
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        directories: {
          '/work': const [
            FileSystemEntry(name: 'dir', isDirectory: true),
            FileSystemEntry(name: 'file.txt', isDirectory: false),
          ],
        },
      );

      final result = await getSuggestions(
        '$templateFilterContextCommand ',
        '/work',
        Shell.bash,
        adapter,
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('dir/'));
      expect(
          result.suggestions.map((s) => s.name), isNot(contains('file.txt')));
    });

    test('does not crash when variadic traversal reaches the end', () async {
      registerSpec(
        variadicArgRegressionCommand,
        () => FigSpec(
          name: variadicArgRegressionCommand,
          args: [
            FigArg(
              name: 'value',
              isVariadic: true,
            ),
          ],
          options: [
            FigOption(name: '-n'),
          ],
        ),
      );

      final result = await getSuggestions(
        '$variadicArgRegressionCommand foo -',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('-n'));
    });

    test('includes root alias suggestions and caches alias loading', () async {
      final adapter = FakeAdapter(
        processResults: const {
          "bash -i -c alias": ProcessRunResult(
            stdout: "alias gco='git checkout'\nalias gst='git status'",
          ),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final first = await engine.getSuggestions(
        'gc',
        '/work',
        Shell.bash,
      );
      expect(first, isNotNull);
      expect(first!.suggestions.map((s) => s.name), contains('gco'));
      expect(first.suggestions.map((s) => s.name), isNot(contains('gst')));

      final second = await engine.getSuggestions(
        'gs',
        '/work',
        Shell.bash,
      );
      expect(second, isNotNull);
      expect(second!.suggestions.map((s) => s.name), contains('gst'));
      expect(
          adapter.processInvocations.where((call) => call.executable == 'bash'),
          hasLength(1));
    });

    test('includes additionalSuggestions in runtime results', () async {
      registerSpec(
        additionalSuggestionsCommand,
        () => FigSpec(
          name: additionalSuggestionsCommand,
          additionalSuggestions: [
            FigSuggestion(
              name: 'status -sb',
              insertValue: 'status -sb',
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        '$additionalSuggestionsCommand st',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      final suggestion =
          result!.suggestions.singleWhere((s) => s.name == 'status -sb');
      expect(suggestion.insertValue, 'status -sb');
    });

    test('enforces requiresSubcommand before accepting free-form args',
        () async {
      registerSpec(
        requiresSubcommandCommand,
        () => FigSpec(
          name: requiresSubcommandCommand,
          requiresSubcommand: true,
          args: [FigArg(name: 'should-not-appear')],
          subcommands: [
            FigSubcommand(name: 'fmt'),
            FigSubcommand(name: 'check'),
          ],
        ),
      );

      final result = await getSuggestions(
        '$requiresSubcommandCommand ',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name),
          containsAll(['fmt', 'check']));
      expect(result.suggestions.map((s) => s.name),
          isNot(contains('should-not-appear')));

      final invalid = await getSuggestions(
        '$requiresSubcommandCommand random ',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(invalid, isNull);
    });

    test('respects optionsMustPrecedeArguments after a positional arg',
        () async {
      registerSpec(
        optionsBeforeArgsCommand,
        () => FigSpec(
          name: optionsBeforeArgsCommand,
          parserDirectives: ParserDirectives(optionsMustPrecedeArguments: true),
          args: [
            FigArg(name: 'path'),
            FigArg(name: 'pattern', isOptional: true),
          ],
          options: [
            FigOption(name: '--verbose'),
          ],
        ),
      );

      final beforeArgs = await getSuggestions(
        '$optionsBeforeArgsCommand --ver',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(beforeArgs, isNotNull);
      expect(beforeArgs!.suggestions.map((s) => s.name), contains('--verbose'));

      final afterArg = await getSuggestions(
        '$optionsBeforeArgsCommand file ',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );
      expect(afterArg, isNotNull);
      expect(afterArg!.suggestions.map((s) => s.name),
          isNot(contains('--verbose')));
      expect(afterArg.argumentDescription, 'pattern');
    });

    test('supports parserDirectives optionArgSeparators for inline option args',
        () async {
      registerSpec(
        optionSeparatorCommand,
        () => FigSpec(
          name: optionSeparatorCommand,
          parserDirectives: ParserDirectives(optionArgSeparators: [':']),
          options: [
            FigOption(
              name: '--define',
              requiresSeparator: ':',
              args: [
                FigArg(
                  name: 'pair',
                  suggestions: ['debug=true', 'prod=false'],
                ),
              ],
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        '$optionSeparatorCommand --define:de',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.charactersToDrop, 2);
      expect(result.suggestions.map((s) => s.name), contains('debug=true'));
    });

    test('keeps single-dash long flags working for non-posix specs', () async {
      registerSpec(
        nonPosixFlagsCommand,
        () => FigSpec(
          name: nonPosixFlagsCommand,
          parserDirectives: ParserDirectives(flagsArePosixNoncompliant: true),
          options: [
            FigOption(name: '-version'),
            FigOption(name: '-help'),
          ],
        ),
      );

      final result = await getSuggestions(
        '$nonPosixFlagsCommand -ver',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('-version'));
    });

    test('preserves runtime-relevant fields from loadSpec specs', () async {
      registerSpec(
        loadSpecSemanticsSubCommand,
        () => FigSpec(
          name: loadSpecSemanticsSubCommand,
          icon: 'loaded-icon',
          filterStrategy: FilterStrategy.fuzzy,
          requiresSubcommand: true,
          additionalSuggestions: [
            FigSuggestion(
              name: 'loaded extra',
              insertValue: 'loaded extra',
              priority: 120,
            ),
          ],
          parserDirectives: ParserDirectives(optionArgSeparators: [':']),
          options: [
            FigOption(
              name: '--define',
              requiresSeparator: ':',
              args: [
                FigArg(
                  name: 'pair',
                  suggestions: ['debug=true'],
                ),
              ],
            ),
          ],
          subcommands: [
            FigSubcommand(name: 'hidden-sub', hidden: true),
          ],
          args: [
            FigArg(name: 'should-not-appear'),
          ],
        ),
      );

      registerSpec(
        loadSpecSemanticsRootCommand,
        () => FigSpec(
          name: loadSpecSemanticsRootCommand,
          subcommands: [
            FigSubcommand(
              name: 'foo',
              loadSpec: loadSpecSemanticsSubCommand,
              icon: 'original-icon',
              filterStrategy: FilterStrategy.prefix,
            ),
          ],
        ),
      );

      final base = await getSuggestions(
        '$loadSpecSemanticsRootCommand foo ',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(base, isNotNull);
      expect(base!.suggestions.map((s) => s.name), contains('loaded extra'));
      expect(base.suggestions.map((s) => s.name), contains('--define'));
      expect(
          base.suggestions.map((s) => s.name), isNot(contains('hidden-sub')));
      expect(base.suggestions.map((s) => s.name),
          isNot(contains('should-not-appear')));
      expect(base.suggestions.first.name, 'loaded extra');

      final inline = await getSuggestions(
        '$loadSpecSemanticsRootCommand foo --define:de',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(inline, isNotNull);
      expect(inline!.charactersToDrop, 2);
      expect(inline.suggestions.map((s) => s.name), contains('debug=true'));

      final invalid = await getSuggestions(
        '$loadSpecSemanticsRootCommand foo random ',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(invalid, isNull);
    });

    test(
        'mergeRuntimeCommandNode lets loaded runtime fields override originals',
        () {
      final original = RuntimeCommandNode(
        name: 'foo',
        icon: 'original-icon',
        filterStrategy: FilterStrategy.prefix,
      );
      final loaded = RuntimeCommandNode(
        name: 'loaded-name',
        icon: 'loaded-icon',
        filterStrategy: FilterStrategy.fuzzy,
      );

      final merged = mergeRuntimeCommandNode(original, loaded);

      expect(merged.name, 'foo');
      expect(merged.icon, 'loaded-icon');
      expect(merged.filterStrategy, FilterStrategy.fuzzy);
    });

    test('arg loadSpec continues traversal inside the loaded spec', () async {
      registerSpec(
        argLoadSpecChildCommand,
        () => FigSpec(
          name: argLoadSpecChildCommand,
          subcommands: [
            FigSubcommand(name: 'deploy'),
            FigSubcommand(name: 'describe'),
          ],
        ),
      );

      registerSpec(
        argLoadSpecRootCommand,
        () => FigSpec(
          name: argLoadSpecRootCommand,
          args: [
            FigArg(name: 'tool', loadSpec: argLoadSpecChildCommand),
          ],
        ),
      );

      final result = await getSuggestions(
        '$argLoadSpecRootCommand anything de',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('deploy'));
      expect(result.suggestions.map((s) => s.name), contains('describe'));
    });

    test('variadic args honor optionsCanBreakVariadicArg when parsing options',
        () async {
      registerSpec(
        variadicBreakOptionCommand,
        () => FigSpec(
          name: variadicBreakOptionCommand,
          options: [
            FigOption(
              name: '--mode',
              args: [
                FigArg(suggestions: ['fast', 'safe']),
              ],
            ),
          ],
          args: [
            FigArg(
              name: 'files',
              isVariadic: true,
              optionsCanBreakVariadicArg: true,
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        '$variadicBreakOptionCommand foo --mode fa',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('fast'));
    });

    test('requestSuggestions cancel emits cancelled and resolves done to null',
        () async {
      registerSpec(
        requestCancellationCommand,
        () => FigSpec(
          name: requestCancellationCommand,
          args: [
            FigArg(
              suggestions: const ['slow-static'],
              generators: const FigGenerator(
                script: ['slow-request-cancel'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'slow-request-cancel': ProcessRunResult(stdout: 'slow-alpha\n'),
        },
        processDelays: const {
          'slow-request-cancel': Duration(milliseconds: 200),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);
      final handle = engine.requestSuggestions(
        '$requestCancellationCommand sl',
        '/work',
        Shell.bash,
        mode: SuggestionRequestMode.staticThenFinal,
      );
      final eventsFuture = handle.stream.toList();

      await Future<void>.delayed(Duration.zero);
      handle.cancel();

      final result = await handle.done;
      final events = await eventsFuture;

      expect(result, isNull);
      expect(
        events.map((event) => event.kind).toList(),
        equals([
          SuggestionEventKind.staticPartial,
          SuggestionEventKind.cancelled,
        ]),
      );
    });

    test('requestSuggestions timeout emits timeout and resolves done to null',
        () async {
      registerSpec(
        requestTimeoutCommand,
        () => FigSpec(
          name: requestTimeoutCommand,
          args: [
            FigArg(
              suggestions: const ['slow-static'],
              generators: const FigGenerator(
                script: ['slow-request-timeout'],
                splitOn: '\n',
              ),
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'slow-request-timeout': ProcessRunResult(stdout: 'slow-alpha\n'),
        },
        processDelays: const {
          'slow-request-timeout': Duration(milliseconds: 200),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);
      final handle = engine.requestSuggestions(
        '$requestTimeoutCommand sl',
        '/work',
        Shell.bash,
        mode: SuggestionRequestMode.staticThenFinal,
        timeout: const Duration(milliseconds: 20),
      );

      final events = await handle.stream.toList();
      final result = await handle.done;

      expect(result, isNull);
      expect(
        events.map((event) => event.kind).toList(),
        equals([
          SuggestionEventKind.staticPartial,
          SuggestionEventKind.timeout,
        ]),
      );
      expect(events.last.elapsed, isNotNull);
    });

    test('subcommand generateSpec is materialized before nested traversal',
        () async {
      registerSpec(
        subcommandGenerateSpecCommand,
        () => FigSpec(
          name: subcommandGenerateSpecCommand,
          subcommands: [
            FigSubcommand(
              name: 'env',
              generateSpec: (tokens, executeCommand) async => FigSubcommand(
                name: 'env',
                subcommands: [
                  FigSubcommand(name: 'deploy'),
                  FigSubcommand(name: 'destroy'),
                ],
                additionalSuggestions: ['generated-extra'],
              ),
            ),
          ],
        ),
      );

      final result = await getSuggestions(
        '$subcommandGenerateSpecCommand env de',
        '/work',
        Shell.bash,
        FakeAdapter(),
      );

      expect(result, isNotNull);
      expect(result!.suggestions.map((s) => s.name), contains('deploy'));
      expect(result.suggestions.map((s) => s.name), contains('destroy'));
    });

    test('subcommand generateSpec runs once across static and dynamic passes',
        () async {
      var generateSpecCalls = 0;
      registerSpec(
        singlePassSubcommandGenerateSpecCommand,
        () => FigSpec(
          name: singlePassSubcommandGenerateSpecCommand,
          subcommands: [
            FigSubcommand(
              name: 'env',
              generateSpec: (tokens, executeCommand) async {
                generateSpecCalls++;
                return FigSubcommand(
                  name: 'env',
                  args: [
                    FigArg(
                      generators: const FigGenerator(
                        script: ['list-envs'],
                        splitOn: '\n',
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );

      final adapter = FakeAdapter(
        processResults: const {
          'list-envs': ProcessRunResult(stdout: 'dev\ndemo\n'),
        },
      );
      final engine = AutocompleteEngine(adapter: adapter);

      final result = await engine.getSuggestions(
        '$singlePassSubcommandGenerateSpecCommand env de',
        '/work',
        Shell.bash,
      );

      expect(result, isNotNull);
      expect(
          result!.suggestions.map((s) => s.name), containsAll(['dev', 'demo']));
      expect(generateSpecCalls, 1);
      expect(adapter.processInvocations.length, 1);
    });
  });
}
