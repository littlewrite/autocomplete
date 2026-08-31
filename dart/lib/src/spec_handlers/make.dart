// Hand-written dynamic handlers migrated from src/make.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const makeListTargetsCustomHandler =
    'manual.src_make.definition.listtargets.custom';

const _makeIcon = '🎯';
const _makeTargetDescription = 'Make target';

/// Dot targets that describe the makefile itself rather than real build
/// targets.
const _specialTargets = <String>{
  '.PHONY',
  '.SUFFIXES',
  '.DEFAULT',
  '.PRECIOUS',
  '.INTERMEDIATE',
  '.SECONDARY',
  '.SECONDEXPANSION',
  '.DELETE_ON_ERROR',
  '.IGNORE',
  '.LOW_RESOLUTION_TIME',
  '.SILENT',
  '.EXPORT_ALL_VARIABLES',
  '.NOTPARALLEL',
  '.ONESHELL',
  '.POSIX',
};

/// Matches a target line together with any preceding comment lines and an
/// optional inline `# comment`. Group 1 is the leading comment block, group 2
/// the target name, and group 3 the inline comment.
final _targetPattern = RegExp(
  r'((?:^#.*\n)*)(?:^\.[A-Z_]+:.*\n)*(^\S*?):.*?(?:\s#+[ \t]*(.+))?$',
  multiLine: true,
);

/// A `$(VARIABLE)` reference inside a target name.
final _variableReferencePattern = RegExp(r'\$\(.+?\)');

/// Strips the leading `#` and following whitespace from each line of a comment
/// block.
final _leadingCommentHashPattern = RegExp(r'^#+\s*', multiLine: true);

/// Lists Make targets by parsing `make -qp` output and a local Makefile.
///
/// The `make -qp` run provides plain target names, which are then enriched
/// with descriptions parsed from the comment block above each target and from
/// an inline `# comment` on the target line itself.
Future<List<FigSuggestion>> _listTargets(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];

  final targets = <String, FigSuggestion>{};

  final makeResult = await executeCommand(ExecuteCommandInput(
    command: 'bash',
    args: [
      '-c',
      r"make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' | sort -u",
    ],
  ));

  for (final target in makeResult.stdout.split('\n')) {
    if (target == 'Makefile') continue;
    targets[target] = FigSuggestion(
      name: target.trim(),
      description: _makeTargetDescription,
      icon: _makeIcon,
      priority: 80,
    );
  }

  final catResult = await executeCommand(
    ExecuteCommandInput(command: 'cat', args: ['Makefile', 'makefile']),
  );

  for (final match in _targetPattern.allMatches(catResult.stdout)) {
    final leadingComment = match.group(1) ?? '';
    final target = match.group(2) ?? '';
    final inlineComment = match.group(3);

    if (_specialTargets.contains(target)) continue;
    if (_variableReferencePattern.hasMatch(target)) continue;

    final name = target.trim();

    final String description;
    if (inlineComment != null && inlineComment.isNotEmpty) {
      description = inlineComment.trim();
    } else if (leadingComment.isNotEmpty) {
      description =
          leadingComment.replaceAll(_leadingCommentHashPattern, '').trim();
    } else {
      description = _makeTargetDescription;
    }

    targets[name] = FigSuggestion(
      name: name,
      description: description,
      icon: _makeIcon,
      priority: 80,
    );
  }

  return targets.values.toList();
}

/// Registers the make generators referenced by the shipped make JSON.
void registerMakeHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(makeListTargetsCustomHandler, _listTargets);
}
