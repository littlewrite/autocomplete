// Hand-written dynamic handlers migrated from src/fig/index.ts and
// src/fig/shared.ts.
//
// The versioned fig JSON exports keep a version resolver plus three
// `generateSpec` callbacks bound to subcommand slots:
//   * settings (1.0.0)   -> settingsSpecGenerator
//   * settings (2.0.0)   -> settingsSpecGenerator
//   * run (2.0.0)        -> scriptsSpecGenerator
// The settings generator fetches `/settings/all` from the Fig app and turns
// each setting into a subcommand; the run generator executes a GraphQL query
// for the current user's Fig Workflows and turns each script into a
// subcommand.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const figVersionHandler = 'manual.src_fig.index.getversioncommand';

/// `generateSpec` from src/fig/shared.ts, bound to the `settings` subcommand.
const figSettingsGenerateSpecV1Handler =
    'manual.src_fig_1.0.0.spec.subcommands_0_.subcommands_3_.generatespec';

/// Same `settings` generateSpec for the 2.0.0 export.
const figSettingsGenerateSpecV2Handler =
    'manual.src_fig_2.0.0.spec.subcommands_0_.subcommands_3_.generatespec';

/// `scriptsSpecGenerator` from src/fig/shared.ts, bound to `fig run`.
const figScriptsGenerateSpecHandler =
    'manual.src_fig_2.0.0.spec.subcommands_0_.subcommands_30_.generatespec';

/// The exact GraphQL query sent by `scriptsSpecGenerator` (query + fragment).
const figScriptsQuery = r'''query Scripts {
    currentUser {
      namespace {
        username
        scripts {
          ...ScriptFields
        }
      }
      teamMemberships {
        team {
          namespace {
            username
            scripts {
              ...ScriptFields
            }
          }
        }
      }
    }
  }

  fragment ScriptFields on Script {
  name
  fields {
    icon
    displayName
    description
    templateVersion
    tags
    parameters {
      type
      name
      displayName
      description
      text {
        placeholder
      }
      checkbox {
        trueValueSubstitution
        falseValueSubstitution
      }
      selector {
        generators {
          named {
            name
          }
          shellScript {
            script
          }
          type
        }
        placeholder
        suggestions
      }
      path {
        extensions
        fileType
      }
    }
    runtime
  }
  relevanceScore
  lastInvokedAt
  lastInvokedAtByUser
  isOwnedByCurrentUser
}''';

/// Returns the suffix after the first space, matching the Fig source exactly.
Future<String?> _figVersion(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'fig',
    args: ['--version'],
  ));
  if (result.status != 0) return null;
  final separator = result.stdout.indexOf(' ');
  return result.stdout.substring(separator + 1);
}

/// `autocomplete.disableForCommands` generator from src/fig/shared.ts.
final FigGenerator _disableForCommandsGenerator = FigGenerator(
  script: const ['fig', 'settings', 'autocomplete.disableForCommands'],
  postProcess: _disableForCommandsPostProcess,
);

List<FigSuggestion> _disableForCommandsPostProcess(String output,
    [List<String>? tokens]) {
  tokens;
  final existing = output
      .split('\n')
      .where((item) => item.isNotEmpty)
      .toList();
  final append = FigSuggestion(
    name: 'Disable new CLI...',
    description: "You must pass a valid JSON array of CLI tools contained "
        "within single quotes. e.g. '[\"npm\",\"cd\",\"ls\"]'",
    icon: 'fig://icon?type=box',
    insertValue: jsonEncode([...existing, '{cursor}']),
  );
  final enabledAll = FigSuggestion(
    name: 'Enable all commands',
    icon: 'fig://icon?type=box',
    insertValue: "'[]'",
  );
  final suggestions = <FigSuggestion>[
    append,
    enabledAll,
  ];
  for (final disabledCommand in existing) {
    suggestions.add(FigSuggestion(
      name: 'Enable $disabledCommand',
      icon: 'fig://icon?type=box',
      insertValue: jsonEncode(
          existing.where((command) => command != disabledCommand).toList()),
    ));
  }
  return suggestions;
}

/// `themesGenerator` from src/fig/shared.ts.
final FigGenerator _themesGenerator = FigGenerator(
  script: const ['fig', 'theme', '--list'],
  postProcess: _themesPostProcess,
);

List<FigSuggestion> _themesPostProcess(String output, [List<String>? tokens]) {
  tokens;
  final suggestions = output.split('\n').map((theme) {
    return FigSuggestion(
      name: theme.replaceFirst('.json', ''),
      icon: '🎨',
    );
  }).toList();
  suggestions.addAll(const [
    FigSuggestion(name: 'system', icon: '💻', priority: 51),
    FigSuggestion(
        name: 'light',
        icon: 'fig://template?color=ffffff&badge=☀️',
        priority: 51),
    FigSuggestion(
        name: 'dark',
        icon: 'fig://template?color=000000&badge=🌙',
        priority: 51),
  ]);
  return suggestions;
}

/// `SETTINGS_GENERATOR` from src/fig/shared.ts, keyed on setting name.
FigGenerator? _settingsGenerator(String name) {
  if (name == 'autocomplete.disableForCommands') {
    return _disableForCommandsGenerator;
  }
  if (name == 'autocomplete.theme') {
    return _themesGenerator;
  }
  return null;
}

/// `actionSuggestions` from settingsSpecGenerator.
List<FigSuggestion> _actionSuggestions(List<dynamic> actions) {
  return actions.map((action) {
    final map = Map<String, dynamic>.from(action as Map);
    final identifier = map['identifier']?.toString() ?? '';
    final name = identifier.startsWith('autocomplete.')
        ? identifier.substring(13)
        : identifier;
    return FigSuggestion(
      name: name,
      description: map['description']?.toString(),
      icon: '⚡️',
    );
  }).toList();
}

/// `options` mapping from settingsSpecGenerator (string or {name, description}).
List<FigSuggestion> _optionSuggestionValues(dynamic options) {
  if (options is! List) return const [];
  return options.map((option) {
    if (option is String) {
      return FigSuggestion(name: option, description: '');
    }
    final map = Map<String, dynamic>.from(option as Map);
    return FigSuggestion(
      name: map['name']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
    );
  }).toList();
}

/// Builds one setting subcommand, mirroring settingsSpecGenerator.
FigSubcommand _settingSubcommand(
    Map<String, dynamic> setting, List<FigSuggestion> actionSuggestions) {
  final name = setting['settingName']?.toString() ?? '';
  final type = setting['type']?.toString() ?? '';
  final generator = _settingsGenerator(name);

  final List<dynamic> suggestions;
  if (generator != null) {
    suggestions = const [];
  } else if (type == 'boolean') {
    suggestions = const ['true', 'false'];
  } else if (name.startsWith('autocomplete.keybindings.')) {
    suggestions = actionSuggestions;
  } else {
    suggestions = _optionSuggestionValues(setting['options']);
  }

  return FigSubcommand(
    name: name,
    description: setting['description']?.toString(),
    icon: 'fig://icon?type=commandkey',
    args: [
      FigArg(
        name: type,
        defaultValue: setting['default']?.toString(),
        suggestions: suggestions,
        generators: generator == null ? null : [generator],
      ),
    ],
  );
}

/// `settingsSpecGenerator` from src/fig/shared.ts.
Future<FigSubcommand?> _settingsGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  tokens;
  if (executeCommand == null) return null;
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'fig',
    args: ['_', 'request', '--method', 'GET', '--route', '/settings/all'],
  ));
  final dynamic decoded;
  try {
    decoded = jsonDecode(result.stdout);
  } on FormatException {
    return null;
  }
  if (decoded is! Map) return null;
  final settings = decoded['settings'];
  if (settings is! List) return null;
  final actions = decoded['actions'];
  final actionSuggestions =
      actions is List ? _actionSuggestions(actions) : const <FigSuggestion>[];
  return FigSubcommand(
    name: 'settings',
    subcommands: settings.map((setting) {
      return _settingSubcommand(
          Map<String, dynamic>.from(setting as Map), actionSuggestions);
    }).toList(),
  );
}

/// `scriptOptions` from src/fig/shared.ts (Text/Selector/Path/Checkbox).
List<FigOption> _scriptOptions(Map<String, dynamic> fields) {
  final options = <FigOption>[
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help for the script',
    ),
  ];
  final parameters = fields['parameters'];
  if (parameters is! List) return options;
  for (final parameterValue in parameters) {
    if (parameterValue is! Map) continue;
    final parameter = Map<String, dynamic>.from(parameterValue);
    final parameterName = parameter['name']?.toString() ?? '';
    final parameterType = parameter['type']?.toString() ?? '';
    final description =
        parameter['description']?.toString() ?? parameterType;
    final isRequired = true;
    switch (parameterType) {
      case 'Text':
        options.add(FigOption(
          name: '--$parameterName',
          description: description,
          isRequired: isRequired,
          args: [
            FigArg(name: parameterName),
          ],
        ));
        break;
      case 'Selector':
        final selector = parameter['selector'];
        final selectorMap = selector is Map
            ? Map<String, dynamic>.from(selector)
            : <String, dynamic>{};
        final generators = <FigGenerator>[];
        final selectorGenerators = selectorMap['generators'];
        if (selectorGenerators is List) {
          for (final generatorValue in selectorGenerators) {
            if (generatorValue is! Map) continue;
            final generatorMap = Map<String, dynamic>.from(generatorValue);
            if (generatorMap['type']?.toString() != 'ShellScript') continue;
            final shellScript = generatorMap['shellScript'];
            if (shellScript is! Map) continue;
            final script = shellScript['script']?.toString() ?? '';
            generators.add(FigGenerator(
              script: ['bash', '-c', script],
              splitOn: '\n',
            ));
          }
        }
        options.add(FigOption(
          name: '--$parameterName',
          description: description,
          isRequired: isRequired,
          args: [
            FigArg(
              name: parameterName,
              suggestions: selectorMap['suggestions'],
              generators: generators,
            ),
          ],
        ));
        break;
      case 'Path':
        options.add(FigOption(
          name: '--$parameterName',
          description: description,
          isRequired: isRequired,
          args: [
            FigArg(name: parameterName, template: 'filepaths'),
          ],
        ));
        break;
      case 'Checkbox':
        options.add(FigOption(
          name: '--no-$parameterName',
          description: description,
          isRequired: isRequired,
          exclusiveOn: ['--$parameterName'],
        ));
        options.add(FigOption(
          name: '--$parameterName',
          description: description,
          isRequired: isRequired,
          exclusiveOn: ['--no-$parameterName'],
        ));
        break;
      default:
        options.add(FigOption(
          name: '--$parameterName',
          description: description,
          isRequired: isRequired,
        ));
    }
  }
  return options;
}

/// Builds one workflow script subcommand, mirroring scriptsSpecGenerator.
FigSubcommand _scriptSubcommand(Map<String, dynamic> script) {
  final fields = script['fields'];
  final fieldsMap =
      fields is Map ? Map<String, dynamic>.from(fields) : <String, dynamic>{};
  final name = script['name']?.toString() ?? '';
  final namespace = script['namespace']?.toString() ?? '';
  final isOwnedByCurrentUser = script['isOwnedByCurrentUser'] == true;
  final displayName = fieldsMap['displayName']?.toString() ?? name;
  final names = <String>['@$namespace/$name'];
  if (isOwnedByCurrentUser) names.add(name);
  return FigSubcommand(
    name: names,
    displayName: '$displayName | @$namespace',
    insertValue: isOwnedByCurrentUser ? name : '@$namespace/$name',
    description: fieldsMap['description']?.toString(),
    icon: fieldsMap['icon']?.toString() ?? '⚡️',
    options: _scriptOptions(fieldsMap),
  );
}

/// `scriptsSpecGenerator` from src/fig/shared.ts (fig run).
Future<FigSubcommand?> _scriptsGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  tokens;
  if (executeCommand == null) return null;
  final result = await executeCommand(ExecuteCommandInput(
    command: 'fig',
    args: [
      '_',
      'request',
      '--route',
      '/graphql',
      '--method',
      '--body',
      jsonEncode({'query': figScriptsQuery}),
    ],
  ));
  final dynamic decoded;
  try {
    decoded = jsonDecode(result.stdout);
  } on FormatException {
    return null;
  }
  if (decoded is! Map) return null;
  final data = decoded['data'];
  if (data is! Map) return null;
  final currentUser = data['currentUser'];
  if (currentUser is! Map) return null;
  final scripts = <Map<String, dynamic>>[];

  final namespace = currentUser['namespace'];
  if (namespace is Map) {
    final username = namespace['username']?.toString() ?? '';
    final namespaceScripts = namespace['scripts'];
    if (namespaceScripts is List) {
      for (final scriptValue in namespaceScripts) {
        if (scriptValue is! Map) continue;
        final script = Map<String, dynamic>.from(scriptValue);
        script['namespace'] = username;
        scripts.add(script);
      }
    }
  }

  final teamMemberships = currentUser['teamMemberships'];
  if (teamMemberships is List) {
    for (final membershipValue in teamMemberships) {
      if (membershipValue is! Map) continue;
      final team = membershipValue['team'];
      if (team is! Map) continue;
      final teamNamespace = team['namespace'];
      if (teamNamespace is! Map) continue;
      final username = teamNamespace['username']?.toString() ?? '';
      final teamScripts = teamNamespace['scripts'];
      if (teamScripts is! List) continue;
      for (final scriptValue in teamScripts) {
        if (scriptValue is! Map) continue;
        final script = Map<String, dynamic>.from(scriptValue);
        script['namespace'] = username;
        scripts.add(script);
      }
    }
  }

  return FigSubcommand(
    name: 'run',
    filterStrategy: FilterStrategy.fuzzy,
    subcommands: scripts.map(_scriptSubcommand).toList(),
  );
}

void registerFigHandlers(JsonHandlerRegistry registry) {
  registry.registerVersion(figVersionHandler, _figVersion);
  registry.registerGenerateSubcommand(
      figSettingsGenerateSpecV1Handler, _settingsGenerateSpec);
  registry.registerGenerateSubcommand(
      figSettingsGenerateSpecV2Handler, _settingsGenerateSpec);
  registry.registerGenerateSubcommand(
      figScriptsGenerateSpecHandler, _scriptsGenerateSpec);
}
