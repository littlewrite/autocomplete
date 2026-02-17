// AI-generated from TypeScript source: yo.ts
import 'package:autocomplete/src/spec.dart';

String toTitleCase(String str) {
  return str.trim().replaceAllMapped(RegExp(r'\w\S*'), (match) {
    final txt = match.group(0)!;
    return txt[0].toUpperCase() + txt.substring(1).toLowerCase();
  });
}

final List<FigSuggestion> suggestions = [
  const FigSuggestion(
    name: 'doctor',
    description: 'Running sanity checks on your system',
    icon: 'fig://icon?type=alert',
  ),
  const FigSuggestion(
    name: 'completion',
    description: 'To enable shell completion for the yo command',
    icon: 'fig://icon?type=asterisk',
  ),
];

final FigGenerator yeomanGeneratorList = FigGenerator(
  script: ['yo', '--generators'],
  postProcess: (String out, [List<String>? tokens]) {
    try {
      return out
          .split('\n')
          .where((item) =>
              item.trim().isNotEmpty && item != 'Available Generators:')
          .map((item) {
        final name = item.trim();
        final displayName = toTitleCase(name);
        return FigSuggestion(
          name: name,
          icon: 'https://avatars.githubusercontent.com/u/1714870?v=4',
          displayName: displayName,
          description: '$displayName Generator',
          priority: 100,
          loadSpec: FigSubcommand(
            name: name,
            description: '$displayName Generator',
            options: [
              FigOption(
                name: ['--help'],
                description: 'Help of "$displayName" generator',
              ),
            ],
          ),
        );
      }).toList();
    } catch (e) {
      // ignore: avoid_print
      // print(e);
      return [];
    }
  },
);

final FigSpec yoSpec = FigSpec(
  name: 'yo',
  description: 'Yeoman generator',
  args: [
    FigArg(
      name: 'generator',
      generators: [yeomanGeneratorList],
      suggestions: suggestions,
      isCommand: true,
      isOptional: true,
    ),
  ],
  options: [
    FigOption(
      name: ['--help'],
      description: "Print info and generator's options and usage",
    ),
    FigOption(
      name: ['-f', '--force'],
      description: 'Overwrite files that already exist',
      isDangerous: true,
    ),
    FigOption(
      name: ['--version'],
      description: 'Print version',
    ),
    FigOption(
      name: ['--no-color'],
      description: 'Disable color',
    ),
    FigOption(
      name: ['--insight'],
      description: 'Enable anonymous tracking',
    ),
    FigOption(
      name: ['--no-insight'],
      description: 'Disable anonymous tracking',
    ),
    FigOption(
      name: ['--generators'],
      description: 'Print available generators',
    ),
    FigOption(
      name: ['--local-only'],
      description: 'Disable lookup of globally-installed generators',
    ),
  ],
);
