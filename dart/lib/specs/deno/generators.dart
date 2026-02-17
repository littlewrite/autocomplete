// AI-generated from TypeScript
//* eslint-disable @withfig/fig-linter/no-missing-default-export */

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';
import 'config_schema.dart';
import 'deno_doc.dart';

// Helper to strip JSON comments
String stripJsonComments(String json) {
  // Matches strings (group 1) OR comments
  final re = RegExp(r'("(?:[^\\"]|\\.)*")|//.*|/\*[\s\S]*?\*/');
  return json.replaceAllMapped(re, (match) {
    if (match.group(1) != null) return match.group(1)!;
    return '';
  });
}

// --- Generate documentation symbols

// Union type helper: effectively dynamic in Dart but we treat it as one of the types
typedef Node = dynamic;
// Types: DocNode, InterfaceMethodDef, InterfacePropertyDef, ClassMethodDef, ClassPropertyDef

/// Get unique values
List<T> getUniqueNamed<T extends dynamic>(List<T> input) {
  final seen = <String>{};
  final out = <T>[];
  for (final item in input) {
    // Assuming item has 'name' property
    final name = (item as dynamic).name;
    if (seen.contains(name)) continue;
    seen.add(name);
    out.add(item);
  }
  return out;
}

/// Get the children of the given node, if it has children. If it cannot have
/// children, return an empty array.
List<Node> getNodeChildren(Node node) {
  if (node is DocNode) {
    if (node.kind == "namespace" && node.namespaceDef != null) {
      return node.namespaceDef!.elements;
    }
    if (node.kind == "interface" && node.interfaceDef != null) {
      return [...node.interfaceDef!.methods, ...node.interfaceDef!.properties];
    }
    if (node.kind == "class" && node.classDef != null) {
      return [...node.classDef!.methods, ...node.classDef!.properties];
    }
  }
  return [];
}

/// Get the child nodes of a given lookup path. If multiple nodes have the
/// same name, all their children will be returned.
List<Node> findChildNodes(List<Node> nodes, List<String> path) {
  if (path.isEmpty) {
    return nodes;
  }
  final head = path.first;
  final tail = path.sublist(1);

  return nodes
      .where((node) => (node as dynamic).name == head)
      .expand((node) => findChildNodes(getNodeChildren(node), tail))
      .toList();
}

/// Get the priority of a node based on its name. Values starting with upper-
/// case letters should be prioritized, values starting with underscores should
/// be below everything else.
int getPriorityByNodeName(String name) {
  if (RegExp(r'^[A-Z]').hasMatch(name)) {
    return 60;
  }
  if (name.startsWith("_")) {
    return 40;
  }
  return 50;
}

/// Get a human-readable short name for the kind of node
String getNodeTypeName(Node node) {
  if (node is DocNode) {
    if (node.kind == "typeAlias") {
      return "Type";
    }
    final kind = node.kind;
    return "${kind[0].toUpperCase()}${kind.substring(1)}";
  }
  // Fallback for Property/Method definitions which don't have 'kind' field in the same way as DocNode
  // Actually InterfaceMethodDef has kind "method"|"getter"|"setter".
  // InterfacePropertyDef doesn't have kind.
  return "Property";
}

/// Filter nodes from the input array based on whether they should be shown.
List<Node> filterNodes(
  List<Node> nodes, {
  required bool showPrivateNodes,
}) {
  return nodes.where((node) {
    // 1. Check if it's a node that can't be shown
    if (node is DocNode) {
      if (node.kind == "moduleDoc" || node.kind == "import") {
        return false;
      }
    }
    // 2. Check if the visibility preference filters out the node
    if (node is DocNode && node.declarationKind != null) {
      if (!showPrivateNodes && node.declarationKind == "private") {
        return false;
      }
    }
    // All else failing, allow the node
    return true;
  }).toList();
}

FigSuggestion convertNodeToSuggestion(Node node) {
  final name = (node as dynamic).name as String;
  return FigSuggestion(
    name: name,
    description: getNodeTypeName(node),
    priority: getPriorityByNodeName(name),
    icon: "fig://icon?type=asterisk",
  );
}

final FigGenerator generateDocs = FigGenerator(
  scriptTimeout: 12000,
  trigger: ".",
  getQueryTerm: ".",
  // Using custom because script function is not directly supported in serialized spec,
  // but if this is runtime Dart, we can use custom to emulate the logic.
  // However, the original TS uses script returning a command.
  // We'll implement this using `custom` which gives us full control.
  custom: (tokens, executeCommand, context) async {
    if (executeCommand == null) return [];

    final allowedOptions = {"--private", "--builtin", "--unstable"};
    // Slice to the second last element: `--json` conflicts with `scope`
    // tokens includes the executable? Usually tokens are arguments.
    // TS script: (tokens) => string[]
    // tokens in TS Fig.Generator.script are the tokens of the CLI command so far.

    // Logic from TS:
    final commandTokens = tokens
        .sublist(0, tokens.length - 1)
        .where((token) =>
            !(token.startsWith("-") && !allowedOptions.contains(token)) &&
            !token.startsWith(r"$") &&
            !token.startsWith("("))
        .toList();

    commandTokens.add("--json");

    // Execute the command
    // We assume the first token is 'deno' or we need to construct the full command.
    // The TS script returns `command`. If it's `['deno', 'doc', ...]` it works.
    // But tokens usually start after the subcommand if it's a subcommand generator?
    // Wait, `generateDocs` is likely used on `deno doc <args>`.
    // The tokens passed to script usually include the full command line or relevant part.
    // If we assume `commandTokens` is the full command to run:

    // We need to run it.
    final output = await executeCommand(ExecuteCommandInput(
      command: commandTokens.first,
      args: commandTokens.sublist(1),
    ));

    if (output.status != 0) return [];

    final out = output.stdout;
    final docNodes =
        (jsonDecode(out) as List).map((e) => DocNode.fromJson(e)).toList();

    // The final segment is being typed, ignore it
    final finalToken = tokens.last;
    final path =
        finalToken.split(".").sublist(0, finalToken.split(".").length - 1);

    final nodes = findChildNodes(docNodes, path);
    final filtered =
        filterNodes(nodes, showPrivateNodes: tokens.contains("--private"));
    final unique = getUniqueNamed(filtered);

    return unique.map((node) => convertNodeToSuggestion(node)).toList();
  },
);

// --- Generate Deno versions

class VersionsJSON {
  final String latest;
  final List<String> versions;
  VersionsJSON({required this.latest, required this.versions});
  factory VersionsJSON.fromJson(Map<String, dynamic> json) => VersionsJSON(
        latest: json['latest'],
        versions: List<String>.from(json['versions']),
      );
}

final FigGenerator generateVersions = FigGenerator(
  script: ["curl", "-sL", "https://cdn.deno.land/deno/meta/versions.json"],
  cache: const FigCache(ttl: 1000 * 60 * 60 * 24), // 24 hours
  postProcess: (out, [tokens]) {
    final data = VersionsJSON.fromJson(jsonDecode(out));
    return data.versions
        .map((version) => FigSuggestion(
              name: version.startsWith("v") ? version.substring(1) : version,
            ))
        .toList();
  },
);

// --- Filepath generators

/// Equivalent to the `"filepaths"` template, but boosts the priority of files
/// that match one of the names provided.
FigGenerator generatePreferredFilepaths({
  required List<String> names,
  int matchPriority = 75,
}) {
  final namesSet = names.toSet();
  return FigGenerator(
    template: "filepaths",
    filterTemplateSuggestions: (List<FigSuggestion> paths) {
      // In Dart, we might receive dynamic or List<FigSuggestion>.
      // The spec says filterTemplateSuggestions is dynamic.
      // If we implement it as a callback in runtime:
      for (final path in paths) {
        if (path.nameSingle != null && namesSet.contains(path.nameSingle)) {
          // We can't modify FigSuggestion as it is const (in my previous thought, but let's check spec.dart).
          // FigSuggestion has final fields. So we must copy it.
          // But wait, the previous spec.dart showed `final int priority;`.
          // So we need to create a new suggestion.
          // However, TS modifies it in place: `path.priority = matchPriority`.
          // Since we can't modify, we map.
          // But `filterTemplateSuggestions` signature in TS expects mutation or return.
          // In Dart, we should probably return a new list.
        }
      }
      return paths.map((path) {
        if (path.nameSingle != null && namesSet.contains(path.nameSingle)) {
          return FigSuggestion(
            name: path.name,
            displayName: path.displayName,
            description: path.description,
            icon: path.icon,
            priority: matchPriority,
            insertValue: path.insertValue,
            replaceValue: path.replaceValue,
            type: path.type,
            hidden: path.hidden,
            isDangerous: path.isDangerous,
            deprecated: path.deprecated,
            previewComponent: path.previewComponent,
            loadSpec: path.loadSpec,
          );
        }
        return path;
      }).toList();
    },
  );
}

// The Deno core team is looking at adding runnable metadata JSON file, so
// ".json" will have to be added to this eventually.
final FigGenerator generateRunnableFiles =
    FigGenerator(custom: (tokens, executeCommand, context) async {
  // Replicating filepaths({ matches: /\.(m?(j|t)sx?)$/i, editFileSuggestions: { priority: 75 } })
  // Use context.adapter for file system access (no dart:io).
  if (context == null) return [];

  final cwd = context.currentWorkingDirectory;
  final adapter = context.adapter;
  final extensions = ["js", "ts", "jsx", "tsx", "mjs", "mts"];

  final entries = await adapter.listDirectory(cwd,
      foldersOnly: false, extensions: extensions);
  return entries
      .map((e) => FigSuggestion(
            name: e.name,
            type: e.isDirectory ? SuggestionType.folder : SuggestionType.file,
            priority: 75,
          ))
      .toList();
});

// --- Generate lint rules

// Helper for valueList
FigGenerator valueList({required List<FigSuggestion> values}) {
  return FigGenerator(custom: (tokens, _, __) async => values);
}

final FigGenerator generateLintRules = valueList(
  values: [
    const FigSuggestion(
        name: "adjacent-overload-signatures",
        description:
            "Requires overload signatures to be adjacent to each other"),
    const FigSuggestion(
        name: "ban-ts-comment",
        description:
            "Disallows the use of Typescript directives without a comment"),
    const FigSuggestion(
        name: "ban-types",
        description:
            "Bans the use of primitive wrapper objects (e.g. `String` the object is a wrapper\nof `string` the primitive) in addition to the non-explicit `Function` type and\nthe misunderstood `Object` type"),
    const FigSuggestion(
        name: "ban-unknown-rule-code",
        description:
            "Warns the usage of unknown rule codes in ignore directives"),
    const FigSuggestion(
        name: "ban-untagged-ignore",
        description:
            "Requires `deno-lint-ignore` to be annotated with one or more rule names"),
    const FigSuggestion(
        name: "ban-unused-ignore",
        description: "Warns unused ignore directives"),
    const FigSuggestion(
        name: "constructor-super",
        description:
            "Verifies the correct usage of constructors and calls to `super()`"),
    const FigSuggestion(
        name: "for-direction",
        description:
            "Requires `for` loop control variables to increment in the correct direction"),
    const FigSuggestion(
        name: "getter-return",
        description:
            "Requires all property getter functions to return a value"),
    const FigSuggestion(
        name: "no-array-constructor",
        description: "Enforce conventional usage of array construction"),
    const FigSuggestion(
        name: "no-async-promise-executor",
        description:
            "Requires that async promise executor functions are not used"),
    const FigSuggestion(
        name: "no-case-declarations",
        description:
            "Requires lexical declarations (`let`, `const`, `function` and `class`) in switch\n`case` or `default` clauses to be scoped with brackets"),
    const FigSuggestion(
        name: "no-class-assign",
        description: "Disallows modifying variables of class declarations"),
    const FigSuggestion(
        name: "no-compare-neg-zero",
        description: "Disallows comparing against negative zero (`-0`)"),
    const FigSuggestion(
        name: "no-cond-assign",
        description:
            "Disallows the use of the assignment operator, `=`, in conditional statements"),
    const FigSuggestion(
        name: "no-constant-condition",
        description:
            "Disallows the use of a constant expression in conditional test"),
    const FigSuggestion(
        name: "no-control-regex",
        description:
            "Disallows the use ascii control characters in regular expressions"),
    const FigSuggestion(
        name: "no-debugger",
        description: "Disallows the use of the `debugger` statement"),
    const FigSuggestion(
        name: "no-delete-var",
        description: "Disallows the deletion of variables"),
    const FigSuggestion(
        name: "no-deprecated-deno-api",
        description: "Warns the usage of the deprecated Deno APIs"),
    const FigSuggestion(
        name: "no-dupe-args",
        description:
            "Disallows using an argument name more than once in a function signature"),
    const FigSuggestion(
        name: "no-dupe-class-members",
        description:
            "Disallows using a class member function name more than once"),
    const FigSuggestion(
        name: "no-dupe-else-if",
        description:
            "Disallows using the same condition twice in an `if`/`else if` statement"),
    const FigSuggestion(
        name: "no-dupe-keys",
        description: "Disallows duplicate keys in object literals"),
    const FigSuggestion(
        name: "no-duplicate-case",
        description:
            "Disallows using the same case clause in a switch statement more than once"),
    const FigSuggestion(
        name: "no-empty",
        description: "Disallows the use of empty block statements"),
    const FigSuggestion(
        name: "no-empty-character-class",
        description:
            "Disallows using the empty character class in a regular expression"),
    const FigSuggestion(
        name: "no-empty-enum",
        description: "Disallows the declaration of an empty enum"),
    const FigSuggestion(
        name: "no-empty-interface",
        description: "Disallows the declaration of an empty interface"),
    const FigSuggestion(
        name: "no-empty-pattern",
        description: "Disallows the use of empty patterns in destructuring"),
    const FigSuggestion(
        name: "no-ex-assign",
        description: "Disallows the reassignment of exception parameters"),
    const FigSuggestion(
        name: "no-explicit-any",
        description: "Disallows use of the `any` type"),
    const FigSuggestion(
        name: "no-extra-boolean-cast",
        description: "Disallows unnecessary boolean casts"),
    const FigSuggestion(
        name: "no-extra-non-null-assertion",
        description: "Disallows unnecessary non-null assertions"),
    const FigSuggestion(
        name: "no-extra-semi", description: "<!-- deno-fmt-ignore-file -->"),
    const FigSuggestion(
        name: "no-fallthrough",
        description: "Disallows the implicit fallthrough of case statements"),
    const FigSuggestion(
        name: "no-func-assign",
        description:
            "Disallows the overwriting/reassignment of an existing function"),
    const FigSuggestion(
        name: "no-global-assign",
        description: "Disallows assignment to native Javascript objects"),
    const FigSuggestion(
        name: "no-import-assign",
        description: "Disallows reassignment of imported module bindings"),
    const FigSuggestion(
        name: "no-inferrable-types",
        description: "Disallows easily inferrable types"),
    const FigSuggestion(
        name: "no-inner-declarations",
        description:
            "Disallows variable or function definitions in nested blocks"),
    const FigSuggestion(
        name: "no-invalid-regexp",
        description:
            "Disallows specifying invalid regular expressions in RegExp constructors"),
    const FigSuggestion(
        name: "no-invalid-triple-slash-reference",
        description:
            "Warns the wrong usage of triple-slash reference directives"),
    const FigSuggestion(
        name: "no-irregular-whitespace",
        description:
            "Disallows the use of non-space or non-tab whitespace characters"),
    const FigSuggestion(
        name: "no-misused-new",
        description:
            "Disallows defining `constructor`s for interfaces or `new` for classes"),
    const FigSuggestion(
        name: "no-namespace",
        description:
            "Disallows the use of `namespace` and `module` keywords in TypeScript code"),
    const FigSuggestion(
        name: "no-new-symbol",
        description:
            "Disallows the use of `new` operators with built-in `Symbol`s"),
    const FigSuggestion(
        name: "no-obj-calls",
        description:
            "Disallows calling built-in global objects like functions"),
    const FigSuggestion(
        name: "no-octal",
        description:
            "Disallows expressing octal numbers via numeric literals beginning with `0`"),
    const FigSuggestion(
        name: "no-prototype-builtins",
        description:
            "Disallows the use of `Object.prototype` builtins directly"),
    const FigSuggestion(
        name: "no-redeclare",
        description:
            "Disallows redeclaration of variables, functions, parameters with the same name"),
    const FigSuggestion(
        name: "no-regex-spaces",
        description:
            "Disallows multiple spaces in regular expression literals"),
    const FigSuggestion(
        name: "no-self-assign", description: "Disallows self assignments"),
    const FigSuggestion(
        name: "no-setter-return",
        description: "Disallows returning values from setters"),
    const FigSuggestion(
        name: "no-shadow-restricted-names",
        description: "Disallows shadowing of restricted names"),
    const FigSuggestion(
        name: "no-this-alias",
        description: "Disallows assigning variables to `this`"),
    const FigSuggestion(
        name: "no-this-before-super",
        description:
            "Disallows use of `this` or `super` before calling `super()` in constructors"),
    const FigSuggestion(
        name: "no-unreachable",
        description:
            "Disallows the unreachable code after the control flow statements"),
    const FigSuggestion(
        name: "no-unsafe-finally",
        description:
            "Disallows the use of control flow statements within `finally` blocks"),
    const FigSuggestion(
        name: "no-unsafe-negation",
        description:
            "Disallows the usage of negation operator `!` as the left operand of relational\noperators"),
    const FigSuggestion(
        name: "no-unused-labels", description: "Disallows unused labels"),
    const FigSuggestion(
        name: "no-unused-vars",
        description: "Enforces all variables used at least once"),
    const FigSuggestion(
        name: "no-var",
        description:
            "Enforces the use of block scoped variables over more error prone function scoped\nvariables. Block scoped variables are defined using `const` and `let` keywords"),
    const FigSuggestion(
        name: "no-window-prefix",
        description: "Disallows the use of Web APIs via the `window` object"),
    const FigSuggestion(
        name: "no-with",
        description: "Disallows the usage of `with` statements"),
    const FigSuggestion(
        name: "prefer-as-const",
        description:
            "Recommends using const assertion (`as const`) over explicitly specifying literal\ntypes or using type assertion"),
    const FigSuggestion(
        name: "prefer-const",
        description:
            "Recommends declaring variables with [`const`] over [`let`]"),
    const FigSuggestion(
        name: "prefer-namespace-keyword",
        description:
            "Recommends the use of `namespace` keyword over `module` keyword when declaring\nTypeScript module"),
    const FigSuggestion(
        name: "require-await",
        description: "Disallows async functions that have no await expression"),
    const FigSuggestion(
        name: "require-yield",
        description: "Disallows generator functions that have no `yield`"),
    const FigSuggestion(
        name: "use-isnan", description: "Disallows comparisons to `NaN`"),
    const FigSuggestion(
        name: "valid-typeof",
        description:
            "Restricts the use of the `typeof` operator to a specific set of string literals"),
  ]
      .map((s) => FigSuggestion(
          name: s.name,
          description: s.description,
          icon: "fig://icon?type=string"))
      .toList(),
);

// --- Generate tasks

class DenoConfigurationFile extends DenoConfigurationFileSchema {
  final Map<String, dynamic>? fig;
  DenoConfigurationFile({
    Map<String, dynamic>? compilerOptions,
    String? importMap,
    Map<String, dynamic>? lint,
    Map<String, dynamic>? fmt,
    Map<String, String>? tasks,
    Map<String, dynamic>? unknown,
    this.fig,
  }) : super(
          compilerOptions: compilerOptions,
          importMap: importMap,
          lint: lint,
          fmt: fmt,
          tasks: tasks,
          unknown: unknown,
        );

  factory DenoConfigurationFile.fromJson(Map<String, dynamic> json) {
    final schema = DenoConfigurationFileSchema.fromJson(json);
    return DenoConfigurationFile(
      compilerOptions: schema.compilerOptions,
      importMap: schema.importMap,
      lint: schema.lint,
      fmt: schema.fmt,
      tasks: schema.tasks,
      unknown: schema.unknown,
      fig: json['fig'] as Map<String, dynamic>?,
    );
  }
}

String? getConfigPath(List<String> tokens) {
  final flagRe = RegExp(r'^(-[A-Zabd-z]*c=?|--config(?:=|$))');
  for (var i = 0; i < tokens.length; i++) {
    final token = tokens[i];
    final match = flagRe.firstMatch(token);
    if (match == null) continue;

    // Group 1 is the flag, up to and including the =.
    final flag = match.group(1)!;
    final withoutOption = token.substring(flag.length);
    if (withoutOption.isEmpty) {
      if (i + 1 < tokens.length) return tokens[i + 1];
    } else {
      return withoutOption;
    }
  }
  return null;
}

Future<DenoConfigurationFile?> getDenoConfig(
  List<String> tokens,
  ExecuteCommandFunction executeShellCommand,
) async {
  final configPath = getConfigPath(tokens);
  String jsonString;

  if (configPath != null) {
    final output = await executeShellCommand(ExecuteCommandInput(
      command: "cat",
      args: [configPath],
    ));
    jsonString = output.stdout;
  } else {
    // Move backwards...
    final output = await executeShellCommand(const ExecuteCommandInput(
      command: "bash",
      args: [
        "-c",
        "until [[ ( -f deno.json || -f deno.jsonc || \$PWD = '/' ) ]]; do cd ..; done; \\cat deno.json 2>/dev/null || \\cat deno.jsonc 2>/dev/null",
      ],
    ));
    jsonString = output.stdout;
  }

  try {
    if (jsonString.trim().isEmpty) return null;
    return DenoConfigurationFile.fromJson(
        jsonDecode(stripJsonComments(jsonString)));
  } catch (e) {
    // print("Error parsing config file: $e");
    return null;
  }
}

final FigGenerator generateTasks = FigGenerator(
  cache: const FigCache(strategy: "stale-while-revalidate"),
  custom: (tokens, executeShellCommand, context) async {
    if (executeShellCommand == null) return [];

    final config = await getDenoConfig(tokens, executeShellCommand);
    if (config == null || config.tasks == null) return [];

    return config.tasks!.entries.map((entry) {
      final name = entry.key;
      final command = entry.value;
      final figConfig = config.fig != null && config.fig!.containsKey(name)
          ? config.fig![name] as Map<String, dynamic>
          : <String, dynamic>{};

      return FigSuggestion(
        name: name,
        displayName: figConfig['displayName'],
        description: figConfig['description'] ?? command,
        icon: figConfig['icon'] ?? "⚙️",
        priority: figConfig['priority'] ?? 50,
        hidden: figConfig['hidden'] ?? false,
      );
    }).toList();
  },
);

// --- Generate installed deno scripts

final FigGenerator generateInstalledDenoScripts = FigGenerator(
  script: [
    "bash",
    "-c",
    "command find ~/.deno/bin -maxdepth 1 -perm -111 -type f",
  ],
  postProcess: (out, [tokens]) {
    return out
        .split("\n")
        .where((path) => path.isNotEmpty && !path.endsWith("/deno"))
        .map((path) {
      final name = path.split("/").last;
      return FigSuggestion(
        name: name,
        icon: "📦",
        description: path,
      );
    }).toList();
  },
);

// --- Suggest URLs from clipboard

final httpsRe = RegExp(r'^(https?:\/\/.*\.(?:m?[jt]sx?))(?:\?.*)?(?:\#.*)?$');

final clipboardTests = <String? Function(String)>[
  (str) {
    final match = httpsRe.firstMatch(str);
    if (match == null) return null;
    return match.group(1);
  },
  (str) => str.startsWith("npm:") ? str : null,
];

final FigGenerator generateUrlScript = FigGenerator(
  script: ["pbpaste"],
  postProcess: (clipboard, [tokens]) {
    final trimmed = clipboard.trim();
    if (trimmed.isEmpty) return [];

    for (final test in clipboardTests) {
      final match = test(trimmed);
      if (match != null) {
        return [FigSuggestion(name: match)];
      }
    }
    return [];
  },
);
