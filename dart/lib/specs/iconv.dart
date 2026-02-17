// AI-generated from TypeScript source: iconv.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator encodingGenerator = FigGenerator(
  script: ["bash", "-c", "iconv -l | command tr ' ' '\\n' | sort"],
  postProcess: (String out, [List<String>? tokens]) {
    return out.split("\n").map((encoding) => FigSuggestion(
      name: encoding,
      description: encoding,
      type: SuggestionType.arg,
    )).toList();
  },
);

final FigSpec iconvSpec = FigSpec(
  name: "iconv",
  description: "Character set conversion",
  options: [
    FigOption(
      name: "--help",
      description: "Show help for iconv",
    ),
    FigOption(
      name: "--version",
      description: "Output version information and exit",
    ),
    FigOption(
      name: ["-f", "--from-code"],
      description: "Specifies the encoding of the input",
      exclusiveOn: ["-l", "--list"],
      args: [FigArg(
        name: "encoding",
        generators: [encodingGenerator],
      )],
    ),
    FigOption(
      name: ["-t", "--to-code"],
      description: "Specifies the encoding of the output",
      exclusiveOn: ["-l", "--list"],
      args: [FigArg(
        name: "encoding",
        generators: [encodingGenerator],
      )],
    ),
    FigOption(
      name: "-c",
      description: "Discard unconvertible characters",
      exclusiveOn: ["-l", "--list"],
    ),
    FigOption(
      name: ["-l", "--list"],
      description: "List the supported encodings",
      exclusiveOn: [
        "-f",
        "--from-code",
        "-t",
        "--to-code",
        "--unicode-subst",
        "--byte-subst",
        "--widechar-subst",
      ],
    ),
    FigOption(
      name: "--unicode-subst",
      description: "Substitution for unconvertible Unicode characters",
      exclusiveOn: ["-l", "--list"],
      requiresSeparator: true,
      args: [FigArg(
        name: "FORMATSTRING",
        description:
          "The formatstring must be a format string in the same format as for the printf command",
      )],
    ),
    FigOption(
      name: "--byte-subst",
      description: "Substitution for unconvertible bytes",
      exclusiveOn: ["-l", "--list"],
      requiresSeparator: true,
      args: [FigArg(
        name: "FORMATSTRING",
        description:
          "The formatstring must be a format string in the same format as for the printf command",
      )],
    ),
    FigOption(
      name: "--widechar-subst",
      description: "Substitution for unconvertible wide characters",
      exclusiveOn: ["-l", "--list"],
      requiresSeparator: true,
      args: [FigArg(
        name: "FORMATSTRING",
        description:
          "The formatstring must be a format string in the same format as for the printf command",
      )],
    ),
  ],
  args: [FigArg(
    name: "inputfile",
    isVariadic: true,
    template: "filepaths",
  )],
);
