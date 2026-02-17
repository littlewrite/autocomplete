// AI-generated from TypeScript source: xc.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec xcSpec = FigSpec(
  name: 'xc',
  description: 'List tasks from an xc-compatible markdown file',
  options: [
    FigOption(
      name: ['-s', '-short'],
      description: 'List task names in a short format',
    ),
    FigOption(
      name: ['-h', '-help'],
      description: 'Print this help text',
    ),
    FigOption(
      name: ['-f', '-file'],
      args: [
        FigArg(name: 'path', template: ['filepaths'])
      ],
      description:
          'Specify a markdown file that contains tasks (default: "README.md")',
    ),
    FigOption(
      name: ['-H', '-heading'],
      args: [
        FigArg(
          name: 'heading',
          suggestions: const [
            FigSuggestion(name: 'Tasks'),
            FigSuggestion(name: 'Usage'),
            FigSuggestion(name: 'Examples'),
          ],
        ),
      ],
      description: 'Specify the heading for xc tasks (default: "Tasks")',
    ),
    FigOption(
      name: ['-V', '-version'],
      description: 'Show xc version',
    ),
    FigOption(
      name: ['-complete'],
      description: 'Install shell completion for xc',
    ),
    FigOption(
      name: ['-uncomplete'],
      description: 'Uninstall shell completion for xc',
    ),
    FigOption(
      name: ['-d', '-display'],
      description: 'Print the markdown code of a task rather than running it',
    ),
  ],
  args: [
    FigArg(
      name: 'task',
      isOptional: true,
      generators: [
        FigGenerator(
          script: ['xc'],
          postProcess: (String out, [List<String>? tokens]) {
            return out
                .trim()
                .split('\n')
                .map((line) {
                  final parts = line.trim().split(RegExp(r'^([^ ]* )'));
                  if (parts.length >= 3) {
                    return FigSuggestion(
                      name: parts[1].trim(),
                      description: parts[2].trim(),
                    );
                  }
                  return null;
                })
                .whereType<FigSuggestion>()
                .toList();
          },
        ),
      ],
    ),
  ],
);
