import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/django_admin.dart';
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

/// A canned [ExecuteCommandFunction] so the custom handler can be exercised
/// with a real callback in isolation.
ExecuteCommandFunction _stubExecute(String stdout, {int status = 0}) {
  return (ExecuteCommandInput input) async =>
      ExecuteCommandOutput(stdout: stdout, stderr: '', status: status);
}

/// The names of every native django-admin command, matching the order of the
/// `DJANGO_NATIVE_COMMANDS` array in the TypeScript source (minus `help`).
const _expectedCommandNames = [
  'changepassword',
  'createsuperuser',
  'remove_stale_contenttypes',
  'check',
  'compilemessages',
  'createcachetable',
  'dbshell',
  'diffsettings',
  'dumpdata',
  'flush',
  'inspectdb',
  'loaddata',
  'makemessages',
  'makemigrations',
  'migrate',
  'sendtestemail',
  'shell',
  'showmigrations',
  'sqlflush',
  'sqlmigrate',
  'sqlsequencereset',
  'squashmigrations',
  'startapp',
  'startproject',
  'test',
  'testserver',
  'test_mail',
  'clearsessions',
  'collectstatic',
  'findstatic',
  'runserver',
];

const _djangoIcon = 'https://github.com/django.png';

void main() {
  test('django-admin JSON binds the help suggestions to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerDjangoAdminHandlers(handlers);
    final source = await File('assets/specs/d/django-admin.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(source, contains(djangoAdminHelpSubcommandsHandler));
    expect(document['name'], 'django-admin');

    final ids = <String>[];
    void collectHandlerReferences(dynamic node) {
      if (node is! Map) return;
      final suggestions = node['suggestions'];
      if (suggestions is Map && suggestions['handler'] is String) {
        ids.add(suggestions['handler'] as String);
      }
      for (final value in node.values) {
        if (value is List) {
          for (final item in value) {
            collectHandlerReferences(item);
          }
        } else if (value is Map) {
          collectHandlerReferences(value);
        }
      }
    }

    collectHandlerReferences(document);
    expect(ids.toSet(), {djangoAdminHelpSubcommandsHandler});
  });

  test('help suggestions handler lists every native command in order',
      () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final handler = registry.custom(djangoAdminHelpSubcommandsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        _expectedCommandNames);
  });

  test('help suggestions exclude the help subcommand itself', () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final handler = registry.custom(djangoAdminHelpSubcommandsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions.any((item) => item.nameSingle == 'help'), isFalse);
  });

  test('every native command suggestion carries the Django icon', () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final handler = registry.custom(djangoAdminHelpSubcommandsHandler)!;

    final suggestions = await handler(const [], null, null);
    expect(suggestions, isNotEmpty);
    expect(suggestions.every((item) => item.icon == _djangoIcon), isTrue);
  });

  test('a couple of descriptions match the TypeScript source', () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final handler = registry.custom(djangoAdminHelpSubcommandsHandler)!;

    final suggestions = await handler(const [], null, null);
    final changepassword =
        suggestions.firstWhere((item) => item.nameSingle == 'changepassword');
    expect(changepassword.description,
        "Change a user's password for django.contrib.auth");
    final runserver =
        suggestions.firstWhere((item) => item.nameSingle == 'runserver');
    expect(runserver.description,
        'Starts a lightweight Web server for development and also serves static files');
  });

  test('help suggestions handler ignores tokens, executeCommand, and context',
      () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final handler = registry.custom(djangoAdminHelpSubcommandsHandler)!;

    final suggestions = await handler(
      const ['django-admin', 'help', ''],
      _stubExecute('unused'),
      null,
    );
    expect(suggestions.map((item) => item.nameSingle ?? '').toList(),
        _expectedCommandNames);
  });

  test('help suggestions run through the adapter end to end', () async {
    final registry = JsonHandlerRegistry();
    registerDjangoAdminHandlers(registry);
    final adapter = _FakeAdapter(const {});

    final source = await File('assets/specs/d/django-admin.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final helpSubcommand =
        spec.subcommands!.firstWhere((sub) => sub.nameList.contains('help'));
    final generator = helpSubcommand.args!.first.generatorsList.first;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'django-admin', tokenLength: 12, complete: true),
        CommandToken(token: 'help', tokenLength: 4, complete: true),
        CommandToken(token: '', tokenLength: 0, complete: false),
      ],
      '/work',
      adapter,
    );

    final names = suggestions.map((suggestion) => suggestion.name).toList();
    expect(names, _expectedCommandNames);
    expect(suggestions.map((suggestion) => suggestion.icon).toSet(),
        {_djangoIcon});
  });
}
