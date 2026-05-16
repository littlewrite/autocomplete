import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _geminiSandboxModes = [
  FigSuggestion(name: 'read-only'),
  FigSuggestion(name: 'workspace-write'),
  FigSuggestion(name: 'danger-full-access'),
];

const List<FigSuggestion> _geminiApprovalModes = [
  FigSuggestion(name: 'default'),
  FigSuggestion(name: 'auto_edit'),
  FigSuggestion(name: 'yolo'),
];

const List<FigSuggestion> _geminiOutputFormats = [
  FigSuggestion(name: 'text'),
  FigSuggestion(name: 'json'),
  FigSuggestion(name: 'stream-json'),
];

FigOption _geminiValueOption(dynamic name, String description, String argName) {
  return FigOption(
    name: name,
    description: description,
    args: [FigArg(name: argName)],
  );
}

FigOption _geminiPathOption(
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

final FigSpec geminiSpec = FigSpec(
  name: 'gemini',
  description: 'Gemini CLI',
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
    _geminiValueOption(
        ['-m', '--model'], 'Model to use for the session', 'model'),
    _geminiPathOption(
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
      description: 'Auto-approve actions without prompting',
      isDangerous: true,
    ),
    FigOption(
      name: '--approval-mode',
      description: 'Choose how Gemini requests approval',
      args: [
        FigArg(
          name: 'mode',
          suggestions: _geminiApprovalModes,
        ),
      ],
    ),
    FigOption(
      name: '--sandbox',
      description: 'Sandbox mode for tool execution',
      args: [
        FigArg(
          name: 'mode',
          suggestions: _geminiSandboxModes,
        ),
      ],
    ),
    FigOption(
      name: ['-o', '--output-format'],
      description: 'Output format for non-interactive mode',
      args: [
        FigArg(
          name: 'format',
          suggestions: _geminiOutputFormats,
        ),
      ],
    ),
    FigOption(
      name: '--debug',
      description: 'Enable debug logging',
    ),
    FigOption(
      name: '--checkpointing',
      description: 'Enable checkpointing for file edits',
    ),
    _geminiPathOption(
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
      name: 'extensions',
      description: 'Manage Gemini CLI extensions',
    ),
    FigSubcommand(
      name: 'mcp',
      description: 'Manage MCP servers for Gemini CLI',
    ),
    FigSubcommand(
      name: 'restore',
      description: 'Restore a previous chat state',
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update Gemini CLI to the latest version',
    ),
    FigSubcommand(
      name: 'auth',
      description: 'Authenticate Gemini CLI with Google',
    ),
    FigSubcommand(
      name: 'stats',
      description: 'Show Gemini CLI usage statistics',
    ),
    FigSubcommand(
      name: 'chat',
      description: 'Start a chat session explicitly',
      args: [
        FigArg(
          name: 'prompt',
          isOptional: true,
        ),
      ],
    ),
  ],
);
