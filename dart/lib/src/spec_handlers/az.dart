// Hand-written version resolver migrated from src/az/index.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const azVersionHandler = 'manual.src_az.index.getversioncommand';

/// Reads the Azure CLI version in the same way as the source Fig spec.
Future<String?> _azVersion(ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'az',
    args: ['version', '-o', 'json'],
  ));
  if (result.status != 0 || result.stdout.trim().isEmpty) return null;
  try {
    final value = jsonDecode(result.stdout);
    return value is Map && value['azure-cli'] != null
        ? value['azure-cli'].toString()
        : null;
  } on FormatException {
    return null;
  }
}

void registerAzHandlers(JsonHandlerRegistry registry) {
  registry.registerVersion(azVersionHandler, _azVersion);
}
