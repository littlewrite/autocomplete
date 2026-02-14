// Auto-generated from TypeScript source: make.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator listTargets = FigGenerator(
  script: [
    'bash',
    '-c',
    "make -qp | awk -F':' '/^[a-zA-Z0-9][^\$#\\/\\t=]*:([^=]|\$)/ {split(\$1,A,/ /);for(i in A)print A[i]}' | sort -u; echo '---SEPARATOR---'; cat Makefile makefile 2>/dev/null"
  ],
  postProcess: (String out, [List<String>? tokens]) {
    final parts = out.split('---SEPARATOR---');
    final targetsOut = parts[0];
    final makefileContent = parts.length > 1 ? parts[1] : '';

    final targetSuggestions = <String, FigSuggestion>{};

    for (final target in targetsOut.split('\n')) {
      final t = target.trim();
      if (t.isEmpty || t == 'Makefile') continue;
      targetSuggestions[t] = FigSuggestion(
        name: t,
        description: 'Make target',
        icon: '🎯',
        priority: 80,
      );
    }

    final regex = RegExp(
      r'((?:^#.*\n)*)(?:^\.[A-Z_]+:.*\n)*(^\S*?):.*?(?:\s#+[ \t]*(.+))?$',
      multiLine: true,
    );

    final specialTargets = {
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
      '.POSIX'
    };

    for (final match in regex.allMatches(makefileContent)) {
      final leadingComment = match.group(1);
      final target = match.group(2);
      final inlineComment = match.group(3);

      if (target == null) continue;
      if (specialTargets.contains(target)) continue;
      if (target.contains(r'$(')) continue;

      final name = target.trim();

      String description = 'Make target';
      if (inlineComment != null && inlineComment.trim().isNotEmpty) {
        description = inlineComment.trim();
      } else if (leadingComment != null && leadingComment.trim().isNotEmpty) {
        description = leadingComment
            .replaceAll(RegExp(r'^#+\s*', multiLine: true), '')
            .trim();
      }

      targetSuggestions[name] = FigSuggestion(
        name: name,
        description: description,
        icon: '🎯',
        priority: 80,
      );
    }

    return targetSuggestions.values.toList();
  },
);

final FigSpec makeSpec = FigSpec(
  name: 'make',
  args: [
    FigArg(
      name: 'target',
      generators: [listTargets],
    ),
  ],
  options: [
    FigOption(
      name: ['-j'],
      args: [
        FigArg(name: 'number'),
        FigArg(name: 'target', generators: [listTargets]),
      ],
    ),
    FigOption(
      name: ['--file', '-f', '--makefile'],
      description: 'Read FILE as a makefile',
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['-C', '--directory'],
      description: 'Change to DIRECTORY before doing anything',
      args: [
        FigArg(
          name: 'directory',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['-B', '--always-make'],
      description: 'Unconditionally make all targets',
      args: [
        FigArg(
          name: 'target',
          generators: [listTargets],
        ),
      ],
    ),
    FigOption(
      name: ['-e', '--environment-overrides'],
      description: 'Environment variables override makefiles',
      args: [
        FigArg(
          name: 'target',
          generators: [listTargets],
        ),
      ],
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Print this message and exit',
    ),
    FigOption(
      name: ['-i', '--ignore-errors'],
      description: 'Ignore errors from commands',
    ),
    FigOption(
      name: ['-k', '--keep-going'],
      description: "Keep going when some targets can't be made",
    ),
    FigOption(
      name: ['-L', '--check-symlink-times'],
      description: 'Use the latest mtime between symlinks and target',
    ),
    FigOption(
      name: ['-p', '--print-data-base'],
      description: "Print make's internal database",
    ),
    FigOption(
      name: ['-q', '--question'],
      description: 'Run no commands; exit status says if up to date',
    ),
    FigOption(
      name: ['-r', '--no-builtin-rules'],
      description: 'Disable the built-in implicit rules',
    ),
    FigOption(
      name: ['-R', '--no-builtin-variables'],
      description: 'Disable the built-in variable settings',
    ),
    FigOption(
      name: ['-t', '--touch'],
      description: 'Touch targets instead of remaking them',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Print the version number of make and exit',
    ),
    FigOption(
      name: ['-w', '--print-directory'],
      description: 'Print the current directory',
    ),
    FigOption(
      name: ['-d'],
      description: 'Print lots of debugging information',
    ),
    FigOption(
      name: ['--debug'],
      description: 'Print various types of debugging information',
    ),
    FigOption(
      name: ['-I', '--include-dir'],
      description: 'Search directory for included makefiles',
      args: [
        FigArg(
          name: 'directory',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['-l', '--load-average'],
      description: "Don't start multiple jobs unless load is below N",
      args: [
        FigArg(
          name: 'N',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--old-file'],
      description: "Consider file to be very old and don't remake it",
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--no-print-directory'],
      description: 'Turn off -w, even if it was turned on implicitly',
    ),
    FigOption(
      name: ['-W', '--what-if', '--new-file', '--assume-new'],
      description: 'Consider file to be infinitely new',
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--warn-undefined-variables'],
      description: 'Warn when an undefined variable is referenced',
    ),
    FigOption(
      name: ['-N', '--Next-option'],
      description: 'Turn on value of next option',
      args: [
        FigArg(
          name: 'option',
        ),
      ],
    ),
  ],
);
