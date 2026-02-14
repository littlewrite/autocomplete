// AI-generated from TypeScript source: src/id.ts
import 'package:autocomplete/src/spec.dart';

const exclusiveOptions = ["-A", "-F", "-G", "-M", "-P", "-g", "-p", "-u"];

final FigSpec idSpec = FigSpec(
  name: "id",
  description:
      "The id utility displays the user and group names and numeric IDs, of the calling process, to the standard output.  If the real and effective IDs are different, both are displayed, otherwise only the real ID is displayed. If a user (login name or user ID) is specified, the user and group IDs of that user are displayed.  In this case, the real and effective IDs are assumed to be the same",
  options: [
    FigOption(
      name: ["-A"],
      description:
          "Display the process audit user ID and other process audit properties, which requires privilege",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-F"],
      description: "Display the full name of the user",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-G"],
      description:
          "Display the different group IDs (effective, real and supplementary) as white-space separated numbers, in no particular order",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-M"],
      description: "Display the MAC label of the current process",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-P"],
      description: "Display the id as a password file entry",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-g"],
      description: "Display the effective group ID as a number",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-n"],
      description:
          "Display the name of the user or group ID for the -G, -g and -u options instead of the number.  If any of the ID numbers cannot be mapped into names the number will be displayed as usual",
      dependsOn: ["-G", "-g", "-u"],
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-p"],
      description: "Make the output human-readable",
      exclusiveOn: exclusiveOptions,
    ),
    FigOption(
      name: ["-u"],
      description: "Display the effective user ID as a number",
      exclusiveOn: exclusiveOptions,
    ),
  ],
  args: [
    FigArg(
      name: "user",
      isOptional: true,
      generators: [
        FigGenerator(
          script: ["bash", "-c", "dscl . -list /Users | grep -v '^_'"],
          postProcess: (String out, [List<String>? tokens]) {
            return out
                .trim()
                .split("\n")
                .map((username) => FigSuggestion(
                      name: username,
                      icon: "fig://template?badge=👤",
                    ))
                .toList();
          },
        ),
      ],
    ),
  ],
);
