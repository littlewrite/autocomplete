import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/goto.dart';
import 'package:test/test.dart';

class _FakeAdapter implements CompleteAdapter {
  _FakeAdapter(this._results, {this.envs = const {}});

  final Map<String, ProcessRunResult> _results;
  final Map<String, String> envs;

  @override
  Map<String, String> getEnvs() => envs;

  @override
  String? getEnv(String envKey) => envs[envKey];

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

FigGeneratorContext _context({Map<String, String> envs = const {}}) {
  return FigGeneratorContext(
    currentWorkingDirectory: '/work',
    adapter: _FakeAdapter(const {}, envs: envs),
  );
}

void main() {
  test('goto JSON binds the custom generator to the listTargets declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGotoHandlers(handlers);
    final source = await File('assets/specs/g/goto.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(gotoListTargetsCustomHandler));
    expect(document['name'], 'goto');

    final ids = <String>[];
    void collectGenerators(dynamic node) {
      if (node is! Map) return;
      final generators = node['generators'];
      if (generators != null) {
        for (final generator
            in generators is List ? generators : [generators]) {
          final custom = (generator as Map)['custom'];
          if (custom is Map) ids.add(custom['handler'] as String);
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
    expect(ids.toSet(), {gotoListTargetsCustomHandler});
  });

  test('listTargets custom handler maps alias and target lines', () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final handler = registry.custom(gotoListTargetsCustomHandler)!;

    final suggestions = await handler(
      ['goto', ''],
      (input) async {
        expect(input.command, 'cat');
        expect(input.args, ['/Users/test/.config/goto']);
        return const ExecuteCommandOutput(
          stdout: 'work /Users/me/work\nhome /Users/me',
          stderr: '',
          status: 0,
        );
      },
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.map((item) => item.nameSingle), ['work', 'home']);
    expect(suggestions.first.description, 'Goto /Users/me/work');
    expect(suggestions.first.icon, '🔖');
    expect(suggestions.first.priority, 80);
  });

  test('listTargets dedupes by the full line and keeps empty lines', () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final handler = registry.custom(gotoListTargetsCustomHandler)!;

    // `work /a` repeated later re-uses the same line key: the value is
    // replaced but the first insertion position is kept. The empty interior
    // line becomes a suggestion with an empty name and `Goto undefined`.
    final suggestions = await handler(
      ['goto', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'work /a\nhome /b\n\nwork /a',
        stderr: '',
        status: 0,
      ),
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.length, 3);
    expect(suggestions[0].nameSingle, 'work');
    expect(suggestions[0].description, 'Goto /a');
    expect(suggestions[1].nameSingle, 'home');
    expect(suggestions[1].description, 'Goto /b');
    expect(suggestions[2].nameSingle, '');
    expect(suggestions[2].description, 'Goto undefined');
  });

  test('listTargets trailing newline yields a trailing empty suggestion',
      () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final handler = registry.custom(gotoListTargetsCustomHandler)!;

    final suggestions = await handler(
      ['goto', ''],
      (input) async => const ExecuteCommandOutput(
        stdout: 'work /a\n',
        stderr: '',
        status: 0,
      ),
      _context(envs: const {'HOME': '/Users/test'}),
    );

    expect(suggestions.length, 2);
    expect(suggestions[0].nameSingle, 'work');
    expect(suggestions[0].description, 'Goto /a');
    expect(suggestions[1].nameSingle, '');
    expect(suggestions[1].description, 'Goto undefined');
  });

  test('listTargets falls back to "undefined" when HOME is unset', () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final handler = registry.custom(gotoListTargetsCustomHandler)!;

    String? commandArgs;
    await handler(
      ['goto', ''],
      (input) async {
        commandArgs = input.args.join(' ');
        return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
      },
      _context(),
    );

    expect(commandArgs, 'undefined/.config/goto');
  });

  test('listTargets returns empty on a failing command or missing command',
      () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final handler = registry.custom(gotoListTargetsCustomHandler)!;

    final onFailure = await handler(
      ['goto', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: 'junk', stderr: 'boom', status: 1),
      _context(envs: const {'HOME': '/Users/test'}),
    );
    expect(onFailure, isEmpty);

    final withoutCommand =
        await handler(['goto', ''], null, null);
    expect(withoutCommand, isEmpty);
  });

  test('goto generator runs cat through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerGotoHandlers(registry);
    final adapter = _FakeAdapter(
      {
        'cat /Users/test/.config/goto': const ProcessRunResult(
          stdout: 'work /Users/me/work\nhome /Users/me',
          stderr: '',
          exitCode: 0,
        ),
      },
      envs: const {'HOME': '/Users/test'},
    );

    final source = await File('assets/specs/g/goto.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final generator = spec.args!.single.generators!.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'goto', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(),
        ['work', 'home']);
  });
}
