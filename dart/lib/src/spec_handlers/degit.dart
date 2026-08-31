// Hand-written dynamic handlers migrated from src/degit.ts.

import 'dart:convert';

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const degitReposTriggerHandler =
    'manual.src_degit.spec.args_0_.generators.trigger';
const degitReposCustomHandler =
    'manual.src_degit.spec.args_0_.generators.custom';

const _gitIcon = 'fig://icon?type=git';

/// Reruns the repo generator whenever the position of the first `/` shifts
/// between the previously and newly typed tokens.
bool _reposTrigger(String newToken, String oldToken) =>
    newToken.indexOf('/') != oldToken.indexOf('/');

/// Queries `https://api.github.com/users/<user>/repos` for the username in the
/// current `user/repo` token and suggests each repository as `user/repo`,
/// described by its description (falling back to "Repository").
Future<List<FigSuggestion>> _repos(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (tokens.isEmpty) return const [];
  final lastToken = tokens[tokens.length - 1];
  if (lastToken.contains(':')) return const [];
  final slash = lastToken.indexOf('/');
  if (slash < 0) return const [];
  final username = lastToken.substring(0, slash);
  if (username.isEmpty) return const [];
  if (executeCommand == null) return const [];

  final result = await executeCommand(ExecuteCommandInput(
    command: 'curl',
    args: ['-sL', 'https://api.github.com/users/$username/repos'],
  ));
  if (result.status != 0) return const [];

  try {
    final repos = jsonDecode(result.stdout) as List;
    return repos.map((repo) {
      final item = repo as Map<String, dynamic>;
      return FigSuggestion(
        name: item['full_name'],
        description: item['description'] ?? 'Repository',
        priority: item['is_template'] == true ? 51 : 50,
        displayName: item['name'],
        icon: _gitIcon,
      );
    }).toList();
  } catch (_) {
    return const [];
  }
}

/// Registers the degit generators referenced by the shipped degit JSON.
void registerDegitHandlers(JsonHandlerRegistry registry) {
  registry.registerTrigger(degitReposTriggerHandler, _reposTrigger);
  registry.registerCustom(degitReposCustomHandler, _repos);
}
