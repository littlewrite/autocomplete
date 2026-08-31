import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/node.dart';
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

/// Collects every `handler` string referenced under a dynamic field
/// (`generators`, `postProcess`, `custom`, or `generateSpec`) anywhere in the
/// JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final item = entry.value;
        if ((key == 'generators' ||
                key == 'postProcess' ||
                key == 'custom' ||
                key == 'generateSpec') &&
            item is Map &&
            item['handler'] is String) {
          ids.add(item['handler'] as String);
        }
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

void main() {
  test('node JSON binds the subcommand generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerNodeHandlers(handlers);
    final source = await File('assets/specs/n/node.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'node');
    expect(source, contains(nodeGenerateSpecHandler));
    expect(_referencedHandlers(document), {nodeGenerateSpecHandler});

    final spec = figSpecFromJsonString(source, handlers: handlers);
    final node = spec.subcommands!.single;
    expect(node.nameList.first, 'node');
    expect(node.generateSpec, isNotNull);
  });

  test('subcommand generateSpec runs the adonis probe and builds the ace tree',
      () async {
    final registry = JsonHandlerRegistry();
    registerNodeHandlers(registry);
    final handler = registry.generateSubcommand(nodeGenerateSpecHandler)!;

    String? seenCommand;
    String? seenArgs;
    final sub = await handler(
      ['node', ''],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args.join(' ');
        return const ExecuteCommandOutput(stdout: '', stderr: '', status: 0);
      },
    );

    expect(seenCommand, 'bash');
    expect(seenArgs, '-c isAdonisJsonPresentCommand');
    expect(sub, isNotNull);
    expect(sub!.name, 'node');

    final ace = sub.subcommands!.single;
    expect(ace.nameList.first, 'ace');
    expect(ace.description, 'Run AdonisJS command-line');
    expect(ace.options!.map((option) => option.nameList), [
      ['-h', '--help'],
      ['-v', '--version'],
    ]);
    expect(ace.subcommands!.map((item) => item.nameList.first), [
      'build',
      'configure',
      'repl',
      'serve',
      'db:seed',
      'dump:rcfile',
      'generate:key',
      'generate:manifest',
      'list:routes',
      'make:command',
      'make:controller',
      'make:exception',
      'make:listener',
      'make:mailer',
      'make:middleware',
      'make:migration',
      'make:model',
      'make:prldfile',
      'make:provider',
      'make:seeder',
      'make:validator',
      'make:view',
      'migration:rollback',
      'migration:run',
      'migration:status',
    ]);
  });

  test('subcommand generateSpec returns null when the adonis probe fails',
      () async {
    final registry = JsonHandlerRegistry();
    registerNodeHandlers(registry);
    final handler = registry.generateSubcommand(nodeGenerateSpecHandler)!;

    final failed = await handler(
      ['node', ''],
      (input) async => const ExecuteCommandOutput(stdout: '', stderr: '', status: 1),
    );
    expect(failed, isNull);

    final noCommand = await handler(['node', ''], null);
    expect(noCommand, isNull);
  });

  test('nested ace subcommands materialize their options and arguments',
      () async {
    final registry = JsonHandlerRegistry();
    registerNodeHandlers(registry);
    final handler = registry.generateSubcommand(nodeGenerateSpecHandler)!;

    Future<FigSubcommand> aceNamed(
      dynamic h,
      String name,
    ) async {
      final sub = await h(
        ['node', ''],
        (input) async =>
            const ExecuteCommandOutput(stdout: '', stderr: '', status: 0),
      );
      final ace = sub!.subcommands!.single;
      return ace.subcommands!
          .firstWhere((item) => item.nameList.first == name);
    }

    final build = await aceNamed(handler, 'build');
    expect(
        build.options!.map((option) => option.nameList.first),
        ['-prod', '--assets', '--no-assets', '--ignore-ts-errors', '--tsconfig',
            '--encore-args', '--client']);
    final tsconfig =
        build.options!.firstWhere((option) => option.nameList.first == '--tsconfig');
    expect(tsconfig.args!.first.name, 'path');
    expect(tsconfig.args!.first.description, 'Path to tsconfig.json');
    final encore =
        build.options!.firstWhere((option) => option.nameList.first == '--encore-args');
    expect(encore.requiresSeparator, true);
    expect(encore.insertValue, "--encore-args='{cursor}'");

    final configure = await aceNamed(handler, 'configure');
    expect(configure.nameList, ['configure', 'invoke']);
    expect(configure.subcommands!.map((item) => item.nameList.first), [
      '@adonisjs/auth',
      '@adonisjs/shield',
      '@adonisjs/redis',
      '@adonisjs/mail',
    ]);

    final rollback = await aceNamed(handler, 'migration:rollback');
    final force = rollback.options!
        .firstWhere((option) => option.nameList.first == '--force');
    expect(force.isDangerous, true);
    final batch =
        rollback.options!.firstWhere((option) => option.nameList.first == '--batch');
    expect(batch.args!.first.name, 'number');
  });

  test('generateSpec materializes ace through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerNodeHandlers(registry);
    final adapter = _FakeAdapter({
      'bash -c isAdonisJsonPresentCommand': const ProcessRunResult(
        stdout: '',
        stderr: '',
        exitCode: 0,
      ),
    });
    final source = await File('assets/specs/n/node.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    registerSpec('node', () => spec);
    final engine = AutocompleteEngine(adapter: adapter);

    // `node node <tab>` offers the generated `ace` subcommand.
    final atNode =
        await engine.getSuggestions('node node ', '/work', Shell.bash);
    expect(atNode, isNotNull);
    expect(atNode!.suggestions.map((item) => item.name), contains('ace'));

    // `node node ace <tab>` offers the nested AdonisJS commands.
    final atAce = await engine.getSuggestions('node node ace ', '/work', Shell.bash);
    expect(atAce, isNotNull);
    final aceNames = atAce!.suggestions.map((item) => item.name).toList();
    expect(aceNames, containsAll([
      'build',
      'configure',
      'repl',
      'serve',
      'db:seed',
      'make:controller',
      'make:migration',
      'migration:rollback',
      'migration:run',
    ]));
  });
}
