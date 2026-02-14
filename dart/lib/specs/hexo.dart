// AI-generated from TypeScript source: hexo.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator draftGenerator = FigGenerator(
  script: ["bash", "-c", "hexo list post | grep -E ^Draft"],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split("\n").map((file) {
      final title = file
        .replaceAll(RegExp(r'^.*   *_drafts\/'), "")
        .replaceAll(RegExp(r'  *(.*)$'), "")
        .replaceAll(RegExp(r'.md$'), "");
      return FigSuggestion(
        name: title,
        description: "Draft for " + title,
        icon: "fig://icon?type=md",
      );
    }).toList();
  },
);

final FigSpec hexoSpec = FigSpec(
  name: "hexo",
  description: "Command line interface for Hexo, a static site generator",
  subcommands: [
    FigSubcommand(
      name: "config",
      description: "Get or set configurations",
      args: [
        FigArg(
          name: "name",
          isOptional: true,
          description:
            "Setting name. Leave it blank if you want to show all configurations",
        ),
        FigArg(
          name: "value",
          isOptional: true,
          description:
            "New value of a setting. Leave it blank if you just want to show a single configuration",
        ),
      ],
    ),
    FigSubcommand(
      name: "help",
      description: "Displays a help for each command",
      args: [FigArg(
        name: "command",
        description: "The command to display help for",
        isOptional: true,
        template: "help",
      )],
    ),
    FigSubcommand(
      name: "init",
      description: "Create a new Hexo folder",
      options: [
        FigOption(
          name: "--no-clone",
          description: "Copy files instead of cloning from GitHub",
        ),
        FigOption( name: "--no-install", description: "Skip npm install" ),
      ],
      args: [FigArg(
        name: "destination",
        description:
          "Folder path. Initialize in current folder if not specified",
        isOptional: true,
        template: "folders",
      )],
    ),
    FigSubcommand(
      name: "new",
      description: "Create a new article",
      options: [
        FigOption(
          name: ["-p", "--path"],
          description: "Post path. Customize the path of the post",
          args: [FigArg(
            name: "path",
            description: "The path of the post",
            template: "filepaths",
          )],
        ),
        FigOption(
          name: ["-r", "--replace"],
          description: "Replace the current post if it existed",
        ),
        FigOption(
          name: ["-s", "--slug"],
          description: "Post slug. Customize the URL of the post",
          args: [FigArg(
            name: "slug",
            description: "The slug of the post",
          )],
        ),
      ],
      args: [
        FigArg(
          name: "layout",
          description: "The layout to use",
          isOptional: true,
          suggestions: ["post", "page", "draft"],
        ),
        FigArg(
          name: "title",
          description: "The title of the post",
        ),
      ],
    ),
    FigSubcommand(
      name: "generate",
      description: "Generate static files",
      options: [
        FigOption(
          name: ["-d", "--deploy"],
          description: "Deploy after generation finishes",
        ),
        FigOption(
          name: ["-f", "--force"],
          description: "Force regenerate",
        ),
        FigOption(
          name: ["-w", "--watch"],
          description: "Watch file changes",
        ),
        FigOption(
          name: ["-b", "--bail"],
          description:
            "Raise an error if any unhandled exception is thrown during generation",
        ),
        FigOption(
          name: ["-c", "--concurrency"],
          description:
            "Maximum number of files to be generated in parallel. Default is infinity",
          args: [FigArg(
            name: "concurrency",
            description: "The number of files to generate in parallel",
            isOptional: true,
          )],
        ),
      ],
    ),
    FigSubcommand(
      name: "publish",
      description: "Publish a draft",
      args: [
        FigArg(
          name: "layout",
          description: "The layout to use",
          isOptional: true,
          suggestions: ["post", "page", "draft"],
        ),
        FigArg(
          name: "filename",
          description: "The name of the post",
          generators: [draftGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: "server",
      description:
        "Start a local server. By default, this is at http://localhost:4000/",
      options: [
        FigOption(
          name: ["-i", "--ip"],
          description:
            "Override the default server IP. Bind to all IP address by default",
          args: [FigArg(
            name: "ip",
            description: "The IP address to bind to",
          )],
        ),
        FigOption(
          name: ["-p", "--port"],
          description: "Override default port",
          args: [FigArg(
            name: "port",
            description: "Only serve static files",
          )],
        ),
        FigOption(
          name: ["-s", "--static"],
          description: "Serve static files from the given directory",
        ),
        FigOption(
          name: ["-l", "--log"],
          description: "Enable logger. Override logger format",
          args: [FigArg(
            name: "format",
            isOptional: true,
            description:
              "The morgan logger format. Can be predefined or customized",
            suggestions: ["combined", "common", "tiny", "dev", "short"],
          )],
        ),
        FigOption(
          name: ["-o", "--open"],
          description:
            "Immediately open the server url in your default web browser",
        ),
      ],
    ),
    FigSubcommand(
      name: "deploy",
      description: "Deploy your website",
      options: [
        FigOption(
          name: "--setup",
          description: "Setup without deployment",
        ),
        FigOption(
          name: ["-g", "--generate"],
          description: "Generate static files before deploying",
        ),
      ],
    ),
    FigSubcommand(
      name: "render",
      description:
        "Render files with renderer plugins (e.g. Markdown) and save them at the specified path",
      options: [
        FigOption(
          name: "--engine",
          description: "Specify render engine",
        ),
        FigOption(
          name: ["-o", "--output"],
          description:
            "Output destination. Result will be printed in the terminal if the output destination is not set",
          args: [FigArg(
            name: "output directory",
            description: "The path to output directory",
            template: "folders",
          )],
        ),
        FigOption(
          name: "--pretty",
          description: "Prettify JSON output",
        ),
      ],
      args: [FigArg(
        name: "file",
        description: "The file to render",
        template: "filepaths",
        isVariadic: true,
      )],
    ),
    FigSubcommand(
      name: "migrate",
      description: "Migrate content from other blog systems",
      args: [FigArg(
        name: "type",
        description:
          "The type of migration. check https://hexo.io/docs/migration for more details",
      )],
    ),
    FigSubcommand(
      name: "clean",
      description:
        "Clean the cache file (`db.json`) and generated files (`public`)",
    ),
    FigSubcommand(
      name: "list",
      description: "List all routes",
      args: [FigArg(
        name: "type",
        description: "The type of routes to list",
        suggestions: ["post", "route", "page", "tag", "category"],
      )],
    ),
    FigSubcommand(
      name: "version",
      description: "Display version information",
    ),
  ],
  options: [
    FigOption(
      name: "--config",
      description:
        "Uses a custom config file (instead of `_config.yml`). Also accepts a comma-separated list (no spaces) of JSON or YAML config files that will combine the files into a single `_multiconfig.yml`",
      isPersistent: true,
      args: [FigArg(
        name: "config file",
        template: "filepaths",
      )],
    ),
    FigOption(
      name: "--safe",
      description: "Disable loading plugins and scripts",
      isPersistent: true,
    ),
    FigOption(
      name: "--debug",
      description: "Log verbose messages to the terminal and to `debug.log`",
      isPersistent: true,
    ),
    FigOption(
      name: "--silent",
      description: "Silence output to the terminal",
      isPersistent: true,
    ),
    FigOption(
      name: "--draft",
      description:
        "Display draft posts (stored in the `source/_drafts` folder)",
      isPersistent: true,
    ),
    FigOption(
      name: "--cwd",
      description: "Customize the path of current working directory",
      isPersistent: true,
      args: [FigArg(
        name: "directory",
        template: "folders",
      )],
    ),
  ],
);
