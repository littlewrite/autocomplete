// Auto-generated from TypeScript source: herd.ts
// Generated at: 2026-02-17
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

const icon = 'asset://icons/herd.png';

final List<Option> baseOptions = [
  Option(
      name: ['--help', '-h'],
      description:
          'Display help for the given command. When no command is given display help for the list command'),
  Option(
      name: ['--version', '-V'],
      description: 'Display this application version'),
  Option(name: ['--quiet', '-q'], description: 'Do not output any message'),
  Option(
      name: ['--verbose', '-vv', '-vvv', '-v'],
      description:
          'Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug'),
  Option(name: '--ansi', description: 'Force ANSI output'),
  Option(name: '--no-ansi', description: 'Disable ANSI output'),
  Option(
      name: ['--no-interaction', '-n'],
      description: 'Do not ask any interactive question')
];

/// Completion spec for `herd` CLI
final FigSpec herdSpec = FigSpec(
    name: 'herd',
    description:
        'Herd is a blazing fast, native Laravel and PHP development environment for macOS. It provides everything that you need to get started with Laravel development',
    icon: icon,
    subcommands: [
      Subcommand(
          icon: icon,
          name: 'completion',
          description: 'Dump the shell completion script',
          args: [
            Arg(
                name: 'shell',
                description:
                    'The shell type (e.g. "bash"), the value of the "\$SHELL" env var will be used if this is not given',
                suggestions: [
                  FigSuggestion(name: 'bash'),
                  FigSuggestion(name: 'fish'),
                  FigSuggestion(name: 'powershell'),
                  FigSuggestion(name: 'zsh')
                ],
                isOptional: true)
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--debug",
//           description: "Tail the completion debug log",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'composer',
          description:
              'Proxy Composer commands with isolated site\'s PHP executable',
          loadSpec: 'composer'),
      Subcommand(
          icon: icon,
          name: 'coverage',
          description:
              'Proxy PHP commands with isolated sith Xdebug code coverage enabled',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'debug',
          description:
              'Proxy PHP commands with isolated site\'s PHP executable and debug.ini loaded',
          loadSpec: 'php'),
      Subcommand(
          icon: icon,
          name: 'directory-listing',
          description:
              'Determine directory-listing behavior. Default is off, which means a 404 will display',
          args: [
            Arg(
                name: 'status',
                description:
                    'On or off. (default=off) will show a 404 page; [on] will display a listing if project folder exists but requested URI not found',
                suggestions: [
                  FigSuggestion(name: 'on'),
                  FigSuggestion(name: 'off')
                ],
                isOptional: true)
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'edit',
          description: 'Open the site in your favorite IDE',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--path",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'fetch-share-url',
          description: 'Get the URL to the current share tunnel for Expose',
          args: [Arg(name: 'domain', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'forget',
          description:
              'Remove the current working (or specified) directory from Herd\'s list of paths',
          args: [Arg(name: 'path', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'help',
          description: 'Display help for a command',
          args: [
            Arg(
                name: 'command_name',
                description: 'The command name [default: "help"]',
                isOptional: true,
                generators: Generator(
                    script: ['herd', 'list', '--raw'],
                    // TS_UNCONVERTED_START (postProcess)
// (out) =>
//             out
//               .trim()
//               .split("\n")
//               .filter((line) => line.trim())
//               .map((line) => {
//                 const [command, ...descriptionParts] = line
//                   .trim()
//                   .split(/\s{2,}/);
//                 return {
//                   name: command,
//                   description: descriptionParts.join(" "),
//                   icon: icon,
//                 };
// TS_UNCONVERTED_END
                    postProcess: null),
                filterStrategy: 'fuzzy')
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--format",
//           description:
//             'The output format (txt, xml, json, or md) [default: "txt"]',
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'init',
          description:
              'Start the services defined in the Herd manifest file, and apply the configuration',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--fresh",
//           description:
//             'The output format (txt, xml, json, or md) [default: "txt"]',
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'isolate',
          description:
              'Change the version of PHP used by Herd to serve the current working directory',
          args: [
            Arg(
                name: 'phpVersion',
                description: 'The PHP version you want to use; e.g 8.1')
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to isolate (e.g. if the site isn't linked as its directory name)",
//         },
//         {
//           name: "--silent",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'isolate-node',
          description:
              'Change the version of Node used by the CLI for the current working directory',
          args: [
            Arg(
                name: 'nodeVersion',
                description: 'The Node version you want to use; e.g 21')
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to isolate (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'isolated',
          description: 'List all sites using isolated versions of PHP',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'isolated-node',
          description: 'List all sites using isolated versions of Nodes',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'link',
          description: 'Link the current working directory to Herd',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--secure",
//           description: "Link the site with a trusted TLS certificate",
//         },
//         {
//           name: "--isolate",
//           description:
//             "Isolate the site to the PHP version specified, for example 8.3",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null,
          args: [Arg(name: 'name', isOptional: true)]),
      Subcommand(
          name: 'links',
          description: 'Display all of the registered Herd links',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          name: 'list',
          description: 'List commands',
          args: [
            Arg(
                name: 'namespace',
                description: 'The namespace name',
                isOptional: true)
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--raw",
//           description: "To output raw command list",
//         },
//         {
//           name: "--format",
//           description:
//             'The output format (txt, xml, json, or md) [default: "txt"]',
//         },
//         {
//           name: "--short",
//           description: "To skip describing commands' arguments",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'log',
          description: 'Tail log file',
          args: [Arg(name: 'key')],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: ["--lines", "-n"],
//         },
//         {
//           name: ["--follow", "-f"],
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'logs',
          description: 'Show the log viewer UI for the given site',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--sites",
//           description:
//             "Specify the site to tinker with (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'loopback',
          description: 'Get or set the loopback address used for Herd sites',
          args: [Arg(name: 'loopback', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'open',
          description:
              'Open the site for the current (or specified) directory in your browser',
          args: [Arg(name: 'domain', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'park',
          description:
              'Register the current working (or specified) directory with Herd',
          args: [Arg(name: 'path', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'parked',
          description: 'Display all the current sites within parked paths',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--json",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'paths',
          description: 'Get all of the paths registered with Herd',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'php',
          description:
              'Proxy PHP commands with isolated site\'s PHP executable',
          args: [Arg(name: 'command')],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to use to get the PHP version (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'proxies',
          description: 'Display all of the proxy sites',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'proxy',
          description:
              'Create an Nginx proxy site for the specified host. Useful for Reverb, Docker, etc',
          args: [Arg(name: 'domain'), Arg(name: 'host')],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--secure",
//           description: "Create a proxy with a trusted TLS certificate",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'restart',
          description: 'Restart the Herd services',
          args: [Arg(name: 'service', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'secure',
          description: 'Secure the given domain with a trusted TLS certificate',
          args: [Arg(name: 'domain', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--expireIn",
//           description:
//             'The amount of days the self signed certificate is valid for. Default is set to "368" [default: 368]',
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'secured',
          description: 'Secure the given domain with a trusted TLS certificate',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--expiring",
//           description:
//             "Limits the results to only sites expiring within the next 60 days",
//         },
//         {
//           name: "--days",
//           description:
//             "To be used with --expiring. Limits the results to only sites expiring within the next X days. Default is set to 60. [default: 60]",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'share',
          description: 'Share the current site via an Expose tunnel',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'site-information',
          description: 'Display information about the specified site',
          args: [Arg(name: 'path', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'start',
          description: 'Start the Herd services',
          args: [Arg(name: 'service', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'stop',
          description: 'Stop the Herd services',
          args: [Arg(name: 'service', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'tinker',
          description: 'Run tinker/Tinkerwell',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to tinker with (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'tld',
          description: '[domain] Get or set the TLD used for Herd sites',
          args: [Arg(name: 'tld', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'unisolate',
          description:
              'Stop customizing the version of PHP used by Herd to serve the current working directory',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to un-isolate (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'unisolate-node',
          description:
              'Stop customizing the version of Node used the CLI for the current working directory',
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--site",
//           description:
//             "Specify the site to un-isolate (e.g. if the site isn't linked as its directory name)",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'unlink',
          description: 'Remove the specified Herd link',
          args: [Arg(name: 'name', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'unproxy',
          description: 'Delete an Nginx proxy config',
          args: [Arg(name: 'domain', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'unsecure',
          description:
              'Stop serving the given domain over HTTPS and remove the trusted TLS certificate',
          args: [Arg(name: 'domain', isOptional: true)],
          // TS_UNCONVERTED_START (options)
// combineOptions([
//         {
//           name: "--all",
//         },
//         {
//           name: "--silent",
//         },
//       ])
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'use',
          description: 'Change the version of PHP used by Herd',
          args: [
            Arg(
                name: 'phpVersion',
                description: 'The PHP version you want to use; e.g. 8.3',
                isOptional: true)
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'which',
          description:
              'Display which Herd driver serves the current working directory',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'which-php',
          description: 'Get the PHP executable path for a given site',
          args: [
            Arg(
                name: 'site',
                description: 'The site to get the PHP executable path for',
                isOptional: true)
          ],
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null),
      Subcommand(
          icon: icon,
          name: 'init:fresh',
          description: 'Initialize a Herd manifest file',
          // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
          options: null)
    ],
    // TS_UNCONVERTED_START (options)
// combineOptions()
// TS_UNCONVERTED_END
    options: null);
