// Hand-written dynamic handlers migrated from src/z.ts (zoxide variant).

import 'package:autocomplete/src/json_spec.dart';
import 'package:autocomplete/src/spec.dart';

const zCustomHandler = 'manual.src_z.spec.args.generators.custom';

/// One candidate directory merged from zoxide history + cwd subfolders.
class _ZDirectory {
  const _ZDirectory({
    required this.name,
    required this.path,
    required this.description,
    required this.icon,
    required this.priority,
  });

  final String name;
  final String path;
  final String description;
  final String icon;
  final int priority;
}

/// `ls -d */` lists the immediate subfolders of the current directory.
Future<List<_ZDirectory>> _currentDirectoryFolders(
  String currentWorkingDirectory,
  ExecuteCommandFunction? executeCommand,
) async {
  if (executeCommand == null) return const [];
  final result = await executeCommand(const ExecuteCommandInput(
    command: 'bash',
    args: ['-c', 'ls -d */'],
  ));
  if (result.status != 0) return const [];
  final folders = <_ZDirectory>[];
  for (final line in result.stdout.split('\n')) {
    final name = line.replaceFirst('/', '');
    if (name.isEmpty) continue;
    folders.add(_ZDirectory(
      name: name,
      path: '$currentWorkingDirectory/$name',
      description: 'Score: 0',
      icon: '📁',
      priority: 8999,
    ));
  }
  return folders;
}

/// `zoxide query --list --score` (optionally `-- <terms>`) prints one
/// `<score> <path>` per line. The last path segment is used when the path is
/// directly under the current working directory.
Future<List<_ZDirectory>> _zoxideDirs(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  String currentWorkingDirectory,
) async {
  if (executeCommand == null) return const [];
  final args = <String>['query', '--list', '--score'];
  if (tokens.length >= 2 && tokens[1].isNotEmpty) {
    args.add('--');
    args.add(tokens.sublist(1).join(' '));
  }
  final result = await executeCommand(
    ExecuteCommandInput(command: 'zoxide', args: args),
  );
  if (result.status != 0) return const [];
  final dirs = <_ZDirectory>[];
  for (final line in result.stdout.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;
    final spaceIndex = trimmed.indexOf(' ');
    final score = spaceIndex < 0
        ? 0
        : (num.tryParse(trimmed.substring(0, spaceIndex)) ?? 0).toInt();
    final fullPath =
        spaceIndex < 0 ? trimmed : trimmed.substring(spaceIndex + 1);
    final pathParts = fullPath.split('/');
    final parent = pathParts.sublist(0, pathParts.length - 1).join('/');
    final folderName = pathParts[pathParts.length - 1];
    final inCwd = currentWorkingDirectory == parent;
    dirs.add(_ZDirectory(
      name: inCwd ? folderName : fullPath,
      path: fullPath,
      description: 'Score: $score',
      icon: '💾',
      priority: inCwd ? 9000 : score,
    ));
  }
  return dirs;
}

/// Merges zoxide history and current subfolders, deduplicating by path.
Future<List<FigSuggestion>> _zoxideSuggestions(
  List<String> tokens,
  ExecuteCommandFunction? executeCommand,
  FigGeneratorContext? context,
) async {
  if (context == null) return const [];
  final cwd = context.currentWorkingDirectory;
  final zoxide = await _zoxideDirs(tokens, executeCommand, cwd);
  final folders = await _currentDirectoryFolders(cwd, executeCommand);
  final seen = <String>{};
  final suggestions = <FigSuggestion>[];
  for (final dir in [...zoxide, ...folders]) {
    if (!seen.add(dir.path)) continue;
    suggestions.add(FigSuggestion(
      name: dir.name,
      description: dir.description,
      icon: dir.icon,
      priority: dir.priority,
    ));
  }
  return suggestions;
}

/// Registers the z generators referenced by the shipped z JSON.
void registerZHandlers(JsonHandlerRegistry registry) {
  registry.registerCustom(zCustomHandler, _zoxideSuggestions);
}
