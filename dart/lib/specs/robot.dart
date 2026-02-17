// AI-generated from TypeScript source: robot.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator tagsGenerator = FigGenerator(
  script: [
    "bash",
    "-c",
    'for i in \$(find -E . -regex ".*.robot" -type f); do cat -s \$i ; done',
  ],
  postProcess: (String out, [List<String>? tokens]) {
    final iter =
        RegExp(r'(?:^\s\s+\[Tags\])\s\s+(\w+ *)*(?!.\#.*)', multiLine: true)
            .allMatches(out);
    final Set<String> seen = {};
    final List<FigSuggestion> suggestions = [];

    for (final match in iter) {
      final line = match.group(0)!;
      final trimmed = line.trim();
      if (trimmed.length <= 6) continue;
      final tagsPart = trimmed.substring(6).trim();
      final tags = tagsPart.split(RegExp(r'\s\s+'));

      for (final tag in tags) {
        if (seen.contains(tag)) continue;
        seen.add(tag);
        suggestions.add(FigSuggestion(
          name: tag,
          description: "Tag",
          icon: "🏷",
        ));
      }
    }
    return suggestions;
  },
);

final FigGenerator variablesGenerator = FigGenerator(
  trigger: ':',
  script: (List<String> tokens) {
    if (tokens.isEmpty || !tokens.last.contains(':')) return [];
    return [
      "bash",
      "-c",
      'for i in \$(find -E . -regex ".*.(robot|resource)" -type f); do cat -s \$i ; done',
    ];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final iter = RegExp(r'^\$\{(.*?)\}', multiLine: true).allMatches(out);
    return iter
        .map((m) => m.group(1))
        .whereType<String>()
        .map((variable) => FigSuggestion(
              name: variable,
              description: "Variable",
            ))
        .toList();
  },
);

final FigGenerator testCasesGenerator = FigGenerator(
  script: [
    "bash",
    "-c",
    'for i in \$(find -E . -regex ".*.robot" -type f); do cat -s \$i ; done',
  ],
  postProcess: (String out, [List<String>? tokens]) {
    final blockRegex = RegExp(
        r'(?:\*{3} ?Test Cases ?\*{3})([\S\s]*)(?:\*{3}(\w+\s?)+\*{3})*',
        caseSensitive: false,
        multiLine: true);
    final matches = blockRegex.allMatches(out);

    final Set<String> seen = {};
    final List<FigSuggestion> suggestions = [];

    for (final match in matches) {
      final block = match.group(1);
      if (block == null) continue;

      final lineRegex =
          RegExp(r'^(\w+( |-)*)+(?!.\#.*)(?!.\#.*)', multiLine: true);
      final lines = lineRegex.allMatches(block);

      for (final lineMatch in lines) {
        var testCase = lineMatch.group(0)?.trim();
        if (testCase == null) continue;

        if (RegExp(r'\s\s+').hasMatch(testCase)) continue;

        if (seen.contains(testCase)) continue;
        seen.add(testCase);

        suggestions.add(FigSuggestion(
          name: testCase,
          description: "Test case",
        ));
      }
    }
    return suggestions;
  },
);

final FigSpec completionSpec = FigSpec(
  name: "robot",
  description: "CLI for running Robot Framework automation tests",
  args: FigArg(
    name: "robot script",
    isScript: true,
    isVariadic: true,
    template: "filepaths",
  ),
  options: [
    FigOption(
      name: ["-h", "-?", "--help"],
      description: "Print usage instructions",
    ),
    FigOption(
      name: ["--rpa"],
      description:
          'Turn on the generic automation mode. Mainly affects terminology so that "test" is replaced with "task" in logs and reports',
    ),
    FigOption(
      name: ["-F", "--extension"],
      description:
          "Parse only files with this extension when executing a directory",
      args: FigArg(
        name: "extension",
        description: "File extensions divided by colon",
        suggestions: ["txt", "robot:txt"],
      ),
    ),
    FigOption(
      name: ["-N", "--name"],
      description: "Set a name of the top level suite",
      args: FigArg(name: "name"),
    ),
    FigOption(
      name: ["-D", "--doc"],
      insertValue: "-D '{cursor}'",
      description: "Set a documentation of the top level suite",
    ),
    FigOption(
      name: ["-M", "--metadata"],
      insertValue: "-M {cursor}:",
      description: "Set metadata of the top level suite",
      args: FigArg(name: "name:value"),
    ),
    FigOption(
      name: ["-G", "--settag"],
      description: "Sets given tag to all executed tests",
      args: FigArg(name: "tag"),
    ),
    FigOption(
      name: ["-t", "--test"],
      description:
          "Select tests by name or by long name containing also parent suite name like `Parent.Test`",
      args: FigArg(
        name: "name",
        generators: testCasesGenerator,
      ),
    ),
    FigOption(
      name: ["--task"],
      description: "Alias to --test. Especially applicable with --rpa",
      args: FigArg(
        name: "name",
        generators: testCasesGenerator,
      ),
    ),
    FigOption(
      name: ["-s", "--suite"],
      description: "Select suites by name",
      args: FigArg(name: "name"),
    ),
    FigOption(
      name: ["-i", "--include"],
      description: "Select test cases by tag",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["-e", "--exclude"],
      description: "Select test cases not to run by tag",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["-R", "--rerunfailed"],
      description:
          "Select failed tests from an earlier output file to be re-executed",
      args: FigArg(
        name: "output file",
        template: "filepaths",
      ),
    ),
    FigOption(
      name: ["-S", "--rerunfailedsuites"],
      description:
          "Select failed suites from an earlier output file to be re-executed",
      args: FigArg(
        name: "output file",
        template: "filepaths",
      ),
    ),
    FigOption(
      name: ["--runemptysuite"],
      description: "Executes suite even if it contains no tests",
    ),
    FigOption(
      name: ["--skip"],
      description: "Tests having given tag will be skipped",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--skiponfailure"],
      description: "Tests having given tag will be skipped if they fail",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["-v", "--variable"],
      description: "Set variables in the test data",
      args: FigArg(
        name: "variable",
        generators: variablesGenerator,
      ),
    ),
    FigOption(
      name: ["-V", "--variablefile"],
      description: "Python or YAML file file to read variables from",
      args: FigArg(
        name: "file",
        template: "filepaths",
      ),
    ),
    FigOption(
      name: ["-d", "--outputdir"],
      description:
          "Where to create output files. The default is the directory where tests are run from",
      args: FigArg(
        name: "directory",
        template: "folders",
      ),
    ),
    FigOption(
      name: ["-o", "--output"],
      description:
          "XML output file relative to --outputdir unless given as an absolute path. Default: output.xml",
      args: FigArg(
        name: "file",
        suggestions: ["output.xml"],
      ),
    ),
    FigOption(
      name: ["-l", "--log"],
      description:
          "HTML log file. Can be disabled by giving a special value `NONE`. Default: log.html",
      args: FigArg(
        name: "file",
        suggestions: ["log.html", "NONE"],
      ),
    ),
    FigOption(
      name: ["-r", "--report"],
      description:
          "HTML report file. Can be disabled with `NONE` similarly as --log. Default: report.html",
      args: FigArg(
        name: "file",
        suggestions: ["report.html", "NONE"],
      ),
    ),
    FigOption(
      name: ["-x", "--xunit"],
      description:
          "XUnit compatible result file. Not created unless this option is specified",
      args: FigArg(
        name: "file",
        suggestions: ["xunit.xml"],
      ),
    ),
    FigOption(
      name: ["-b", "--debugfile"],
      description:
          "Debug file written during execution. Not created unless this option is specified",
      args: FigArg(name: "file"),
    ),
    FigOption(
      name: ["-T", "--timestampoutputs"],
      description:
          "Adds timestamp in a format `YYYYMMDD-hhmmss` to all generated output files between their basename and extension",
    ),
    FigOption(
      name: ["--splitlog"],
      description:
          "Split the log file into smaller pieces that open in browsers transparently",
    ),
    FigOption(
      name: ["--logtitle"],
      description:
          "Title for the generated log file. The default title is `<SuiteName> Log.`",
      args: FigArg(name: "title"),
    ),
    FigOption(
      name: ["--reporttitle"],
      description:
          "Title for the generated report file. The default title is `<SuiteName> Report`",
      args: FigArg(name: "title"),
    ),
    FigOption(
      name: ["--reportbackground"],
      description:
          "Background colors to use in the report file. Given in format `passed:failed:skipped` where the `:skipped` part can be omitted",
      args: FigArg(name: "colors"),
    ),
    FigOption(
      name: ["--maxerrorlines"],
      description:
          "Maximum number of error message lines to show in report when tests fail. Default is 40, minimum is 10 and `NONE` can be used to show the full message",
      args: FigArg(
        name: "lines",
        suggestions: [
          FigSuggestion(
            name: "40",
            displayName: "40 (default)",
            priority: 76,
            description: "Default number of lines",
          ),
          FigSuggestion(
            name: "10",
            displayName: "10 (minimum)",
            description: "Minimum number of lines",
          ),
          FigSuggestion(
            name: "NONE",
            description: "Unlimited number of lines. Shows the full message",
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--maxassignlength"],
      description:
          "Maximum number of characters to show in log when variables are assigned. Zero or negative values can be used to avoid showing assigned values at all. Default is 200",
      args: FigArg(
        name: "characters",
        suggestions: [
          FigSuggestion(
            name: "200",
            displayName: "200 (default)",
            priority: 76,
            description: "Default number of characters",
          ),
          FigSuggestion(
            name: "0",
            description: "No values at all",
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-L", "--loglevel"],
      description: "Threshold level for logging",
      args: FigArg(
        name: "level",
        suggestions: [
          FigSuggestion(name: "TRACE", type: SuggestionType.option),
          FigSuggestion(name: "DEBUG", type: SuggestionType.option),
          FigSuggestion(
            name: "INFO",
            displayName: "INFO (default)",
            priority: 76,
            type: SuggestionType.option,
          ),
          FigSuggestion(name: "WARN", type: SuggestionType.option),
          FigSuggestion(
            name: "NONE",
            displayName: "NONE (no logging)",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--suitestatlevel"],
      description:
          "How many levels to show in `Statistics by Suite` in log and report",
      args: FigArg(name: "level"),
    ),
    FigOption(
      name: ["--tagstatinclude"],
      description:
          "Include only matching tags in `Statistics by Tag` in log and report",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--tagstatexclude"],
      description: "Exclude matching tags from `Statistics by Tag`",
      args: FigArg(
        name: "tag",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--tagstatcombine"],
      description:
          "Create combined statistics based on tags. These statistics are added into `Statistics by Tag`",
      args: FigArg(
        name: "tags:name",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--tagdoc"],
      description: "Add documentation to tags matching the given pattern",
      args: FigArg(
        name: "pattern:doc",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--tagstatlink"],
      description:
          "Add external links into `Statistics by Tag`. Pattern can use `*`, `?` and `[]` as wildcards",
      args: FigArg(
        name: "pattern:link:title",
        generators: tagsGenerator,
      ),
    ),
    FigOption(
      name: ["--expandkeywords"],
      description:
          "Matching keywords will be automatically expanded in the log file",
      args: FigArg(
        name: "pattern",
        suggestions: [
          FigSuggestion(
            name: "name:<pattern>",
            insertValue: "name:{cursor}",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "tag:<pattern>",
            insertValue: "tag:{cursor}",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--removekeywords"],
      description: "Remove keyword data from the generated log file",
      args: FigArg(
        name: "pattern",
        suggestions: [
          FigSuggestion(
            name: "all",
            description: "Remove data from all keywords",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "passed",
            description:
                "Remove data only from keywords in passed test cases and suites",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "for",
            description: "Remove passed iterations from for loops",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "while",
            description: "Remove passed iterations from while loops",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "wuks",
            description:
                "Remove all but the last failing keyword inside `BuiltIn.Wait Until Keyword Succeeds`",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "name:<pattern>",
            insertValue: "name:{cursor}",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "tag:<pattern>",
            insertValue: "tag:{cursor}",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--flattenkeywords"],
      description: "Flattens matching keywords in the generated log file",
      args: FigArg(
        name: "pattern",
        suggestions: [
          FigSuggestion(
            name: "for",
            description: "Flatten FOR loops fully",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "while",
            description: "Flatten WHILE loops fully",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "iteration",
            description: "Flatten FOR/WHILE loop iterations",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "name:<pattern>",
            insertValue: "name:{cursor}",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "tag:<pattern>",
            insertValue: "tag:{cursor}",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--listener"],
      description:
          "A class for monitoring test execution. Gets notifications e.g. when tests start and end",
      args: FigArg(name: "class"),
    ),
    FigOption(
      name: ["--nostatusrc"],
      description:
          "Sets the return code to zero regardless of failures in test cases. Error codes are returned normally",
    ),
    FigOption(
      name: ["--dryrun"],
      description:
          "Sets the return code to zero regardless of failures in test cases. Error codes are returned normally",
    ),
    FigOption(
      name: ["-X", "--exitonfailure"],
      description: "Stops test execution if any test fails",
    ),
    FigOption(
      name: ["--exitonerror"],
      description:
          "Stops test execution if any error occurs when parsing test data, importing libraries, and so on",
    ),
    FigOption(
      name: ["--skipteardownonexit"],
      description:
          "Causes teardowns to be skipped if test execution is stopped prematurely",
    ),
    FigOption(
      name: ["--randomize"],
      description: "Randomizes the test execution order",
      args: FigArg(
        name: "type",
        suggestions: [
          FigSuggestion(
            name: "all",
            description: "Randomizes both suites and tests",
            type: SuggestionType.option,
          ),
          FigSuggestion(
              name: "suites",
              description: "Randomizes suites",
              type: SuggestionType.option),
          FigSuggestion(
              name: "tests",
              description: "Randomizes tests",
              type: SuggestionType.option),
          FigSuggestion(
            name: "none",
            displayName: "none (default)",
            priority: 76,
            description: "No randomization (default)",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["--prerunmodifier"],
      description:
          "Class to programmatically modify the suite structure before execution",
      args: FigArg(name: "class"),
    ),
    FigOption(
      name: ["--prerebotmodifier"],
      description:
          "Class to programmatically modify the result model before creating reports and logs",
      args: FigArg(name: "class"),
    ),
    FigOption(
      name: ["--console"],
      description: "How to report execution on the console",
      args: FigArg(
        name: "type",
        suggestions: [
          FigSuggestion(
            name: "verbose",
            displayName: "verbose (default)",
            priority: 76,
            description: "Report every suite and test (default)",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "dotted",
            description:
                "Only show `.` for passed test, `s` for skipped tests, and `F` for failed tests",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "quiet",
            description: "No output except for errors and warnings",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "none",
            description: "No output whatsoever",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-.", "--dotted"],
      description: "Shortcut for `--console dotted`",
    ),
    FigOption(
      name: ["--quiet"],
      description: "Shortcut for `--console quiet`",
    ),
    FigOption(
      name: ["-W", "--consolewidth"],
      description: "Width of the console output. Default is 78",
      args: FigArg(
        name: "chars",
        suggestions: [
          FigSuggestion(
            name: "78",
            displayName: "78 (default)",
            priority: 76,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-C", "--consolecolors"],
      description: "Use colors on console output or not",
      args: FigArg(
        name: "option",
        suggestions: [
          FigSuggestion(
            name: "auto",
            displayName: "auto (default)",
            priority: 76,
            description: "Use colors when output not redirected (default)",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "on",
            description: "Always use colors",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "ansi",
            description: "Like `on` but use ANSI colors also on Windows",
            type: SuggestionType.option,
          ),
          FigSuggestion(
            name: "off",
            description: "Disable colors altogether",
            type: SuggestionType.option,
          ),
        ],
      ),
    ),
    FigOption(
      name: ["-K", "--consolemarkers"],
      description:
          "Show markers on the console when top level keywords in a test case end",
      args: FigArg(
        name: "option",
        suggestions: [
          FigSuggestion(name: "auto", type: SuggestionType.option),
          FigSuggestion(name: "on", type: SuggestionType.option),
          FigSuggestion(name: "off", type: SuggestionType.option),
        ],
      ),
    ),
    FigOption(
      name: ["-P", "--pythonpath"],
      description:
          "Additional locations (directories, ZIPs) where to search libraries and other extensions when they are imported",
      args: FigArg(
        name: "path",
        template: "filepaths",
      ),
    ),
    FigOption(
      name: ["-A", "--argumentfile"],
      description:
          "Text file to read more arguments from. Use special path `STDIN` to read contents from the standard input stream",
      args: FigArg(
        name: "path",
        template: "filepaths",
      ),
    ),
    FigOption(
      name: ["--version"],
      description: "Print version information",
    ),
  ],
);
