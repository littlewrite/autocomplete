// AI-generated from TypeScript source: firefox.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec firefoxSpec = FigSpec(
  name: 'firefox',
  description: 'Free open-source web browser developer by Mozilla',
  args: [
    FigArg(
      name: 'URL',
      description: 'URL to open',
    ),
  ],
  options: [
    FigOption(
      name: ['--display'],
      description: 'Specify an X display to use',
      args: [
        FigArg(
          name: 'display',
          description: 'X display to use',
        ),
      ],
    ),
    FigOption(
      name: ['--sync'],
      description: 'Make X calls synchronous',
    ),
    FigOption(
      name: ['--g-fatal-warnings'],
      description: 'Make all warnings fatal',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Print help message and exit',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Print version information and exit',
    ),
    FigOption(
      name: ['--full-version'],
      description: 'Print full version information and exit',
    ),
    FigOption(
      name: ['-P'],
      description: 'Specify profile to use',
      args: [
        FigArg(
          name: 'profile',
          description: 'Profile to use',
        ),
      ],
    ),
    FigOption(
      name: ['--profile'],
      description: 'Specify profile to use by folder',
      args: [
        FigArg(
          name: 'profile',
          description: 'Profile folder to use',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--migration'],
      description: 'Start with migration wizard',
    ),
    FigOption(
      name: ['--ProfileManager'],
      description: 'Start with ProfileManager',
    ),
    FigOption(
      name: ['--no-remote'],
      description:
          'Do not accept or send remote commands; implies --new-instance',
      exclusiveOn: ['--new-instance'],
    ),
    FigOption(
      name: ['--new-instance'],
      description: 'Open new instance, not a new window in running instance',
    ),
    FigOption(
      name: ['--safe-mode'],
      description: 'Disables extensions and themes for this session',
    ),
    FigOption(
      name: ['--allow-downgrade'],
      description: 'Allows downgrading a profile',
    ),
    FigOption(
      name: ['--MOZ_LOG'],
      description:
          'Treated as MOZ_LOG=<modules> environment variable, overrides it',
      args: [
        FigArg(
          name: 'modules',
        ),
      ],
    ),
    FigOption(
      name: ['--MOZ_LOG_FILE'],
      description:
          'Treated as MOZ_LOG_FILE=<file> environment variable, overrides it. If MOZ_LOG_FILE is not specified as an argument or as an environment variable, logging will be written to stdout',
      args: [
        FigArg(
          name: 'file',
          template: 'filepaths',
        ),
      ],
    ),
    FigOption(
      name: ['--headless'],
      description: 'Run without a GUI',
    ),
    FigOption(
      name: ['--jsdebugger'],
      description:
          'Open the Browser Toolbox. Defaults to the local build but can be overridden by a firefox path',
      args: [
        FigArg(
          name: 'folder',
          template: 'folders',
          isOptional: true,
        ),
      ],
    ),
    FigOption(
      name: ['--wait-for-jsdebugger'],
      description:
          'Spin event loop until JS debugger connects; enables debugging (some) application startup code paths',
      dependsOn: ['--jsdebugger'],
    ),
    FigOption(
      name: ['--start-debugger-server'],
      description:
          'Start the devtools server on a TCP port or Unix domain socket path',
      args: [
        FigArg(
          name: 'port or path',
          template: 'filepaths',
          generators: [
            FigGenerator(
              trigger: {'on': 'change'},
              script: ['true'],
              postProcess: (String out, [List<String>? tokens]) {
                if (tokens == null || tokens.isEmpty) return [];
                final finalToken = tokens.last;
                final port = int.tryParse(finalToken);
                if (port == null) return [];
                // Check if integer (already done by tryParse which returns int)
                if (port < 0 || port > 65535) return [];
                return [
                  FigSuggestion(name: finalToken, description: 'Port number')
                ];
              },
            ),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['--browser'],
      description: 'Open a browser window',
    ),
    FigOption(
      name: ['--new-window'],
      description: 'Open a URL in a new window',
      isRepeatable: true,
      args: [
        FigArg(
          name: 'URL',
          description: 'URL to open',
        ),
      ],
    ),
    FigOption(
      name: ['--new-tab'],
      description: 'Open a URL in a new tab',
      isRepeatable: true,
      args: [
        FigArg(
          name: 'URL',
          description: 'URL to open',
        ),
      ],
    ),
    FigOption(
      name: ['--private-window'],
      description: 'Open a URL in a new private window',
      isRepeatable: true,
      args: [
        FigArg(
          name: 'URL',
          description: 'URL to open',
        ),
      ],
    ),
    FigOption(
      name: ['--preferences'],
      description: 'Open the preferences dialog',
    ),
    FigOption(
      name: ['--screenshot'],
      description: 'Take a screenshot',
      args: [
        FigArg(
          isOptional: true,
          name: 'folder',
          description: 'Folder to save screenshot to',
          template: 'folders',
        ),
      ],
    ),
    FigOption(
      name: ['--window-size'],
      description: 'Size of your screenshot',
      dependsOn: ['--screenshot'],
      args: [
        FigArg(
          name: 'width',
          description: 'Width of your screenshot',
        ),
        FigArg(
          name: 'height',
          description: 'Height of your screenshot',
          isOptional: true,
        ),
      ],
    ),
  ],
);
