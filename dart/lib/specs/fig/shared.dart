import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

// Helper for GraphQL requests
Future<dynamic> graphql({
  required ExecuteCommandFunction exec,
  required String query,
}) async {
  final out = await exec(ExecuteCommandInput(
    command: "fig",
    args: [
      "_",
      "request",
      "--route",
      "/graphql",
      "--method",
      "POST",
      "--body",
      jsonEncode({"query": query}),
    ],
  ));

  return jsonDecode(out.stdout)['data'];
}

class Setting {
  final String settingName;
  final String description;
  final String type; // "boolean" | "text" | "single_select" | "multiselect"
  final List<dynamic>?
      options; // string | { name: string; description: string }
  final String? defaultValue;

  Setting({
    required this.settingName,
    required this.description,
    required this.type,
    this.options,
    this.defaultValue,
  });

  factory Setting.fromJson(Map<String, dynamic> json) {
    return Setting(
      settingName: json['settingName'],
      description: json['description'],
      type: json['type'],
      options: json['options'] as List<dynamic>?,
      defaultValue: json['default'],
    );
  }
}

class Action {
  final String identifier;
  final String name;
  final String description;
  final String availability;
  final List<String> defaultBindings;

  Action({
    required this.identifier,
    required this.name,
    required this.description,
    required this.availability,
    required this.defaultBindings,
  });

  factory Action.fromJson(Map<String, dynamic> json) {
    return Action(
      identifier: json['identifier'],
      name: json['name'],
      description: json['description'],
      availability: json['availability'],
      defaultBindings: List<String>.from(json['defaultBindings']),
    );
  }
}

final disableForCommandsGenerator = FigGenerator(
  script: ["fig", "settings", "autocomplete.disableForCommands"],
  postProcess: (String out, [List<String>? tokens]) {
    final existing = out.split("\n").where((item) => item.isNotEmpty).toList();

    final append = FigSuggestion(
      name: "Disable new CLI...",
      description:
          "You must pass a valid JSON array of CLI tools contained within single quotes. e.g. '[\"npm\",\"cd\",\"ls\"]'",
      icon: "fig://icon?type=box",
      insertValue: jsonEncode(existing + ["{cursor}"]),
    );

    final enabledAll = FigSuggestion(
      name: "Enable all commands",
      icon: "fig://icon?type=box",
      insertValue: "'[]'",
    );

    return [
      append,
      enabledAll,
      ...existing.map((disabledCommand) {
        return FigSuggestion(
          name: "Enable $disabledCommand",
          icon: "fig://icon?type=box",
          insertValue: jsonEncode(
            existing.where((cmd) => cmd != disabledCommand).toList(),
          ),
        );
      }),
    ];
  },
);

final themesGenerator = FigGenerator(
  script: ["fig", "theme", "--list"],
  postProcess: (String output, [List<String>? tokens]) {
    final builtinThemes = [
      FigSuggestion(
        name: "system",
        icon: "💻",
        priority: 51,
      ),
      FigSuggestion(
        name: "light",
        icon: "fig://template?color=ffffff&badge=☀️",
        priority: 51,
      ),
      FigSuggestion(
        name: "dark",
        icon: "fig://template?color=000000&badge=🌙",
        priority: 51,
      ),
    ];

    return output
            .split("\n")
            .map((theme) => FigSuggestion(
                  name: theme.replaceAll(".json", ""),
                  icon: "🎨",
                ))
            .toList() +
        builtinThemes;
  },
);

final settingsGeneratorsMap = <String, FigGenerator>{
  "autocomplete.disableForCommands": disableForCommandsGenerator,
  "autocomplete.theme": themesGenerator,
};

final subsystemsGenerator = FigGenerator(
  custom: (List<String> tokens, ExecuteCommandFunction? executeCommand,
      FigGeneratorContext? context) async {
    return ["figterm", "fig_cli", "fig_desktop", "daemon"]
        .map((name) => FigSuggestion(name: name))
        .toList();
  },
);

Future<FigSubcommand> settingsSpecGenerator(
    List<String> tokens, ExecuteCommandFunction? executeShellCommand,
    [FigGeneratorContext? context]) async {
  if (executeShellCommand == null) {
    return FigSubcommand(name: "settings");
  }

  final out = await executeShellCommand(ExecuteCommandInput(
    command: "fig",
    args: ["_", "request", "--method", "GET", "--route", "/settings/all"],
  ));

  final json = jsonDecode(out.stdout);
  final settings =
      (json['settings'] as List).map((e) => Setting.fromJson(e)).toList();
  final actions =
      (json['actions'] as List).map((e) => Action.fromJson(e)).toList();

  final actionSuggestions = actions
      .map((action) => FigSuggestion(
            name: action.identifier.startsWith("autocomplete.")
                ? action.identifier.substring(13)
                : action.identifier,
            description: action.description,
            icon: "⚡️",
          ))
      .toList();

  return FigSubcommand(
    name: "settings",
    subcommands: settings.map((setting) {
      final suggestions = setting.type == "boolean"
          ? ["true", "false"].map((e) => FigSuggestion(name: e)).toList()
          : setting.settingName.startsWith("autocomplete.keybindings.")
              ? actionSuggestions
              : setting.options?.map((option) {
                  if (option is Map) {
                    return FigSuggestion(
                      name: option["name"],
                      description: option["description"] ?? "",
                    );
                  }
                  return FigSuggestion(name: option.toString());
                }).toList();

      final generators = settingsGeneratorsMap[setting.settingName];

      return FigSubcommand(
        name: setting.settingName,
        description: setting.description,
        icon: "fig://icon?type=commandkey",
        args: [
          FigArg(
            name: setting.type,
            defaultValue: setting.defaultValue,
            suggestions: generators != null ? [] : suggestions,
            generators: generators != null ? [generators] : null,
          )
        ],
      );
    }).toList(),
  );
}

final stateGenerator = FigGenerator(
  script: ["fig", "internal", "local-state", "all", "--format", "json"],
  postProcess: (String out, [List<String>? tokens]) {
    final state = jsonDecode(out) as Map<String, dynamic>;
    return state.keys.map((key) {
      return FigSuggestion(
        name: key,
        description: jsonEncode(state[key]),
      );
    }).toList();
  },
);

class Plugin {
  final String name;
  final String icon;
  final String description;

  Plugin({required this.name, required this.icon, required this.description});

  factory Plugin.fromJson(Map<String, dynamic> json) {
    return Plugin(
      name: json['name'],
      icon: json['icon'] ?? "📦",
      description: json['description'] ?? "",
    );
  }
}

FigGenerator pluginsGenerator({required bool installed}) {
  return FigGenerator(
    cache: FigCache(strategy: "stale-while-revalidate"),
    custom: (List<String> tokens, ExecuteCommandFunction? executeShellCommand,
        FigGeneratorContext? context) async {
      if (executeShellCommand == null) return [];
      final args = installed
          ? ["plugins", "list", "--format", "json", "--installed"]
          : ["plugins", "list", "--format", "json"];
      final out = await executeShellCommand(ExecuteCommandInput(
        command: "fig",
        args: args,
      ));
      final json = jsonDecode(out.stdout) as List;
      final plugins = json.map((e) => Plugin.fromJson(e)).toList();

      return plugins.map((plugin) {
        final icon = !plugin.icon.startsWith("https://") ? plugin.icon : "📦";
        return FigSuggestion(
          name: plugin.name,
          icon: icon,
          description: plugin.description,
        );
      }).toList();
    },
  );
}

final tokensGenerators = FigGenerator(
  cache: FigCache(strategy: "stale-while-revalidate"),
  custom: (List<String> tokens, ExecuteCommandFunction? executeShellCommand,
      FigGeneratorContext? context) async {
    if (executeShellCommand == null) return [];
    final teamOptionIndex =
        tokens.indexWhere((value) => value.startsWith("--team"));
    if (teamOptionIndex == -1) return [];

    String teamName;
    if (tokens[teamOptionIndex].contains("=")) {
      teamName = tokens[teamOptionIndex].split("=")[1];
    } else {
      // Need to check bounds, but TS code assumes it exists
      if (teamOptionIndex + 1 < tokens.length) {
        teamName = tokens[teamOptionIndex + 1];
      } else {
        return [];
      }
    }

    final out = await executeShellCommand(ExecuteCommandInput(
      command: "fig",
      args: [
        "user",
        "tokens",
        "list",
        "--team",
        teamName,
        "--format",
        "json",
      ],
    ));

    final json = jsonDecode(out.stdout) as List;
    return json.map((token) {
      final namespace = token['namespace']['username'];
      final description = token['description'];
      return FigSuggestion(
        name: token['name'],
        description:
            "Team: $namespace.${description != null ? " " + description : ""}",
      );
    }).toList();
  },
);

final teamsGenerators = FigGenerator(
  cache: FigCache(strategy: "stale-while-revalidate"),
  script: ["fig", "team", "--list", "--format", "json"],
  postProcess: (String out, [List<String>? tokens]) {
    final json = jsonDecode(out) as List;
    return json
        .map((team) => FigSuggestion(
              name: team['name'],
              priority: 75,
            ))
        .toList();
  },
);

final membersGenerators = FigGenerator(
  cache: FigCache(
    strategy: "stale-while-revalidate",
    ttl: 1000 * 60,
  ),
  custom: (List<String> tokens, ExecuteCommandFunction? executeShellCommand,
      FigGeneratorContext? context) async {
    if (executeShellCommand == null) return [];
    // tokens.at(-3) in TS. In Dart:
    if (tokens.length < 3) return [];
    final teamName = tokens[tokens.length - 3];

    final out = await executeShellCommand(ExecuteCommandInput(
      command: "fig",
      args: ["team", "--format", "json", teamName, "members"],
    ));

    final json = jsonDecode(out.stdout) as List;
    return json
        .map((member) => FigSuggestion(
              name: member['email'],
              description: "Role: ${member['role']}",
            ))
        .toList();
  },
);

final invitationsGenerators = FigGenerator(
  cache: FigCache(
    strategy: "stale-while-revalidate",
    ttl: 1000 * 60,
  ),
  custom: (List<String> tokens, ExecuteCommandFunction? executeShellCommand,
      FigGeneratorContext? context) async {
    if (executeShellCommand == null) return [];
    if (tokens.length < 3) return [];
    final teamName = tokens[tokens.length - 3];

    final out = await executeShellCommand(ExecuteCommandInput(
      command: "fig",
      args: ["team", "--format", "json", teamName, "invitations"],
    ));

    final json = jsonDecode(out.stdout) as List;
    return json
        .map((invitation) => FigSuggestion(
              name: invitation['email'],
              description: "Role: ${invitation['role']}",
            ))
        .toList();
  },
);

// ScriptFields type mapping
class ScriptFields {
  final String name;
  final Map<String, dynamic> fields;
  final int relevanceScore;
  final String lastInvokedAt;
  final String lastInvokedAtByUser;
  final bool isOwnedByCurrentUser;
  final String? namespace; // Added for convenience in scriptsSpecGenerator

  ScriptFields({
    required this.name,
    required this.fields,
    required this.relevanceScore,
    required this.lastInvokedAt,
    required this.lastInvokedAtByUser,
    required this.isOwnedByCurrentUser,
    this.namespace,
  });

  factory ScriptFields.fromJson(Map<String, dynamic> json) {
    return ScriptFields(
      name: json['name'],
      fields: json['fields'],
      relevanceScore: json['relevanceScore'],
      lastInvokedAt: json['lastInvokedAt'],
      lastInvokedAtByUser: json['lastInvokedAtByUser'],
      isOwnedByCurrentUser: json['isOwnedByCurrentUser'],
      namespace: json['namespace'],
    );
  }
}

List<FigOption> scriptOptions(ScriptFields script) {
  final options = <FigOption>[
    FigOption(
      name: ["-h", "--help"],
      description: "Show help for the script",
    ),
  ];

  final parameters = script.fields['parameters'] as List<dynamic>? ?? [];
  for (final param in parameters) {
    final name = param['name'];
    final description = param['description'] ?? param['type'];
    final type = param['type'];

    List<FigArg> args = [];

    switch (type) {
      case "Text":
        args.add(FigArg(name: name));
        break;
      case "Selector":
        List<FigGenerator> generators = [];
        final selectorGenerators =
            param['selector']?['generators'] as List<dynamic>?;
        if (selectorGenerators != null) {
          generators = selectorGenerators
              .where((g) => g['type'] == "ShellScript")
              .map<FigGenerator>((g) => FigGenerator(
                    script: ["bash", "-c", g['shellScript']['script']],
                    splitOn: "\n",
                  ))
              .toList();
        }
        final suggestions =
            (param['selector']?['suggestions'] as List<dynamic>?)
                ?.map((s) => s.toString())
                .toList();

        args.add(FigArg(
          name: name,
          suggestions: suggestions,
          generators: generators,
        ));
        break;
      case "Path":
        args.add(FigArg(
          name: name,
          template: "filepaths",
        ));
        break;
      case "Checkbox":
        options.add(FigOption(
          name: "--no-$name",
          description: description,
          isRequired: true,
          exclusiveOn: ["--$name"],
        ));
        // Dart option doesn't support modifying existing option instance easily (final fields)
        // But we need to set exclusiveOn on the main option too.
        // We can recreate it.
        // Or just return as is, since we are building the list.
        // Actually, we can't modify 'option' after creation.
        // So we should construct it with exclusiveOn if needed.
        // Refactoring to handle Checkbox logic before creating FigOption.
        break;
    }

    // Re-create option with args and exclusiveOn if needed
    List<String>? exclusiveOn;
    if (type == "Checkbox") {
      exclusiveOn = ["--no-$name"];
    }

    options.add(FigOption(
      name: "--$name",
      description: description,
      isRequired: true,
      args: args.isNotEmpty ? args : null,
      exclusiveOn: exclusiveOn,
    ));
  }

  return options;
}

const scriptsFieldsFragment = """fragment ScriptFields on Script {
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
}""";

Future<FigSubcommand> scriptsSpecGenerator(
    List<String> tokens, ExecuteCommandFunction? executeShellCommand,
    [FigGeneratorContext? context]) async {
  if (executeShellCommand == null) return FigSubcommand(name: "run");

  const query = """query Scripts {
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

  $scriptsFieldsFragment""";

  final data = await graphql(exec: executeShellCommand, query: query);

  List<ScriptFields> scripts = [];

  final currentUserNamespace = data['currentUser']['namespace'];
  if (currentUserNamespace != null) {
    final username = currentUserNamespace['username'];
    final userScripts = (currentUserNamespace['scripts'] as List).map((s) {
      var script = ScriptFields.fromJson(s);
      return ScriptFields(
        name: script.name,
        fields: script.fields,
        relevanceScore: script.relevanceScore,
        lastInvokedAt: script.lastInvokedAt,
        lastInvokedAtByUser: script.lastInvokedAtByUser,
        isOwnedByCurrentUser: script.isOwnedByCurrentUser,
        namespace: username,
      );
    });
    scripts.addAll(userScripts);
  }

  final teamMemberships = data['currentUser']['teamMemberships'] as List?;
  if (teamMemberships != null) {
    for (var team in teamMemberships) {
      final teamNamespace = team['team']['namespace'];
      final username = teamNamespace['username'];
      final teamScripts = (teamNamespace['scripts'] as List).map((s) {
        var script = ScriptFields.fromJson(s);
        return ScriptFields(
          name: script.name,
          fields: script.fields,
          relevanceScore: script.relevanceScore,
          lastInvokedAt: script.lastInvokedAt,
          lastInvokedAtByUser: script.lastInvokedAtByUser,
          isOwnedByCurrentUser: script.isOwnedByCurrentUser,
          namespace: username,
        );
      });
      scripts.addAll(teamScripts);
    }
  }

  final subcommands = scripts.map((script) {
    final displayName =
        "${script.fields['displayName'] ?? script.name} | @${script.namespace}";

    final name = ["@${script.namespace}/${script.name}"];
    if (script.isOwnedByCurrentUser) {
      name.add(script.name);
    }

    final options = scriptOptions(script);

    return FigSubcommand(
      displayName: displayName,
      icon: script.fields['icon'] ?? "⚡️",
      name: name,
      insertValue: script.isOwnedByCurrentUser ? script.name : name[0],
      description: script.fields['description'],
      options: options,
    );
  }).toList();

  return FigSubcommand(
    name: "run",
    subcommands: subcommands,
    filterStrategy: FilterStrategy.fuzzy,
  );
}

Future<FigSubcommand> commandLineToolSpecGenerator(
    List<String> tokens, ExecuteCommandFunction? executeShellCommand,
    [FigGeneratorContext? context]) async {
  if (executeShellCommand == null) return FigSubcommand(name: "cli");

  const query = """query CommandLineTool {
    currentUser {
      namespace {
        username
        commandlineTools {
          ...CommandlineToolFields
        }
      }
      teamMemberships {
        team {
          namespace {
            username
            commandlineTools {
              ...CommandlineToolFields
            }
          }
        }
      }
    }
  }
  
  fragment CommandlineToolFields on CommandlineTool {
    root {
      ...CLICommandFields
    }
    flattenedCommands {
      ...CLICommandFields
    }
  }
  
  fragment CLICommandFields on ICLICommand {
    uuid
    name
    description
    ... on NestedCommand {
      subcommands {
        uuid
      }
    }
    ... on ScriptCommand {
      script {
        ...ScriptFields
      }
    }
  }
  
  $scriptsFieldsFragment""";

  final data = await graphql(exec: executeShellCommand, query: query);

  List<dynamic> commandlineTools = [];

  final currentUserNamespace = data['currentUser']['namespace'];
  if (currentUserNamespace != null) {
    final username = currentUserNamespace['username'];
    commandlineTools
        .addAll((currentUserNamespace['commandlineTools'] as List).map((t) => {
              ...t,
              'namespace': username,
            }));
  }

  final teamMemberships = data['currentUser']['teamMemberships'] as List?;
  if (teamMemberships != null) {
    for (var team in teamMemberships) {
      final teamNamespace = team['team']['namespace'];
      final username = teamNamespace['username'];
      commandlineTools
          .addAll((teamNamespace['commandlineTools'] as List).map((t) => {
                ...t,
                'namespace': username,
              }));
    }
  }

  FigSubcommand createTree(dynamic root, int depth,
      Map<String, dynamic> commands, String namespace) {
    if (root['subcommands'] != null) {
      final subcommands = <FigSubcommand>[];
      for (var cmdRef in root['subcommands']) {
        subcommands.add(createTree(
            commands[cmdRef['uuid']], depth + 1, commands, namespace));
      }
      return FigSubcommand(
        name: depth == 0 ? "@$namespace/${root['name']}" : root['name'],
        description: root['description'],
        subcommands: subcommands,
        options: [
          FigOption(
            name: ["-h", "--help"],
            description: "Print help information",
          )
        ],
      );
    } else {
      final script = ScriptFields.fromJson(root['script']);
      final options = scriptOptions(script);
      return FigSubcommand(
        icon: script.fields['icon'],
        name: root['name'],
        description: root['description'],
        options: options,
      );
    }
  }

  final subcommands = commandlineTools.map((tool) {
    final commands = <String, dynamic>{};
    for (var cmd in tool['flattenedCommands']) {
      commands[cmd['uuid']] = cmd;
    }
    return createTree(tool['root'], 0, commands, tool['namespace']);
  }).toList();

  return FigSubcommand(
    name: "cli",
    subcommands: subcommands,
  );
}

final sshHostsGenerator = FigGenerator(
  script: [
    "fig",
    "_",
    "request",
    "--method",
    "GET",
    "--route",
    "/access/hosts/all",
  ],
  cache: FigCache(strategy: "stale-while-revalidate"),
  postProcess: (String out, [List<String>? tokens]) {
    final json = jsonDecode(out) as List;
    return json
        .map((host) => FigSuggestion(
              insertValue: "@${host['namespace']}/${host['nickName']}",
              displayName: "${host['nickName']} (@${host['namespace']})",
              name: "@${host['namespace']}/${host['nickName']}",
              description: host['description'],
            ))
        .toList();
  },
);

final sshIdentityGenerator = FigGenerator(
  custom: (List<String> tokens, ExecuteCommandFunction? executeShellCommand,
      FigGeneratorContext? context) async {
    if (executeShellCommand == null) return [];
    // tokens.slice(2).find(...)
    // Assuming tokens include the command itself? Fig tokens usually start after command.
    // TS: tokens.slice(2)
    // Dart tokens are just arguments?
    // The tokens passed to custom generator are usually the full line tokens or arguments.
    // If tokens are ["ssh", "host", ...], then slice(2) makes sense.
    // I'll assume standard tokenization.

    final host = tokens
        .skip(2)
        .firstWhere((value) => !value.startsWith("-"), orElse: () => "");
    if (host.isEmpty) {
      return [];
    }

    final out = await executeShellCommand(ExecuteCommandInput(
      command: "fig",
      args: ["ssh", host, "--get-identities"],
    ));

    final json = jsonDecode(out.stdout) as List;
    return json
        .map((h) => FigSuggestion(
              name: h['displayName'],
            ))
        .toList();
  },
);

final userGenerator = FigGenerator(
  script: ["fig", "user", "list-accounts"],
  postProcess: (String out, [List<String>? tokens]) {
    if (out.startsWith("error: ")) {
      return [];
    }
    return out
        .trim()
        .split("\n")
        .map((name) => FigSuggestion(name: name, icon: "👤"))
        .toList();
  },
);
