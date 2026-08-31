import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/rich.dart';
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
  test('rich JSON binds every generator to the three declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerRichHandlers(handlers);
    final source = await File('assets/specs/r/rich.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(richStyleGeneratorCustomHandler));
    expect(source, contains(richPaddingTriggerHandler));
    expect(source, contains(richPaddingCustomHandler));
    expect(document['name'], 'rich');

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
      richStyleGeneratorCustomHandler,
      richPaddingTriggerHandler,
      richPaddingCustomHandler,
    });
  });

  test('style generator offers foreground styles and colors when nothing typed',
      () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richStyleGeneratorCustomHandler)!;

    final suggestions = await handler(['rich', '-s', 'bold'], null, null);
    final names = suggestions.map((item) => item.nameSingle ?? '').toList();
    expect(names, contains('underline'));
    expect(names, contains('on'));
    expect(names, contains('default'));
    expect(names, contains('black'));
    expect(names, contains('grey93'));
    // The already-typed style is filtered out.
    expect(names, isNot(contains('bold')));
    // First entry preserves the source order (styles then `on` then colors).
    expect(suggestions.first.nameSingle ?? '', 'blink');
  });

  test('style generator drops colors once a color name is already used',
      () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richStyleGeneratorCustomHandler)!;

    final suggestions = await handler(['rich', '-s', 'black'], null, null);
    final names = suggestions.map((item) => item.nameSingle ?? '').toList();
    expect(names, contains('underline'));
    expect(names, contains('on'));
    expect(names, isNot(contains('black')));
    expect(names, isNot(contains('red')));
    expect(names, isNot(contains('grey93')));
  });

  test('style generator switches to background plus colors after "on"', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richStyleGeneratorCustomHandler)!;

    final suggestions = await handler(['rich', '-s', 'bold on'], null, null);
    final names = suggestions.map((item) => item.nameSingle ?? '').toList();
    expect(names, contains('default'));
    expect(names, contains('black'));
    expect(names, isNot(contains('underline')));
    expect(names, isNot(contains('on')));
  });

  test('style generator after "on <color>" offers background only', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richStyleGeneratorCustomHandler)!;

    final suggestions = await handler(['rich', '-s', 'on black'], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        ['default']);
  });

  test('padding trigger is always true', () {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final trigger = registry.trigger(richPaddingTriggerHandler)!;
    expect(trigger('', ''), isTrue);
    expect(trigger('2,4', '2,'), isTrue);
  });

  test('padding generator returns nothing for empty or flag tokens', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    expect(await handler(['rich', '-d', ''], null, null), isEmpty);
    expect(await handler(['rich', '-d', '-d'], null, null), isEmpty);
  });

  test('padding generator expands one value to all four sides', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '2'], null, null);
    expect(suggestions.single.nameSingle ?? '', '2');
    expect(suggestions.single.description,
        'Top: 2, right: 2, bottom: 2, left: 2');
  });

  test('padding generator expands two values as vertical/horizontal', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '2,4'], null, null);
    expect(suggestions.single.nameSingle ?? '', '2,4');
    expect(suggestions.single.description,
        'Top: 2, right: 4, bottom: 2, left: 4');
  });

  test('padding generator treats a missing fourth value as "?"', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '1,2,3'], null, null);
    expect(suggestions.single.nameSingle ?? '', '1,2,3');
    expect(suggestions.single.description,
        'Top: 1, right: 2, bottom: 3, left: ?');
  });

  test('padding generator expands four values in order', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '1,2,3,4'], null, null);
    expect(suggestions.single.nameSingle ?? '', '1,2,3,4');
    expect(suggestions.single.description,
        'Top: 1, right: 2, bottom: 3, left: 4');
  });

  test('padding generator marks non-numeric values with (!)', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', 'abc'], null, null);
    expect(suggestions.single.description,
        'Top: abc(!), right: abc(!), bottom: abc(!), left: abc(!)');
  });

  test('padding generator keeps an empty tail part as "?"', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '2,4,'], null, null);
    expect(suggestions.single.nameSingle ?? '', '2,4,');
    expect(suggestions.single.description,
        'Top: 2, right: 4, bottom: ?, left: ?');
  });

  test('padding generator leaves the description null for unsupported counts',
      () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final handler = registry.custom(richPaddingCustomHandler)!;

    final suggestions = await handler(['rich', '-d', '1,2,3,4,5'], null, null);
    expect(suggestions.single.nameSingle ?? '', '1,2,3,4,5');
    expect(suggestions.single.description, isNull);
  });

  test('style generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/r/rich.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, '-s');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rich', tokenLength: 4, complete: true),
        CommandToken(token: '-s', tokenLength: 2, complete: true),
        CommandToken(token: 'underline', tokenLength: 9, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((suggestion) => suggestion.name).toList();
    // The typed style is removed but the rest of the foreground set remains.
    expect(names, isNot(contains('underline')));
    expect(names, contains('bold'));
    expect(names, contains('on'));
    expect(names, contains('black'));
  });

  test('padding generator runs through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerRichHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/r/rich.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = _optionGenerator(spec, '-d');

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'rich', tokenLength: 4, complete: true),
        CommandToken(token: '-d', tokenLength: 2, complete: true),
        CommandToken(token: '2,4', tokenLength: 3, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.single.name, '2,4');
    expect(suggestions.single.description,
        'Top: 2, right: 4, bottom: 2, left: 4');
  });
}
