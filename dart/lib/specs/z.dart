import 'package:autocomplete/src/spec.dart';

// Helper to filter history (matches z.ts filterHistoryBySearchTerms)
List<FigSuggestion> _filterHistoryBySearchTerms(
  List<String> insertedTerms,
  List<FigSuggestion> history,
) {
  final insertedTermsMap = insertedTerms.toSet();
  return history.where((suggestion) {
    final name = suggestion.nameSingle ?? '';
    final path = suggestion.description is String
        ? suggestion.description as String
        : '';
    return !insertedTermsMap.contains(name) &&
        insertedTerms.every((item) => path.contains(item));
  }).toList();
}

// Combined generator for z.sh (rupa/z)
final FigGenerator zShGenerator = FigGenerator(
  script: [
    'zsh',
    '-c',
    r'cat ${${ZSHZ_DATA:-${_Z_DATA:-${HOME}/.z}}:A} && echo "___SEP___" && pwd && ls -d */'
  ],
  postProcess: (String out, [List<String>? tokens]) {
    final parts = out.split('___SEP___');
    final historyOut = parts[0];
    final cwdOut = parts.length > 1 ? parts[1] : '';

    final historySuggestions = <FigSuggestion>[];
    if (historyOut.isNotEmpty) {
      final lines = historyOut.split('\n');
      for (final line in lines) {
        if (line.trim().isEmpty) continue;
        final p = line.split('|');
        if (p.length < 3) continue;
        final path = p[0];
        final weight = double.tryParse(p[1]) ?? 0;

        final splitPath = path.split('/');
        final name = splitPath.isNotEmpty ? splitPath.last : path;
        final priority = (75 + (weight * 25) / 9000).toInt();

        historySuggestions.add(FigSuggestion(
          name: name,
          description: path,
          priority: priority,
          icon: '📁',
          insertValue: name,
          displayName: name,
        ));
      }
    }

    final cwdSuggestions = <FigSuggestion>[];
    if (cwdOut.isNotEmpty) {
      final lines = cwdOut.trim().split('\n');
      if (lines.isNotEmpty) {
        final cwd = lines[0].trim();
        for (var i = 1; i < lines.length; i++) {
          final line = lines[i].trim();
          if (line.isEmpty) continue;
          final name = line.replaceAll('/', '');
          final fullPath = '$cwd/$name';

          cwdSuggestions.add(FigSuggestion(
            name: name,
            description: fullPath,
            priority: 50, // Default
            icon: '📁',
            insertValue: name,
            displayName: name,
          ));
        }
      }
    }

    // Merge: history + cwd, remove duplicates by path
    final merged = <String, FigSuggestion>{}; // path -> suggestion

    for (final s in historySuggestions) {
      final path = s.description as String;
      merged[path] = s;
    }

    for (final s in cwdSuggestions) {
      final path = s.description as String;
      if (!merged.containsKey(path)) {
        merged[path] = s;
      }
    }

    final allSuggestions = merged.values.toList();

    // Filter by tokens
    if (tokens == null || tokens.isEmpty) return allSuggestions;

    // tokens[0] is 'z' usually.
    // filter args: skip 'z' and flags.
    final args = tokens
        .where((t) => t.isNotEmpty && t != 'z' && !t.startsWith('-'))
        .toList();

    return _filterHistoryBySearchTerms(args, allSuggestions);
  },
);

final FigSpec zShSpec = FigSpec(
  name: 'z',
  description: 'CLI tool to jump around directories',
  args: [
    FigArg(
      name: 'directory',
      isVariadic: true,
      isOptional: true,
      generators: [zShGenerator],
    ),
  ],
  options: [
    FigOption(
        name: '-c',
        description:
            'Restrict matches to subdirectories of the current directory'),
    FigOption(name: '-e', description: "Echo the best match, don't cd"),
    FigOption(name: '-h', description: 'Show a brief help message'),
    FigOption(name: '-l', description: 'List only'),
    FigOption(name: '-r', description: 'Match by rank only'),
    FigOption(name: '-t', description: 'Match by recent access only'),
    FigOption(
        name: '-x',
        description: 'Remove the current directory from the datafile'),
  ],
);

// Generator for zoxide (ajeetdsouza/zoxide) - matches z.ts zoxideCompletionSpec
final FigGenerator zoxideGenerator = FigGenerator(
  trigger: 'change',
  script: (List<String> tokens) {
    // TS: if tokens.length < 2 || tokens[1] === "" then no query args
    final queryArgs =
        tokens.where((t) => t != 'z' && !t.startsWith('-')).toList();
    final queryPart = queryArgs.isEmpty
        ? 'zoxide query --list --score'
        : 'zoxide query --list --score -- ${queryArgs.join(' ')}';
    return ['bash', '-c', '$queryPart && echo "___SEP___" && pwd && ls -d */'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final parts = out.split('___SEP___');
    final zoxideOut = parts[0];
    final cwdOut = parts.length > 1 ? parts[1] : '';

    String cwd = '';
    if (cwdOut.isNotEmpty) {
      final lines = cwdOut.trim().split('\n');
      if (lines.isNotEmpty) cwd = lines[0].trim();
    }

    // Build path -> suggestion for zoxide (path = fullPath always)
    final zoxideByPath = <String, FigSuggestion>{};
    for (final line in zoxideOut.split('\n')) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;
      final spaceIndex = trimmed.indexOf(' ');
      if (spaceIndex == -1) continue;

      final scoreStr = trimmed.substring(0, spaceIndex);
      final fullPath = trimmed.substring(spaceIndex + 1);
      final score = double.tryParse(scoreStr) ?? 0;

      final splitPath = fullPath.split('/');
      final parentPath = splitPath.sublist(0, splitPath.length - 1).join('/');
      final folderName = splitPath.last;
      final isInCwd = cwd.isNotEmpty && cwd == parentPath;
      final priority = isInCwd ? 9000 : score.toInt();

      zoxideByPath[fullPath] = FigSuggestion(
        name: isInCwd ? folderName : fullPath,
        description: 'Score: $score',
        icon: '💾',
        priority: priority,
      );
    }

    // CWD folders: path = cwd/name, priority 8999 (just below zoxide cwd matches)
    final merged = Map<String, FigSuggestion>.from(zoxideByPath);
    if (cwd.isNotEmpty) {
      final lines = cwdOut.trim().split('\n');
      for (var i = 1; i < lines.length; i++) {
        final line = lines[i].trim();
        if (line.isEmpty) continue;
        final name = line.replaceAll('/', '');
        final path = '$cwd/$name';
        if (!merged.containsKey(path)) {
          merged[path] = FigSuggestion(
            name: name,
            description: 'Score: 0',
            icon: '📁',
            priority: 8999,
          );
        }
      }
    }

    return merged.values.toList();
  },
);

final FigSpec _zoxideSpec = FigSpec(
  name: 'z',
  description: 'Smarter cd command, inspired by z and autojump',
  args: [
    FigArg(
      name: 'directory',
      filterStrategy: 'fuzzy',
      suggestCurrentToken: true,
      generators: [zoxideGenerator],
    ),
  ],
);

// Main spec that chooses between zoxide and z.sh (matches z.ts zCompletionSpec)
final FigSpec zSpec = FigSpec(
  name: 'z',
  generateSpec: (List<String> tokens, dynamic execute) async {
    try {
      final input = ExecuteCommandInput(
        command: 'bash',
        args: ['-c', 'command -v zoxide'],
      );
      final result = await execute(input);
      final status = result is ExecuteCommandOutput
          ? result.status
          : (result as Map)['status'] as int?;
      if (status == 0) return _zoxideSpec;
    } catch (_) {}
    return zShSpec;
  },
  description: zShSpec.description,
  args: zShSpec.args,
  options: zShSpec.options,
);
