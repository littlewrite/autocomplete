// AI-generated from TypeScript source: goto.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator listTargets = FigGenerator(
  script: ['bash', '-c', 'cat ~/.config/goto'],
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.split('\n');
    return lines
        .map((line) {
          final splits = line.split(' ');
          if (splits.isEmpty || splits[0].isEmpty) return null;
          return FigSuggestion(
            name: splits[0],
            description: 'Goto ${splits.length > 1 ? splits[1] : ""}',
            icon: '🔖',
            priority: 80,
          );
        })
        .whereType<FigSuggestion>()
        .toList();
  },
);

final FigSpec gotoSpec = FigSpec(
  name: 'goto',
  displayName: 'Goto a Folder by alias',
  options: [
    FigOption(
      name: ['--help', '-h'],
      description: 'Show help for goto',
    ),
    FigOption(
      name: ['--register', '-r'],
      description: 'Registers an alias',
      isPersistent: true,
      args: [
        FigArg(
          name: 'alias',
        ),
        FigArg(
          name: 'target',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--unregister', '-u'],
      description: 'Unregister an alias',
      isPersistent: true,
      args: [
        FigArg(
          name: 'alias',
          isDangerous: true,
          generators: [listTargets],
          filterStrategy: 'prefix',
        ),
      ],
    ),
    FigOption(
      name: ['--push', '-p'],
      description:
          'Pushes the current directory onto the stack, then performs goto',
    ),
    FigOption(
      name: ['--pop', '-o'],
      description:
          'Pops the top directory from the stack, then changes to that directory',
    ),
    FigOption(
      name: ['--list', '-l'],
      description:
          'Pops the top directory from the stack, then changes to that directory',
    ),
    FigOption(
      name: ['--expand', '-x'],
      description: 'Expands an alias',
      args: [
        FigArg(
          name: 'alias',
          generators: [listTargets],
        ),
      ],
    ),
    FigOption(
      name: ['--cleanup', '-c'],
      description: 'Cleans up non existent directory aliases',
    ),
    FigOption(
      name: ['--version', '-v'],
      description: 'Displays the version of the goto script',
    ),
  ],
  args: [
    FigArg(
      name: 'alias',
      generators: [listTargets],
    ),
  ],
);
