import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/chezmoi.dart';
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

/// Finds the `add` subcommand's `--include` option generator in the parsed
/// spec (one of the many args that reference the shared `types` generator).
FigGenerator? _typesGenerator(FigSpec spec) {
  final add =
      spec.subcommands!.firstWhere((sub) => sub.nameList.contains('add'));
  for (final option in add.options ?? const <FigOption>[]) {
    if (option.nameList.contains('--include')) {
      for (final arg in option.args ?? const <FigArg>[]) {
        if (arg.generatorsList.isNotEmpty) return arg.generatorsList.first;
      }
    }
  }
  return null;
}

/// Finds the `chattr` subcommand's first arg generator in the parsed spec.
FigGenerator? _chattrGenerator(FigSpec spec) {
  final chattr =
      spec.subcommands!.firstWhere((sub) => sub.nameList.contains('chattr'));
  return chattr.args!.first.generatorsList.first;
}

void main() {
  test('chezmoi JSON binds every generator to the three declaration IDs',
      () async {
    final source = await File('assets/specs/c/chezmoi.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(chezmoiTypesCustomHandler));
    expect(source, contains(chezmoiChattrCustomHandler));
    expect(source, contains(chezmoiChattrTriggerHandler));
    expect(document['name'], 'chezmoi');

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
    // The shared `types` generator is referenced many times; dedupe to the
    // registered set.
    expect(ids.toSet(), {
      chezmoiTypesCustomHandler,
      chezmoiChattrCustomHandler,
      chezmoiChattrTriggerHandler,
    });
  });

  test('chattr trigger reruns on every keystroke', () {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final trigger = registry.trigger(chezmoiChattrTriggerHandler)!;
    expect(trigger('', ''), isTrue);
    expect(trigger('+', ''), isTrue);
    expect(trigger('no', 'n'), isTrue);
    expect(trigger('template', 't'), isTrue);
  });

  test('types custom handler returns the entry types with a comma insert',
      () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final types = await registry.custom(chezmoiTypesCustomHandler)!(
        ['chezmoi', 'add', '--include', ''], null, null);

    expect(types.map((item) => item.nameSingle ?? '').toList(),
        ['all', 'dirs', 'files', 'remove', 'scripts', 'symlinks', 'encrypted']);
    expect(types.first.insertValue, 'all,');
    expect(types.last.insertValue, 'encrypted,');
  });

  test('types custom handler drops already typed entry types', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final types = await registry.custom(chezmoiTypesCustomHandler)!(
        ['chezmoi', 'add', '--include', 'dirs,files'], null, null);

    expect(types.map((item) => item.nameSingle ?? '').toList(),
        ['all', 'remove', 'scripts', 'symlinks', 'encrypted']);
  });

  test('chattr custom handler returns the plain modifier list', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final modifiers = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', 'after'], null, null);

    expect(modifiers, hasLength(15));
    expect(modifiers.first.nameList, ['after', 'a']);
    expect(modifiers.first.description, 'Attribute modifier');
    expect(modifiers.last.nameList, ['symlink']);
    expect(modifiers.last.description, 'Type modifier');
  });

  test('chattr custom handler returns plus/minus modifiers', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final plus = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', '+'], null, null);
    expect(plus, hasLength(30));
    expect(plus.first.nameList, ['+after', '+a']);
    expect(plus[14].nameList, ['+symlink']);
    expect(plus[15].nameList, ['-after', '-a']);
    expect(plus.last.nameList, ['-symlink']);

    // The source returns the same plusMinusModifiers list for a `-` prefix.
    final minus = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', '-'], null, null);
    expect(minus, hasLength(30));
    expect(minus.first.nameList, ['+after', '+a']);
  });

  test('chattr custom handler returns no-prefixed modifiers', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final no = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', 'no'], null, null);
    expect(no, hasLength(15));
    expect(no.first.nameList, ['noafter', 'noa']);
    expect(no.last.nameList, ['nosymlink']);
  });

  test('chattr custom handler uses the segment after the last comma', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final plus = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', 'exact,+'], null, null);
    expect(plus.first.nameList, ['+after', '+a']);

    final no = await registry.custom(chezmoiChattrCustomHandler)!(
        ['chezmoi', 'chattr', 'after,no'], null, null);
    expect(no.first.nameList, ['noafter', 'noa']);
  });

  test('types generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/c/chezmoi.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _typesGenerator(spec);
    expect(generator, isNotNull,
        reason: 'no types generator in the parsed spec');

    final suggestions = await runGeneratorSuggestions(
      generator!,
      const [
        CommandToken(token: 'chezmoi', tokenLength: 7, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['all', 'dirs', 'files', 'remove', 'scripts', 'symlinks', 'encrypted']);
    expect(suggestions.first.insertValue, 'all,');
  });

  test('chattr generator runs end to end', () async {
    final registry = JsonHandlerRegistry();
    registerChezmoiHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/c/chezmoi.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _chattrGenerator(spec);

    final plus = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'chezmoi', tokenLength: 7, complete: true),
        CommandToken(token: 'chattr', tokenLength: 6, complete: true),
        CommandToken(token: '+', tokenLength: 1, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(plus, hasLength(30));
    expect(plus.first.name, '+after');
    expect(plus.first.allNames, ['+after', '+a']);

    final no = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'chezmoi', tokenLength: 7, complete: true),
        CommandToken(token: 'chattr', tokenLength: 6, complete: true),
        CommandToken(token: 'no', tokenLength: 2, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(no, hasLength(15));
    expect(no.first.name, 'noafter');
  });
}
