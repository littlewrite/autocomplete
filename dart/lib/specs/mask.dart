// AI-generated from TypeScript source: mask.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec maskSpec = FigSpec(
  name: 'mask',
  // Dynamic subcommands modeled as an argument with generator
  args: FigArg(
    name: 'subcommand',
    isOptional: true,
    generators: FigGenerator(
      script: (List<String> tokens) {
        var maskfileLocationIdx = tokens.indexOf('--maskfile');
        // mask --maskfile path/tp/thing build
        if (maskfileLocationIdx < 0 ||
            maskfileLocationIdx + 3 > tokens.length) {
          return ['cat', 'maskfile.md'];
        } else {
          return ['cat', tokens[maskfileLocationIdx + 1]];
        }
      },
      postProcess: (String out, [List<String>? tokens]) {
        if (out.isEmpty) return [];
        return RegExp(r'##.*').allMatches(out).map((m) {
          return FigSuggestion(
            name: m.group(0)!.substring(3).trim(),
          );
        }).toList();
      },
    ),
  ),
);
