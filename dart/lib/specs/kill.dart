// AI-generated from TypeScript source: kill.ts
import 'package:autocomplete/src/spec.dart';

// Compatibility: macOS

String processIcon(String path) {
  final idx = path.indexOf(".app/");
  if (idx == -1) {
    return "fig://icon?type=gear";
  }
  return "fig://" + path.substring(0, idx + 4);
}

final FigSpec killSpec = FigSpec(
  name: "kill",
  description: "Terminate or signal a process",
  args: [FigArg(
    name: "pid",
    isVariadic: true,
    generators: [FigGenerator(
      script: ["bash", "-c", "ps axo pid,comm | sed 1d"],
      postProcess: (String result, [List<String>? tokens]) {
        return result.split("\n").map((line) {
          final trimmed = line.trim();
          if (trimmed.isEmpty) return null;
          final parts = trimmed.split(RegExp(r'\s+'));
          if (parts.length < 2) return null;
          
          final pid = parts[0];
          final path = parts[1];
          
          final name = path.substring(path.lastIndexOf("/") + 1);
          return FigSuggestion(
            name: pid,
            description: path,
            displayName: "$pid ($name)",
            icon: processIcon(path),
          );
        }).whereType<FigSuggestion>().toList();
      },
    )],
  )],
  options: [
    FigOption(
      name: "-s",
      description: "A symbolic signal name specifying the signal to be sent",
      args: [FigArg(
        name: "signal_name",
        generators: [FigGenerator(
          // Bash's `kill` builtin has different output to /bin/kill
          script: ["env", "kill", "-l"],
          postProcess: (String out, [List<String>? tokens]) {
            return RegExp(r'\w+').allMatches(out).map((match) {
              final name = match.group(0)!;
              return FigSuggestion(
                name: name,
                description: "Send $name instead of TERM",
                icon: "fig://icon?type=string",
              );
            }).toList();
          },
        )],
      )],
    ),
    FigOption(
      name: "-l",
      description:
        "If no operand is given, list the signal names; otherwise, write the signal name corresponding to exit_status",
      args: [FigArg(
        name: "exit_status",
        isOptional: true,
      )],
    ),
  ],
);
