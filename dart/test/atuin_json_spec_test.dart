import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/atuin.dart';
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
  test('atuin JSON binds the import shells handler ID', () async {
    final source = await File('assets/specs/a/atuin.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(atuinImportSubcommandsHandler));
    expect(document['name'], 'atuin');

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
    expect(ids.toSet(), {atuinImportSubcommandsHandler});

    // The import shells are a bare subcommands handler reference.
    final importSubcommand = document['subcommands'][1] as Map;
    expect(importSubcommand['name'], 'import');
    final importSubcommands = importSubcommand['subcommands'] as List;
    final shells = importSubcommands[1] as Map;
    expect(shells['handler'], atuinImportSubcommandsHandler);
  });

  test('import shells handler maps the seven shells to subcommands', () async {
    final registry = JsonHandlerRegistry();
    registerAtuinHandlers(registry);

    final result = await registry.custom(atuinImportSubcommandsHandler)!(
        const ['atuin', 'import', ''], null, null);
    expect(result.map((item) => item.nameSingle ?? ''), [
      'zsh',
      'zsh-hist-db',
      'bash',
      'resh',
      'fish',
      'nu',
      'nu-hist-db',
    ]);
    expect(result.map((item) => item.description), [
      'Import history from the zsh history file',
      'Import history from the zsh history file',
      'Import history from the bash history file',
      'Import history from the resh history file',
      'Import history from the fish history file',
      'Import history from the nu history file',
      'Import history from the nu history file',
    ]);
    expect(
        result.every((item) => item.type == SuggestionType.subcommand), isTrue);
  });

  test('import shells handler ignores invocation context', () async {
    final registry = JsonHandlerRegistry();
    registerAtuinHandlers(registry);

    // The source produces a static list, so a missing adapter/context must not
    // change the outcome.
    final result = await registry.custom(atuinImportSubcommandsHandler)!(
      const ['atuin', 'import', 'bash'],
      null,
      null,
    );
    expect(result, isNotEmpty);
    expect(result.first.nameSingle ?? '', 'zsh');
  });

  test('atuin spec parses; the import shells expansion is reported unresolved',
      () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerAtuinHandlers(handlers);
    final source = await File('assets/specs/a/atuin.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    expect(spec.name, 'atuin');
    // The bare handler subcommand is sanitized out of the import subcommands.
    final importCmd = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.contains('import'));
    expect(importCmd.subcommands!.map((subcommand) => subcommand.nameList.first),
        ['auto']);
    expect(handlers.unresolvedHandlers.map((item) => item.id),
        [atuinImportSubcommandsHandler]);
  });

  test('import shells custom handler drives suggestions end to end', () async {
    final handlers = JsonHandlerRegistry(
        missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty);
    registerAtuinHandlers(handlers);
    final adapter = _FakeAdapter(const {});

    // The JSON exposes the shells as a bare subcommand handler reference, so
    // drive the registered custom callback through the generator path.
    final generator = FigGenerator(
        custom: handlers.custom(atuinImportSubcommandsHandler));

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'atuin', tokenLength: 5, complete: true),
        CommandToken(token: 'import', tokenLength: 6, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      'zsh',
      'zsh-hist-db',
      'bash',
      'resh',
      'fish',
      'nu',
      'nu-hist-db',
    ]);
  });
}
