// AI-generated from TypeScript source: bat.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator _languageGenerator = FigGenerator(
  script: ['bat', '--list-languages'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').expand((line) {
      if (line.isEmpty) return <FigSuggestion>[];
      final parts = line.split(':');
      if (parts.isEmpty) return <FigSuggestion>[];
      final description = parts[0].trim();
      final names = parts.length > 1
          ? line.substring(line.indexOf(':') + 1).split(',')
          : <String>[];
      return names.map((name) => FigSuggestion(
            name: name.trim(),
            description: '$description language',
          ));
    }).toList();
  },
);

final FigGenerator _themeGenerator = FigGenerator(
  script: ['bat', '--list-themes'],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split('\n').where((line) => line.isNotEmpty).map((theme) {
      return FigSuggestion(
        name: theme,
        description: 'theme: $theme',
      );
    }).toList();
  },
);

FigGenerator _createEnumGenerator(String option, String description) {
  return FigGenerator(
    script: [
      'bash',
      '-c',
      'bat $option unknow 2>&1 >/dev/null | grep possible'
    ],
    postProcess: (String out, [List<String>? tokens]) {
      try {
        // Expected format contains: [possible values: val1, val2, ...]
        if (!out.contains('[') || !out.contains(']')) return [];
        final bracketContent = out.trim().split(']')[0].split('[')[1];
        if (!bracketContent.contains(':')) return [];
        final values = bracketContent.split(':')[1];
        return values.split(',').map((mode) {
          return FigSuggestion(
            name: mode.trim(),
            description: description,
          );
        }).toList();
      } catch (e) {
        return [];
      }
    },
  );
}

final FigSpec batSpec = FigSpec(
  name: 'bat',
  description: 'A cat(1) clone with syntax highlighting and Git integration',
  options: [
    Option(
      name: ['-A', '--show-all'],
      description: 'Show non-printable characters',
    ),
    Option(
      name: ['-p', '--plain'],
      description: 'Show plain style, no decorations',
    ),
    Option(
      name: ['-l', '--language'],
      description: 'Explicitly set the language for syntax highlighting',
      args: [
        Arg(
          name: '<language>',
          generators: [_languageGenerator],
        ),
      ],
    ),
    Option(
      name: ['-H', '--highlight-line'],
      description: 'Highlight the specified line ranges',
      args: [
        Arg(
          name: '<N:M>',
          description: 'Range of line',
        ),
      ],
    ),
    Option(
      name: '--file-name',
      description:
          'Specify the name to display for a file. Useful when piping data to bat from STDIN when bat does not otherwise know the filename',
      args: [
        Arg(
          isVariadic: true,
          template: 'filepaths',
          description: 'File(s)',
        ),
      ],
    ),
    Option(
      name: ['-d', '--diff'],
      description:
          'Show lines that have been added/removed/modified with respect to the Git index',
    ),
    Option(
      name: '--diff-context',
      description:
          'Include N lines of context around added/removed/modified lines when using \'--diff\'',
      args: [
        Arg(
          name: '<N>',
          description: 'Lines of context',
        ),
      ],
    ),
    Option(
      name: '--tabs',
      description:
          'Set the tab width to T spaces. Use a width of 0 to pass tabs through directly',
      args: [
        Arg(
          name: '<T>',
          description: 'Spaces of tab width',
        ),
      ],
    ),
    Option(
      name: '--wrap',
      description: 'Specify when to use colored output',
      args: [
        Arg(
          name: '<mode>',
          generators: [
            _createEnumGenerator('--wrap', 'Specify when to use colored output')
          ],
        ),
      ],
    ),
    Option(
      name: '--terminal-width',
      description:
          'Explicitly set the width of the terminal instead of determining it automatically',
      args: [
        Arg(
          name: '<width>',
          description: 'Width to wrap',
        ),
      ],
    ),
    Option(
      name: ['-n', '--number'],
      description: 'Show line numbers, no other decorations',
    ),
    Option(
      name: '--color',
      description: 'Specify when to use colored output',
      args: [
        Arg(
          name: '<when>',
          generators: [
            _createEnumGenerator('--color', 'Specify when to use colored output')
          ],
        ),
      ],
    ),
    Option(
      name: '--italic-text',
      description:
          'Specify when to use ANSI sequences for italic text in the output',
      args: [
        Arg(
          name: '<when>',
          generators: [
            _createEnumGenerator('--italic-text',
                'Specify when to use ANSI sequences for italic text in the output')
          ],
        ),
      ],
    ),
    Option(
      name: '--decorations',
      description:
          'Specify when to use the decorations that have been specified via \'--style\'',
      args: [
        Arg(
          name: '<when>',
          generators: [
            _createEnumGenerator('--decorations',
                'Specify when to use the decorations that have been specified via \'--style\'')
          ],
        ),
      ],
    ),
    Option(
      name: ['-f', '--force-colorization'],
      description: 'Alias for \'--decorations=always --color=always\'',
    ),
    Option(
      name: '--paging',
      description: 'Specify when to use the pager',
      args: [
        Arg(
          name: '<when>',
          generators: [
            _createEnumGenerator(
                '--paging', 'Specify when to use the pager')
          ],
        ),
      ],
    ),
    Option(
      name: '--pager',
      description: 'Determine which pager is used',
      args: [
        Arg(
          name: '<command>',
          description: 'Command to pager',
        ),
      ],
    ),
    Option(
      name: ['-m', '--map-syntax'],
      description: 'Map a glob pattern to an existing syntax name',
      args: [
        Arg(
          name: '<glob:syntax>',
          description: 'Full path or the filename:language that highlighted',
        ),
      ],
    ),
    Option(
      name: '--ignored-suffix',
      description: 'Ignore extension',
      args: [
        Arg(
          name: '<ignored-suffix>',
          description: 'Extension',
        ),
      ],
    ),
    Option(
      name: '--theme',
      description: 'Set the theme for syntax highlighting',
      args: [
        Arg(
          name: '<theme>',
          generators: [_themeGenerator],
        ),
      ],
    ),
    Option(
      name: '--list-themes',
      description: 'Display a list of supported themes for syntax highlighting',
    ),
    Option(
      name: '--style',
      description: 'Display a list of supported themes for syntax highlighting',
    ),
    Option(
      name: ['-r', '--line-range'],
      description: 'Only print the specified range of lines for each file',
      args: [
        Arg(
          name: '<N:M>',
          description: 'Range of line',
        ),
      ],
    ),
    Option(
      name: ['-L', '--list-languages'],
      description:
          'Display a list of supported languages for syntax highlighting',
    ),
    Option(
      name: ['-u', '--unbuffered'],
      description:
          'Make output unbuffered (exists for POSIX-compliance reasons and is simply ignored)',
    ),
    Option(
      name: '--diagnostic',
      description: 'Show diagnostic information for bug reports',
    ),
    Option(
      name: '--acknowledgements',
      description: 'Show acknowledgements',
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Print help message',
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Show version information',
    ),
  ],
  args: [
    Arg(
      isVariadic: true,
      template: 'filepaths',
      description: 'File(s)',
    ),
  ],
);
