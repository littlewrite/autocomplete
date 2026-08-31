import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/shortcuts.dart';
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

/// Returns the first generator whose static script (joined) matches
/// [scriptCommand], searching the top-level args and the whole subcommand tree
/// (including option args).
FigGenerator? generatorByScript(FigSpec spec, String scriptCommand) {
  FigGenerator? hitInArgs(List<FigArg> args) {
    for (final arg in args) {
      for (final generator in arg.generatorsList) {
        final script = generator.script;
        if (script is List && script.join(' ') == scriptCommand) {
          return generator;
        }
      }
    }
    return null;
  }

  FigGenerator? visit(List<FigSubcommand> subcommands) {
    for (final subcommand in subcommands) {
      final hit = hitInArgs(subcommand.args ?? const <FigArg>[]);
      if (hit != null) return hit;
      for (final option in subcommand.options ?? const <FigOption>[]) {
        final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
        if (optionHit != null) return optionHit;
      }
      if (subcommand.subcommands != null) {
        final nested = visit(subcommand.subcommands!);
        if (nested != null) return nested;
      }
    }
    return null;
  }

  final topLevel = hitInArgs(spec.args ?? const <FigArg>[]);
  if (topLevel != null) return topLevel;
  for (final option in spec.options ?? const <FigOption>[]) {
    final optionHit = hitInArgs(option.args ?? const <FigArg>[]);
    if (optionHit != null) return optionHit;
  }
  return visit(spec.subcommands ?? const []);
}

void main() {
  test('shortcuts JSON binds the folder generator to the one post-process ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerShortcutsHandlers(handlers);
    final source = await File('assets/specs/s/shortcuts.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(shortcutsFoldersPostProcessHandler));
    expect(document['name'], 'shortcuts');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final postProcess = (generator as Map)['postProcess'];
          if (postProcess is Map) {
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
    // The `help` subcommand also references a bare `subcommands` expansion
    // handler (ported elsewhere), so only this post-process ID is asserted.
    expect(ids.toSet(), {shortcutsFoldersPostProcessHandler});
    expect(
        source,
        contains(
            'manual.src_shortcuts.spec.subcommands_1_.subcommands'));
  });

  test('shortcuts folder post-processor maps each line to a folder suggestion',
      () {
    final registry = JsonHandlerRegistry();
    registerShortcutsHandlers(registry);
    const output = 'Work\nPersonal\nShortcuts';

    final folders =
        registry.postProcess(shortcutsFoldersPostProcessHandler)!(output);
    expect(folders.map((item) => item.nameSingle),
        ['Work', 'Personal', 'Shortcuts']);
    expect(folders.map((item) => item.icon), ['📂', '📂', '📂']);
  });

  test('shortcuts folder post-processor returns empty for empty output', () {
    final registry = JsonHandlerRegistry();
    registerShortcutsHandlers(registry);
    expect(
        registry.postProcess(shortcutsFoldersPostProcessHandler)!(''),
        isEmpty);
  });

  test('shortcuts spec parses with no unresolved handlers once the help '
      'subcommands handler is ported', () async {
    final handlers = JsonHandlerRegistry();
    registerShortcutsHandlers(handlers);
    final source = await File('assets/specs/s/shortcuts.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    expect(spec.name, 'shortcuts');
    expect(handlers.unresolvedHandlers, isEmpty);
  });

  test('shortcuts folder generator runs through the adapter end to end',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerShortcutsHandlers(handlers);
    final adapter = _FakeAdapter({
      'shortcuts list --folders': const ProcessRunResult(
        stdout: 'Work\nPersonal\nShortcuts',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/s/shortcuts.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final generator = generatorByScript(spec, 'shortcuts list --folders');
    expect(generator, isNotNull);

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'shortcuts', tokenLength: 9, complete: true),
        CommandToken(token: 'list', tokenLength: 4, complete: true),
        CommandToken(token: '--folder-name', tokenLength: 13, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['Work', 'Personal', 'Shortcuts']);
  });

  test('shortcuts help subcommand lists the base shortcuts subcommands',
      () async {
    final handlers = JsonHandlerRegistry();
    registerShortcutsHandlers(handlers);
    final source = await File('assets/specs/s/shortcuts.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    final help = spec.subcommands!.singleWhere((sub) => sub.name == 'help');
    expect(help.subcommands!.map((sub) => sub.name).toList(),
        ['run', 'list', 'view', 'sign']);
    expect(help.subcommands!.map((sub) => sub.icon).toList(),
        ['▶️', '📂', '🔍', '🔏']);
  });

  test('shortcuts JSON rejects the help subcommands handler with a strict '
      'registry that has no handlers', () async {
    final source = await File('assets/specs/s/shortcuts.json').readAsString();
    expect(() => figSpecFromJsonString(source, handlers: JsonHandlerRegistry()),
        throwsA(isA<JsonSpecFormatException>()));
  });
}
