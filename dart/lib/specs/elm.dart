// AI-generated from TypeScript source: elm.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';
import 'dart:convert';

/// Elm 包列表生成器（增强版）
final FigGenerator packageList = FigGenerator(
  script: [
    'curl',
    '-sH',
    'accept-encoding: gzip',
    '--compressed',
    'https://package.elm-lang.org/search.json',
  ],
  cache: FigCache(
    ttl: 1000 * 24 * 60 * 60 * 3, // 3 days
    strategy: 'stale-while-revalidate',
  ),
  scriptTimeout: 10000, // 10秒超时
  postProcess: (String output, [List<String>? tokens]) {
    // 检查空输出
    if (output.trim().isEmpty) {
      return <FigSuggestion>[];
    }

    try {
      final dynamic parsed = json.decode(output);

      // 验证数据结构
      if (parsed is! List) {
        print('Expected JSON array but got: ${parsed.runtimeType}');
        return <FigSuggestion>[];
      }

      final List<dynamic> jsonData = parsed;
      final suggestions = <FigSuggestion>[];

      for (final item in jsonData) {
        if (item is Map<String, dynamic>) {
          final name = item['name']?.toString();
          final summary = item['summary']?.toString();

          if (name != null && name.isNotEmpty) {
            suggestions.add(FigSuggestion(
              name: name,
              description: summary ?? '',
              icon: '🌳',
              priority: 50,
            ));
          }
        }
      }

      return suggestions;
    } on FormatException catch (e) {
      print('JSON parsing error: $e');
      return <FigSuggestion>[];
    } catch (e) {
      print('Unexpected error: $e');
      return <FigSuggestion>[];
    }
  },
);

/// Completion spec for `elm` CLI
final FigSpec elmSpec = FigSpec(
    name: 'elm',
    description: 'Fig spec for the Elm language cli',
    subcommands: [
      Subcommand(
          name: 'init',
          icon:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/1200px-Elm_logo.svg.png',
          description: 'Initialize a new Elm project',
          options: [
            Option(name: '--help', description: 'Show help for elm init')
          ]),
      Subcommand(
          name: 'repl',
          icon:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/1200px-Elm_logo.svg.png',
          description: 'Start an Elm repl',
          options: [
            Option(
                name: '--no-colors',
                description: 'Turn off colors in the repl'),
            Option(
                name: '--interpreter',
                description:
                    'Path to an alternate JS interpreter, such as Node or Deno',
                args: [Arg(name: 'interpreter')]),
            Option(name: '--help', description: 'Show help for elm repl')
          ]),
      Subcommand(
          name: 'reactor',
          description: 'Start an Elm development server',
          options: [
            Option(
                name: '--port',
                description: 'The port to access the development server on',
                args: [Arg(name: 'port', description: 'The port number')]),
            Option(name: '--help', description: 'Show help for elm reactor')
          ]),
      Subcommand(
          name: 'install',
          icon:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/1200px-Elm_logo.svg.png',
          description: 'Install an Elm dependency',
          args: [
            Arg(
                name: 'package',
                description: 'The name of the package to install',
                generators: packageList)
          ],
          options: [
            Option(name: '--help', description: 'Show help for elm install')
          ]),
      Subcommand(name: 'make', description: 'Build your Elm code', args: [
        Arg(
            template: 'filepaths',
            name: 'source files',
            description: 'The source files to compile')
      ], options: [
        Option(name: '--help', description: 'Show help for elm make'),
        Option(name: '--debug', description: 'Compile in debug mode'),
        Option(name: '--optimize', description: 'Compile in production mode'),
        Option(
            name: '--output',
            description: 'Where to output the compiled code',
            args: [
              Arg(
                  name: 'output file',
                  description: 'Name and location of output')
            ]),
        Option(
            name: '--docs',
            description: 'Generate a JSON file of documentation',
            args: [
              Arg(
                  name: 'output json',
                  description: 'Name and location of output')
            ])
      ]),
      Subcommand(
          name: 'bump',
          description: 'Bump the version of your package',
          options: [
            Option(name: '--help', description: 'Show help for elm bump')
          ]),
      Subcommand(
          name: 'diff',
          description: 'See what changed between versions of a package',
          options: [
            Option(name: '--help', description: 'Show help for elm diff')
          ],
          args: [
            Arg(name: 'package', isOptional: true),
            Arg(name: 'version', isOptional: true, isVariadic: true)
          ]),
      Subcommand(
          name: 'publish',
          icon:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/1200px-Elm_logo.svg.png',
          description: 'Publish your package',
          options: [
            Option(name: '--help', description: 'Show help for elm publish')
          ])
    ],
    options: [
      Option(name: '--help', description: 'Show help for elm')
    ]);
