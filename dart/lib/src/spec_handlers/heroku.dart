// Hand-written handlers migrated from src/heroku/index.ts and shared.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const herokuVersionHandler = 'manual.src_heroku.index.getversioncommand';
const herokuAppGeneratorHandlers = [
  'manual.src_heroku_8.0.0.generator.getappgenerator',
  'manual.src_heroku_8.6.0.generator.getappgenerator',
];

Future<String?> _herokuVersion(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'heroku',
    args: ['--version'],
  ));
  final match =
      RegExp(r'heroku/([0-9]+\.[0-9]+\.[0.9]+)').firstMatch(result.stdout);
  return match?.group(1) ?? '8.0.0';
}

Future<List<FigSuggestion>> _herokuApps(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'heroku',
    args: ['apps', '--all', '--json'],
  ));
  try {
    final apps = jsonDecode(result.stdout);
    if (apps is! List) return const [];
    return apps
        .whereType<Map>()
        .where((app) => app['name'] != null)
        .map((app) => FigSuggestion(
              name: app['name'].toString(),
              description: app['name'].toString(),
              icon: 'https://www.herokucdn.com/favicon.ico',
            ))
        .toList();
  } on FormatException {
    return const [];
  }
}

void registerHerokuHandlers(JsonHandlerRegistry registry) {
  registry.registerVersion(herokuVersionHandler, _herokuVersion);
  for (final id in herokuAppGeneratorHandlers) {
    registry.registerCustom(id, _herokuApps);
  }
}
