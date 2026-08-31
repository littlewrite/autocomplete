import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/react_native.dart';
import 'package:test/test.dart';

const _jsIcon =
    'https://raw.githubusercontent.com/vscode-icons/vscode-icons/master/icons/file_type_js.svg';
const _appleIcon =
    'https://developer.apple.com/library/archive/Resources/1282/Images/apple2.png';
const _androidIcon = 'https://www.android.com/static/images/fav/favicon.ico';

const _xcodeScript = 'xcodebuild -project ios/*.xcodeproj  -list -json';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.directoryEntries = const []});

  final Map<String, ProcessRunResult> _results;
  final List<FileSystemEntry> directoryEntries;

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
  }) async {
    return directoryEntries.where((entry) {
      if (entry.isDirectory) return !foldersOnly;
      if (extensions == null) return true;
      return extensions.any((ext) => entry.name.endsWith('.$ext'));
    }).toList();
  }

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

FigGeneratorContext _context(CompleteAdapter adapter) =>
    FigGeneratorContext(currentWorkingDirectory: '/work', adapter: adapter);

/// Returns the first generator attached to [optionName] under [subcommandName].
FigGenerator? _optionGenerator(
    FigSpec spec, String subcommandName, String optionName) {
  for (final subcommand in spec.subcommands ?? const <FigSubcommand>[]) {
    if (!subcommand.nameList.contains(subcommandName)) continue;
    for (final option in subcommand.options ?? const <FigOption>[]) {
      if (!option.nameList.contains(optionName)) continue;
      for (final arg in option.args ?? const <FigArg>[]) {
        if (arg.generatorsList.isNotEmpty) return arg.generatorsList.first;
      }
    }
  }
  return null;
}

void main() {
  test('react-native JSON binds every generator to the nine handler IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerReactNativeHandlers(handlers);
    final source = await File('assets/specs/r/react-native.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(reactNativeGetJsFilesAndFoldersHandler));
    expect(source, contains(reactNativeWorkerGeneratorPostProcessHandler));
    expect(source, contains(reactNativeAndroidGetDevicesGeneratorHandler));
    expect(source,
        contains(reactNativeGradleTasksGeneratorPostProcessHandler));
    expect(
        source,
        contains(
            reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler));
    expect(source, contains(reactNativeXcodeConfigGeneratorHandler));
    expect(source, contains(reactNativeXcodeSchemeGeneratorHandler));
    expect(source, contains(reactNativeIosGetDevicesGeneratorPostProcessHandler));
    expect(
        source, contains(reactNativeIosGetDevicesUdidGeneratorPostProcessHandler));
    expect(document['name'], 'react-native');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final gen = generator as Map;
          final directHandler = gen['handler'];
          if (directHandler is String) {
            ids.add(directHandler);
          }
          final postProcess = gen['postProcess'];
          if (postProcess is Map && postProcess['handler'] is String) {
            ids.add(postProcess['handler'] as String);
          }
        }
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectGenerators(item);
          }
        } else if (value is Map) {
          collectGenerators(value);
        }
      }
    }

    collectGenerators(document);
    expect(ids.toSet(), {
      reactNativeGetJsFilesAndFoldersHandler,
      reactNativeWorkerGeneratorPostProcessHandler,
      reactNativeAndroidGetDevicesGeneratorHandler,
      reactNativeGradleTasksGeneratorPostProcessHandler,
      reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler,
      reactNativeXcodeConfigGeneratorHandler,
      reactNativeXcodeSchemeGeneratorHandler,
      reactNativeIosGetDevicesGeneratorPostProcessHandler,
      reactNativeIosGetDevicesUdidGeneratorPostProcessHandler,
    });
  });

  test('worker generator suggests an index per core', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final workers = registry
        .postProcess(reactNativeWorkerGeneratorPostProcessHandler)!('4');
    expect(workers.map((item) => item.nameSingle ?? '').toList(),
        ['0', '1', '2', '3']);
  });

  test('worker generator tolerates a trailing newline', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final workers = registry
        .postProcess(reactNativeWorkerGeneratorPostProcessHandler)!('8\n');
    expect(workers.map((item) => item.nameSingle ?? '').toList(),
        ['0', '1', '2', '3', '4', '5', '6', '7']);
  });

  test('worker generator returns empty for empty or unparsable output', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.postProcess(reactNativeWorkerGeneratorPostProcessHandler)!;
    expect(handler(''), isEmpty);
    expect(handler('abc'), isEmpty);
    expect(handler('0'), isEmpty);
    expect(handler('-3'), isEmpty);
  });

  test('android devices generator filters and trims adb devices output',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeAndroidGetDevicesGeneratorHandler)!;

    final devices = await handler(
      const ['react-native', 'run-android', '--deviceId', ''],
      (input) async {
        expect(input.command, 'adb');
        expect(input.args, ['devices']);
        return const ExecuteCommandOutput(
          stdout: 'List of devices attached\n'
              'emulator-5554          device\n'
              '10.0.2.2:5555          device',
          stderr: '',
          status: 0,
        );
      },
      _context(_FakeAdapter(const {})),
    );

    expect(devices.map((item) => item.nameSingle ?? '').toList(),
        ['emulator-5554', '10.0.2.2:5555']);
    expect(devices.first.icon, _androidIcon);
  });

  test('android devices generator skips headers, star lines and offline rows',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeAndroidGetDevicesGeneratorHandler)!;

    final devices = await handler(
      const ['react-native', 'run-android', '--deviceId', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'List of devices attached\n'
            '* daemon not running\n'
            'emulator-5554          device\n'
            'ABC123          offline',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {})),
    );

    expect(devices.map((item) => item.nameSingle ?? '').toList(),
        ['emulator-5554']);
  });

  test('android devices generator returns empty on failure or missing command',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeAndroidGetDevicesGeneratorHandler)!;

    final failed = await handler(
      const ['react-native', 'run-android', '--deviceId', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'emulator-5554          device',
        stderr: 'adb: not found',
        status: 1,
      ),
      _context(_FakeAdapter(const {})),
    );
    expect(failed, isEmpty);

    final noCommand = await handler(
      const ['react-native', 'run-android', '--deviceId', ''],
      null,
      _context(_FakeAdapter(const {})),
    );
    expect(noCommand, isEmpty);
  });

  test('xcode config generator parses project.configurations', () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeXcodeConfigGeneratorHandler)!;

    final configs = await handler(
      const ['react-native', 'run-ios', '--configuration', ''],
      (input) async {
        expect(input.command, 'bash');
        expect(input.args, ['-c', _xcodeScript]);
        return const ExecuteCommandOutput(
          stdout:
              '{"project": {"configurations": ["Debug", "Release"], "schemes": ["MyApp", "MyAppDev"]}}',
          stderr: '',
          status: 0,
        );
      },
      _context(_FakeAdapter(const {})),
    );

    expect(configs.map((item) => item.nameSingle ?? '').toList(),
        ['Debug', 'Release']);
  });

  test('xcode scheme generator parses project.schemes', () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeXcodeSchemeGeneratorHandler)!;

    final schemes = await handler(
      const ['react-native', 'run-ios', '--scheme', ''],
      (input) async => const ExecuteCommandOutput(
        stdout:
            '{"project": {"configurations": ["Debug", "Release"], "schemes": ["MyApp", "MyAppDev"]}}',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {})),
    );

    expect(schemes.map((item) => item.nameSingle ?? '').toList(),
        ['MyApp', 'MyAppDev']);
  });

  test('xcode generators return empty for malformed JSON or failure',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final configHandler =
        registry.custom(reactNativeXcodeConfigGeneratorHandler)!;
    final schemeHandler =
        registry.custom(reactNativeXcodeSchemeGeneratorHandler)!;

    final malformed = await configHandler(
      const ['react-native', 'run-ios', '--configuration', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'not json',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {})),
    );
    expect(malformed, isEmpty);

    final missingProject = await schemeHandler(
      const ['react-native', 'run-ios', '--scheme', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '{"other": []}',
        stderr: '',
        status: 0,
      ),
      _context(_FakeAdapter(const {})),
    );
    expect(missingProject, isEmpty);

    final failed = await schemeHandler(
      const ['react-native', 'run-ios', '--scheme', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: '{"project": {"schemes": ["MyApp"]}}',
        stderr: 'xcodebuild failed',
        status: 1,
      ),
      _context(_FakeAdapter(const {})),
    );
    expect(failed, isEmpty);
  });

  test('ios simulator generator flattens every runtime device array', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final output = '{"devices": {'
        '"iOS 17.0": [{"name": "iPhone 15", "udid": "A"}, '
        '{"name": "iPhone 15 Pro", "udid": "B"}], '
        '"watchOS 10.0": [{"name": "Apple Watch", "udid": "C"}]}}';

    final devices = registry
        .postProcess(reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler)!
        .call(output);

    expect(devices.map((item) => item.nameSingle ?? '').toList(),
        ['iPhone 15', 'iPhone 15 Pro', 'Apple Watch']);
    expect(devices.first.icon, _appleIcon);
  });

  test('ios simulator generator returns empty for empty or malformed output',
      () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler =
        registry.postProcess(reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler)!;
    expect(handler(''), isEmpty);
    expect(handler('not json'), isEmpty);
    expect(handler('{"devices": {}}'), isEmpty);
  });

  test('ios devices generator strips the trailing parenthesized udid', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final output = '== Devices ==\n'
        'Mac mini (macOS 14.0) (ABC123-DEF)\n'
        'iPhone 15 Pro (17.0) (DEF456-ABC)\n'
        'Apple TV (15.0) (GHI789-JKL)';

    final devices = registry
        .postProcess(reactNativeIosGetDevicesGeneratorPostProcessHandler)!
        .call(output);

    expect(devices.map((item) => item.nameSingle ?? '').toList(),
        ['Mac mini (macOS 14.0)', 'iPhone 15 Pro (17.0)', 'Apple TV (15.0)']);
  });

  test('ios devices generator returns empty for separators only or empty',
      () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler =
        registry.postProcess(reactNativeIosGetDevicesGeneratorPostProcessHandler)!;
    expect(handler(''), isEmpty);
    expect(handler('== Devices ==\n'), isEmpty);
  });

  test('ios udid generator extracts the last parenthesized token', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final output = '== Devices ==\n'
        'Mac mini (macOS 14.0) (ABC123-DEF)\n'
        'iPhone 15 Pro (17.0) (DEF456-ABC)';

    final udids = registry
        .postProcess(reactNativeIosGetDevicesUdidGeneratorPostProcessHandler)!
        .call(output);

    expect(udids.map((item) => item.nameSingle ?? '').toList(),
        ['ABC123-DEF', 'DEF456-ABC']);
  });

  test('ios udid generator returns empty for separators only or empty', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler =
        registry.postProcess(reactNativeIosGetDevicesUdidGeneratorPostProcessHandler)!;
    expect(handler(''), isEmpty);
    expect(handler('== Devices ==\n'), isEmpty);
  });

  test('gradle tasks generator keeps task lines and splits descriptions', () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final output = '------------------------------------------------------------\n'
        'Tasks runnable from root project\n'
        '------------------------------------------------------------\n'
        'Android tasks\n'
        '-------------\n'
        'androidDependencies - Displays the Android dependencies of the project\n'
        'signingReport - Displays the signing info for each variant\n'
        'Build Setup tasks\n'
        '-----------------\n'
        'init - Initializes a new Gradle build\n'
        'wrapper - Generates Gradle wrapper files\n'
        'help - Displays a help message';

    final tasks =
        registry.postProcess(reactNativeGradleTasksGeneratorPostProcessHandler)!
            .call(output);

    expect(tasks.map((item) => item.nameSingle ?? '').toList(),
        ['androidDependencies', 'signingReport', 'init', 'wrapper', 'help']);
    expect(tasks.first.description, 'Displays the Android dependencies of the project');
  });

  test('gradle tasks generator keeps star marker lines without descriptions',
      () {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final output = 'installDebug - Installs the Debug build\n'
        '* running marker line';

    final tasks =
        registry.postProcess(reactNativeGradleTasksGeneratorPostProcessHandler)!
            .call(output);

    expect(tasks.map((item) => item.nameSingle ?? '').toList(),
        ['installDebug', '* running marker line']);
    expect(tasks.first.description, 'Installs the Debug build');
    expect(tasks.last.description, isNull);
  });

  test('getJsFilesAndFolders lists js files and folders with the js icon',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeGetJsFilesAndFoldersHandler)!;
    final adapter = _FakeAdapter(
      const {},
      directoryEntries: const [
        FileSystemEntry(name: 'index.js', isDirectory: false),
        FileSystemEntry(name: 'App.js', isDirectory: false),
        FileSystemEntry(name: 'components', isDirectory: true),
        FileSystemEntry(name: 'main.txt', isDirectory: false),
        FileSystemEntry(name: 'config.js', isDirectory: false),
      ],
    );

    final suggestions = await handler(
      const ['react-native', 'bundle', '--entry-file', ''],
      null,
      _context(adapter),
    );

    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['index.js', 'App.js', 'components/', 'config.js']);
    expect(suggestions.first.icon, _jsIcon);
    final folder =
        suggestions.firstWhere((item) => item.nameSingle == 'components/');
    expect(folder.icon, isNull);
    expect(folder.type, SuggestionType.folder);
  });

  test('getJsFilesAndFolders returns empty without a context', () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final handler = registry.custom(reactNativeGetJsFilesAndFoldersHandler)!;
    final suggestions = await handler(const [], null, null);
    expect(suggestions, isEmpty);
  });

  test('worker generator runs sysctl through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final adapter = _FakeAdapter({
      'sysctl -n hw.ncpu':
          const ProcessRunResult(stdout: '4', stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/r/react-native.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, 'bundle', '--max-workers')!;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'react-native', tokenLength: 12, complete: true),
        CommandToken(token: 'bundle', tokenLength: 6, complete: true),
        CommandToken(token: '--max-workers', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['0', '1', '2', '3']);
  });

  test('gradle tasks generator runs gradlew through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c cd android/ && ./gradlew tasks': const ProcessRunResult(
        stdout: 'installDebug - Installs the Debug build\n'
            'installRelease - Installs the Release build',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/react-native.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, 'run-android', '--tasks')!;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'react-native', tokenLength: 12, complete: true),
        CommandToken(token: 'run-android', tokenLength: 11, complete: true),
        CommandToken(token: '--tasks', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['installDebug', 'installRelease']);
  });

  test('android devices generator runs adb through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final adapter = _FakeAdapter({
      'adb devices': const ProcessRunResult(
        stdout: 'List of devices attached\n'
            'emulator-5554          device\n'
            '10.0.2.2:5555          device',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/react-native.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, 'run-android', '--deviceId')!;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'react-native', tokenLength: 12, complete: true),
        CommandToken(token: 'run-android', tokenLength: 11, complete: true),
        CommandToken(token: '--deviceId', tokenLength: 10, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['emulator-5554', '10.0.2.2:5555']);
  });

  test('xcode config generator runs xcodebuild through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerReactNativeHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c $_xcodeScript': const ProcessRunResult(
        stdout: '{"project": {"configurations": ["Debug", "Release"]}}',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/r/react-native.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, 'run-ios', '--configuration')!;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'react-native', tokenLength: 12, complete: true),
        CommandToken(token: 'run-ios', tokenLength: 7, complete: true),
        CommandToken(token: '--configuration', tokenLength: 15, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Debug', 'Release']);
  });
}
