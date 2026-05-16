import 'package:autocomplete/src/spec.dart';

const List<FigSuggestion> _codexApprovalPolicies = [
  FigSuggestion(name: 'untrusted'),
  FigSuggestion(name: 'on-failure'),
  FigSuggestion(name: 'on-request'),
  FigSuggestion(name: 'never'),
];

const List<FigSuggestion> _codexSandboxModes = [
  FigSuggestion(name: 'read-only'),
  FigSuggestion(name: 'workspace-write'),
  FigSuggestion(name: 'danger-full-access'),
];

const List<FigSuggestion> _codexShells = [
  FigSuggestion(name: 'bash'),
  FigSuggestion(name: 'elvish'),
  FigSuggestion(name: 'fish'),
  FigSuggestion(name: 'powershell'),
  FigSuggestion(name: 'zsh'),
];

const List<FigSuggestion> _codexColorModes = [
  FigSuggestion(name: 'always'),
  FigSuggestion(name: 'never'),
  FigSuggestion(name: 'auto'),
];

const List<FigSuggestion> _codexOssProviders = [
  FigSuggestion(name: 'lmstudio'),
  FigSuggestion(name: 'ollama'),
];

FigOption _codexValueOption(dynamic name, String description, String argName) {
  return FigOption(
    name: name,
    description: description,
    args: [FigArg(name: argName)],
  );
}

FigOption _codexPathOption(
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

final List<FigOption> _codexSharedOptions = [
  _codexValueOption(
    ['-c', '--config'],
    'Override a configuration value from config.toml',
    'key=value',
  ),
  _codexValueOption('--enable', 'Enable a feature', 'feature'),
  _codexValueOption('--disable', 'Disable a feature', 'feature'),
];

final List<FigOption> _codexRootOptions = [
  ..._codexSharedOptions,
  _codexValueOption(
    '--remote',
    'Connect the TUI to a remote app server websocket endpoint',
    'addr',
  ),
  _codexValueOption(
    '--remote-auth-token-env',
    'Environment variable that contains the remote bearer token',
    'env_var',
  ),
  FigOption(
    name: ['-i', '--image'],
    description: 'Attach image files to the initial prompt',
    args: [
      FigArg(
        name: 'file',
        template: 'filepaths',
        isVariadic: true,
      ),
    ],
  ),
  _codexValueOption(['-m', '--model'], 'Model the agent should use', 'model'),
  FigOption(
    name: '--oss',
    description: 'Use an open-source provider',
  ),
  FigOption(
    name: '--local-provider',
    description: 'Local open-source provider to use',
    args: [
      FigArg(
        name: 'provider',
        suggestions: _codexOssProviders,
      ),
    ],
  ),
  _codexValueOption(
    ['-p', '--profile'],
    'Configuration profile from config.toml',
    'profile',
  ),
  FigOption(
    name: ['-s', '--sandbox'],
    description: 'Sandbox policy for model-generated shell commands',
    args: [
      FigArg(
        name: 'mode',
        suggestions: _codexSandboxModes,
      ),
    ],
  ),
  FigOption(
    name: '--dangerously-bypass-approvals-and-sandbox',
    description: 'Skip confirmation prompts and execute without sandboxing',
    isDangerous: true,
  ),
  _codexPathOption(
    ['-C', '--cd'],
    'Use the specified directory as the working root',
    template: 'folders',
  ),
  _codexPathOption(
    '--add-dir',
    'Additional writable directories',
    template: 'folders',
  ),
  FigOption(
    name: ['-a', '--ask-for-approval'],
    description: 'When to require user approval',
    args: [
      FigArg(
        name: 'policy',
        suggestions: _codexApprovalPolicies,
      ),
    ],
  ),
  FigOption(
    name: '--search',
    description: 'Enable live web search',
  ),
  FigOption(
    name: '--no-alt-screen',
    description: 'Disable alternate screen mode',
  ),
  FigOption(
    name: ['-h', '--help'],
    description: 'Print help',
  ),
  FigOption(
    name: ['-V', '--version'],
    description: 'Print version',
  ),
];

FigSubcommand _codexMcpSubcommand(String name, String description) {
  return FigSubcommand(
    name: name,
    description: description,
    options: _codexSharedOptions,
  );
}

final FigSpec codexSpec = FigSpec(
  name: 'codex',
  description: 'Codex CLI',
  args: [
    FigArg(
      name: 'prompt',
      isOptional: true,
    ),
  ],
  options: _codexRootOptions,
  subcommands: [
    FigSubcommand(
      name: ['exec', 'e'],
      description: 'Run Codex non-interactively',
      args: [
        FigArg(
          name: 'prompt',
          isOptional: true,
        ),
      ],
      options: [
        ..._codexSharedOptions,
        FigOption(
          name: ['-i', '--image'],
          description: 'Attach image files to the initial prompt',
          args: [
            FigArg(
              name: 'file',
              template: 'filepaths',
              isVariadic: true,
            ),
          ],
        ),
        _codexValueOption(
            ['-m', '--model'], 'Model the agent should use', 'model'),
        FigOption(
          name: '--oss',
          description: 'Use an open-source provider',
        ),
        FigOption(
          name: '--local-provider',
          description: 'Local open-source provider to use',
          args: [
            FigArg(
              name: 'provider',
              suggestions: _codexOssProviders,
            ),
          ],
        ),
        _codexValueOption(
          ['-p', '--profile'],
          'Configuration profile from config.toml',
          'profile',
        ),
        FigOption(
          name: ['-s', '--sandbox'],
          description: 'Sandbox policy for model-generated shell commands',
          args: [
            FigArg(
              name: 'mode',
              suggestions: _codexSandboxModes,
            ),
          ],
        ),
        FigOption(
          name: '--dangerously-bypass-approvals-and-sandbox',
          description:
              'Skip confirmation prompts and execute without sandboxing',
          isDangerous: true,
        ),
        _codexPathOption(
          ['-C', '--cd'],
          'Use the specified directory as the working root',
          template: 'folders',
        ),
        _codexPathOption(
          '--add-dir',
          'Additional writable directories',
          template: 'folders',
        ),
        FigOption(
          name: '--skip-git-repo-check',
          description: 'Allow running outside a Git repository',
        ),
        FigOption(
          name: '--ephemeral',
          description: 'Run without persisting session files to disk',
        ),
        FigOption(
          name: '--ignore-user-config',
          description: 'Do not load user config.toml',
        ),
        FigOption(
          name: '--ignore-rules',
          description: 'Do not load user or project execpolicy rule files',
        ),
        _codexPathOption(
          '--output-schema',
          'Path to a JSON Schema file describing the final response shape',
        ),
        FigOption(
          name: '--color',
          description: 'Color settings for output',
          args: [
            FigArg(
              name: 'color',
              suggestions: _codexColorModes,
            ),
          ],
        ),
        FigOption(
          name: '--json',
          description: 'Print events to stdout as JSONL',
        ),
        _codexPathOption(
          ['-o', '--output-last-message'],
          'Write the last message from the agent to a file',
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Print help',
        ),
        FigOption(
          name: ['-V', '--version'],
          description: 'Print version',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'resume',
          description: 'Resume a previous session',
        ),
        FigSubcommand(
          name: 'review',
          description: 'Run a code review against the current repository',
        ),
      ],
    ),
    FigSubcommand(
      name: 'review',
      description: 'Run a code review non-interactively',
      args: [
        FigArg(
          name: 'prompt',
          isOptional: true,
        ),
      ],
      options: [
        ..._codexSharedOptions,
        FigOption(
          name: '--uncommitted',
          description: 'Review staged, unstaged, and untracked changes',
        ),
        _codexValueOption(
            '--base', 'Review changes against the given base branch', 'branch'),
        _codexValueOption(
            '--commit', 'Review the changes introduced by a commit', 'sha'),
        _codexValueOption('--title',
            'Commit title to display in the review summary', 'title'),
        FigOption(
          name: ['-h', '--help'],
          description: 'Print help',
        ),
      ],
    ),
    FigSubcommand(
      name: 'login',
      description: 'Manage login',
      options: [
        ..._codexSharedOptions,
        FigOption(
          name: '--with-api-key',
          description: 'Read the API key from stdin',
        ),
        FigOption(
          name: '--with-access-token',
          description: 'Read the access token from stdin',
        ),
        FigOption(
          name: '--device-auth',
          description: 'Use device authentication flow',
        ),
        FigOption(
          name: ['-h', '--help'],
          description: 'Print help',
        ),
      ],
      subcommands: [
        FigSubcommand(
          name: 'status',
          description: 'Show login status',
          options: _codexSharedOptions,
        ),
      ],
    ),
    FigSubcommand(
      name: 'logout',
      description: 'Remove stored authentication credentials',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'mcp',
      description: 'Manage external MCP servers for Codex',
      options: _codexSharedOptions,
      subcommands: [
        FigSubcommand(
          name: 'list',
          description: 'List configured MCP servers',
          options: [
            ..._codexSharedOptions,
            FigOption(
              name: '--json',
              description: 'Output the configured servers as JSON',
            ),
            FigOption(
              name: ['-h', '--help'],
              description: 'Print help',
            ),
          ],
        ),
        _codexMcpSubcommand('get', 'Get an MCP server configuration'),
        FigSubcommand(
          name: 'add',
          description: 'Add an MCP server configuration',
          args: [
            FigArg(name: 'name'),
            FigArg(name: 'command', isOptional: true, isVariadic: true),
          ],
          options: [
            ..._codexSharedOptions,
            _codexValueOption('--env',
                'Environment variable for stdio server launch', 'KEY=VALUE'),
            _codexValueOption(
                '--url', 'URL for a streamable HTTP MCP server', 'url'),
            _codexValueOption(
              '--bearer-token-env-var',
              'Environment variable used to read a bearer token',
              'env_var',
            ),
            FigOption(
              name: ['-h', '--help'],
              description: 'Print help',
            ),
          ],
        ),
        FigSubcommand(
          name: 'remove',
          description: 'Remove an MCP server configuration',
          args: [FigArg(name: 'name')],
          options: [
            ..._codexSharedOptions,
            FigOption(
              name: ['-h', '--help'],
              description: 'Print help',
            ),
          ],
        ),
        _codexMcpSubcommand('login', 'Authenticate to an MCP server'),
        _codexMcpSubcommand('logout', 'Remove MCP authentication state'),
      ],
    ),
    FigSubcommand(
      name: 'plugin',
      description: 'Manage Codex plugins',
      options: _codexSharedOptions,
      subcommands: [
        FigSubcommand(
          name: 'marketplace',
          description: 'Manage plugin marketplaces for Codex',
          options: _codexSharedOptions,
          subcommands: [
            FigSubcommand(
              name: 'add',
              description: 'Add a plugin marketplace',
              args: [FigArg(name: 'source')],
              options: [
                ..._codexSharedOptions,
                _codexValueOption(
                    '--ref', 'Git ref to pin the marketplace source', 'ref'),
                _codexValueOption('--sparse',
                    'Sparse checkout path inside the repository', 'path'),
                FigOption(
                  name: ['-h', '--help'],
                  description: 'Print help',
                ),
              ],
            ),
            _codexMcpSubcommand('upgrade', 'Upgrade configured marketplaces'),
            _codexMcpSubcommand('remove', 'Remove a configured marketplace'),
          ],
        ),
      ],
    ),
    FigSubcommand(
      name: 'mcp-server',
      description: 'Start Codex as an MCP server',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'app-server',
      description: 'Run the experimental app server or related tooling',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'remote-control',
      description:
          'Ensure the app-server daemon is running with remote control enabled',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'app',
      description: 'Launch the Codex desktop app',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'completion',
      description: 'Generate shell completion scripts',
      args: [
        FigArg(
          name: 'shell',
          isOptional: true,
          suggestions: _codexShells,
        ),
      ],
      options: [
        ..._codexSharedOptions,
        FigOption(
          name: ['-h', '--help'],
          description: 'Print help',
        ),
      ],
    ),
    FigSubcommand(
      name: 'update',
      description: 'Update Codex to the latest version',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'sandbox',
      description: 'Run commands within a Codex-provided sandbox',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'debug',
      description: 'Debugging tools',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: ['apply', 'a'],
      description: 'Apply the latest diff produced by a Codex agent',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'resume',
      description: 'Resume a previous interactive session',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'fork',
      description: 'Fork a previous interactive session',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'cloud',
      description: 'Browse tasks from Codex Cloud and apply changes locally',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'exec-server',
      description: 'Run the standalone exec-server service',
      options: _codexSharedOptions,
    ),
    FigSubcommand(
      name: 'features',
      description: 'Inspect feature flags',
      options: _codexSharedOptions,
    ),
  ],
);
