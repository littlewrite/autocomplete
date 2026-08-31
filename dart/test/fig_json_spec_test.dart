import 'dart:convert';
import 'dart:io';

import 'package:autocomplete/autocomplete.dart';
import 'package:autocomplete/src/spec_handlers/fig.dart';
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

/// Collects every `handler` string referenced anywhere in the JSON document.
Set<String> _referencedHandlers(dynamic node) {
  final ids = <String>{};
  void visit(dynamic value) {
    if (value is Map) {
      final handler = value['handler'];
      if (handler is String) ids.add(handler);
      for (final item in value.values) {
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

/// The `/settings/all` payload used by the settings generator.
final _settingsPayload = jsonEncode({
  'settings': [
    {
      'settingName': 'autocomplete.theme',
      'description': 'Theme of the autocomplete menu',
      'type': 'single_select',
      'default': 'system',
    },
    {
      'settingName': 'autocomplete.disableForCommands',
      'description': 'Disable autocomplete for specific commands',
      'type': 'text',
      'default': '[]',
    },
    {
      'settingName': 'autocomplete.keybindings.tab',
      'description': 'The tab keybinding',
      'type': 'multiselect',
    },
    {
      'settingName': 'autocomplete.enabled',
      'description': 'Enable autocomplete',
      'type': 'boolean',
      'default': 'true',
    },
    {
      'settingName': 'shell.integration',
      'description': 'Shell integration',
      'type': 'single_select',
      'options': [
        'bash',
        'zsh',
        {'name': 'fish', 'description': 'Fish shell'},
      ],
    },
  ],
  'actions': [
    {
      'identifier': 'autocomplete.selectSuggestion',
      'name': 'Select suggestion',
      'description': 'Select a suggestion',
      'availability': 'desktop',
      'defaultBindings': ['enter'],
    },
    {
      'identifier': 'customAction',
      'name': 'Custom action',
      'description': 'A custom action',
      'availability': 'desktop',
      'defaultBindings': [],
    },
  ],
});

/// Invokes the `settings` subcommand's generateSpec on [registry] through
/// [adapter], returning the generated settings subcommand.
Future<FigSubcommand> _settingsSubcommand(
  JsonHandlerRegistry registry,
  _FakeAdapter adapter,
) async {
  final source = await File('assets/specs/f/fig/2.0.0.json').readAsString();
  final spec = figSpecFromJsonString(source, handlers: registry);
  final settings = spec.subcommands!
      .firstWhere((subcommand) => subcommand.nameList.first == 'settings');
  final generated =
      await settings.generateSpec!(const ['fig', 'settings'], _executor(adapter));
  expect(generated, isNotNull);
  return generated!;
}

/// Finds a named subcommand in a generated tree.
FigSubcommand _named(List<FigSubcommand> subcommands, String name) =>
    subcommands.firstWhere((subcommand) => subcommand.nameList.first == name);

void main() {
  test('fig 1.0.0 JSON binds the settings generateSpec to the declaration ID',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFigHandlers(handlers);
    final source = await File('assets/specs/f/fig/1.0.0.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'fig');
    expect(source, contains(figSettingsGenerateSpecV1Handler));
    expect(_referencedHandlers(document), {figSettingsGenerateSpecV1Handler});
  });

  test('fig 2.0.0 JSON binds both generateSpecs to their declaration IDs',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFigHandlers(handlers);
    final source = await File('assets/specs/f/fig/2.0.0.json').readAsString();
    final document = jsonDecode(source) as Map<String, dynamic>;
    expect(document['name'], 'fig');
    expect(source, contains(figSettingsGenerateSpecV2Handler));
    expect(source, contains(figScriptsGenerateSpecHandler));
    expect(_referencedHandlers(document), {
      figSettingsGenerateSpecV2Handler,
      figScriptsGenerateSpecHandler,
    });
  });

  test('all fig JSONs parse in strict mode with the handlers registered',
      () async {
    final handlers = JsonHandlerRegistry();
    registerFigHandlers(handlers);
    final v1 =
        await File('assets/specs/f/fig/1.0.0.json').readAsString();
    final v2 =
        await File('assets/specs/f/fig/2.0.0.json').readAsString();
    expect(() => figSpecFromJsonString(v1, handlers: handlers),
        returnsNormally);
    expect(() => figSpecFromJsonString(v2, handlers: handlers),
        returnsNormally);
  });

  test('settings generateSpec requests /settings/all and builds subcommands',
      () async {
    final registry = JsonHandlerRegistry();
    registerFigHandlers(registry);
    final adapter = _FakeAdapter({
      'fig _ request --method GET --route /settings/all': ProcessRunResult(
        stdout: _settingsPayload,
        stderr: '',
        exitCode: 0,
      ),
    });

    final generated = await _settingsSubcommand(registry, adapter);
    expect(generated.nameList, ['settings']);
    expect(generated.subcommands!.map((item) => item.nameList.first), [
      'autocomplete.theme',
      'autocomplete.disableForCommands',
      'autocomplete.keybindings.tab',
      'autocomplete.enabled',
      'shell.integration',
    ]);

    final theme = _named(generated.subcommands!, 'autocomplete.theme');
    expect(theme.icon, 'fig://icon?type=commandkey');
    expect(theme.args!.single.name, 'single_select');
    expect(theme.args!.single.defaultValue, 'system');
    expect(theme.args!.single.suggestionsAsList, isEmpty);
    expect(theme.args!.single.generatorsList.single.script,
        ['fig', 'theme', '--list']);

    final disable =
        _named(generated.subcommands!, 'autocomplete.disableForCommands');
    expect(disable.args!.single.name, 'text');
    expect(disable.args!.single.suggestionsAsList, isEmpty);
    expect(disable.args!.single.generatorsList.single.script,
        ['fig', 'settings', 'autocomplete.disableForCommands']);

    final keybindings =
        _named(generated.subcommands!, 'autocomplete.keybindings.tab');
    expect(keybindings.args!.single.suggestionsAsList
        .map((suggestion) => suggestion.nameSingle), [
      'selectSuggestion',
      'customAction',
    ]);

    final enabled = _named(generated.subcommands!, 'autocomplete.enabled');
    expect(enabled.args!.single.suggestionsAsList
        .map((suggestion) => suggestion.nameSingle), ['true', 'false']);

    final shell = _named(generated.subcommands!, 'shell.integration');
    expect(shell.args!.single.suggestionsAsList
        .map((suggestion) => suggestion.nameSingle), ['bash', 'zsh', 'fish']);
    expect(shell.args!.single.suggestionsAsList.last.description, 'Fish shell');
  });

  test('settings generateSpec is empty when the command fails', () async {
    final registry = JsonHandlerRegistry();
    registerFigHandlers(registry);
    final adapter = _FakeAdapter({
      'fig _ request --method GET --route /settings/all':
          const ProcessRunResult(stdout: '', stderr: 'error', exitCode: 1),
    });

    final source = await File('assets/specs/f/fig/2.0.0.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final settings = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'settings');
    final generated =
        await settings.generateSpec!(const ['fig', 'settings'], _executor(adapter));
    expect(generated, isNull);
  });

  test('theme generator parses `fig theme --list` end to end', () async {
    final registry = JsonHandlerRegistry();
    registerFigHandlers(registry);
    final adapter = _FakeAdapter({
      'fig _ request --method GET --route /settings/all': ProcessRunResult(
        stdout: _settingsPayload,
        stderr: '',
        exitCode: 0,
      ),
      'fig theme --list': const ProcessRunResult(
        stdout: 'solarized-dark.json\ndracula.json',
        stderr: '',
        exitCode: 0,
      ),
    });

    final generated = await _settingsSubcommand(registry, adapter);
    final theme = _named(generated.subcommands!, 'autocomplete.theme');
    final generator = theme.args!.single.generatorsList.single;

    final suggestions = await runGeneratorSuggestions(
      generator,
      const [
        CommandToken(token: 'fig', tokenLength: 3, complete: true),
        CommandToken(token: 'settings', tokenLength: 8, complete: true),
        CommandToken(
            token: 'autocomplete.theme', tokenLength: 19, complete: false),
      ],
      '/work',
      adapter,
    );
    expect(suggestions.map((suggestion) => suggestion.name).toList(), [
      'solarized-dark',
      'dracula',
      'system',
      'light',
      'dark',
    ]);
    expect(suggestions.last.icon, 'fig://template?color=000000&badge=🌙');
  });

  test('disableForCommands generator postProcess mirrors the source', () async {
    final registry = JsonHandlerRegistry();
    registerFigHandlers(registry);
    final adapter = _FakeAdapter({
      'fig _ request --method GET --route /settings/all': ProcessRunResult(
        stdout: _settingsPayload,
        stderr: '',
        exitCode: 0,
      ),
    });

    final generated = await _settingsSubcommand(registry, adapter);
    final disable =
        _named(generated.subcommands!, 'autocomplete.disableForCommands');
    final generator = disable.args!.single.generatorsList.single;

    final suggestions = generator.postProcess!('npm\ncd');
    expect(suggestions.map((suggestion) => suggestion.nameSingle).toList(), [
      'Disable new CLI...',
      'Enable all commands',
      'Enable npm',
      'Enable cd',
    ]);
    expect(suggestions.first.insertValue, '["npm","cd","{cursor}"]');
    expect(suggestions[1].insertValue, "'[]'");
    expect(suggestions[2].insertValue, '["cd"]');
    expect(suggestions[3].insertValue, '["npm"]');
  });

  test('scripts generateSpec runs the GraphQL query and builds run subcommands',
      () async {
    final registry = JsonHandlerRegistry();
    registerFigHandlers(registry);
    final scriptsPayload = jsonEncode({
      'data': {
        'currentUser': {
          'namespace': {
            'username': 'jane',
            'scripts': [
              {
                'name': 'deploy',
                'fields': {
                  'icon': '🚀',
                  'displayName': 'Deploy to prod',
                  'description': 'Deploy the app',
                  'templateVersion': '1',
                  'tags': [],
                  'parameters': [
                    {'type': 'Text', 'name': 'env', 'description': 'Environment'},
                    {
                      'type': 'Selector',
                      'name': 'region',
                      'selector': {
                        'generators': [
                          {
                            'type': 'ShellScript',
                            'shellScript': {
                              'script': 'echo us-east us-west',
                            },
                          },
                        ],
                        'suggestions': ['us-east'],
                      },
                    },
                    {'type': 'Path', 'name': 'config'},
                    {'type': 'Checkbox', 'name': 'verbose'},
                  ],
                  'runtime': 'bash',
                },
                'relevanceScore': 1,
                'lastInvokedAt': '2024-01-01',
                'lastInvokedAtByUser': '2024-01-01',
                'isOwnedByCurrentUser': true,
              },
            ],
          },
          'teamMemberships': [
            {
              'team': {
                'namespace': {
                  'username': 'acme',
                  'scripts': [
                    {
                      'name': 'backup',
                      'fields': {
                        'displayName': null,
                        'description': 'Backup',
                        'templateVersion': '1',
                        'tags': [],
                        'parameters': [],
                        'runtime': 'bash',
                      },
                      'relevanceScore': 2,
                      'lastInvokedAt': '',
                      'lastInvokedAtByUser': '',
                      'isOwnedByCurrentUser': false,
                    },
                  ],
                },
              },
            },
          ],
        },
      },
    });
    final body = jsonEncode({'query': figScriptsQuery});
    final adapter = _FakeAdapter({
      'fig _ request --route /graphql --method --body $body':
          ProcessRunResult(stdout: scriptsPayload, stderr: '', exitCode: 0),
    });

    final source = await File('assets/specs/f/fig/2.0.0.json').readAsString();
    final spec = figSpecFromJsonString(source, handlers: registry);
    final run = spec.subcommands!
        .firstWhere((subcommand) => subcommand.nameList.first == 'run');

    String? seenCommand;
    List<String>? seenArgs;
    final generated = await run.generateSpec!(
      const ['fig', 'run'],
      (input) async {
        seenCommand = input.command;
        seenArgs = input.args;
        return _executor(adapter)(input);
      },
    );

    expect(seenCommand, 'fig');
    expect(seenArgs, [
      '_',
      'request',
      '--route',
      '/graphql',
      '--method',
      '--body',
      body,
    ]);
    expect(generated, isNotNull);
    expect(generated!.nameList, ['run']);
    expect(generated.filterStrategy, FilterStrategy.fuzzy);
    expect(generated.subcommands!.length, 2);

    final deploy = _named(generated.subcommands!, '@jane/deploy');
    expect(deploy.nameList, ['@jane/deploy', 'deploy']);
    expect(deploy.displayName, 'Deploy to prod | @jane');
    expect(deploy.icon, '🚀');
    expect(deploy.insertValue, 'deploy');
    expect(deploy.description, 'Deploy the app');

    final region = deploy.options!.firstWhere(
        (option) => option.nameList.first == '--region');
    expect(region.args!.single.suggestionsAsList.single.nameSingle, 'us-east');
    expect(region.args!.single.generatorsList.single.script,
        ['bash', '-c', 'echo us-east us-west']);
    expect(region.args!.single.generatorsList.single.splitOn, '\n');

    final config = deploy.options!
        .firstWhere((option) => option.nameList.first == '--config');
    expect(config.args!.single.templateList, ['filepaths']);

    final noVerbose = deploy.options!
        .firstWhere((option) => option.nameList.first == '--no-verbose');
    expect(noVerbose.exclusiveOn, ['--verbose']);
    final verbose = deploy.options!
        .firstWhere((option) => option.nameList.first == '--verbose');
    expect(verbose.exclusiveOn, ['--no-verbose']);

    final backup = _named(generated.subcommands!, '@acme/backup');
    expect(backup.nameList, ['@acme/backup']);
    expect(backup.displayName, 'backup | @acme');
    expect(backup.icon, '⚡️');
    expect(backup.insertValue, '@acme/backup');
  });
}
