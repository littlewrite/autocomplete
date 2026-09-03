import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/dotnet_tool.dart';
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

/// Collects every `handler` string referenced anywhere in the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      final handler = value['handler'];
      if (handler is String) ids.add(handler);
      for (final item in value.values) {
        visit(item);
      }
    } else if (value is List) {
      for (final item in value) {
        visit(item);
      }
    }
  }

  visit(node);
  return ids;
}

/// The shared dotnet-tool trigger declaration ID.
const _triggerIds = <String>{
  dotnetToolDefinitionTriggerHandler,
};

/// Finds the first generator on the `run`/`uninstall`/`update` subcommand arg.
FigGenerator _firstGenerator(FigSpec spec, String subcommandName) {
  final subcommand = spec.subcommands!
      .firstWhere((item) => item.nameList.first == subcommandName);
  return subcommand.args!.single.generatorsList.first;
}

void main() {
  test('tool JSON binds every trigger to the three declaration IDs', () async {
    final handlers = JsonHandlerRegistry();
    registerDotnetToolHandlers(handlers);
    final source = await File('assets/specs/t/tool.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'tool');
    for (final id in _triggerIds) {
      expect(source, contains(id));
    }
    expect(_referencedHandlers(document), _triggerIds);
  });

  test('tool JSON parses in strict mode with the handlers registered',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDotnetToolHandlers(handlers);
    final source = await File('assets/specs/t/tool.json').readAsString();
    expect(() => figSpecFromJsonString(source, handlers: handlers),
        returnsNormally);
  });

  test('each toolListGenerator trigger always returns true', () {
    final registry = JsonHandlerRegistry();
    registerDotnetToolHandlers(registry);
    final trigger = registry.trigger(dotnetToolDefinitionTriggerHandler)!;
    expect(trigger('new', 'old'), isTrue);
    expect(trigger('', ''), isTrue);

    expect(trigger('any', 'other'), isTrue);
    expect(trigger('anything', 'at all'), isTrue);
  });

  test('parsed run/uninstall/update args carry the always-true trigger',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDotnetToolHandlers(handlers);
    final source = await File('assets/specs/t/tool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    final run = _firstGenerator(spec, 'run');
    final runTrigger = run.trigger as JsonTriggerHandler;
    expect(runTrigger('new', 'old'), isTrue);

    final uninstall = _firstGenerator(spec, 'uninstall');
    final uninstallTrigger = uninstall.trigger as JsonTriggerHandler;
    expect(uninstallTrigger('new', 'old'), isTrue);

    final update = _firstGenerator(spec, 'update');
    final updateTrigger = update.trigger as JsonTriggerHandler;
    expect(updateTrigger('new', 'old'), isTrue);
  });

  test('run generator has no static script so suggestions are empty end to end',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDotnetToolHandlers(handlers);
    final adapter = _FakeAdapter({
      'dotnet tool list': const ProcessRunResult(
        stdout: 'Package Id      Version      Commands\n'
            '------------------------------\n'
            'dotnet-ef       8.0.0        dotnet-ef',
        stderr: '',
        exitCode: 0,
      ),
    });
    final source = await File('assets/specs/t/tool.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final generator = _firstGenerator(spec, 'run');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'dotnet', tokenLength: 6, complete: true),
        CommandToken(token: 'tool', tokenLength: 4, complete: true),
        CommandToken(token: 'run', tokenLength: 3, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    // The focused JSON ships only the trigger handler (no script/postProcess),
    // so there is nothing for the runtime to execute.
    expect(suggestions, isEmpty);
  });
}
