import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/echo.dart';
import 'package:autocomplete/src/spec_handlers/git.dart';
import 'package:test/test.dart';

void main() {
  test('parses a recursive static spec and resolves a post-process handler',
      () {
    final handlers = JsonHandlerRegistry()
      ..registerPostProcess('test.lines', (output, [tokens]) {
        return output
            .split('\n')
            .where((line) => line.isNotEmpty)
            .map((line) => FigSuggestion(name: line))
            .toList();
      });

    final spec = figSpecFromJsonString(
      jsonEncode({
        'schemaVersion': 1,
        'name': 'demo',
        'description': ['A', 'demo'],
        'options': [
          {
            'name': ['-v', '--verbose'],
            'isPersistent': true,
            'args': {'name': 'level', 'isOptional': true},
          }
        ],
        'subcommands': [
          {
            'name': 'list',
            'description': 'List values',
            'args': {
              'name': 'value',
              'generators': [
                {
                  'script': ['demo', 'list'],
                  'postProcess': {'handler': 'test.lines', 'version': 1}
                }
              ]
            }
          }
        ]
      }),
      handlers: handlers,
    );

    expect(spec.name, 'demo');
    expect(spec.description, 'A\ndemo');
    expect(spec.options!.single.nameList, ['-v', '--verbose']);
    expect(spec.subcommands!.single.args!.single.generators!.single.script,
        ['demo', 'list']);
    expect(
        spec.subcommands!.single.args!.single.generators!.single.postProcess!
            .call('one\ntwo')
            .map((item) => item.nameSingle),
        ['one', 'two']);
  });

  test('loads the index once and command JSON on demand', () async {
    final files = <String, String>{
      'index.json': jsonEncode({
        'schemaVersion': 1,
        'commands': {
          'demo': {
            'file': 'd/demo.json',
            'aliases': ['d']
          }
        }
      }),
      'd/demo.json': jsonEncode({
        'schemaVersion': 1,
        'name': 'demo',
        'options': [
          {'name': '--all'}
        ]
      }),
    };
    final reads = <String>[];
    final store = JsonSpecStore(reader: (path) async {
      reads.add(path);
      final value = files[path];
      if (value == null) throw StateError('missing $path');
      return value;
    });

    await store.register();
    expect(store.namesForFirstChar('d'), containsAll(['demo', 'd']));
    expect(reads, ['index.json']);

    await store.ensureLoaded('d');
    await store.ensureLoaded('demo');
    expect(reads, ['index.json', 'd/demo.json']);
    expect(getSpec('demo')!.options!.single.nameList, ['--all']);
    expect(getSpec('d')!.name, 'demo');
  });

  test('rejects unsafe asset paths and unsupported schema versions', () async {
    final unsafe = JsonSpecStore(
        reader: (path) async => jsonEncode({
              'schemaVersion': 1,
              'commands': {
                'demo': {'file': '../demo.json'}
              }
            }));
    expect(unsafe.loadIndex(), throwsA(isA<JsonSpecFormatException>()));

    expect(
      () => figSpecFromJson({'schemaVersion': 2, 'name': 'demo'}),
      throwsA(isA<JsonSpecFormatException>()),
    );
  });

  test('normalizes list descriptions for string-backed Dart fields', () {
    final spec = figSpecFromJson({
      'schemaVersion': 1,
      'name': 'descriptions',
      'args': {
        'name': 'value',
        'description': ['first', 'second']
      },
      'subcommands': [
        {
          'name': 'show',
          'description': ['one', 'two']
        }
      ],
    });
    expect(spec.args!.single.description, 'first\nsecond');
    expect(spec.subcommands!.single.description, 'one\ntwo');
  });

  test('parses a static suggestion name-description tuple', () {
    final spec = figSpecFromJson({
      'schemaVersion': 1,
      'name': 'tuple',
      'args': {
        'suggestions': [
          ['AL', 'Albania']
        ]
      }
    });

    final suggestion = spec.args!.single.suggestionsAsList.single;
    expect(suggestion.nameSingle, 'AL');
    expect(suggestion.description, 'Albania');
  });

  test('falls back for commands not migrated to JSON', () async {
    final calls = <String>[];
    final store = JsonSpecStore(
      reader: (path) async => jsonEncode({
        'schemaVersion': 1,
        'commands': <String, dynamic>{},
      }),
      fallback: (name) async => calls.add(name),
    );
    await store.ensureLoaded('legacy');
    expect(calls, ['legacy']);
  });

  test(
      'echo handler returns environment variables only for the variable context',
      () async {
    final registry = JsonHandlerRegistry();
    registerEchoHandlers(registry);
    final handler = registry.custom(echoEnvironmentVariablesHandler)!;
    final result = await handler(
      ['echo', r'$'],
      null,
      _TestGeneratorContext(),
    );
    expect(result.map((item) => item.nameSingle), contains(r'$HOME'));
  });

  test('git handlers resolve generated specs and post-process output',
      () async {
    final handlers = JsonHandlerRegistry();
    registerGitHandlers(handlers);
    final spec = figSpecFromJson(
      {
        'schemaVersion': 1,
        'name': 'git',
        'generateSpec': {'handler': gitGenerateSpecHandler},
        'args': {
          'name': 'config key',
          'parserDirectives': {
            'alias': {'handler': gitAliasHandler}
          },
          'generators': [
            {
              'postProcess': {'handler': gitConfigPostProcessHandler}
            }
          ]
        }
      },
      handlers: handlers,
    );

    final generated = await spec.generateSpec!([], (input) async {
      expect(input.command, 'git');
      expect(input.args, ['help', '-a']);
      return const ExecuteCommandOutput(
        stdout: 'See "external commands"\n  git-foo\n  git-bar\n\n',
        stderr: '',
        status: 0,
      );
    });
    expect(generated!.subcommands!.map((item) => item.name as String),
        ['git-foo', 'git-bar']);

    final postProcess = spec.args!.single.generators!.single.postProcess!;
    expect(
        postProcess('alias.user description').single.nameSingle, 'alias.user');

    final alias =
        spec.args!.single.parserDirectives!['alias'] as JsonAliasHandler;
    expect(
      await alias('co', (input) async {
        expect(input.command, 'git');
        expect(input.args, ['config', '--get', 'alias.co']);
        return const ExecuteCommandOutput(
          stdout: 'checkout\n',
          stderr: '',
          status: 0,
        );
      }),
      'checkout\n',
    );
  });

  test('strict mode rejects an unknown dynamic suggestions handler', () {
    expect(
      () => figSpecFromJson(
        {
          'schemaVersion': 1,
          'name': 'demo',
          'args': {
            'suggestions': {'handler': 'test.missing.suggestions'}
          }
        },
        handlers: JsonHandlerRegistry(),
      ),
      throwsA(isA<JsonSpecFormatException>()),
    );
  });

  test('migration mode keeps static data when dynamic handlers are missing',
      () async {
    final handlers = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    final spec = figSpecFromJson(
      {
        'schemaVersion': 1,
        'name': 'demo',
        'subcommands': [
          {'name': 'static', 'description': 'Still available'}
        ],
        'args': {
          'suggestions': {'handler': 'test.missing.suggestions'},
          'parserDirectives': {
            'alias': {'handler': 'test.missing.alias'}
          }
        }
      },
      handlers: handlers,
    );

    expect(spec.subcommands!.single.name, 'static');
    final generator = spec.args!.single.generators!.single;
    expect(await (generator.custom! as JsonCustomHandler)([], null, null),
        isEmpty);
    expect(handlers.unresolvedHandlers.map((item) => item.id),
        containsAll(['test.missing.suggestions', 'test.missing.alias']));
  });

  test('git JSON loads with empty fallbacks for unported handlers', () async {
    final handlers = JsonHandlerRegistry(
      missingHandlerPolicy: MissingJsonHandlerPolicy.returnEmpty,
    );
    registerMigratedJsonHandlers(handlers);
    final source = await File('assets/specs/g/git.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: handlers);

    expect(spec.name, 'git');
    expect(spec.subcommands!.map((item) => item.name), contains('branch'));
    expect(
      handlers.unresolvedHandlers.map((item) => item.id),
      containsAll([
        'manual.src_git.spec.subcommands_2_.options_0_.args.generators',
        'manual.src_git.spec.subcommands_3_.args_0_.suggestions',
      ]),
    );
  });

  test('preserves declarative template descriptors in generator arrays',
      () async {
    final spec = figSpecFromJson({
      'schemaVersion': 1,
      'name': 'templates',
      'args': {
        'generators': [
          {
            'template': [
              {
                'name': 'filepaths',
                'extensions': ['json'],
                'matches': '^config',
              },
              {'name': 'folders', 'equals': 'docs'},
            ]
          }
        ]
      }
    });

    final template = spec.args!.single.generators!.single.template;
    final suggestions = await runTemplates(template, '/', _TemplateAdapter());
    expect(suggestions.map((item) => item.name), ['config.json', 'docs/']);
  });
}

class _TestGeneratorContext extends FigGeneratorContext {
  _TestGeneratorContext()
      : super(
          adapter: _TestAdapter(),
          currentWorkingDirectory: '/',
        );
}

class _TestAdapter implements CompleteAdapter {
  @override
  Map<String, String> getEnvs() => {'HOME': '/tmp', 'PATH': '/bin'};

  @override
  String? getEnv(String envKey) => getEnvs()[envKey];

  @override
  Future<String> resolveCwd(String cwd, Shell shell) async => cwd;

  @override
  Future<List<FileSystemEntry>> listDirectory(String path,
          {bool foldersOnly = false, List<String>? extensions}) async =>
      const [];

  @override
  Future<ProcessRunResult> runProcess(String executable, List<String> arguments,
          {String? workingDirectory,
          Map<String, String?>? environment}) async =>
      const ProcessRunResult(stdout: '');
}

class _TemplateAdapter extends _TestAdapter {
  @override
  Future<List<FileSystemEntry>> listDirectory(
    String path, {
    bool foldersOnly = false,
    List<String>? extensions,
  }) async {
    const entries = [
      FileSystemEntry(name: 'config.json', isDirectory: false),
      FileSystemEntry(name: 'config.txt', isDirectory: false),
      FileSystemEntry(name: 'docs', isDirectory: true),
    ];
    return entries.where((entry) {
      if (foldersOnly) return entry.isDirectory;
      if (entry.isDirectory || extensions == null) return true;
      return extensions.any((extension) => entry.name.endsWith('.$extension'));
    }).toList();
  }
}
