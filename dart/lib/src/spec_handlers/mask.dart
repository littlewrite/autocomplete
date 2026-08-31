// Hand-written dynamic handlers migrated from src/mask.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// Root `generateSpec` from src/mask.ts.
const maskGenerateSpecHandler = 'manual.src_mask.spec.generatespec';

/// Every `## heading` line in [output] becomes a subcommand, mirroring the
/// source's `out.match(/##.*/g)` then slicing off the leading `## ` marker.
List<FigSubcommand> _headingSubcommands(String output) {
  final result = <FigSubcommand>[];
  for (final match in RegExp(r'##.*').allMatches(output)) {
    final heading = match.group(0);
    if (heading == null) continue;
    result.add(FigSubcommand(name: heading.substring(3)));
  }
  return result;
}

/// Root `generateSpec` from src/mask.ts: mask tasks are defined by a
/// `maskfile.md` in the current directory, or by the file named after a
/// `--maskfile` flag when one is present. Returns null when no maskfile is
/// available (empty output).
Future<FigSpec?> _maskGenerateSpec(
  List<String> tokens,
  ExecuteCommandFunction executeCommand,
) async {
  final maskfileIdx = tokens.indexOf('--maskfile');
  final String maskfile;
  if (maskfileIdx < 0 || maskfileIdx + 3 > tokens.length) {
    maskfile = 'maskfile.md';
  } else {
    maskfile = tokens[maskfileIdx + 1];
  }
  final result = await executeCommand(ExecuteCommandInput(
    command: 'cat',
    args: [maskfile],
  ));
  if (result.stdout.isEmpty) return null;
  return FigSpec(
    name: 'mask',
    subcommands: _headingSubcommands(result.stdout),
  );
}

/// Registers the dynamic handler referenced by the shipped mask JSON.
void registerMaskHandlers(JsonHandlerRegistry registry) {
  registry.registerGenerateSpec(maskGenerateSpecHandler, _maskGenerateSpec);
}
