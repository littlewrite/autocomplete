// Hand-written dynamic handlers migrated from src/react-native.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const reactNativeGetJsFilesAndFoldersHandler =
    'manual.src_react-native.generator.getjsfilesandfolders';
const reactNativeWorkerGeneratorPostProcessHandler =
    'manual.src_react-native.definition.workergenerator.postprocess';
const reactNativeAndroidGetDevicesGeneratorHandler =
    'manual.src_react-native.generator.androidgetdevicesgenerator';
const reactNativeGradleTasksGeneratorPostProcessHandler =
    'manual.src_react-native.definition.gradletasksgenerator.postprocess';
const reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler =
    'manual.src_react-native.definition.iosgetdevicessimulatorgenerator.postprocess';
const reactNativeXcodeConfigGeneratorHandler =
    'manual.src_react-native.generator.xcodeconfiggenerator';
const reactNativeXcodeSchemeGeneratorHandler =
    'manual.src_react-native.generator.xcodeschemegenerator';
const reactNativeIosGetDevicesGeneratorPostProcessHandler =
    'manual.src_react-native.definition.iosgetdevicesgenerator.postprocess';
const reactNativeIosGetDevicesUdidGeneratorPostProcessHandler =
    'manual.src_react-native.definition.iosgetdevicesudidgenerator.postprocess';

const _jsIcon =
    'https://raw.githubusercontent.com/vscode-icons/vscode-icons/master/icons/file_type_js.svg';
const _appleIcon =
    'https://developer.apple.com/library/archive/Resources/1282/Images/apple2.png';
const _androidIcon = 'https://www.android.com/static/images/fav/favicon.ico';

/// `sysctl -n hw.ncpu` output: the number of cores. Suggests the worker
/// indices `0`..`N-1`, mirroring `Array.from({length: N})`.
List<FigSuggestion> _workerGenerator(String output, [List<String>? tokens]) {
  // JS `Number(scriptOutput)` tolerates surrounding whitespace/newlines.
  final count = int.tryParse(output.trim());
  if (count == null || count <= 0) return const [];
  return List.generate(count, (i) => FigSuggestion(name: '$i'));
}

/// `adb devices` output. Keeps lines ending in `device`, drops the `List`
/// header and any `*` marker lines, then takes the token before `device`.
Future<List<FigSuggestion>> _androidGetDevices(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'adb',
    args: const ['devices'],
  ));
  if (result.status != 0) return const [];
  final suggestions = <FigSuggestion>[];
  final skipPattern = RegExp(r'^(List)|\*');
  final devicePattern = RegExp(r'device$');
  for (final item in result.stdout.split('\n')) {
    if (skipPattern.hasMatch(item)) continue;
    if (item.isEmpty) continue;
    if (!devicePattern.hasMatch(item)) continue;
    suggestions.add(FigSuggestion(
      name: item.split(RegExp('device')).first.trim(),
      icon: _androidIcon,
    ));
  }
  return suggestions;
}

/// `xcodebuild -project ios/*.xcodeproj -list -json` output: parses
/// `project.<key>` (either `configurations` or `schemes`) into a flat list of
/// string names.
List<FigSuggestion> _parseXcodeList(String output, String key) {
  try {
    final decoded = jsonDecode(output) as Map<String, dynamic>;
    final project = decoded['project'] as Map<String, dynamic>;
    final values = project[key] as List;
    return values
        .map((name) => FigSuggestion(name: name as String))
        .toList();
  } catch (_) {
    return const [];
  }
}

Future<List<FigSuggestion>> _xcodeList(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
  String key,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'bash',
    args: const ['-c', 'xcodebuild -project ios/*.xcodeproj  -list -json'],
  ));
  if (result.status != 0) return const [];
  return _parseXcodeList(result.stdout, key);
}

/// `xcrun simctl list --json devices available` output: flattens every runtime's
/// device array and suggests each device name with the Apple icon.
List<FigSuggestion> _iosGetDevicesSimulator(
    String output, [List<String>? tokens]) {
  try {
    final decoded = jsonDecode(output) as Map<String, dynamic>;
    final devices = decoded['devices'] as Map<String, dynamic>;
    final suggestions = <FigSuggestion>[];
    for (final data in devices.values) {
      for (final raw in data as List) {
        final item = raw as Map<String, dynamic>;
        suggestions.add(FigSuggestion(
          name: item['name'] as String,
          icon: _appleIcon,
        ));
      }
    }
    return suggestions;
  } catch (_) {
    return const [];
  }
}

/// `xcrun xctrace list devices` output: drops `=` separator lines, then strips
/// the trailing parenthesized UDID from each device line.
List<FigSuggestion> _iosGetDevices(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  final skipPattern = RegExp(r'^=');
  final trailingParenthetical = RegExp(r'\([\w\d\-]+\)$');
  for (final item in output.split('\n')) {
    if (skipPattern.hasMatch(item)) continue;
    if (item.isEmpty) continue;
    final name = item.split(trailingParenthetical).first.trim();
    suggestions.add(FigSuggestion(name: name));
  }
  return suggestions;
}

/// `xcrun xctrace list devices` output: drops `=` separator lines, then takes
/// the last space-separated token (the UDID in parentheses) and strips the
/// parens.
List<FigSuggestion> _iosGetDevicesUdid(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  final skipPattern = RegExp(r'^=');
  for (final item in output.split('\n')) {
    if (skipPattern.hasMatch(item)) continue;
    if (item.isEmpty) continue;
    final parts = item.split(' ');
    final name = parts[parts.length - 1]
        .trim()
        .replaceFirst('(', '')
        .replaceFirst(')', '');
    suggestions.add(FigSuggestion(name: name));
  }
  return suggestions;
}

/// `cd android/ && ./gradlew tasks` output: keeps task lines (leading
/// `name - description` or any `*` marker), splitting on ` - `.
List<FigSuggestion> _gradleTasks(String output, [List<String>? tokens]) {
  final suggestions = <FigSuggestion>[];
  final taskPattern = RegExp(r'^\w+ \- |\*');
  for (final item in output.split('\n')) {
    if (!taskPattern.hasMatch(item)) continue;
    final parts = item.split(' - ');
    final description = parts.length > 1 ? parts[1] : null;
    suggestions.add(FigSuggestion(
      name: parts.first,
      description: description,
    ));
  }
  return suggestions;
}

/// `filepaths({ extensions: ["js"], editFileSuggestions: { icon: JS_ICON } })`.
/// Lists `.js` files and every folder in the working directory, with the JS
/// icon applied to file suggestions.
Future<List<FigSuggestion>> _getJsFilesAndFolders(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (context == null) return const [];
  final entries = await context.adapter.listDirectory(
    context.currentWorkingDirectory,
    extensions: const ['js'],
  );
  return entries.map((entry) {
    final isDirectory = entry.isDirectory;
    return FigSuggestion(
      name: isDirectory ? '${entry.name}/' : entry.name,
      type: isDirectory ? SuggestionType.folder : SuggestionType.file,
      icon: isDirectory ? null : _jsIcon,
    );
  }).toList();
}

/// Registers the react-native generators referenced by the shipped JSON.
void registerReactNativeHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    reactNativeGetJsFilesAndFoldersHandler,
    (tokens, executeCommand, context) =>
        _getJsFilesAndFolders(tokens, executeCommand, context),
  );
  registry.registerPostProcess(
      reactNativeWorkerGeneratorPostProcessHandler, _workerGenerator);
  registry.registerCustom(
    reactNativeAndroidGetDevicesGeneratorHandler,
    (tokens, executeCommand, context) =>
        _androidGetDevices(tokens, executeCommand, context),
  );
  registry.registerPostProcess(
      reactNativeGradleTasksGeneratorPostProcessHandler, _gradleTasks);
  registry.registerPostProcess(
      reactNativeIosGetDevicesSimulatorGeneratorPostProcessHandler,
      _iosGetDevicesSimulator);
  registry.registerCustom(
    reactNativeXcodeConfigGeneratorHandler,
    (tokens, executeCommand, context) =>
        _xcodeList(tokens, executeCommand, context, 'configurations'),
  );
  registry.registerCustom(
    reactNativeXcodeSchemeGeneratorHandler,
    (tokens, executeCommand, context) =>
        _xcodeList(tokens, executeCommand, context, 'schemes'),
  );
  registry.registerPostProcess(
      reactNativeIosGetDevicesGeneratorPostProcessHandler, _iosGetDevices);
  registry.registerPostProcess(
      reactNativeIosGetDevicesUdidGeneratorPostProcessHandler,
      _iosGetDevicesUdid);
}
