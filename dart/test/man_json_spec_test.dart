import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/man.dart';
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

/// Builds an [ExecuteCommandFunction] from an adapter, mirroring the runtime's
/// `_createExecuteCommand`.
ExecuteCommandFunction _executor(CompleteAdapter adapter) {
  return (input) async {
    final result = await adapter.runProcess(input.command, input.args);
    return ExecuteCommandOutput(
      stdout: result.stdout,
      stderr: result.stderr,
      status: result.exitCode,
    );
  };
}

/// Finds the `-S` option's section generator in the parsed spec.
FigGenerator? _sectionsGenerator(FigSpec spec) {
  for (final option in spec.options ?? const <FigOption>[]) {
    if (option.nameList.contains('-S')) {
      for (final arg in option.args ?? const <FigArg>[]) {
        if (arg.generatorsList.isNotEmpty) return arg.generatorsList.first;
      }
    }
  }
  return null;
}

void main() {
  setUp(resetManHandlersCache);

  test('man JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerManHandlers(handlers);
    final source = await File('assets/specs/m/man.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(manManualPagesTriggerHandler));
    expect(source, contains(manManualPagesCustomHandler));
    expect(source, contains(manSectionsCustomHandler));
    expect(document['name'], 'man');

    final ids = <String>[];
    void collectHandlers(dynamic node) {
      if (node is! Map) return;
      final handler = node['handler'];
      if (handler is String) ids.add(handler);
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlers(item);
          }
        } else if (value is Map) {
          collectHandlers(value);
        }
      }
    }

    collectHandlers(document);
    expect(ids.toSet(), {
      manManualPagesTriggerHandler,
      manManualPagesCustomHandler,
      manSectionsCustomHandler,
    });
  });

  test('manual page trigger runs on token transitions to or from empty', () {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final trigger = registry.trigger(manManualPagesTriggerHandler)!;
    expect(trigger('', 'ls'), isTrue);
    expect(trigger('', ''), isTrue);
    expect(trigger('ls', ''), isTrue);
    expect(trigger('ls', 'l'), isFalse);
    expect(trigger('ls', 'ls'), isFalse);
  });

  test('manual pages custom handler parses `man -k .` output', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .': const ProcessRunResult(
        stdout: 'ls(1) - list directory contents\n'
            'mount(8) - mount and maintain file systems\n'
            'cp(1) - copy files\n'
            'git(1), gitcli(7) - the stupid content tracker',
        stderr: '',
        exitCode: 0,
      ),
    });

    final ls = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'ls'], _executor(adapter), null);
    expect(ls.map((item) => item.nameSingle ?? ''), ['ls']);
    expect(ls.single.description, '(1) List directory contents');
    expect(ls.single.icon, 'fig://icon?type=string');

    // The cache was built on the first call, so a later prefix lookup is
    // served from the same cache (no second `man -k .` run).
    final git = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'git'], _executor(adapter), null);
    expect(git.map((item) => item.nameSingle ?? ''), ['git', 'gitcli']);
    expect(git.last.description, '(7) The stupid content tracker');
  });

  test('manual pages cache deduplicates page names across sections', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .': const ProcessRunResult(
        stdout: 'ls(1) - list directory contents\n'
            'ls(2) - list directory contents (system call)',
        stderr: '',
        exitCode: 0,
      ),
    });

    final pages = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'ls'], _executor(adapter), null);
    expect(pages.map((item) => item.nameSingle ?? ''), ['ls']);
    expect(pages.single.description, '(1) List directory contents');
  });

  test('manual pages custom handler is empty for unknown prefixes', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .': const ProcessRunResult(
        stdout: 'ls(1) - list directory contents\n'
            'mount(8) - mount and maintain file systems',
        stderr: '',
        exitCode: 0,
      ),
    });

    final none = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'zzz'], _executor(adapter), null);
    expect(none, isEmpty);
  });

  test('manual pages custom handler is empty when `man -k .` yields nothing',
      () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .':
          const ProcessRunResult(stdout: '', stderr: '', exitCode: 0),
    });

    final pages = await registry.custom(manManualPagesCustomHandler)!(
        ['man', ''], _executor(adapter), null);
    expect(pages, isEmpty);

    final none = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'ls'], _executor(adapter), null);
    expect(none, isEmpty);
  });

  test('manual pages custom handler is empty when the command fails', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .':
          const ProcessRunResult(stdout: '', stderr: 'error', exitCode: 1),
    });

    final pages = await registry.custom(manManualPagesCustomHandler)!(
        ['man', 'ls'], _executor(adapter), null);
    expect(pages, isEmpty);
  });

  test('sections custom handler appends a colon insert value', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final sections = await registry.custom(manSectionsCustomHandler)!(
        ['man', '-S', ''], null, null);

    expect(sections.map((item) => item.nameSingle ?? ''),
        ['1', '2', '3', '4', '5', '6', '7', '8']);
    expect(sections.first.description, 'General commands');
    expect(sections.first.icon, '📑');
    expect(sections.first.insertValue, '1:');
    expect(sections.last.insertValue, '8:');
  });

  test('sections custom handler drops already typed sections', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final sections = await registry.custom(manSectionsCustomHandler)!(
        ['man', '-S', '1:3'], null, null);

    expect(sections.map((item) => item.nameSingle ?? ''),
        ['2', '4', '5', '6', '7', '8']);
    expect(sections.first.insertValue, '2:');
  });

  test('manual pages generator runs `man -k .` end to end', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter({
      'man -k .': const ProcessRunResult(
        stdout: 'ls(1) - list directory contents\n'
            'mount(8) - mount and maintain file systems\n'
            'cp(1) - copy files\n'
            'git(1), gitcli(7) - the stupid content tracker',
        stderr: '',
        exitCode: 0,
      ),
    });

    final source = await File('assets/specs/m/man.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generatorsList.first;

    final ls = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'man', tokenLength: 3, complete: true),
        CommandToken(token: 'ls', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(ls.map((suggestion) => suggestion.name).toList(), ['ls']);
    expect(ls.single.description, '(1) List directory contents');

    final git = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'man', tokenLength: 3, complete: true),
        CommandToken(token: 'git', tokenLength: 3, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(git.map((suggestion) => suggestion.name).toList(), ['git', 'gitcli']);
  });

  test('sections generator returns all sections end to end', () async {
    final registry = JsonHandlerRegistry();
    registerManHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/m/man.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _sectionsGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no -S section generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'man', tokenLength: 3, complete: true),
        CommandToken(token: '-S', tokenLength: 2, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['1', '2', '3', '4', '5', '6', '7', '8']);
    expect(suggestions.first.insertValue, '1:');
  });
}
