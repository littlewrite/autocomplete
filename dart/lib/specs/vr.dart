// AI-generated from TypeScript source: vr.ts
import 'package:autocomplete/src/spec.dart';

const String SCRIPT_KEYWORD = "    • ";

final FigGenerator scriptGenerator = FigGenerator(
  script: ['env', 'NO_COLOR=1', 'vr'],
  postProcess: (String out, [List<String>? tokens]) {
    final List<FigSuggestion> suggestions = [];
    final List<String> lines =
        out.split('\n').where((l) => l.isNotEmpty).toList();

    for (int i = 0; i < lines.length; i++) {
      final String line = lines[i];
      if (!line.startsWith(SCRIPT_KEYWORD)) continue;

      suggestions.add(FigSuggestion(
        name: line.replaceAll(SCRIPT_KEYWORD, ''),
        description: (i + 1 < lines.length) ? lines[i + 1].trim() : null,
      ));
    }

    return suggestions;
  },
);

final FigSpec vrSpec = FigSpec(
  name: 'vr',
  description: 'The npm-style script runner for Deno',
  subcommands: [
    FigSubcommand(
      name: 'run',
      description: 'Run a script',
      args: [
        FigArg(
          name: 'script',
          generators: [scriptGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'export',
      description: 'Export one or more scripts as standalone executable files',
      args: [
        FigArg(
          name: 'script',
          isVariadic: true,
          generators: [scriptGenerator],
        ),
      ],
    ),
    FigSubcommand(
      name: 'upgrade',
      description:
          'Upgrade Velociraptor to the latest version or to a specific one',
      args: [
        FigArg(
          name: 'version',
          isOptional: true,
        ),
      ],
      options: [
        FigOption(
          name: ['-o', '--out-dir'],
          description: 'The folder where the scripts will be exported',
          args: [
            FigArg(
              name: 'dir',
            ),
          ],
        ),
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for Velociraptor',
      isPersistent: true,
    ),
    FigOption(
      name: ['-V', '--version'],
      description: 'Show the version number for Velociraptor',
    ),
  ],
  args: [
    FigArg(
      name: 'script',
      generators: [scriptGenerator],
    ),
  ],
);
