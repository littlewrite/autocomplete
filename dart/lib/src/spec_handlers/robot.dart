// Hand-written dynamic handlers migrated from src/robot.ts.

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const robotTagsPostProcessHandler =
    'manual.src_robot.definition.tagsgenerator.postprocess';
const robotTestCasesPostProcessHandler =
    'manual.src_robot.definition.testcasesgenerator.postprocess';
const robotVariablesCustomHandler =
    'manual.src_robot.definition.variablesgenerator.custom';

const _tagIcon = '🏷';

/// Matches an indented `[Tags]` line together with its tag list.
///
/// Mirrors `(?:^\s\s+\[Tags\])\s\s+(\w+ *)*(?!.\#.*)` with the `g` and `m`
/// flags: a line with 2+ leading spaces, `[Tags]`, and 2+ spaces before the
/// first tag. The negative lookahead stops the match before a `#` comment.
final RegExp _tagsLineRegex = RegExp(
  r'(?:^\s\s+\[Tags\])\s\s+(\w+ *)*(?!.\#.*)',
  multiLine: true,
);

/// Splits a `[Tags]` value on runs of 2+ whitespace. Single spaces keep words
/// together as one tag, matching the source's `/\s\s+/`.
final RegExp _tagSeparatorRegex = RegExp(r'\s\s+');

/// Matches a `*** Test Cases ***` header and captures the block that follows.
///
/// Mirrors `(?:\*{3} ?Test Cases ?\*{3})([\S\s]*)(?:\*{3}(\w+\s?)+\*{3})*`
/// with the `g`, `i`, and `m` flags. Because the trailing section headers are
/// optional, the captured block spans every later section just like in JS.
final RegExp _testCaseBlockRegex = RegExp(
  r'(?:\*{3} ?Test Cases ?\*{3})([\S\s]*)(?:\*{3}(\w+\s?)+\*{3})*',
  multiLine: true,
  caseSensitive: false,
);

/// Matches a word run at the start of a line, truncated at `#` comments.
///
/// Mirrors `^(\w+( |-)*)+(?!.\#.*)(?!.\#.*)` with the `g` and `m` flags.
final RegExp _testCaseNameRegex = RegExp(
  r'^(\w+( |-)*)+(?!.\#.*)(?!.\#.*)',
  multiLine: true,
);

/// A test case name split by two or more spaces is rejected by the source.
final RegExp _doubleSpaceRegex = RegExp(r'\s\s+');

/// Matches a `${name}` variable at the start of a line.
final RegExp _variableRegex = RegExp(r'^\$\{(.*?)\}', multiLine: true);

/// Suggests every unique tag found on `[Tags]` lines in the concatenated
/// robot files. Each suggestion carries the `Tag` description and a tag icon.
List<FigSuggestion> _tags(String output, [List<String>? tokens]) {
  final seen = <String>{};
  final suggestions = <FigSuggestion>[];
  for (final match in _tagsLineRegex.allMatches(output)) {
    final tags = match
        .group(0)!
        .trim()
        .substring(6)
        .trim()
        .split(_tagSeparatorRegex);
    for (final tag in tags) {
      if (tag.isEmpty || seen.contains(tag)) continue;
      seen.add(tag);
      suggestions.add(FigSuggestion(
        name: tag,
        description: 'Tag',
        icon: _tagIcon,
      ));
    }
  }
  return suggestions;
}

/// Suggests test case names found at the start of lines inside
/// `*** Test Cases ***` blocks. Names split by two or more spaces and
/// duplicates are dropped, mirroring the source postProcess.
List<FigSuggestion> _testCases(String output, [List<String>? tokens]) {
  final seen = <String>{};
  final suggestions = <FigSuggestion>[];
  for (final blockMatch in _testCaseBlockRegex.allMatches(output)) {
    final block = blockMatch.group(1) ?? '';
    for (final lineMatch in _testCaseNameRegex.allMatches(block)) {
      final testCase = lineMatch.group(0)!.trim();
      if (testCase.isEmpty || testCase.contains(_doubleSpaceRegex)) continue;
      if (seen.contains(testCase)) continue;
      seen.add(testCase);
      suggestions.add(FigSuggestion(
        name: testCase,
        description: 'Test case',
      ));
    }
  }
  return suggestions;
}

/// Suggests `${name}` variables defined in local robot and resource files.
///
/// The source only scans while the user is typing a key: once the last token
/// contains a `:` (a value is being edited) it returns immediately without
/// running the scan command.
Future<List<FigSuggestion>> _variables(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  final finalToken = tokens.isEmpty ? '' : tokens.last;
  if (finalToken.contains(':')) return const [];
  if (executeCommand == null) return const [];
  final result = await executeCommand(ExecuteCommandInput(
    command: 'bash',
    args: [
      '-c',
      r'for i in $(find -E . -regex ".*.(robot|resource)" -type f); do cat -s $i ; done',
    ],
  ));
  if (result.status != 0) return const [];
  final variables = <FigSuggestion>[];
  for (final match in _variableRegex.allMatches(result.stdout)) {
    final name = match.group(1) ?? '';
    if (name.isEmpty) continue;
    variables.add(FigSuggestion(
      name: name,
      description: 'Variable',
    ));
  }
  return variables;
}

/// Registers the robot generators referenced by the shipped robot JSON.
void registerRobotHandlers(JsonHandlerRegistry registry) {
  registry.registerPostProcess(robotTagsPostProcessHandler, _tags);
  registry.registerPostProcess(robotTestCasesPostProcessHandler, _testCases);
  registry.registerCustom(robotVariablesCustomHandler, _variables);
}
