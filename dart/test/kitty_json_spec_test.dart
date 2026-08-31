import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/kitty.dart';
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

void main() {
  test('kitty JSON binds the background suggestions handler ID', () async {
    final source = await File('assets/specs/k/kitty.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(kittyBackgroundColorsCustomHandler));
    expect(source, contains(kittyPlusSubcommandsHandler));
    expect(document['name'], 'kitty');

    // The +kitten expansion is a bare subcommands handler reference.
    final subcommands = document['subcommands'] as List;
    final plusExpansion = subcommands[2] as Map;
    expect(plusExpansion['handler'], kittyPlusSubcommandsHandler);

    // The icat --background suggestions handler sits under args.suggestions.
    final icat = subcommands[1] as Map;
    final background = (icat['options'] as List)[3] as Map;
    final suggestions = (background['args'] as Map)['suggestions'] as Map;
    expect(suggestions['handler'], kittyBackgroundColorsCustomHandler);
  });

  test('background color custom handler lists the palette with fig icons',
      () async {
    final registry = JsonHandlerRegistry();
    registerKittyHandlers(registry);
    final handler = registry.custom(kittyBackgroundColorsCustomHandler)!;

    final colors = await handler(
      ['kitty', 'icat', '--background', ''],
      (input) async =>
          const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
      null,
    );

    expect(colors.map((item) => item.nameSingle ?? ''), [
      'none',
      'black',
      'white',
      'gray',
      'red',
      'green',
      'blue',
      'yellow',
      'magenta',
      'cyan',
    ]);
    expect(colors.map((item) => item.icon).toList(), [
      'fig://template?color=000000',
      'fig://template?color=000000',
      'fig://template?color=ffffff',
      'fig://template?color=808080',
      'fig://template?color=ff0000',
      'fig://template?color=00ff00',
      'fig://template?color=0000ff',
      'fig://template?color=ffff00',
      'fig://template?color=ff00ff',
      'fig://template?color=00ffff',
    ]);
  });

  test('kitty spec parses and splices the + subcommand expansion', () async {
    final handlers = JsonHandlerRegistry(); // default: reject policy
    registerKittyHandlers(handlers);
    final source = await File('assets/specs/k/kitty.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    expect(spec.name, 'kitty');
    // The dynamic +kitten subcommands entry is spliced in at index 2.
    expect(spec.subcommands!.map((subcommand) => subcommand.name), [
      '@',
      'icat',
      '+icat',
      '+list-fonts',
      '+hold',
      '+complete',
      '+runpy',
      '+launch',
      '+open',
      '+kitten',
      '+edit-config',
      '+shebang',
    ]);
    // Every handler reference resolves; nothing is left unresolved.
    expect(handlers.unresolvedHandlers, isEmpty);
  });

  test('kitty icat --background suggests the palette end to end', () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerKittyHandlers(handlers);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/k/kitty.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);
    final icat = spec.subcommands!
        .firstWhere((subcommand) => subcommand.name == 'icat');
    final background = icat.options!
        .firstWhere((option) => option.nameList.contains('--background'));
    final generator = background.args!.single.generatorsList
        .firstWhere((candidate) => candidate.custom is Function);
    expect(generator.custom, isA<Function>());

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'kitty', tokenLength: 5, complete: true),
        CommandToken(token: 'icat', tokenLength: 4, complete: true),
        CommandToken(token: '--background', tokenLength: 12, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      'none',
      'black',
      'white',
      'gray',
      'red',
      'green',
      'blue',
      'yellow',
      'magenta',
      'cyan',
    ]);
  });

  test('kitty + subcommands handler returns +-prefixed names', () {
    final registry = JsonHandlerRegistry();
    registerKittyHandlers(registry);
    final handler = registry.subcommands(kittyPlusSubcommandsHandler)!;

    // _plusSubcommands is synchronous, so the FutureOr result is a List here.
    final plusCommands = handler(const [], null, null) as List<FigSubcommand>;
    expect(plusCommands.map((command) => command.name), [
      '+icat',
      '+list-fonts',
      '+hold',
      '+complete',
      '+runpy',
      '+launch',
      '+open',
      '+kitten',
      '+edit-config',
      '+shebang',
    ]);

    // Non-name fields survive the `+` rename: +icat keeps its options/args and
    // +kitten keeps its subcommands.
    final plusIcat =
        plusCommands.firstWhere((command) => command.name == '+icat');
    expect(plusIcat.description,
        'A cat like utility to display images in the terminal');
    expect(plusIcat.options!.any(
        (option) => option.nameList.contains('--background')),
        isTrue);
    expect(plusIcat.args!.single.name, 'image-file-or-url-or-directory');
    final plusKitten =
        plusCommands.firstWhere((command) => command.name == '+kitten');
    expect(
        plusKitten.subcommands!.map((command) => command.name).toList(),
        containsAll(['icat', 'diff', 'ssh', 'themes', 'mouse_demo']));
  });

  test('kitty spec without registered handlers throws under the reject policy',
      () async {
    final handlers = JsonHandlerRegistry(); // no handlers registered
    final source = await File('assets/specs/k/kitty.json').readAsString();
    expect(
      () => figSpecFromJsonString(source, handlers: handlers),
      throwsA(isA<JsonSpecFormatException>()),
    );
  });
}
