// AI-generated from TypeScript source: man.ts

import 'package:autocomplete/src/spec.dart';

// Cache for manual pages: Key is first letter of name
final Map<String, List<FigSuggestion>> _pageSuggestionCache = {};
int _lastCachedAt = 0;
const _pageSuggestionCacheTTL = 1000 * 60 * 60; // 60 minutes

List<FigSuggestion> _getSuggestionsFromCache(String token) {
  final firstChar = token.isNotEmpty ? token[0] : "a";
  return _pageSuggestionCache[firstChar] ?? [];
}

final completionSpec = FigSpec(
  name: "man",
  description: "Format and display the on-line manual pages",
  args: FigArg(
    isOptional: true,
    isVariadic: true,
    generators: FigGenerator(
      script: (List<String> tokens) {
        final now = DateTime.now().millisecondsSinceEpoch;
        if (now - _lastCachedAt > _pageSuggestionCacheTTL) {
          _pageSuggestionCache.clear();
          _lastCachedAt = now;
        }

        if (_pageSuggestionCache.isEmpty) {
          return ["man", "-k", "."];
        }
        return ["echo", "CACHE_HIT"];
      },
      postProcess: (String out, [List<String>? tokens]) {
        final validTokens = tokens ?? [];
        if (out.trim() == "CACHE_HIT") {
          final token = validTokens.isNotEmpty ? validTokens.last : "";
          return _getSuggestionsFromCache(token);
        }

        // Parse man -k . output
        final seenPageNameCache = <String>{};
        final lines = out.split("\n");

        for (final line in lines) {
          final splitIndex = line.indexOf(" - ");
          if (splitIndex == -1) continue;

          final pageNames = line.substring(0, splitIndex);
          var description = line.substring(splitIndex + 3);
          if (description.isEmpty) description = "Manual page";
          description = description[0].toUpperCase() + description.substring(1);

          final pages = pageNames.split(", ");
          for (final page in pages) {
            final i = page.lastIndexOf("(");
            if (i == -1) continue;

            final name = page.substring(0, i);
            final section = page.substring(i);

            if (seenPageNameCache.contains(name)) continue;
            seenPageNameCache.add(name);

            final suggestion = FigSuggestion(
              name: name,
              description: "$section $description",
              icon: "fig://icon?type=string",
            );

            final firstChar = name.isNotEmpty ? name[0] : "";
            if (firstChar.isNotEmpty) {
              _pageSuggestionCache
                  .putIfAbsent(firstChar, () => [])
                  .add(suggestion);
            }
          }
        }

        final token = validTokens.isNotEmpty ? validTokens.last : "";
        return _getSuggestionsFromCache(token);
      },
      scriptTimeout: 15000,
    ),
  ),
  options: [
    FigOption(
      name: ["-C"],
      description: "Specify the configuration file to use",
      args: FigArg(
        name: "config_file",
      ),
    ),
    FigOption(
      name: ["-M"],
      description:
          "Specify the list of directories to search (colon separated)",
      args: FigArg(
        name: "path",
        generators: FigGenerator(
          template: ["folders"],
          getQueryTerm: ":",
        ),
      ),
    ),
    FigOption(
      name: ["-P"],
      description: "Specify the pager program",
      args: FigArg(
        name: "pager",
      ),
    ),
    FigOption(
      name: ["-B"],
      description: "Specify which browser to use for HTML files",
      args: FigArg(
        name: "browser",
        defaultValue: "/usr/bin/less -is",
      ),
    ),
    FigOption(
      name: ["-H"],
      description: "Specify a command that renders HTML files as text",
      args: FigArg(
        name: "command",
        defaultValue: "/bin/cat",
      ),
    ),
    FigOption(
      name: ["-S"],
      description:
          "Specify a colon-separated list of manual sections to search",
      args: FigArg(
        name: "sections",
        // Note: Dart FigGenerator doesn't have valueList helper, implement simplified generator or omit
        // The original TS used valueList which is a helper.
        // We can just list suggestions if they are static, but here they are dynamic?
        // No, TS code: values: Object.entries(sections).map...
        // The sections map is static in TS.
        // I can just include the suggestions directly.
        suggestions: [
          FigSuggestion(name: "1", description: "General commands", icon: "📑"),
          FigSuggestion(name: "2", description: "System calls", icon: "📑"),
          FigSuggestion(
              name: "3", description: "C library functions", icon: "📑"),
          FigSuggestion(
              name: "4", description: "Devices and special files", icon: "📑"),
          FigSuggestion(
              name: "5",
              description: "File formats and conventions",
              icon: "📑"),
          FigSuggestion(name: "6", description: "Games, etc", icon: "📑"),
          FigSuggestion(name: "7", description: "Miscellanea", icon: "📑"),
          FigSuggestion(
              name: "8", description: "System admin and daemons", icon: "📑"),
        ],
      ),
    ),
    FigOption(
      name: ["-a"],
      description: "Open every matching page instead of just the first",
    ),
    FigOption(
      name: ["-c"],
      description:
          "Reformat the source page, even when an up-to-date cat-page exists",
    ),
    FigOption(
      name: ["-d"],
      description: "Don't actually display the pages (dry run)",
    ),
    FigOption(
      name: ["-D"],
      description: "Both display and print debugging info",
    ),
    FigOption(
      name: ["-f"],
      description: "Equivalent to `whatis`",
    ),
    FigOption(
      name: ["-F", "--preformat"],
      description: "Format only, do not display",
    ),
    FigOption(
      name: ["-h"],
      description: "Print a help message and exit",
    ),
    FigOption(
      name: ["-k"],
      description: "Equivalent to apropos",
    ),
    FigOption(
      name: ["-K"],
      description: "Search for a given string in all pages",
    ),
    FigOption(
      name: ["-m"],
      description:
          "Specify an alternate set of pages to search based on the system name given",
      args: FigArg(
        name: "system",
      ),
    ),
    FigOption(
      name: ["-p"],
      description:
          "Specify the sequence of preprocessors to run before nroff or troff",
      args: FigArg(
        name: "preprocessors",
      ),
    ),
    FigOption(
      name: ["-t"],
      description: "Use `/usr/bin/groff -Tps -mandoc -c` to format the page",
    ),
    FigOption(
      name: ["-w", "--path"],
      description: "Print the location of files that would be displayed",
    ),
    FigOption(
      name: ["-W"],
      description: "Print file locations, one per line",
    ),
  ],
);
