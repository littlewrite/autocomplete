// AI-generated from TypeScript source: src/z.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec zSpec = FigSpec(
  name: 'z',
  description: 'CLI tool to jump around directories',
  args: [
    FigArg(
      name: 'directory',
      isVariadic: true,
      isOptional: true,
      generators: [
        // Generator 1: Zoxide (Priority if installed)
        FigGenerator(
          script: [
            'bash',
            '-c',
            'if command -v zoxide >/dev/null 2>&1; then pwd; zoxide query --list --score; fi'
          ],
          postProcess: (String out, [List<String>? tokens]) {
            if (out.trim().isEmpty) return [];
            final lines = out.split('\n');
            if (lines.isEmpty) return [];

            // First line is CWD
            final cwd = lines.first.trim();
            // Rest are suggestions
            final suggestions = lines.skip(1);

            return suggestions
                .map((line) {
                  final trimmedLine = line.trim();
                  if (trimmedLine.isEmpty) return null;
                  final spaceIndex = trimmedLine.indexOf(' ');
                  if (spaceIndex == -1) return null;

                  final scoreStr = trimmedLine.substring(0, spaceIndex);
                  final fullPath = trimmedLine.substring(spaceIndex + 1);
                  final score = double.tryParse(scoreStr) ?? 0;

                  // Check if folder is in CWD
                  // We assume fullPath is absolute.
                  // Logic: parent of fullPath == cwd
                  final parentPath = fullPath.contains('/')
                      ? fullPath.substring(0, fullPath.lastIndexOf('/'))
                      : '';
                  final folderName = fullPath.contains('/')
                      ? fullPath.substring(fullPath.lastIndexOf('/') + 1)
                      : fullPath;

                  final folderIsInCwd = cwd == parentPath;

                  final name = folderIsInCwd ? folderName : fullPath;
                  // Priority: 9000 if in CWD, else score
                  final priority = folderIsInCwd ? 9000 : score.toInt();

                  return FigSuggestion(
                    name: name,
                    description: 'Score: $score',
                    icon: '💾',
                    priority: priority,
                    insertValue: name,
                  );
                })
                .where((e) => e != null)
                .cast<FigSuggestion>()
                .toList();
          },
        ),
        // Generator 2: Z History (Fallback)
        FigGenerator(
          script: [
            'zsh',
            '-c',
            'if ! command -v zoxide >/dev/null 2>&1; then cat \${\${ZSHZ_DATA:-\${_Z_DATA:-\${HOME}/.z}}:A}; fi'
          ],
          postProcess: (String out, [List<String>? tokens]) {
            if (out.trim().isEmpty) return [];
            return out
                .split('\n')
                .map((line) {
                  if (line.isEmpty) return null;
                  final parts = line.split('|');
                  if (parts.length < 3) return null;
                  final path = parts[0];
                  final weight = double.tryParse(parts[1]) ?? 0;
                  // final time = double.tryParse(parts[2]) ?? 0;

                  final splitPath = path.split('/');
                  final name = splitPath.isNotEmpty ? splitPath.last : path;

                  // Priority calculation from TS
                  // weight: 75 + (Number(weight) * 25) / 9000
                  final priority = 75 + (weight * 25) / 9000;

                  return FigSuggestion(
                    name: name,
                    description: path,
                    priority: priority.toInt(),
                    icon: '📁',
                    insertValue: name,
                    displayName: name,
                  );
                })
                .where((e) => e != null)
                .cast<FigSuggestion>()
                .toList();
          },
        ),
        // Generator 3: CWD Folders
        FigGenerator(
          template: 'folders',
          // Note: TS implementation sets priority 8999.
          // Built-in 'folders' usually has high priority but maybe not exactly 8999.
          // We rely on standard behavior here.
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: '-c',
      description:
          'Restrict matches to subdirectories of the current directory',
    ),
    FigOption(name: '-e', description: 'Echo the best match, don\'t cd'),
    FigOption(name: '-h', description: 'Show a brief help message'),
    FigOption(name: '-l', description: 'List only'),
    FigOption(name: '-r', description: 'Match by rank only'),
    FigOption(name: '-t', description: 'Match by recent access only'),
    FigOption(
      name: '-x',
      description: 'Remove the current directory from the datafile',
    ),
  ],
);
