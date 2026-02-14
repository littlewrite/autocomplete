// AI-generated from TypeScript source: wd.ts
import 'dart:io';
import 'package:autocomplete/src/spec.dart';

final FigGenerator warpPointsGenerator = FigGenerator(
  script: (List<String> tokens) {
    return ['cat', '${Platform.environment['HOME']}/.warprc'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final RegExp exp = RegExp(r'^(\w+)', multiLine: true);
    return exp
        .allMatches(out)
        .map((m) => FigSuggestion(
              name: m.group(1)!,
              description: 'Warp point',
              icon: '🔘',
              priority: 76,
            ))
        .toList();
  },
);

final FigSpec wdSpec = FigSpec(
  name: 'wd',
  description: 'Warp to directories without using cd',
  args: [
    FigArg(
      name: 'point',
      description: 'Warp point to the specified directory',
      generators: [warpPointsGenerator],
    ),
    FigArg(
      name: 'path',
      description: 'Appended path',
      isOptional: true,
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'add',
      description: 'Adds the current working directory to your warp points',
      args: [
        FigArg(
          name: 'point',
          description: 'Name of the warp point to be created',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: 'rm',
      description: 'Removes the given warp point',
      args: [
        FigArg(
          name: 'point',
          description: 'Name of the warp point to be removed',
          isOptional: true,
          generators: [warpPointsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'show',
      description: 'Print path to given warp point',
      args: [
        FigArg(
          name: 'point',
          description: 'Name of the warp point',
          isOptional: true,
          generators: [warpPointsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'list',
      description: 'Print all stored warp points',
    ),
    FigSubcommand(
      name: 'ls',
      description: 'Show files from given warp point (ls)',
      args: [
        FigArg(
          name: 'point',
          description: 'Name of the warp point',
          generators: [warpPointsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'path',
      description: 'Show the path to given warp point (pwd)',
      args: [
        FigArg(
          name: 'point',
          description: 'Name of the warp point',
          generators: [warpPointsGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'clean',
      description:
          'Remove points warping to nonexistent directories (will prompt unless --force is used)',
    ),
    FigSubcommand(
      name: 'help',
      description: 'Shows help for wd',
    ),
  ],
  options: [
    FigOption(
      name: ['-v', '--version'],
      description: 'Print version',
    ),
    FigOption(
      name: ['-d', '--debug'],
      description: 'Exit after execution with exit codes (for testing)',
    ),
    FigOption(
      name: ['-c', '--config'],
      description: 'Specify config file (default ~/.warprc)',
      args: [
        FigArg(
          name: 'file',
        ),
      ],
    ),
    FigOption(
      name: ['-q', '--quiet'],
      description: 'Suppress all output',
    ),
    FigOption(
      name: ['-f', '--force'],
      description: 'Allows overwriting without warning (for add & clean)',
    ),
  ],
);
