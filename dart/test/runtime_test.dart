import 'package:autocomplete/autocomplete.dart';
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
    final entries =
        _directories[_normalizePath(path)] ?? const <FileSystemEntry>[];
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

void main() {
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
  const executeCommandEnvCommand = 'ac_execute_command_env_test';
  const generatorObjectScriptCommand = 'ac_generator_object_script_test';
  const generatorSplitOnCommand = 'ac_generator_split_on_test';
  const shellPathEscapingCommand = 'ac_shell_path_escaping_test';
  const pathResolutionCommand = 'ac_path_resolution_test';
  const quotedDropCommand = 'ac_quoted_drop_test';
  const templateFilterContextCommand = 'ac_template_filter_context_test';
  const variadicArgRegressionCommand = 'ac_variadic_arg_regression_test';
  const wideCharsCommand = 'ac_wide_chars_test';

  tearDownAll(() {
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
    unregisterSpec(executeCommandEnvCommand);
    unregisterSpec(generatorObjectScriptCommand);
    unregisterSpec(generatorSplitOnCommand);
    unregisterSpec(shellPathEscapingCommand);
    unregisterSpec(pathResolutionCommand);
    unregisterSpec(quotedDropCommand);
    unregisterSpec(templateFilterContextCommand);
    unregisterSpec(variadicArgRegressionCommand);
    unregisterSpec(wideCharsCommand);
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

      final engine = AutocompleteEngine();
      final adapter = FakeAdapter();

      final alpha = await engine.getSuggestions(
        '$dynamicCacheCommand --profile a ',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(alpha, isNotNull);
      expect(alpha!.suggestions.map((s) => s.name), contains('alpha'));

      final beta = await engine.getSuggestions(
        '$dynamicCacheCommand --profile b ',
        '/work',
        Shell.bash,
        adapter,
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
      final engine = AutocompleteEngine();

      final first = await engine.getSuggestions(
        'gc',
        '/work',
        Shell.bash,
        adapter,
      );
      expect(first, isNotNull);
      expect(first!.suggestions.map((s) => s.name), contains('gco'));
      expect(first.suggestions.map((s) => s.name), isNot(contains('gst')));

      final second = await engine.getSuggestions(
        'gs',
        '/work',
        Shell.bash,
        adapter,
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
  });
}
