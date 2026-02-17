// AI-generated from TypeScript source: src/k9s.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator namespaces = FigGenerator(
  script: ["kubectl", "get", "namespaces"],
  postProcess: (String out, [List<String>? tokens]) {
    return out
        .split("\n")
        .skip(1)
        .map((line) {
          final parts = line.split(" ");
          if (parts.isEmpty) return null;
          return FigSuggestion(
            name: parts.first,
            description: "Kubernetes namespace",
          );
        })
        .whereType<FigSuggestion>()
        .toList();
  },
);

final FigSpec k9sSpec = FigSpec(
  name: "k9s",
  description:
      "K9s is a terminal based UI to interact with your Kubernetes clusters",
  subcommands: [
    FigSubcommand(
      name: "help",
      description: "Help about any command",
      args: [
        FigArg(
          name: "command",
          isOptional: true,
          template: ["help"],
        ),
      ],
    ),
    FigSubcommand(
      name: "info",
      description: "Print configuration info",
      options: [
        FigOption(
          name: ["-h", "--help"],
          description: "Help for info",
        ),
      ],
    ),
    FigSubcommand(
      name: "version",
      description: "Print version/build info",
      options: [
        FigOption(
          name: ["-h", "--help"],
          description: "Help for version",
        ),
        FigOption(
          name: ["-s", "--short"],
          description: "Prints K9s version info in short format",
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ["-A", "--all-namespaces"],
      description: "Launch K9s in all namespaces",
    ),
    FigOption(
      name: "--as",
      description: "Username to impersonate for the operation",
      args: [
        FigArg(
          name: "string",
          description: "The username you want to impersonate",
        ),
      ],
    ),
    FigOption(
      name: "--as-group",
      description: "Group to impersonate for the operation",
      args: [
        FigArg(
          name: "stringArray",
          description: "The group you want to impersonate",
        ),
      ],
    ),
    FigOption(
      name: "--certificate-authority",
      description: "Path to a cert file for the certificate authority",
      args: [
        FigArg(
          name: "string",
          description: "The path to a cert file",
          template: ["filepaths"],
        ),
      ],
    ),
    FigOption(
      name: "--client-key",
      description: "Path to a client key file for TLS",
      args: [
        FigArg(
          name: "string",
          description: "The path to a client key file",
          template: ["filepaths"],
        ),
      ],
    ),
    FigOption(
      name: ["-c", "--command"],
      description:
          "Overrides the default resource to load when the application launches",
      args: [
        FigArg(
          name: "string",
          description: "The command you want to execute",
        ),
      ],
    ),
    FigOption(
      name: "--context",
      description: "The name of the kubeconfig context to use",
      args: [
        FigArg(
          name: "string",
          description: "The name of the kubeconfig context",
        ),
      ],
    ),
    FigOption(
      name: "--crumbsless",
      description: "Turn K9s crumbs off",
    ),
    FigOption(
      name: "--headless",
      description: "Turn K9s header off",
    ),
    FigOption(
      name: ["-h", "--help"],
      description: "Show help for k9s",
    ),
    FigOption(
      name: "--insecure-skip-tls-verify",
      description:
          "If true, the server's caCertFile will not be checked for validity",
    ),
    FigOption(
      name: "--kubeconfig",
      description: "Path to the kubeconfig file to use for CLI requests",
      args: [
        FigArg(
          name: "string",
          description: "The path to the kubeconfig file",
          template: ["filepaths"],
        ),
      ],
    ),
    FigOption(
      name: "--logFile",
      description: "Specify the log file",
      args: [
        FigArg(
          name: "string",
          description: "The path of the log file",
          template: ["filepaths"],
          suggestCurrentToken: true,
        ),
      ],
    ),
    FigOption(
      name: ["-l", "--logLevel"],
      description:
          "Specify a log level (info, warn, debug, trace, error) (default 'info')",
      args: [
        FigArg(
          name: "string",
          description: "The log level",
          defaultValue: "info",
          suggestions: ["info", "warn", "debug", "trace", "error"],
        ),
      ],
    ),
    FigOption(
      name: "--logoless",
      description: "Turn K9s logo off",
    ),
    FigOption(
      name: ["-n", "--namespace"],
      description: "If present, the namespace scope for this CLI request",
      args: [
        FigArg(
          name: "string",
          description: "The namespace",
          generators: [namespaces],
          debounce: true,
        ),
      ],
    ),
    FigOption(
      name: "--readonly",
      description:
          "Sets readOnly mode by overriding readOnly configuration setting",
    ),
    FigOption(
      name: ["-r", "--refresh"],
      description:
          "Specify the default refresh rate as an integer (sec) (default 2)",
      args: [
        FigArg(
          name: "int",
          description: "The refresh rate (sec)",
          defaultValue: "2",
        ),
      ],
    ),
    FigOption(
      name: "--request-timeout",
      description:
          "The length of time to wait before giving up on a single server request",
      args: [
        FigArg(
          name: "string",
          description: "The length of time to wait",
        ),
      ],
    ),
    FigOption(
      name: "--screen-dump-dir",
      description: "Sets a path to a dir for a screen dumps",
      args: [
        FigArg(
          name: "string",
          description: "The path to a dir for a screen dumps",
        ),
      ],
    ),
    FigOption(
      name: "--token",
      description: "Bearer token for authentication to the API server",
      args: [
        FigArg(
          name: "string",
          description: "The Bearer token",
        ),
      ],
    ),
    FigOption(
      name: "--user",
      description: "The name of the kubeconfig user to use",
      args: [
        FigArg(
          name: "string",
          description: "The name of the kubeconfig user",
        ),
      ],
    ),
    FigOption(
      name: "--write",
      description:
          "Sets write mode by overriding the readOnly configuration setting",
    ),
  ],
);
