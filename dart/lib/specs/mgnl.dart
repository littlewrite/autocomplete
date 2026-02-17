// AI-generated from TypeScript source: mgnl.ts

import 'dart:convert';
import 'package:autocomplete/src/spec.dart';

int atsInStr(String s) => RegExp(r'@').allMatches(s).length;

FigOption pathOption(String description) => FigOption(
      name: ["-p", "--path"],
      description: description,
      args: [
        FigArg(
          name: "path",
          template: "folders",
        ),
      ],
    );

FigOption prototypeOption(String description) => FigOption(
      name: ["-P", "--prototype"],
      description: description,
      args: [
        FigArg(
          name: "prototype",
        ),
      ],
    );

final FigGenerator lightModuleGenerator = FigGenerator(
  trigger: {
    'on': 'change',
  },
  getQueryTerm: '@',
  cache: FigCache(ttl: 1000 * 60 * 60 * 24 * 2),
  script: (List<String> tokens) {
    final searchTerm = tokens.isNotEmpty ? tokens.last : '';
    if (searchTerm.isEmpty) return <String>[];

    final shouldGetVersion = searchTerm.startsWith('@')
        ? atsInStr(searchTerm) > 1
        : searchTerm.contains('@');

    if (shouldGetVersion) {
      final pkg = searchTerm.endsWith('@')
          ? searchTerm.substring(0, searchTerm.length - 1)
          : searchTerm;
      return [
        'curl',
        '-s',
        '-H',
        'Accept: application/vnd.npm.install-v1+json',
        'https://registry.npmjs.org/$pkg',
      ];
    }

    final encoded = Uri.encodeComponent(searchTerm);
    return [
      'curl',
      '-s',
      '-H',
      'Accept: application/json',
      'https://api.npms.io/v2/search?q=$encoded+keywords:magnolia-light-module&size=20',
    ];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final searchTerm = (tokens != null && tokens.isNotEmpty) ? tokens.last : '';
    if (searchTerm.isEmpty) return <FigSuggestion>[];

    final shouldGetVersion = searchTerm.startsWith('@')
        ? atsInStr(searchTerm) > 1
        : searchTerm.contains('@');

    try {
      final data = jsonDecode(out) as Map<String, dynamic>;
      if (shouldGetVersion) {
        final versions = <FigSuggestion>[];
        final distTags = data['dist-tags'] as Map<String, dynamic>?;
        if (distTags != null) {
          for (final e in distTags.entries) {
            versions.add(FigSuggestion(
              name: e.key,
              description: e.value?.toString(),
            ));
          }
        }
        final vers = data['versions'] as Map<String, dynamic>?;
        if (vers != null) {
          final list = vers.keys.toList()..sort((a, b) => b.compareTo(a));
          versions.addAll(list.map((v) => FigSuggestion(name: v)));
        }
        return versions;
      }

      final results = data is List
          ? data as List
          : (data['results'] as List? ?? <dynamic>[]);
      return results.map<FigSuggestion>((item) {
        final p = item is Map ? item['package'] as Map? : null;
        final name = p?['name']?.toString() ?? '';
        final desc = p?['description']?.toString();
        return FigSuggestion(name: name, description: desc);
      }).toList();
    } catch (_) {
      return <FigSuggestion>[];
    }
  },
);

final mgnlSpec = FigSpec(
  name: "mgnl",
  description:
      "Magnolia CLI is a command line interface (CLI) tool to set up and facilitate light development with Magnolia",
  icon: "https://avatars.githubusercontent.com/u/25686615?s=200&v=4",
  subcommands: [
    FigSubcommand(
      name: ["add-availability"],
      description: "This command makes a component available to a page",
      args: [
        FigArg(
          name: "<[module-id:]path-to-component>",
          description: "The component you want to make available",
        ),
        FigArg(
          name: "<path-to-page[@area]>",
          description: "The page you want to make the component available to",
        ),
      ],
      options: [
        pathOption(
            "The path to the light module that contains the page template"),
        FigOption(
          name: ["-g"],
          description:
              "Add this parameter to autogenerate the component instead of providing plain availability",
        ),
      ],
    ),
    FigSubcommand(
      name: ["create-app"],
      description: "This command creates a content type and an app",
      args: [
        FigArg(
          name: "name",
          description:
              "The name of the new app. The name cannot contain spaces",
        ),
      ],
      options: [
        pathOption(
            "The path to the light module where you want to create the app"),
        prototypeOption("The name of the prototype variant to create the app"),
      ],
    ),
    FigSubcommand(
      name: ["create-block"],
      description: "This command creates a block",
      args: [
        FigArg(
          name: "blockName",
          description:
              "The name of the new block definition. The block name cannot contain spaces",
        ),
      ],
      options: [
        pathOption("The path to the light module to add the new block to"),
        prototypeOption(
            "The name of the prototype variant to create the block"),
      ],
    ),
    FigSubcommand(
      name: ["create-component"],
      description: "This command creates a new component template",
      args: [
        FigArg(
          name: "name",
          description:
              "The name of the new component template. The name cannot contain spaces",
        ),
      ],
      options: [
        pathOption(
            "The path to the light module you want to add the component template to"),
        FigOption(
          name: ["-a", "--available"],
          description: "The page you want to make the component available to",
          args: [
            FigArg(
              name: "<path-to-page[@area]>",
            ),
          ],
        ),
        FigOption(
          name: ["-g", "--autogenerate"],
          description:
              "Add this parameter to autogenerate the component instead of providing plain availability",
          args: [
            FigArg(
              name: "<path-to-page[@area]>",
            ),
          ],
        ),
        prototypeOption(
            "The name of the prototype variant to create the component"),
      ],
    ),
    FigSubcommand(
      name: ["create-content-type"],
      description: "This command creates a content type",
      args: [
        FigArg(
          name: "name",
          description:
              "The name of the new content type. The name cannot contain spaces",
        ),
      ],
      options: [
        FigOption(
          name: ["-a"],
          description:
              "Creates also a new app that references the content type. With the -a option, the command is functionally equivalent to the create-app command",
        ),
        pathOption(
            "The path to the light module where you want to create the content type"),
        prototypeOption(
            "The name of the prototype variant to create the content type"),
      ],
    ),
    FigSubcommand(
      name: ["create-light-module"],
      description:
          "This command creates a new light module in the form of a set of empty light module folders",
      args: [
        FigArg(
          name: "moduleName",
          description:
              "The name of the new light module. Avoid spaces and special characters since this name is used as folder name",
        ),
      ],
      options: [
        pathOption("The path of the parent directory for the new light module"),
        prototypeOption(
            "The name of the prototype variant to create the light module"),
      ],
    ),
    FigSubcommand(
      name: ["create-page"],
      description: "This command creates a new page template",
      args: [
        FigArg(
          name: "templateName",
          description:
              "The name of the new page template. The template name cannot contain spaces",
        ),
      ],
      options: [
        pathOption("The path to the light module to add the new template to"),
        prototypeOption("The name of the prototype variant to create the page"),
      ],
    ),
    FigSubcommand(
      name: ["create-virtual-uri"],
      description:
          "The command creates a virtual URI mapping configuration file (a YAML definition file) in the light module",
      args: [
        FigArg(
          name: "virtualUriName",
          description: "The name of the new URI configuration",
        ),
      ],
      options: [
        pathOption("The path to the light module"),
        FigOption(
          name: ["-f", "--formUri"],
          description:
              "The pattern to be matched in the requested URI. Enclose the <uri> value in quotes",
          args: [
            FigArg(
              name: "uri",
            ),
          ],
        ),
        FigOption(
          name: ["-t", "--toUri"],
          description:
              "A concrete URI that the request is mapped to. Enclose the <prefix:uri> value in quotes",
          args: [
            FigArg(
              name: "<prefix:uri>",
            ),
          ],
        ),
        prototypeOption(
            "The name of the prototype variant to create the mapping"),
      ],
    ),
    FigSubcommand(
      name: ["customize-local-config"],
      description: "Run this command to create a local configuration",
      options: [
        pathOption(
            "The path into which the mgnl-cli-prototypes folder and mgnl-cli.json file are installed"),
      ],
    ),
    FigSubcommand(
      name: ["install"],
      description:
          "Downloads and installs one or more light modules from npm to the light module directory",
      args: [
        FigArg(
          name: "light-module-name",
          description:
              "At least one name of a light module to be downloaded from npm. If you are installing more than one module from the repository, separate the module names with a space",
          isVariadic: true,
          debounce: true,
          generators: [lightModuleGenerator],
        ),
      ],
      options: [
        pathOption("The path to the light-modules folder"),
      ],
    ),
    FigSubcommand(
      name: ["jumpstart"],
      description:
          "This command downloads, unpacks and pre-configures a Magnolia Tomcat server together with a specific webapp",
      options: [
        pathOption(
            "The path to the light modules root folder which is observed for changes"),
        FigOption(
          name: ["-m", "--magnolia-version"],
          description:
              "Use to choose a specific version of the Magnolia webapp. If not provided, the latest stable version of the specified webapp is downloaded",
          args: [
            FigArg(
              name: "version",
            ),
          ],
        ),
        FigOption(
          name: ["-i", "--install-sample-module"],
          description:
              "If provided, a sample light module under the light modules root folder with the given name is created",
          args: [
            FigArg(
              name: "name",
            ),
          ],
        ),
        FigOption(
          name: ["-s", "--snapshot"],
          description:
              "Downloads the latest snapshot development version of the specified webapp",
        ),
        FigOption(
          name: ["-w", "--webapp"],
          description:
              "Use to directly specify which Magnolia webapp you want to install",
          args: [
            FigArg(
              name: "webapp",
              suggestions: [
                FigSuggestion(name: "magnolia-empty-webapp"),
                FigSuggestion(name: "magnolia-community-webapp"),
                FigSuggestion(name: "magnolia-community-demo-webapp"),
                FigSuggestion(name: "magnolia-dx-core-webapp"),
                FigSuggestion(name: "magnolia-dx-core-demo-webapp"),
              ],
            ),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: ["tab-completion"],
      description:
          "Run the command to install or uninstall autocompletion for Magnolia CLI commands",
      args: [
        FigArg(
          name: "command",
          suggestions: [
            FigSuggestion(name: "install"),
            FigSuggestion(name: "uninstall")
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: ["search"],
      description: "Searches for Magnolia-related packages available from npm",
      args: [
        FigArg(
          name: "query",
          generators: [lightModuleGenerator],
          description:
              "The search query sent to the npm's API. The query can contain multiple terms separated with commas and no spaces",
        ),
      ],
    ),
    FigSubcommand(
      name: ["start"],
      description:
          "This command starts up Magnolia and displays the main log file",
      options: [
        pathOption("The path to the apache-tomcat folder"),
        FigOption(
          name: ["-d"],
          description:
              "Does NOT ignore the open files limit check. The files limit check is ignored by default",
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ["--help", "-h"],
      description: "Show help for mgnl",
      isPersistent: true,
    ),
  ],
);
