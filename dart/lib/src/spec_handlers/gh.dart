// Hand-written dynamic handlers migrated from src/gh.ts.
//
// The gh JSON references the `ghGenerators` record (src/gh.ts) as bare
// `generators: {handler, version}` refs, which the parser resolves as custom
// generators (run script, then postProcess). Each is materialized here as a
// custom handler that runs the source script via [ExecuteCommandFunction] and
// applies the source postProcess to its stdout. The root `args` parser
// directive alias resolves a typed `gh alias` token to its expanded command.
//
// The `codespace ports forward` / `codespace ports visibility` args carry
// `keyValue({separator: ":", ...})` generators (from
// @fig/autocomplete-generators). They are registered as custom handlers
// mirroring that helper: `forward` has empty keys and values (so it always
// returns nothing), while `visibility` suggests `public`, `private`, and `org`
// once a `:` has been typed.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

/// `ghGenerators.listAlias` (src/gh.ts): runs `gh alias list` and surfaces one
/// suggestion per alias.
const ghListAliasGeneratorHandler =
    'manual.src_gh.generator.ghgenerators.listalias';

/// `ghGenerators.listPR` (src/gh.ts): runs `gh pr list --json=...` and
/// surfaces one suggestion per pull request.
const ghListPrGeneratorHandler = 'manual.src_gh.generator.ghgenerators.listpr';

/// `ghGenerators.remoteBranches` (src/gh.ts): runs `git branch -r` and
/// surfaces the remote branches, dropping the remote prefix.
const ghRemoteBranchesGeneratorHandler =
    'manual.src_gh.generator.ghgenerators.remotebranches';

/// `ghGenerators.listRepositories` (src/gh.ts): runs the viewer GraphQL query
/// and surfaces the repositories the user can access.
const ghListRepositoriesGeneratorHandler =
    'manual.src_gh.generator.ghgenerators.listrepositories';

/// The root `args` parser directive alias (src/gh.ts): resolves a typed `gh
/// alias` token to its expanded command.
const ghArgsParserDirectivesAliasHandler =
    'manual.src_gh.spec.args.parserdirectives.alias';

/// `codespace ports forward` args `keyValue({separator: ":"})` generator.
const ghPortsForwardArgsGeneratorsHandler =
    'manual.src_gh.spec.subcommands_17_.subcommands_8_.subcommands_0_.args.generators';

/// `codespace ports visibility` args
/// `keyValue({separator: ":", values: ["public", "private", "org"]})` generator.
const ghPortsVisibilityArgsGeneratorsHandler =
    'manual.src_gh.spec.subcommands_17_.subcommands_8_.subcommands_1_.args.generators';

/// Runs `gh alias list` and applies the source `listAlias` postProcess: one
/// suggestion per `name: content` line.
Future<List<FigSuggestion>> _ghListAlias(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'gh',
    args: ['alias', 'list'],
  ));
  final suggestions = <FigSuggestion>[];
  for (final line in result.stdout.split('\n')) {
    if (line.trim().isEmpty) continue;
    final colonIndex = line.indexOf(':');
    final name = colonIndex < 0 ? line.trim() : line.substring(0, colonIndex).trim();
    final content = colonIndex < 0
        ? ''
        : line.substring(colonIndex + 1).trim();
    suggestions.add(FigSuggestion(
      name: name,
      description: "Alias for '$content'",
      icon: 'fig://icon?type=commandkey',
    ));
  }
  return suggestions;
}

/// Ports the `listPR` postProcess (src/gh.ts): parses the `gh pr list` JSON
/// array into one suggestion per pull request.
List<FigSuggestion> _prPostProcess(String output) {
  if (output.trim().isEmpty) return const [];
  try {
    final decoded = jsonDecode(output);
    if (decoded is! List) return const [];
    final suggestions = <FigSuggestion>[];
    for (final item in decoded) {
      if (item is! Map) continue;
      final number = item['number'];
      suggestions.add(FigSuggestion(
        name: number?.toString(),
        displayName: item['title']?.toString(),
        description: '#$number | ${item['headRefName']?.toString() ?? ''}',
        icon: item['state'] == 'OPEN' ? '✅' : '☑️',
      ));
    }
    return suggestions;
  } on FormatException {
    return const [];
  }
}

/// Runs `gh pr list --json=...` and applies [_prPostProcess].
Future<List<FigSuggestion>> _ghListPr(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'gh',
    args: ['pr', 'list', '--json=number,title,headRefName,state'],
  ));
  return _prPostProcess(result.stdout);
}

/// Ports `filterMessages` (src/gh.ts): drops the first line when the output
/// begins with a `warning:` or `error:` header.
String _filterMessages(String output) {
  if (output.startsWith('warning:') || output.startsWith('error:')) {
    final lines = output.split('\n');
    return lines.length > 1 ? lines.sublist(1).join('\n') : '';
  }
  return output;
}

/// Ports `postProcessRemoteBranches` (src/gh.ts): maps `git branch -r` lines
/// to branch suggestions, stripping the remote prefix and special-casing the
/// current and checked-out-in-another-worktree branches.
List<FigSuggestion> _remoteBranchesPostProcess(String output) {
  final filtered = _filterMessages(output);
  if (filtered.startsWith('fatal:')) return const [];
  final suggestions = <FigSuggestion>[];
  for (final elm in filtered.split('\n')) {
    final trimmed = elm.trim();
    if (trimmed.isEmpty) continue;
    // `\w+/` removes the first `word/` segment (origin/, fork/, ...).
    var name = trimmed.replaceFirst(RegExp(r'\w+/'), '');
    final parts =
        RegExp(r'\S+').allMatches(elm).map((match) => match.group(0)!).toList();
    if (parts.length > 1) {
      if (parts[0] == '*') {
        // Detached HEAD produces `{}` in the source, which the runtime drops.
        if (elm.contains('HEAD detached')) continue;
        suggestions.add(FigSuggestion(
          name: elm.replaceFirst('*', '').trim(),
          description: 'Current branch',
          priority: 100,
          icon: '⭐️',
        ));
        continue;
      } else if (parts[0] == '+') {
        // Branch checked out in another worktree.
        name = elm.replaceFirst('+', '').trim();
      }
    }
    suggestions.add(FigSuggestion(
      name: name,
      description: 'Branch',
      icon: 'fig://icon?type=git',
      priority: 75,
    ));
  }
  return suggestions;
}

/// Runs `git branch -r` and applies [_remoteBranchesPostProcess].
Future<List<FigSuggestion>> _ghRemoteBranches(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'git',
    args: [
      '--no-optional-locks',
      'branch',
      '-r',
      '--no-color',
      '--sort=-committerdate',
    ],
  ));
  return _remoteBranchesPostProcess(result.stdout);
}

/// Ports `listRepoMapFunction` (src/gh.ts): maps one GraphQL repository node
/// to a suggestion, flagging private repositories at a glance.
FigSuggestion _repoSuggestion(Map<dynamic, dynamic> repo) {
  return FigSuggestion(
    name: repo['nameWithOwner']?.toString(),
    description: repo['description']?.toString(),
    icon: repo['isPrivate'] == true ? '🔒' : '👀',
  );
}

/// Ports the `listRepositories` postProcess (src/gh.ts): joins the
/// JSON-lines GraphQL output into an array and maps each node to a suggestion.
List<FigSuggestion> _repositoriesPostProcess(String output) {
  if (output.isEmpty) return const [];
  final jsonified =
      '[${output.replaceAll(RegExp(r'(?:\r\n|\r|\n)'), ',')}]';
  try {
    final decoded = jsonDecode(jsonified);
    if (decoded is! List) return const [];
    return decoded
        .whereType<Map>()
        .map((item) => _repoSuggestion(item))
        .toList();
  } on FormatException {
    return const [];
  }
}

/// Runs the `gh api graphql` viewer query and applies
/// [_repositoriesPostProcess].
Future<List<FigSuggestion>> _ghListRepositories(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'gh',
    args: [
      'api',
      'graphql',
      '--paginate',
      '-f',
      r"query='query($endCursor: String) { viewer { repositories(first: 100, after: $endCursor) { nodes { isPrivate, nameWithOwner, description } pageInfo { hasNextPage endCursor }}}}'",
      '--jq',
      '.data.viewer.repositories.nodes[]',
    ],
  ));
  return _repositoriesPostProcess(result.stdout);
}

/// Ports `keyValue({separator: ":", cache: true})` for the `ports forward`
/// arg. Both the keys and values collections are empty, so the source always
/// yields no suggestions.
Future<List<FigSuggestion>> _ghPortsForward(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  return const [];
}

/// Ports `keyValue({separator: ":", values: ["public", "private", "org"],
/// cache: true})` for the `ports visibility` arg. While the typed token has no
/// `:` yet the source asks for keys (an empty collection, so nothing is
/// suggested); once a `:` appears it suggests the visibility values.
Future<List<FigSuggestion>> _ghPortsVisibility(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (tokens.isEmpty) return const [];
  final isKey = !tokens.last.contains(':');
  if (isKey) return const [];
  return const [
    FigSuggestion(name: 'public'),
    FigSuggestion(name: 'private'),
    FigSuggestion(name: 'org'),
  ];
}

/// Ports the root `args` parser directive alias (src/gh.ts): resolves a typed
/// `gh alias` token to its expanded command by scanning `gh alias list`.
Future<String?> _ghArgsAlias(
    String token, ExecuteCommandFunction executeCommand) async {
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'gh',
    args: ['alias', 'list'],
  ));
  String? alias;
  for (final line in result.stdout.split('\n')) {
    if (line.startsWith('$token:\t')) {
      alias = line;
      break;
    }
  }
  if (alias == null) {
    throw StateError('Failed to parse alias');
  }
  return alias.substring(token.length + 1).trim();
}

/// Registers the dynamic handlers referenced by the shipped gh JSON.
void registerGhHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(ghListAliasGeneratorHandler, _ghListAlias);
  registry.registerCustom(ghListPrGeneratorHandler, _ghListPr);
  registry.registerCustom(ghRemoteBranchesGeneratorHandler, _ghRemoteBranches);
  registry.registerCustom(
      ghListRepositoriesGeneratorHandler, _ghListRepositories);
  registry.registerCustom(ghPortsForwardArgsGeneratorsHandler, _ghPortsForward);
  registry.registerCustom(
      ghPortsVisibilityArgsGeneratorsHandler, _ghPortsVisibility);
  registry.registerAlias(ghArgsParserDirectivesAliasHandler, _ghArgsAlias);
}
