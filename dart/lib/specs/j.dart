// AI-generated from TypeScript source: src/j.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec jSpec = FigSpec(
  name: "j",
  description: "A faster way to navigate your filesystem",
  options: [
    FigOption(
      name: ["-h", "--help"],
      description: "Show the help message and exit",
    ),
    FigOption(
      name: ["-a", "--add"],
      description: "Add path",
      args: [FigArg(name: "directory", template: ["folders"])],
    ),
    FigOption(
      name: ["-i", "--increase"],
      description: "Increase current directory weight",
      args: [FigArg(name: "weight", isOptional: true)],
    ),
    FigOption(
      name: ["-d", "--decrease"],
      description: "Decrease current directory weight",
      args: [FigArg(name: "weight", isOptional: true)],
    ),
    FigOption(
      name: "--complete",
      description: "Used for tab completion",
    ),
    FigOption(
      name: "--purge",
      description: "Remove non-existent paths from database",
    ),
    FigOption(
      name: ["-s", "--stat"],
      description: "Show database entries and their key weights",
    ),
    FigOption(
      name: ["-v", "--version"],
      description: "Show version information",
    ),
  ],
  args: [
    FigArg(
      name: "directory",
      description: "Directory to jump to",
      isVariadic: true,
      generators: [
        FigGenerator(
          script: ["cat", "\$HOME/Library/autojump/autojump.txt"],
          postProcess: (String out, [List<String>? tokens]) {
            if (tokens == null) return [];
            final lines = out.split("\n").map((line) {
              final parts = line.split("\t");
              if (parts.length < 2) return null;
              return {
                "weight": double.tryParse(parts[0]) ?? 0,
                "dir": parts[1],
              };
            }).whereType<Map<String, dynamic>>().toList();

            final args = tokens.sublist(1, tokens.length - 1);

            final filtered = lines.where((item) {
              final dir = item["dir"] as String;
              return args.every((arg) => dir.contains(arg));
            }).toList();

            return filtered.map((item) {
              final dir = item["dir"] as String;
              final weight = item["weight"] as double;
              final splitPath = dir.split("/");
              final name = splitPath.last;

              if (!args.contains(name)) {
                return FigSuggestion(
                  name: name,
                  description: dir,
                  priority: (75 + weight).toInt(),
                );
              }
              return null;
            }).whereType<FigSuggestion>().toList();
          },
        ),
      ],
    ),
  ],
);
