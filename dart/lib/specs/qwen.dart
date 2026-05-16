import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _qwenApprovalModes = [
  FigSuggestion(name: 'default'),
  FigSuggestion(name: 'auto_edit'),
  FigSuggestion(name: 'yolo'),
];

const List<FigSuggestion> _qwenSandboxModes = [
  FigSuggestion(name: 'read-only'),
  FigSuggestion(name: 'workspace-write'),
  FigSuggestion(name: 'danger-full-access'),
];

const List<FigSuggestion> _qwenOutputFormats = [
  FigSuggestion(name: 'text'),
  FigSuggestion(name: 'json'),
  FigSuggestion(name: 'stream-json'),
];

FigOption _qwenValueOption(dynamic name, String description, String argName) {
  return FigOption(
    name: name,
    description: description,
    args: [FigArg(name: argName)],
  );
}

FigOption _qwenPathOption(
  dynamic name,
  String description, {
  String template = 'filepaths',
}) {
  return FigOption(
    name: name,
    description: description,
    args: [
      FigArg(
        name: 'path',
        template: template,
      ),
    ],
  );
}

final FigSpec qwenSpec = FigSpec(
  name: 'qwen',
  description: 'Qwen Code CLI',
  args: [
    FigArg(
      name: 'prompt',
      isOptional: true,
    ),
  ],
  options: [
    FigOption(
      name: ['-p', '--prompt'],
      description: 'Run a prompt non-interactively and exit',
      args: [FigArg(name: 'text')],
    ),
    FigOption(
      name: ['-i', '--prompt-interactive'],
      description: 'Start interactive mode with an initial prompt',
      args: [FigArg(name: 'text')],
    ),
    _qwenValueOption(
        ['-m', '--model'], 'Model to use for the session', 'model'),
    _qwenPathOption(
      ['-C', '--cd'],
      'Run from the specified working directory',
      template: 'folders',
    ),
    FigOption(
      name: ['-a', '--all-files'],
      description: 'Include all files in the current workspace as context',
    ),
    FigOption(
      name: ['-y', '--yolo'],
      description: 'Automatically approve tool actions',
      isDangerous: true,
    ),
    FigOption(
      name: '--approval-mode',
      description: 'Choose how Qwen requests approval',
      args: [
        FigArg(
          name: 'mode',
          suggestions: _qwenApprovalModes,
        ),
      ],
    ),
    FigOption(
      name: '--sandbox',
      description: 'Sandbox mode for tool execution',
      args: [
        FigArg(
          name: 'mode',
          suggestions: _qwenSandboxModes,
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--output-format'],
      description: 'Output format for headless mode',
      args: [
        FigArg(
          name: 'format',
          suggestions: _qwenOutputFormats,
        ),
      ],
    ),
    FigOption(
      name: '--debug',
      description: 'Enable debug logging',
    ),
    _qwenPathOption(
      '--settings',
      'Path to a settings JSON file',
    ),
    FigOption(
      name: ['-h', '--help'],
      description: 'Show help',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: 'Show version information',
    ),
  ],
  subcommands: [
    FigSubcommand(
      name: 'auth',
      description: 'Authenticate Qwen Code',
      subcommands: [
        FigSubcommand(
          name: 'coding-plan',
          description: 'Use a Qwen API key for authentication',
          options: [
            _qwenValueOption('--key', 'Qwen API key', 'key'),
            _qwenValueOption(
              '--region',
              'DashScope service region',
              'region',
            ),
          ],
        ),
      ],
    ),
  ],
);
