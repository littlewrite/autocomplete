// AI-generated from TypeScript source: arch.ts
import 'package:autocomplete/src/spec.dart';

const List<Map<String, String>> _archNames = [
  {'name': 'i386', 'description': '32-bit intel'},
  {'name': 'x86_64', 'description': '64-bit intel'},
  {'name': 'x86_64h', 'description': '64-bit intel (haswell)'},
  {'name': 'arm64', 'description': '64-bit arm'},
  {'name': 'arm64e', 'description': '64-bit arm (Apple Silicon)'},
];

final List<Option> _archOptions = _archNames.map((arch) {
  return Option(
    name: '-${arch['name']}',
    description: arch['description'],
    isRepeatable: true,
    exclusiveOn: ['-arch'],
    icon: 'fig://icon?type=cpu',
  );
}).toList();

final Option _archOption = Option(
  name: '-arch',
  isRepeatable: true,
  exclusiveOn: _archOptions.map((opt) => opt.name as String).toList(),
  args: [
    Arg(
      name: 'arch_name',
      suggestions: _archNames.map((arch) {
        return FigSuggestion(
          name: arch['name']!,
          description: arch['description'],
          icon: 'fig://icon?type=cpu',
        );
      }).toList(),
    )
  ],
);

final FigSpec archSpec = FigSpec(
  name: 'arch',
  description: 'Print architecture type or run select architecture',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
    optionsMustPrecedeArguments: true,
  ),
  options: [
    Option(
      name: '-32',
      description:
          'Add the native 32-bit architecture to the list of architectures',
    ),
    Option(
      name: '-64',
      description:
          'Add the native 64-bit architecture to the list of architectures',
    ),
    _archOption,
    ..._archOptions,
    Option(
      name: '-c',
      description: 'Clear the environment that will be passed to the command',
    ),
    Option(
      name: '-d',
      description:
          'Delete the named environment variable from the command\'s environment',
      isRepeatable: true,
      args: [
        Arg(
          name: 'envname',
        )
      ],
    ),
    Option(
      name: '-e',
      description:
          'Assign the given value to the variable in the command\'s environment',
      isRepeatable: true,
      args: [
        Arg(
          name: 'envname=value',
        )
      ],
    ),
    Option(
      name: '-h',
      description: 'Print a help message and exit',
    ),
  ],
  args: [
    Arg(
      name: 'program',
      template: 'filepaths',
      isCommand: true,
      isVariadic: true,
    )
  ],
);
