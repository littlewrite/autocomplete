import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _claudeEffortLevels = [
  FigSuggestion(name: 'low'),
  FigSuggestion(name: 'medium'),
  FigSuggestion(name: 'high'),
  FigSuggestion(name: 'xhigh'),
  FigSuggestion(name: 'max'),
];

const List<FigSuggestion> _claudePermissionModes = [
  FigSuggestion(name: 'acceptEdits'),
  FigSuggestion(name: 'auto'),
  FigSuggestion(name: 'bypassPermissions'),
  FigSuggestion(name: 'default'),
  FigSuggestion(name: 'dontAsk'),
  FigSuggestion(name: 'plan'),
];

const List<FigSuggestion> _claudeScopes = [
  FigSuggestion(name: 'local'),
  FigSuggestion(name: 'user'),
  FigSuggestion(name: 'project'),
];

const List<FigSuggestion> _claudeMcpTransports = [
  FigSuggestion(name: 'stdio'),
  FigSuggestion(name: 'sse'),
  FigSuggestion(name: 'http'),
];

const List<FigSuggestion> _claudeInputFormats = [
  FigSuggestion(name: 'text'),
  FigSuggestion(name: 'stream-json'),
];

const List<FigSuggestion> _claudeOutputFormats = [
  FigSuggestion(name: 'text'),
  FigSuggestion(name: 'json'),
  FigSuggestion(name: 'stream-json'),
];

FigOption _claudePathOption(
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

FigOption _claudeValueOption(dynamic name, String description, String argName) {
  return FigOption(
    name: name,
    description: description,
    args: [FigArg(name: argName)],
  );
}

final List<FigOption> _claudePersistentOptions = [
  _claudePathOption(
    '--add-dir',
    'Additional directories to allow tool access to',
    template: 'folders',
  ),
  _claudeValueOption('--agent', 'Agent for the current session', 'agent'),
  _claudeValueOption(
    '--agents',
    'JSON object defining custom agents',
    'json',
  ),
  FigOption(
    name: '--allow-dangerously-skip-permissions',
    description: 'Enable bypassing all permission checks as an available mode',
  ),
  _claudeValueOption(
    ['--allowedTools', '--allowed-tools'],
    'Comma or space-separated list of tool names to allow',
    'tools',
  ),
  _claudeValueOption(
    '--append-system-prompt',
    'Append text to the default system prompt',
    'prompt',
  ),
  FigOption(
    name: '--bare',
    description:
        'Run in minimal mode without hooks, auto-memory, or keychain reads',
  ),
  _claudeValueOption(
    '--betas',
    'Beta headers to include in API requests',
    'beta',
  ),
  FigOption(
    name: '--brief',
    description: 'Enable brief agent-to-user communication mode',
  ),
  FigOption(
    name: '--chrome',
    description: 'Enable Claude in Chrome integration',
  ),
  FigOption(
    name: ['-c', '--continue'],
    description:
        'Continue the most recent conversation in the current directory',
  ),
  FigOption(
    name: '--dangerously-skip-permissions',
    description: 'Bypass all permission checks',
    isDangerous: true,
  ),
  FigOption(
    name: ['-d', '--debug'],
    description: 'Enable debug mode with an optional category filter',
    args: [FigArg(name: 'filter', isOptional: true)],
  ),
  _claudePathOption(
    '--debug-file',
    'Write debug logs to a specific file',
  ),
  FigOption(
    name: '--disable-slash-commands',
    description: 'Disable all skills',
  ),
  _claudeValueOption(
    ['--disallowedTools', '--disallowed-tools'],
    'Comma or space-separated list of tool names to deny',
    'tools',
  ),
  FigOption(
    name: '--effort',
    description: 'Reasoning effort level for the current session',
    args: [
      FigArg(
        name: 'level',
        suggestions: _claudeEffortLevels,
      ),
    ],
  ),
  FigOption(
    name: '--exclude-dynamic-system-prompt-sections',
    description: 'Move machine-specific sections out of the system prompt',
  ),
  _claudeValueOption(
    '--fallback-model',
    'Fallback model to use when the default model is overloaded',
    'model',
  ),
  FigOption(
    name: '--file',
    description: 'File resources to download at startup',
    args: [
      FigArg(
        name: 'spec',
        isVariadic: true,
      ),
    ],
    isRepeatable: true,
  ),
  FigOption(
    name: '--fork-session',
    description: 'Create a new session ID when resuming',
  ),
  _claudeValueOption(
    '--from-pr',
    'Resume a session linked to a pull request',
    'value',
  ),
  FigOption(
    name: '--ide',
    description: 'Automatically connect to an available IDE on startup',
  ),
  FigOption(
    name: '--include-hook-events',
    description: 'Include hook lifecycle events in stream-json output',
  ),
  FigOption(
    name: '--include-partial-messages',
    description: 'Include partial message chunks in non-interactive output',
  ),
  FigOption(
    name: '--input-format',
    description: 'Input format for non-interactive mode',
    args: [
      FigArg(
        name: 'format',
        suggestions: _claudeInputFormats,
      ),
    ],
  ),
  _claudeValueOption(
    '--json-schema',
    'JSON schema for structured output validation',
    'schema',
  ),
  _claudeValueOption(
    '--max-budget-usd',
    'Maximum dollar amount to spend on API calls',
    'amount',
  ),
  FigOption(
    name: '--mcp-config',
    description: 'Load MCP servers from JSON files or strings',
    args: [
      FigArg(
        name: 'config',
        isVariadic: true,
      ),
    ],
  ),
  FigOption(
    name: '--mcp-debug',
    description: 'Enable MCP debug mode',
    deprecated: true,
  ),
  _claudeValueOption('--model', 'Model for the current session', 'model'),
  _claudeValueOption(
    ['-n', '--name'],
    'Set a display name for this session',
    'name',
  ),
  FigOption(
    name: '--no-chrome',
    description: 'Disable Claude in Chrome integration',
  ),
  FigOption(
    name: '--no-session-persistence',
    description: 'Disable session persistence in print mode',
  ),
  FigOption(
    name: '--output-format',
    description: 'Output format for non-interactive mode',
    args: [
      FigArg(
        name: 'format',
        suggestions: _claudeOutputFormats,
      ),
    ],
  ),
  FigOption(
    name: '--permission-mode',
    description: 'Permission mode to use for the session',
    args: [
      FigArg(
        name: 'mode',
        suggestions: _claudePermissionModes,
      ),
    ],
  ),
  _claudePathOption(
    '--plugin-dir',
    'Load a plugin from a directory or zip for this session',
  ),
  _claudeValueOption(
    '--plugin-url',
    'Fetch a plugin zip from a URL for this session',
    'url',
  ),
  FigOption(
    name: ['-p', '--print'],
    description: 'Print the response and exit',
  ),
  FigOption(
    name: '--remote-control',
    description: 'Start an interactive session with remote control enabled',
    args: [FigArg(name: 'name', isOptional: true)],
  ),
  _claudeValueOption(
    '--remote-control-session-name-prefix',
    'Prefix for auto-generated remote control session names',
    'prefix',
  ),
  FigOption(
    name: '--replay-user-messages',
    description: 'Re-emit user messages on stdout in stream-json mode',
  ),
  FigOption(
    name: ['-r', '--resume'],
    description: 'Resume a conversation by session ID or search term',
    args: [FigArg(name: 'value', isOptional: true)],
  ),
  _claudeValueOption(
    '--session-id',
    'Use a specific session UUID',
    'uuid',
  ),
  _claudeValueOption(
    '--setting-sources',
    'Comma-separated list of setting sources to load',
    'sources',
  ),
  _claudeValueOption(
    '--settings',
    'Path to a settings JSON file or inline JSON string',
    'file-or-json',
  ),
  FigOption(
    name: '--strict-mcp-config',
    description: 'Only use MCP servers from --mcp-config',
  ),
  _claudeValueOption(
    '--system-prompt',
    'System prompt to use for the session',
    'prompt',
  ),
  FigOption(
    name: '--tmux',
    description: 'Create a tmux session for the worktree',
  ),
  _claudeValueOption(
    '--tools',
    'Specify the list of available built-in tools',
    'tools',
  ),
  FigOption(
    name: '--verbose',
    description: 'Override verbose mode setting from config',
  ),
  FigOption(
    name: ['-v', '--version'],
    description: 'Output the version number',
  ),
  FigOption(
    name: ['-w', '--worktree'],
    description: 'Create a new git worktree for this session',
    args: [FigArg(name: 'name', isOptional: true)],
  ),
  FigOption(
    name: ['-h', '--help'],
    description: 'Display help for command',
  ),
];

final FigSpec claudeSpec = FigSpec(
  name: 'claude',
  description: 'Claude Code CLI',
  args: [
    FigArg(
      name: 'prompt',
      isOptional: true,
    ),
  ],
  options: _claudePersistentOptions,
  subcommands: [
    FigSubcommand(
      name: 'agents',
      description: 'Manage background agents',
    ),
    FigSubcommand(
      name: 'auth',
      description: 'Manage authentication',
      subcommands: [
        FigSubcommand(
          name: 'login',
          description: 'Sign in to your Anthropic account',
        ),
        FigSubcommand(
          name: 'logout',
          description: 'Log out from your Anthropic account',
        ),
        FigSubcommand(
          name: 'status',
          description: 'Show authentication status',
        ),
      ],
    ),
    FigSubcommand(
      name: 'auto-mode',
      description: 'Inspect auto mode classifier configuration',
    ),
    FigSubcommand(
      name: 'doctor',
      description: 'Check the health of your Claude Code auto-updater',
    ),
    FigSubcommand(
      name: 'install',
      description: 'Install Claude Code native build',
      args: [
        FigArg(
          name: 'target',
          isOptional: true,
          suggestions: const [
            FigSuggestion(name: 'stable'),
            FigSuggestion(name: 'latest'),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'mcp',
      description: 'Configure and manage MCP servers',
      subcommands: [
        FigSubcommand(
          name: 'add',
          description: 'Add an MCP server to Claude Code',
          args: [
            FigArg(name: 'name'),
            FigArg(name: 'commandOrUrl'),
            FigArg(name: 'args', isOptional: true, isVariadic: true),
          ],
          options: [
            _claudeValueOption(
              '--callback-port',
              'Fixed port for OAuth callback',
              'port',
            ),
            _claudeValueOption(
              '--client-id',
              'OAuth client ID for HTTP or SSE servers',
              'clientId',
            ),
            FigOption(
              name: '--client-secret',
              description: 'Prompt for OAuth client secret',
            ),
            FigOption(
              name: ['-e', '--env'],
              description: 'Set environment variables',
              args: [
                FigArg(
                  name: 'env',
                  isVariadic: true,
                ),
              ],
            ),
            FigOption(
              name: ['-H', '--header'],
              description: 'Set WebSocket headers',
              args: [
                FigArg(
                  name: 'header',
                  isVariadic: true,
                ),
              ],
            ),
            FigOption(
              name: ['-s', '--scope'],
              description: 'Configuration scope',
              args: [
                FigArg(
                  name: 'scope',
                  suggestions: _claudeScopes,
                ),
              ],
            ),
            FigOption(
              name: ['-t', '--transport'],
              description: 'Transport type',
              args: [
                FigArg(
                  name: 'transport',
                  suggestions: _claudeMcpTransports,
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'add-from-claude-desktop',
          description: 'Import MCP servers from Claude Desktop',
        ),
        FigSubcommand(
          name: 'add-json',
          description: 'Add an MCP server with a JSON string',
          args: [
            FigArg(name: 'name'),
            FigArg(name: 'json'),
          ],
        ),
        FigSubcommand(
          name: 'get',
          description: 'Get details about an MCP server',
          args: [FigArg(name: 'name')],
        ),
        FigSubcommand(
          name: 'list',
          description: 'List configured MCP servers',
        ),
        FigSubcommand(
          name: 'remove',
          description: 'Remove an MCP server',
          args: [FigArg(name: 'name')],
          options: [
            FigOption(
              name: ['-s', '--scope'],
              description: 'Configuration scope',
              args: [
                FigArg(
                  name: 'scope',
                  suggestions: _claudeScopes,
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'reset-project-choices',
          description: 'Reset all approved and rejected project-scoped servers',
        ),
        FigSubcommand(
          name: 'serve',
          description: 'Start the Claude Code MCP server',
        ),
      ],
    ),
    FigSubcommand(
      name: ['plugin', 'plugins'],
      description: 'Manage Claude Code plugins',
      subcommands: [
        FigSubcommand(
          name: 'details',
          description:
              'Show plugin component inventory and projected token cost',
          args: [FigArg(name: 'name')],
        ),
        FigSubcommand(
          name: 'disable',
          description: 'Disable an enabled plugin',
          args: [FigArg(name: 'plugin', isOptional: true)],
        ),
        FigSubcommand(
          name: 'enable',
          description: 'Enable a disabled plugin',
          args: [FigArg(name: 'plugin')],
        ),
        FigSubcommand(
          name: ['install', 'i'],
          description: 'Install a plugin from available marketplaces',
          args: [FigArg(name: 'plugin')],
          options: [
            FigOption(
              name: ['-s', '--scope'],
              description: 'Installation scope',
              args: [
                FigArg(
                  name: 'scope',
                  suggestions: const [
                    FigSuggestion(name: 'user'),
                    FigSuggestion(name: 'project'),
                    FigSuggestion(name: 'local'),
                  ],
                ),
              ],
            ),
          ],
        ),
        FigSubcommand(
          name: 'list',
          description: 'List installed plugins',
        ),
        FigSubcommand(
          name: 'marketplace',
          description: 'Manage Claude Code marketplaces',
        ),
        FigSubcommand(
          name: ['prune', 'autoremove'],
          description:
              'Remove auto-installed dependencies that are no longer needed',
        ),
        FigSubcommand(
          name: 'tag',
          description: 'Create a release tag for a plugin',
          args: [FigArg(name: 'path', isOptional: true, template: 'filepaths')],
        ),
        FigSubcommand(
          name: ['uninstall', 'remove'],
          description: 'Uninstall an installed plugin',
          args: [FigArg(name: 'plugin')],
        ),
        FigSubcommand(
          name: 'update',
          description: 'Update a plugin to the latest version',
          args: [FigArg(name: 'plugin')],
        ),
        FigSubcommand(
          name: 'validate',
          description: 'Validate a plugin or marketplace manifest',
          args: [FigArg(name: 'path', template: 'filepaths')],
        ),
      ],
    ),
    FigSubcommand(
      name: 'project',
      description: 'Manage Claude Code project state',
    ),
    FigSubcommand(
      name: 'setup-token',
      description: 'Set up a long-lived authentication token',
    ),
    FigSubcommand(
      name: 'ultrareview',
      description: 'Run a cloud-hosted multi-agent code review',
      args: [
        FigArg(
          name: 'target',
          isOptional: true,
        ),
      ],
    ),
    FigSubcommand(
      name: ['update', 'upgrade'],
      description: 'Check for updates and install if available',
    ),
  ],
);
