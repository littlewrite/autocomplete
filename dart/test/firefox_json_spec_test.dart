import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/firefox.dart';
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

/// Returns the single generator of the root option named [optionName].
FigGenerator _optionGenerator(FigSpec spec, String optionName) {
  final option =
      spec.options!.firstWhere((o) => o.nameList.contains(optionName));
  return option.args!.single.generators!.single;
}

void main() {
  test('firefox JSON binds every generator to the two declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFirefoxHandlers(handlers);
    final source = await File('assets/specs/f/firefox.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(firefoxStartDebuggerServerTriggerHandler));
    expect(source, contains(firefoxStartDebuggerServerCustomHandler));
    expect(document['name'], 'firefox');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          for (final field in ['custom', 'trigger', 'postProcess', 'script']) {
            final value = (generator as Map)[field];
            if (value is Map) ids.add(value['handler'] as String);
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
      firefoxStartDebuggerServerTriggerHandler,
      firefoxStartDebuggerServerCustomHandler,
    });
  });

  test('start-debugger-server trigger is always true', () {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final trigger = registry.trigger(firefoxStartDebuggerServerTriggerHandler)!;
    expect(trigger('', ''), isTrue);
    expect(trigger('8080', '80'), isTrue);
  });

  test('start-debugger-server generator returns empty for an empty token',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final handler = registry.custom(firefoxStartDebuggerServerCustomHandler)!;

    final suggestions = await handler(
        ['firefox', '--start-debugger-server', ''], null, null);
    expect(suggestions, isEmpty);
  });

  test('start-debugger-server generator returns empty for a non-numeric token',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final handler = registry.custom(firefoxStartDebuggerServerCustomHandler)!;

    final suggestions = await handler(
        ['firefox', '--start-debugger-server', 'abc'], null, null);
    expect(suggestions, isEmpty);
  });

  test('start-debugger-server generator returns empty for a non-integer token',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final handler = registry.custom(firefoxStartDebuggerServerCustomHandler)!;

    final suggestions = await handler(
        ['firefox', '--start-debugger-server', '1.5'], null, null);
    expect(suggestions, isEmpty);
  });

  test('start-debugger-server generator returns empty out of the port range',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final handler = registry.custom(firefoxStartDebuggerServerCustomHandler)!;

    expect(await handler(
        ['firefox', '--start-debugger-server', '-1'], null, null), isEmpty);
    expect(await handler(
        ['firefox', '--start-debugger-server', '65536'], null, null), isEmpty);
  });

  test('start-debugger-server generator suggests a valid port', () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final handler = registry.custom(firefoxStartDebuggerServerCustomHandler)!;

    final suggestions = await handler(
        ['firefox', '--start-debugger-server', '8080'], null, null);
    expect(suggestions.single.nameSingle ?? '', '8080');
    expect(suggestions.single.description, 'Port number');
  });

  test('start-debugger-server generator runs through the adapter end to end',
      () async {
    final registry = JsonHandlerRegistry();
    registerFirefoxHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/f/firefox.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, '--start-debugger-server');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'firefox', tokenLength: 7, complete: true),
        CommandToken(
            token: '--start-debugger-server',
            tokenLength: 22,
            complete: true),
        CommandToken(token: '8080', tokenLength: 4, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.single.name, '8080');
    expect(suggestions.single.description, 'Port number');
  });
}
