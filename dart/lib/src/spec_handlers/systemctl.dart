// Hand-written dynamic handlers migrated from src/systemctl.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const systemctlUnitCustomHandler =
    'manual.src_systemctl.definition.unitgenerator.custom';
const systemctlUnitFileCustomHandler =
    'manual.src_systemctl.definition.unitfilegenerator.custom';

/// The shared systemctl query arguments for either generator, honoring a
/// `--user` flag already on the command line.
List<String> _unitCommand(String action, bool user) => [
      action,
      '-o',
      'json',
      '--all',
      '--full',
      if (user) '--user',
    ];

String _activeEmoji(String active) {
  switch (active) {
    case 'active':
      return '✅';
    case 'reloading':
      return '🔄';
    case 'inactive':
      return '🛑';
    case 'failed':
      return '❌';
    case 'activating':
    case 'deactivating':
      return '⏳';
    default:
      return '❓';
  }
}

String _capitalize(String value) =>
    value.isEmpty ? '' : value[0].toUpperCase() + value.substring(1);

int _byName(FigSuggestion a, FigSuggestion b) =>
    (a.nameSingle ?? '').compareTo(b.nameSingle ?? '');

/// `systemctl list-units` JSON mapped to status-aware unit suggestions.
Future<List<FigSuggestion>> _units(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final user = tokens.contains('--user');
  final result = await executeCommand(ExecuteCommandInput(
    command: 'systemctl',
    args: _unitCommand('list-units', user),
  ));
  if (result.status != 0) return const [];
  final List<dynamic> decoded;
  try {
    final value = jsonDecode(result.stdout);
    if (value is! List) return const [];
    decoded = value;
  } on FormatException {
    return const [];
  }
  final suggestions = <FigSuggestion>[];
  for (final item in decoded) {
    if (item is! Map) continue;
    final active = item['active']?.toString() ?? '';
    final name = item['unit']?.toString() ?? '';
    if (name.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: name,
      description: '${_capitalize(active)} - ${item['description'] ?? ''}',
      icon: _activeEmoji(active),
    ));
  }
  suggestions.sort(_byName);
  return suggestions;
}

/// `systemctl list-unit-files` JSON mapped to state-aware unit-file
/// suggestions.
Future<List<FigSuggestion>> _unitFiles(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final user = tokens.contains('--user');
  final result = await executeCommand(ExecuteCommandInput(
    command: 'systemctl',
    args: _unitCommand('list-unit-files', user),
  ));
  if (result.status != 0) return const [];
  final List<dynamic> decoded;
  try {
    final value = jsonDecode(result.stdout);
    if (value is! List) return const [];
    decoded = value;
  } on FormatException {
    return const [];
  }
  final suggestions = <FigSuggestion>[];
  for (final item in decoded) {
    if (item is! Map) continue;
    final state = item['state']?.toString();
    final name = item['unit_file']?.toString() ?? '';
    if (name.isEmpty) continue;
    suggestions.add(FigSuggestion(
      name: name,
      description: state == null ? '' : _capitalize(state),
      icon: state == null
          ? '❓'
          : state == 'enabled'
              ? '✅'
              : state == 'disabled'
                  ? '🛑'
                  : '❓',
    ));
  }
  suggestions.sort(_byName);
  return suggestions;
}

/// Registers the systemctl generators referenced by the shipped systemctl JSON.
void registerSystemctlHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(
    systemctlUnitCustomHandler,
    (tokens, executeCommand, context) => _units(tokens, executeCommand),
  );
  registry.registerCustom(
    systemctlUnitFileCustomHandler,
    (tokens, executeCommand, context) => _unitFiles(tokens, executeCommand),
  );
}
