// AI-generated from TypeScript source: capacitor.ts
import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _platforms = [
  FigSuggestion(name: 'android', icon: 'fig://icon?type=android'),
  FigSuggestion(name: 'ios', icon: 'fig://icon?type=apple'),
];

bool _isPlatform(String value) {
  return value == 'ios' || value == 'android';
}

final FigGenerator _targetGenerator = FigGenerator(
  script: (List<String> tokens) {
    // tokens: [cliName, command, platform, ...]
    if (tokens.length < 3) return [];
    final platform = tokens[2];
    if (!_isPlatform(platform)) {
      return [];
    }
    return ['npx', 'capacitor', 'run', platform, '--list'];
  },
  postProcess: (String out, [List<String>? tokens]) {
    final lines = out.trim().split('\n');
    if (lines.length < 2) return [];
    // Ignore output header lines (slice(2) in TS)
    final dataLines = lines.skip(2);

    return dataLines.map((s) {
      final parts = s.replaceAll(RegExp(r'\s\s+'), '|').split('|');
      if (parts.length < 3) return FigSuggestion(name: s);
      
      final name = parts[0];
      final api = parts[1];
      final targetId = parts[2];

      return FigSuggestion(
        name: targetId,
        displayName: '$name $api',
        icon: '📱',
      );
    }).toList();
  },
);

final List<FigSubcommand> capacitorSubcommands = [
  FigSubcommand(
    name: 'add',
    description: 'Add a native platform project to your app',
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
      ),
    ],
  ),
  FigSubcommand(
    name: 'copy',
    description:
        'Copy the web app build and Capacitor configuration file into the native platform project. Run this each time you make changes to your web app or change a configuration value',
    priority: 51,
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
        isOptional: true,
      ),
    ],
  ),
  FigSubcommand(
    name: 'ls',
    description: 'List all installed Cordova and Capacitor plugins',
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
        isOptional: true,
      ),
    ],
  ),
  FigSubcommand(
    name: 'open',
    description:
        'Opens the native project workspace in the specified native IDE (Xcode for iOS, Android Studio for Android)',
    priority: 51,
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
      ),
    ],
  ),
  FigSubcommand(
    name: 'run',
    description:
        'Opens the native project workspace in the specified native IDE (Xcode for iOS, Android Studio for Android)',
    priority: 51,
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
      ),
    ],
    options: [
      FigOption(
        name: '--list',
        description:
            'Print a list of target devices available to the given platform',
        icon: '📱',
      ),
      FigOption(
        name: '--target',
        description: 'Run on a specific target device',
        icon: '📱',
        args: [
          FigArg(
            name: 'target',
            generators: [_targetGenerator],
          ),
        ],
      ),
    ],
  ),
  FigSubcommand(
    name: 'sync',
    description: 'This command runs copy and then update',
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
        isOptional: true,
      ),
    ],
    options: [
      FigOption(
        name: '--deployment',
        description:
            'Podfile.lock won\'t be deleted and pod install will use --deployment option',
      ),
      FigOption(
        name: '--inline',
        description:
            'After syncing, all JS source maps will be inlined allowing for debugging an Android Web View in Chromium based browsers',
      ),
    ],
  ),
  FigSubcommand(
    name: 'update',
    description:
        'Updates the native plugins and dependencies referenced in package.json',
    args: [
      FigArg(
        name: 'platform',
        suggestions: _platforms,
        isOptional: true,
      ),
    ],
    options: [
      FigOption(
        name: '--deployment',
        description:
            'Podfile.lock won\'t be deleted and pod install will use --deployment option',
      ),
    ],
  ),
];

final List<FigOption> capacitorOptions = [
  FigOption(
    name: ['--help', '-h'],
    description:
        'Output usage information. Can be used with individual commands too',
    isPersistent: true,
  ),
  FigOption(
    name: ['--version', '-V'],
    description: 'Output the version number',
  ),
];

final FigSpec capacitorSpec = FigSpec(
  name: 'capacitor',
  description:
      'The Capacitor command-line interface (CLI) tool is used to develop Capacitor apps',
  icon: 'https://capacitorjs.com/docs/img/meta/favicon.png',
  subcommands: capacitorSubcommands,
  options: capacitorOptions,
);
