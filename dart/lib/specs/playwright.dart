// AI-generated from TypeScript source: playwright.ts
import 'package:autocomplete/src/spec.dart';

final FigGenerator testsGenerator = FigGenerator(
  script: (List<String> tokens) {
    // TODO: load the list of test files specified in testDir on playwright.config file
    return [];
  },
  postProcess: (String out, [List<String>? tokens]) {
    return [];
  },
);

final List<FigSuggestion> browserSuggestions = const [
  FigSuggestion(
    name: 'chromium',
    displayName: 'Chromium',
  ),
  FigSuggestion(
    name: 'chrome',
    displayName: 'Chrome',
  ),
  FigSuggestion(
    name: 'chrome-beta',
    displayName: 'Chrome Beta',
  ),
  FigSuggestion(
    name: 'msedge',
    displayName: 'Microsoft Edge',
  ),
  FigSuggestion(
    name: 'msedge-beta',
    displayName: 'Microsoft Edge Beta',
  ),
  FigSuggestion(
    name: 'msedge-dev',
    displayName: 'Microsoft Edge Dev',
  ),
  FigSuggestion(
    name: 'firefox',
    displayName: 'Firefox',
  ),
  FigSuggestion(
    name: 'webkit',
    displayName: 'WebKit',
  ),
];

final FigOption helpOption = FigOption(
  name: ['--help', '-h'],
  description: 'Display help for command',
  priority: 1,
);

final FigSpec playwrightSpec = FigSpec(
  name: 'playwright',
  description: '',
  subcommands: [
    FigSubcommand(
      name: ['test'],
      description: 'Run tests with Playwright Test',
      args: [
        FigArg(
          name: 'tests',
          description: 'Test files to run',
          isOptional: true,
          isVariadic: true,
          template: ['filepaths', 'folders'],
        ),
      ],
      options: [
        FigOption(
          name: ['-g'],
          description: 'Run the test with the title',
          args: [
            FigArg(
              name: 'title',
            ),
          ],
        ),
        FigOption(
          name: ['--headed'],
          description: 'Run tests in headed browsers',
        ),
        helpOption,
      ],
    ),
    FigSubcommand(
      name: ['install'],
      description: 'Running without arguments will install default browsers',
      args: [
        FigArg(
          name: 'browsers',
          description: 'Browser to install',
          isOptional: true,
          isVariadic: true,
          suggestions: browserSuggestions,
        ),
      ],
      options: [
        FigOption(
          name: ['--with-deps'],
          description: 'Install system dependencies for browsers',
        ),
        helpOption,
      ],
    ),
  ],
  options: [
    FigOption(
      name: ['--version', '-V'],
      description: 'Output the version number',
    ),
    helpOption,
  ],
);
