// AI-generated from TypeScript source: nrm.ts
import 'package:autocomplete/src/spec.dart';
import 'npm.dart';

final FigSpec completionSpec = FigSpec(
  name: "nrm",
  description: "Use the right package manage - remove",
  options: [
    FigOption(
      name: ["-g"],
      description:
          "Operates in 'global' mode, so that packages are removed from the prefix folder instead of the current working directory",
    ),
    FigOption(
      name: ["-D"],
      description: "Package will be removed from your `devDependencies`",
    ),
    FigOption(
      name: ["-P"],
      description: "Remove package from your `peerDependencies`",
    ),
    FigOption(
      name: ["-O"],
      description: "Remove package from your `optionalDependencies`",
    ),
    FigOption(
      name: ["--frozen"],
      description: "Don't generate a lockfile and fail if an update is needed",
    ),
    FigOption(
      name: ["-h", "--help"],
      description: "Output usage information",
    ),
  ],
  args: FigArg(
    name: "package",
    filterStrategy: FilterStrategy.fuzzy,
    generators: dependenciesGenerator,
    isVariadic: true,
  ),
);
