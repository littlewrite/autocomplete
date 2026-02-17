// AI-generated from TypeScript source: nr.ts
import 'package:autocomplete/src/spec.dart';
import 'npm.dart';

final FigSpec completionSpec = FigSpec(
  name: "nr",
  description: "Use the right package manager - run",
  options: [
    FigOption(
      name: ["-h", "--help"],
      description: "Output usage information",
    ),
  ],
  args: FigArg(
    name: "script",
    description: "The script to run",
    filterStrategy: FilterStrategy.fuzzy,
    generators: npmScriptsGenerator,
  ),
  additionalSuggestions: [
    FigSuggestion(
      name: "-",
      insertValue: "-\n",
      description: "Run the last command",
      type: SuggestionType.shortcut,
    ),
  ],
);
