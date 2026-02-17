// AI-generated from TypeScript source: cw.ts
// Generated at: 2026-02-16

import 'package:autocomplete/src/spec.dart';

/// 主题生成器
final FigGenerator themesGenerator = FigGenerator(
  script: ['cw', 'theme', '--list'],
  postProcess: (String output, [List<String>? tokens]) {
    // 内置主题
    final builtinThemes = <FigSuggestion>[
      FigSuggestion(
        name: 'system',
        icon: '💻',
        priority: 51,
      ),
      FigSuggestion(
        name: 'light',
        icon: 'fig://template?color=ffffff&badge=☀️',
        priority: 51,
      ),
      FigSuggestion(
        name: 'dark',
        icon: 'fig://template?color=000000&badge=🌙',
        priority: 51,
      ),
    ];

    // 处理脚本输出
    final themesFromOutput = output
        .split('\n')
        .where((name) => name.trim().isNotEmpty) // 过滤空行
        .map((name) => FigSuggestion(
              name: name.trim(),
              icon: '🎨',
            ))
        .toList();

    // 合并内置主题和从脚本获取的主题
    return themesFromOutput.followedBy(builtinThemes).toList();
  },
);

final List<FigSuggestion> builtinThemes = [
  FigSuggestion(name: 'system', icon: '💻', priority: 51),
  FigSuggestion(
      name: 'light',
      icon: 'fig://template?color=ffffff&badge=☀️',
      priority: 51),
  FigSuggestion(
      name: 'dark', icon: 'fig://template?color=000000&badge=🌙', priority: 51)
];

/// Completion spec for `cw` CLI
final FigSpec cwSpec =
    FigSpec(name: 'cw', description: 'Top level cli commands', subcommands: [
  Subcommand(
      name: 'app',
      description: 'Interact with the desktop app',
      subcommands: [
        Subcommand(
            name: 'install',
            description: 'Install the CodeWhisperer app',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'onboarding',
            description: 'Run the CodeWhisperer tutorial again',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'running',
            description: 'Check if CodeWhisperer is running',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'launch',
            description: 'Launch the CodeWhisperer desktop app',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'restart',
            description: 'Restart the CodeWhisperer desktop app',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'quit',
            description: 'Quit the CodeWhisperer desktop app',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'set-path',
            description: 'Set the internal pseudo-terminal path',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'uninstall',
            description: 'Uninstall the CodeWhisperer app',
            options: [
              Option(
                  name: '--app-bundle',
                  description: 'Remove executable and user data'),
              Option(
                  name: '--input-method', description: 'Remove input method'),
              Option(
                  name: '--daemon', description: 'Remove CodeWhisperer daemon'),
              Option(
                  name: '--dotfiles',
                  description: 'Remove dotfile shell integration'),
              Option(name: '--ssh', description: 'Remove SSH integration'),
              Option(
                  name: '--no-open',
                  description: 'Do not open the uninstallation page'),
              Option(
                  name: '--only-open',
                  description: 'Only open the uninstallation page'),
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'prompts',
            description: 'Prompts shown on terminal startup',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(
                  name: 'install',
                  description: 'Install the CodeWhisperer app'),
              Subcommand(
                  name: 'onboarding',
                  description: 'Run the CodeWhisperer tutorial again'),
              Subcommand(
                  name: 'running',
                  description: 'Check if CodeWhisperer is running'),
              Subcommand(
                  name: 'launch',
                  description: 'Launch the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'restart',
                  description: 'Restart the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'quit',
                  description: 'Quit the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'set-path',
                  description: 'Set the internal pseudo-terminal path'),
              Subcommand(
                  name: 'uninstall',
                  description: 'Uninstall the CodeWhisperer app'),
              Subcommand(
                  name: 'prompts',
                  description: 'Prompts shown on terminal startup'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(name: 'hook', description: 'Hook commands', subcommands: [
    Subcommand(name: 'editbuffer', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'session_id'),
      Arg(name: 'integration'),
      Arg(name: 'tty'),
      Arg(name: 'pid'),
      Arg(name: 'histno'),
      Arg(name: 'cursor'),
      Arg(name: 'text')
    ]),
    Subcommand(name: 'hide', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ]),
    Subcommand(name: 'init', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'pid'),
      Arg(name: 'tty')
    ]),
    Subcommand(name: 'integration-ready', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'integration')
    ]),
    Subcommand(name: 'keyboard-focus-changed', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'app_identifier'),
      Arg(name: 'focused_session_id')
    ]),
    Subcommand(name: 'pre-exec', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'pid'),
      Arg(name: 'tty')
    ]),
    Subcommand(name: 'prompt', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'pid'),
      Arg(name: 'tty')
    ]),
    Subcommand(name: 'ssh', options: [
      Option(name: '--prompt'),
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'pid'),
      Arg(name: 'tty'),
      Arg(name: 'control_path'),
      Arg(name: 'remote_dest')
    ]),
    Subcommand(
        name: 'help',
        description:
            'Print this message or the help of the given subcommand(s)',
        subcommands: [
          Subcommand(name: 'editbuffer'),
          Subcommand(name: 'hide'),
          Subcommand(name: 'init'),
          Subcommand(name: 'integration-ready'),
          Subcommand(name: 'keyboard-focus-changed'),
          Subcommand(name: 'pre-exec'),
          Subcommand(name: 'prompt'),
          Subcommand(name: 'ssh'),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)')
        ])
  ], options: [
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(name: 'debug', description: 'Debug CodeWhisperer', subcommands: [
    Subcommand(name: 'app', description: 'Debug CodeWhisperer app', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ]),
    Subcommand(
        name: 'build',
        description: 'Switch to another branch of a Fig.js app',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ],
        args: [
          Arg(name: 'app', suggestions: [
            FigSuggestion(name: 'dashboard'),
            FigSuggestion(name: 'autocomplete')
          ]),
          Arg(name: 'build', isOptional: true, suggestions: [
            FigSuggestion(name: 'production'),
            FigSuggestion(name: 'beta'),
            FigSuggestion(name: 'develop')
          ])
        ]),
    Subcommand(
        name: 'autocomplete-window',
        description: 'Toggle/set autocomplete window debug mode',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ],
        args: [
          Arg(name: 'mode', isOptional: true, suggestions: [
            FigSuggestion(name: 'on'),
            FigSuggestion(name: 'off')
          ])
        ]),
    Subcommand(
        name: 'logs',
        description: 'Show CodeWhisperer debug logs',
        options: [
          Option(
              name: '--level',
              isRepeatable: true,
              args: [Arg(name: 'level', isOptional: true)]),
          Option(name: ['-h', '--help'], description: 'Print help')
        ],
        args: [
          Arg(name: 'files', isVariadic: true, isOptional: true)
        ]),
    Subcommand(
        name: 'input-method',
        description: 'CodeWhisperer input method editor',
        subcommands: [
          Subcommand(name: 'install', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ], args: [
            Arg(name: 'bundle_path', isOptional: true, template: 'filepaths')
          ]),
          Subcommand(name: 'uninstall', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ], args: [
            Arg(name: 'bundle_path', isOptional: true, template: 'filepaths')
          ]),
          Subcommand(name: 'list', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'status', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ], args: [
            Arg(name: 'bundle_path', isOptional: true, template: 'filepaths')
          ]),
          Subcommand(name: 'source', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ], args: [
            Arg(name: 'bundle_identifier'),
            Arg(name: 'action', suggestions: [
              FigSuggestion(name: 'enable'),
              FigSuggestion(name: 'disable'),
              FigSuggestion(name: 'select'),
              FigSuggestion(name: 'deselect')
            ])
          ]),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)',
              subcommands: [
                Subcommand(name: 'install'),
                Subcommand(name: 'uninstall'),
                Subcommand(name: 'list'),
                Subcommand(name: 'status'),
                Subcommand(name: 'source'),
                Subcommand(
                    name: 'help',
                    description:
                        'Print this message or the help of the given subcommand(s)')
              ])
        ],
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'prompt-accessibility',
        description: 'Prompt accessibility',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'sample',
        description: 'Sample CodeWhisperer process',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'verify-codesign',
        description: 'Debug CodeWhisperer codesign verification',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(name: 'accessibility', description: 'Accessibility', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ], args: [
      Arg(name: 'action', isOptional: true, suggestions: [
        FigSuggestion(name: 'refresh'),
        FigSuggestion(name: 'reset'),
        FigSuggestion(name: 'prompt'),
        FigSuggestion(name: 'open'),
        FigSuggestion(name: 'status')
      ])
    ]),
    Subcommand(name: 'key-tester', description: 'Key Tester', options: [
      Option(name: ['-h', '--help'], description: 'Print help')
    ]),
    Subcommand(
        name: 'diagnostics',
        description: 'Watches diagnostics',
        options: [
          Option(
              name: '--rate',
              isRepeatable: true,
              args: [Arg(name: 'rate', isOptional: true)]),
          Option(name: '--watch'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'query-index',
        description:
            'Queries remote repository for updates given the specified metadata',
        options: [
          Option(
              name: ['-c', '--channel'],
              isRepeatable: true,
              args: [Arg(name: 'channel')]),
          Option(
              name: ['-k', '--kind'],
              isRepeatable: true,
              args: [Arg(name: 'kind')]),
          Option(
              name: ['-v', '--variant'],
              isRepeatable: true,
              args: [Arg(name: 'variant')]),
          Option(
              name: ['-e', '--version'],
              isRepeatable: true,
              args: [Arg(name: 'version')]),
          Option(
              name: ['-a', '--architecture'],
              isRepeatable: true,
              args: [Arg(name: 'architecture')]),
          Option(
              name: ['-t', '--override-threshold'],
              isRepeatable: true,
              args: [Arg(name: 'override_threshold', isOptional: true)]),
          Option(name: ['-r', '--enable-rollout']),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'devtools',
        description: 'Open up the devtools of a specific webview',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ],
        args: [
          Arg(name: 'app', suggestions: [
            FigSuggestion(name: 'dashboard'),
            FigSuggestion(name: 'autocomplete')
          ])
        ]),
    Subcommand(
        name: 'get-index',
        description: 'Displays remote index',
        options: [
          Option(
              name: ['-d', '--debug'],
              description: 'Display using debug formatting'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ],
        args: [
          Arg(name: 'channel')
        ]),
    Subcommand(
        name: 'list-intellij-variants',
        description: 'Lists installed IntelliJ variants',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'shell',
        description:
            'Disables sourcing of user shell config and instead uses a minimal CodeWhisperer default',
        options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
    Subcommand(
        name: 'help',
        description:
            'Print this message or the help of the given subcommand(s)',
        subcommands: [
          Subcommand(name: 'app', description: 'Debug CodeWhisperer app'),
          Subcommand(
              name: 'build',
              description: 'Switch to another branch of a Fig.js app'),
          Subcommand(
              name: 'autocomplete-window',
              description: 'Toggle/set autocomplete window debug mode'),
          Subcommand(
              name: 'logs', description: 'Show CodeWhisperer debug logs'),
          Subcommand(
              name: 'input-method',
              description: 'CodeWhisperer input method editor',
              subcommands: [
                Subcommand(name: 'install'),
                Subcommand(name: 'uninstall'),
                Subcommand(name: 'list'),
                Subcommand(name: 'status'),
                Subcommand(name: 'source')
              ]),
          Subcommand(
              name: 'prompt-accessibility',
              description: 'Prompt accessibility'),
          Subcommand(
              name: 'sample', description: 'Sample CodeWhisperer process'),
          Subcommand(
              name: 'verify-codesign',
              description: 'Debug CodeWhisperer codesign verification'),
          Subcommand(name: 'accessibility', description: 'Accessibility'),
          Subcommand(name: 'key-tester', description: 'Key Tester'),
          Subcommand(name: 'diagnostics', description: 'Watches diagnostics'),
          Subcommand(
              name: 'query-index',
              description:
                  'Queries remote repository for updates given the specified metadata'),
          Subcommand(
              name: 'devtools',
              description: 'Open up the devtools of a specific webview'),
          Subcommand(name: 'get-index', description: 'Displays remote index'),
          Subcommand(
              name: 'list-intellij-variants',
              description: 'Lists installed IntelliJ variants'),
          Subcommand(
              name: 'shell',
              description:
                  'Disables sourcing of user shell config and instead uses a minimal CodeWhisperer default'),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)')
        ])
  ], options: [
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(
      name: ['settings', 'setting'],
      description: 'Customize appearance & behavior',
      subcommands: [
        Subcommand(
            name: 'open',
            description: 'Open the settings file',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(name: 'all', description: 'List all the settings', options: [
          Option(
              name: ['-f', '--format'],
              description: 'Format of the output',
              isRepeatable: true,
              args: [
                Arg(name: 'format', isOptional: true, suggestions: [
                  FigSuggestion(
                      name: 'plain',
                      description: 'Outputs the results as markdown'),
                  FigSuggestion(
                      name: 'json', description: 'Outputs the results as JSON'),
                  FigSuggestion(
                      name: 'json-pretty',
                      description: 'Outputs the results as pretty print JSON')
                ])
              ]),
          Option(
              name: ['-h', '--help'],
              description: 'Print help (see more with \'--help\')')
        ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(name: 'open', description: 'Open the settings file'),
              Subcommand(name: 'all', description: 'List all the settings'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(
            name: ['-f', '--format'],
            description: 'Format of the output',
            isRepeatable: true,
            args: [
              Arg(name: 'format', isOptional: true, suggestions: [
                FigSuggestion(
                    name: 'plain',
                    description: 'Outputs the results as markdown'),
                FigSuggestion(
                    name: 'json', description: 'Outputs the results as JSON'),
                FigSuggestion(
                    name: 'json-pretty',
                    description: 'Outputs the results as pretty print JSON')
              ])
            ]),
        Option(name: ['-d', '--delete'], description: 'Delete a value'),
        Option(
            name: ['-h', '--help'],
            description: 'Print help (see more with \'--help\')')
      ],
      args: [
        Arg(name: 'key', isOptional: true),
        Arg(name: 'value', isOptional: true)
      ]),
  Subcommand(
      name: 'tips',
      description: 'Enable/disable CodeWhisperer tips',
      subcommands: [
        Subcommand(
            name: 'enable',
            description: 'Enable CodeWhisperer tips',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'disable',
            description: 'Disable CodeWhisperer tips',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'reset',
            description: 'Reset the tips to the default',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(name: 'prompt', description: 'Show the tips', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(
                  name: 'enable', description: 'Enable CodeWhisperer tips'),
              Subcommand(
                  name: 'disable', description: 'Disable CodeWhisperer tips'),
              Subcommand(
                  name: 'reset', description: 'Reset the tips to the default'),
              Subcommand(name: 'prompt', description: 'Show the tips'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'install',
      description: 'Install CodeWhisperer cli components',
      options: [
        Option(name: '--daemon', description: 'Install only the daemon'),
        Option(
            name: '--dotfiles',
            description: 'Install only the shell integrations'),
        Option(
            name: '--input-method',
            description: 'Prompt input method installation'),
        Option(
            name: '--no-confirm',
            description: 'Don\'t confirm automatic installation'),
        Option(
            name: '--force',
            description: 'Force installation of CodeWhisperer'),
        Option(name: '--ssh', description: 'Install only the ssh integration'),
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'uninstall',
      description: 'Uninstall CodeWhisperer',
      options: [
        Option(name: ['-y', '--no-confirm'], description: 'Force uninstall'),
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(name: 'update', description: 'Check for updates', options: [
    Option(
        name: '--no-confirm',
        description: '(deprecated) Use --non-interactive instead'),
    Option(
        name: ['-y', '--non-interactive'],
        description: 'Don\'t prompt for confirmation'),
    Option(
        name: '--relaunch-dashboard',
        description:
            'Relaunch into dashboard after update (false will launch in background)'),
    Option(name: '--rollout', description: 'Uses rollout'),
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(
      name: ['diagnostic', 'diagnostics'],
      description: 'Run diagnostic tests',
      options: [
        Option(
            name: ['-f', '--format'],
            description: 'The format of the output',
            isRepeatable: true,
            args: [
              Arg(name: 'format', isOptional: true, suggestions: [
                FigSuggestion(
                    name: 'plain',
                    description: 'Outputs the results as markdown'),
                FigSuggestion(
                    name: 'json', description: 'Outputs the results as JSON'),
                FigSuggestion(
                    name: 'json-pretty',
                    description: 'Outputs the results as pretty print JSON')
              ])
            ]),
        Option(name: '--force', description: 'Force limited diagnostic output'),
        Option(
            name: ['-h', '--help'],
            description: 'Print help (see more with \'--help\')')
      ]),
  Subcommand(
      name: 'init',
      description: 'Generate the dotfiles for the given shell',
      options: [
        Option(
            name: '--rcfile',
            isRepeatable: true,
            args: [Arg(name: 'rcfile', isOptional: true)]),
        Option(
            name: ['-h', '--help'],
            description: 'Print help (see more with \'--help\')')
      ],
      args: [
        Arg(name: 'shell', suggestions: [
          FigSuggestion(name: 'bash', description: 'Bash shell'),
          FigSuggestion(name: 'zsh', description: 'Zsh shell'),
          FigSuggestion(name: 'fish', description: 'Fish shell'),
          FigSuggestion(name: 'nu', description: 'Nu shell')
        ]),
        Arg(name: 'when', suggestions: [
          FigSuggestion(name: 'pre'),
          FigSuggestion(name: 'post')
        ])
      ]),
  Subcommand(name: 'theme', description: 'Get or set theme', options: [
    Option(name: '--list', exclusiveOn: ['--folder']),
    Option(name: '--folder', exclusiveOn: ['--list']),
    Option(name: ['-h', '--help'], description: 'Print help')
  ], args: [
    Arg(
        name: 'theme',
        isOptional: true,
        generators: Generator(script: ['cw', 'theme', '--list'], splitOn: '\n'))
  ]),
  Subcommand(name: 'issue', description: 'Create a new Github issue', options: [
    Option(name: ['-f', '--force'], description: 'Force issue creation'),
    Option(name: ['-h', '--help'], description: 'Print help')
  ], args: [
    Arg(name: 'description', isVariadic: true, isOptional: true)
  ]),
  Subcommand(name: 'login', description: 'Login to CodeWhisperer', options: [
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(name: 'logout', description: 'Logout of CodeWhisperer', options: [
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(
      name: 'whoami',
      description: 'Prints details about the current user',
      options: [
        Option(
            name: ['-f', '--format'],
            description: 'Output format to use',
            isRepeatable: true,
            args: [
              Arg(name: 'format', isOptional: true, suggestions: [
                FigSuggestion(
                    name: 'plain',
                    description: 'Outputs the results as markdown'),
                FigSuggestion(
                    name: 'json', description: 'Outputs the results as JSON'),
                FigSuggestion(
                    name: 'json-pretty',
                    description: 'Outputs the results as pretty print JSON')
              ])
            ]),
        Option(
            name: ['-h', '--help'],
            description: 'Print help (see more with \'--help\')')
      ]),
  Subcommand(
      name: 'user',
      description: 'Manage your CodeWhisperer user',
      subcommands: [
        Subcommand(
            name: 'login',
            description: 'Login to CodeWhisperer',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'logout',
            description: 'Logout of CodeWhisperer',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'whoami',
            description: 'Prints details about the current user',
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Output format to use',
                  isRepeatable: true,
                  args: [
                    Arg(name: 'format', isOptional: true, suggestions: [
                      FigSuggestion(
                          name: 'plain',
                          description: 'Outputs the results as markdown'),
                      FigSuggestion(
                          name: 'json',
                          description: 'Outputs the results as JSON'),
                      FigSuggestion(
                          name: 'json-pretty',
                          description:
                              'Outputs the results as pretty print JSON')
                    ])
                  ]),
              Option(
                  name: ['-h', '--help'],
                  description: 'Print help (see more with \'--help\')')
            ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(name: 'login', description: 'Login to CodeWhisperer'),
              Subcommand(
                  name: 'logout', description: 'Logout of CodeWhisperer'),
              Subcommand(
                  name: 'whoami',
                  description: 'Prints details about the current user'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'doctor',
      description: 'Check CodeWhisperer is properly configured',
      options: [
        Option(
            name: '--verbose',
            description: 'Run all doctor tests, with no fixes'),
        Option(name: '--strict', description: 'Error on warnings'),
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'completion',
      description: 'Generate the completion spec for CodeWhisperer',
      options: [
        Option(
            name: ['-h', '--help'],
            description: 'Print help (see more with \'--help\')')
      ],
      args: [
        Arg(name: 'shell', isOptional: true, suggestions: [
          FigSuggestion(name: 'bash', description: 'Bash shell completions'),
          FigSuggestion(name: 'fish', description: 'Fish shell completions'),
          FigSuggestion(name: 'zsh', description: 'Zsh shell completions'),
          FigSuggestion(name: 'fig', description: 'Fig completion spec')
        ])
      ]),
  Subcommand(
      name: ['internal', '_'],
      description: 'Internal subcommands used for CodeWhisperer',
      subcommands: [
        Subcommand(
            name: 'pre-cmd',
            description:
                'Command that is run during the PreCmd section of the CodeWhisperer integrations',
            options: [
              Option(
                  name: '--alias',
                  isRepeatable: true,
                  args: [Arg(name: 'alias', isOptional: true)]),
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(
            name: 'local-state',
            description: 'Change the local-state file',
            subcommands: [
              Subcommand(
                  name: 'init',
                  description: 'Reload the state listener',
                  options: [
                    Option(name: ['-h', '--help'], description: 'Print help')
                  ]),
              Subcommand(
                  name: 'open',
                  description: 'Open the state file',
                  options: [
                    Option(name: ['-h', '--help'], description: 'Print help')
                  ]),
              Subcommand(
                  name: 'all',
                  description: 'List all the settings',
                  options: [
                    Option(
                        name: ['-f', '--format'],
                        isRepeatable: true,
                        args: [
                          Arg(name: 'format', isOptional: true, suggestions: [
                            FigSuggestion(
                                name: 'plain',
                                description: 'Outputs the results as markdown'),
                            FigSuggestion(
                                name: 'json',
                                description: 'Outputs the results as JSON'),
                            FigSuggestion(
                                name: 'json-pretty',
                                description:
                                    'Outputs the results as pretty print JSON')
                          ])
                        ]),
                    Option(
                        name: ['-h', '--help'],
                        description: 'Print help (see more with \'--help\')')
                  ]),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)',
                  subcommands: [
                    Subcommand(
                        name: 'init', description: 'Reload the state listener'),
                    Subcommand(
                        name: 'open', description: 'Open the state file'),
                    Subcommand(
                        name: 'all', description: 'List all the settings'),
                    Subcommand(
                        name: 'help',
                        description:
                            'Print this message or the help of the given subcommand(s)')
                  ])
            ],
            options: [
              Option(
                  name: ['-f', '--format'],
                  description: 'Format of the output',
                  isRepeatable: true,
                  args: [
                    Arg(name: 'format', isOptional: true, suggestions: [
                      FigSuggestion(
                          name: 'plain',
                          description: 'Outputs the results as markdown'),
                      FigSuggestion(
                          name: 'json',
                          description: 'Outputs the results as JSON'),
                      FigSuggestion(
                          name: 'json-pretty',
                          description:
                              'Outputs the results as pretty print JSON')
                    ])
                  ]),
              Option(name: ['-d', '--delete'], description: 'Delete the state'),
              Option(
                  name: ['-h', '--help'],
                  description: 'Print help (see more with \'--help\')')
            ],
            args: [
              Arg(name: 'key', isOptional: true),
              Arg(name: 'value', isOptional: true)
            ]),
        Subcommand(
            name: 'callback',
            description: 'Callback used for the internal pseudoterminal',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ],
            args: [
              Arg(name: 'handler_id'),
              Arg(name: 'filename', isOptional: true),
              Arg(name: 'exit_code', isOptional: true)
            ]),
        Subcommand(name: 'install', description: 'Install fig cli', options: [
          Option(name: '--daemon', description: 'Install only the daemon'),
          Option(
              name: '--dotfiles',
              description: 'Install only the shell integrations'),
          Option(
              name: '--input-method',
              description: 'Prompt input method installation'),
          Option(
              name: '--no-confirm',
              description: 'Don\'t confirm automatic installation'),
          Option(name: '--force', description: 'Force installation of fig'),
          Option(
              name: '--ssh', description: 'Install only the ssh integration'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'uninstall',
            description: 'Uninstall fig cli',
            options: [
              Option(
                  name: '--daemon', description: 'Uninstall only the daemon'),
              Option(
                  name: '--dotfiles',
                  description: 'Uninstall only the shell integrations'),
              Option(
                  name: '--input-method',
                  description: 'Uninstall only the input method'),
              Option(
                  name: '--binary', description: 'Uninstall only the binary'),
              Option(
                  name: '--ssh',
                  description: 'Uninstall only the ssh integration'),
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(name: 'get-shell', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'hostname', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'should-figterm-launch',
            description: 'Detects if Figterm should be launched',
            options: [
              Option(
                  name: ['-h', '--help'],
                  description: 'Print help (see more with \'--help\')')
            ]),
        Subcommand(name: 'event', options: [
          Option(
              name: '--name',
              description: 'Name of the event',
              isRepeatable: true,
              args: [Arg(name: 'name')]),
          Option(
              name: '--payload',
              description: 'Payload of the event as a JSON string',
              isRepeatable: true,
              args: [Arg(name: 'payload', isOptional: true)]),
          Option(
              name: '--apps',
              description: 'Apps to send the event to',
              isRepeatable: true,
              args: [Arg(name: 'apps', isOptional: true)]),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'sockets-dir', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'stream-from-socket', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'figterm-socket-path', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ], args: [
          Arg(name: 'session_id')
        ]),
        Subcommand(name: 'ipc', options: [
          Option(
              name: '--figterm',
              isRepeatable: true,
              args: [Arg(name: 'figterm', isOptional: true)]),
          Option(name: '--json', isRepeatable: true, args: [Arg(name: 'json')]),
          Option(name: '--app'),
          Option(name: '--recv'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'uninstall-for-all-users',
            description: 'Linux only',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ]),
        Subcommand(name: 'uuidgen', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'open-uninstall-page', options: [
          Option(name: '--verbose'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'ssh-local-command',
            description: 'Displays prompt to install remote shell integrations',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ],
            args: [
              Arg(name: 'remote_dest'),
              Arg(name: 'uuid')
            ]),
        Subcommand(
            name: 'prompt-ssh',
            description:
                '\\[Deprecated\\] Displays prompt to install remote shell integrations',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ],
            args: [
              Arg(name: 'remote_dest')
            ]),
        Subcommand(
            name: 'attempt-to-finish-input-method-installation',
            options: [
              Option(name: ['-h', '--help'], description: 'Print help')
            ],
            args: [
              Arg(name: 'bundle_path', isOptional: true, template: 'filepaths')
            ]),
        Subcommand(name: 'dump-state', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ], args: [
          Arg(name: 'component', suggestions: [
            FigSuggestion(name: 'figterm'),
            FigSuggestion(name: 'web-notifications')
          ])
        ]),
        Subcommand(name: 'finish-update', options: [
          Option(name: '--relaunch-dashboard'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'swap-files', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ], args: [
          Arg(name: 'from', template: 'filepaths'),
          Arg(name: 'to', template: 'filepaths')
        ]),
        Subcommand(name: 'check-ssh', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ], args: [
          Arg(name: 'remote_username')
        ]),
        Subcommand(name: 'brew-uninstall', options: [
          Option(name: '--zap'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'generate-ssh',
            description: 'Generates an SSH configuration file',
            options: [
              Option(
                  name: ['-h', '--help'],
                  description: 'Print help (see more with \'--help\')')
            ],
            args: [
              Arg(name: 'remote_username')
            ]),
        Subcommand(name: 'ghost-text', options: [
          Option(
              name: '--buffer',
              isRepeatable: true,
              args: [Arg(name: 'buffer')]),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'ghost-text-accept', options: [
          Option(
              name: '--buffer',
              isRepeatable: true,
              args: [Arg(name: 'buffer')]),
          Option(
              name: '--suggestion',
              isRepeatable: true,
              args: [Arg(name: 'suggestion')]),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(
                  name: 'pre-cmd',
                  description:
                      'Command that is run during the PreCmd section of the fig integrations'),
              Subcommand(
                  name: 'local-state',
                  description: 'Change the local-state file',
                  subcommands: [
                    Subcommand(
                        name: 'init', description: 'Reload the state listener'),
                    Subcommand(
                        name: 'open', description: 'Open the state file'),
                    Subcommand(
                        name: 'all', description: 'List all the settings')
                  ]),
              Subcommand(
                  name: 'callback',
                  description: 'Callback used for the internal pseudoterminal'),
              Subcommand(name: 'install', description: 'Install fig cli'),
              Subcommand(name: 'uninstall', description: 'Uninstall fig cli'),
              Subcommand(name: 'get-shell'),
              Subcommand(name: 'hostname'),
              Subcommand(
                  name: 'should-figterm-launch',
                  description: 'Detects if Figterm should be launched'),
              Subcommand(name: 'event'),
              Subcommand(name: 'sockets-dir'),
              Subcommand(name: 'stream-from-socket'),
              Subcommand(name: 'figterm-socket-path'),
              Subcommand(name: 'ipc'),
              Subcommand(
                  name: 'uninstall-for-all-users', description: 'Linux only'),
              Subcommand(name: 'uuidgen'),
              Subcommand(name: 'open-uninstall-page'),
              Subcommand(
                  name: 'ssh-local-command',
                  description:
                      'Displays prompt to install remote shell integrations'),
              Subcommand(
                  name: 'prompt-ssh',
                  description:
                      '\\[Deprecated\\] Displays prompt to install remote shell integrations'),
              Subcommand(name: 'attempt-to-finish-input-method-installation'),
              Subcommand(name: 'dump-state'),
              Subcommand(name: 'finish-update'),
              Subcommand(name: 'swap-files'),
              Subcommand(name: 'check-ssh'),
              Subcommand(name: 'brew-uninstall'),
              Subcommand(
                  name: 'generate-ssh',
                  description: 'Generates an SSH configuration file'),
              Subcommand(name: 'ghost-text'),
              Subcommand(name: 'ghost-text-accept'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'launch',
      description: 'Launch the CodeWhisperer desktop app',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'quit',
      description: 'Quit the CodeWhisperer desktop app',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'restart',
      description: 'Restart the CodeWhisperer desktop app',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ],
      args: [
        Arg(name: 'process', isOptional: true, suggestions: [
          FigSuggestion(name: 'daemon', description: 'Daemon process'),
          FigSuggestion(name: 'app', description: 'CodeWhisperer process')
        ])
      ]),
  Subcommand(
      name: 'onboarding',
      description: 'Run the CodeWhisperer tutorial',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: ['integrations', 'integration'],
      description: 'Manage system integrations',
      subcommands: [
        Subcommand(name: 'install', subcommands: [
          Subcommand(name: 'dotfiles', options: [
            Option(
                name: ['-h', '--help'],
                description: 'Print help (see more with \'--help\')')
          ], args: [
            Arg(name: 'shell', isOptional: true, suggestions: [
              FigSuggestion(name: 'bash', description: 'Bash shell'),
              FigSuggestion(name: 'zsh', description: 'Zsh shell'),
              FigSuggestion(name: 'fish', description: 'Fish shell'),
              FigSuggestion(name: 'nu', description: 'Nu shell')
            ])
          ]),
          Subcommand(name: 'daemon', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'ssh', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'input-method', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'vscode', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'intellij-plugin', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'all', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)',
              subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all'),
                Subcommand(
                    name: 'help',
                    description:
                        'Print this message or the help of the given subcommand(s)')
              ])
        ], options: [
          Option(
              name: ['-s', '--silent'],
              description: 'Suppress status messages'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'uninstall', subcommands: [
          Subcommand(name: 'dotfiles', options: [
            Option(
                name: ['-h', '--help'],
                description: 'Print help (see more with \'--help\')')
          ], args: [
            Arg(name: 'shell', isOptional: true, suggestions: [
              FigSuggestion(name: 'bash', description: 'Bash shell'),
              FigSuggestion(name: 'zsh', description: 'Zsh shell'),
              FigSuggestion(name: 'fish', description: 'Fish shell'),
              FigSuggestion(name: 'nu', description: 'Nu shell')
            ])
          ]),
          Subcommand(name: 'daemon', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'ssh', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'input-method', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'vscode', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'intellij-plugin', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'all', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)',
              subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all'),
                Subcommand(
                    name: 'help',
                    description:
                        'Print this message or the help of the given subcommand(s)')
              ])
        ], options: [
          Option(
              name: ['-s', '--silent'],
              description: 'Suppress status messages'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'reinstall', subcommands: [
          Subcommand(name: 'dotfiles', options: [
            Option(
                name: ['-h', '--help'],
                description: 'Print help (see more with \'--help\')')
          ], args: [
            Arg(name: 'shell', isOptional: true, suggestions: [
              FigSuggestion(name: 'bash', description: 'Bash shell'),
              FigSuggestion(name: 'zsh', description: 'Zsh shell'),
              FigSuggestion(name: 'fish', description: 'Fish shell'),
              FigSuggestion(name: 'nu', description: 'Nu shell')
            ])
          ]),
          Subcommand(name: 'daemon', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'ssh', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'input-method', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'vscode', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'intellij-plugin', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'all', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)',
              subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all'),
                Subcommand(
                    name: 'help',
                    description:
                        'Print this message or the help of the given subcommand(s)')
              ])
        ], options: [
          Option(
              name: ['-s', '--silent'],
              description: 'Suppress status messages'),
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'status', subcommands: [
          Subcommand(name: 'dotfiles', options: [
            Option(
                name: ['-h', '--help'],
                description: 'Print help (see more with \'--help\')')
          ], args: [
            Arg(name: 'shell', isOptional: true, suggestions: [
              FigSuggestion(name: 'bash', description: 'Bash shell'),
              FigSuggestion(name: 'zsh', description: 'Zsh shell'),
              FigSuggestion(name: 'fish', description: 'Fish shell'),
              FigSuggestion(name: 'nu', description: 'Nu shell')
            ])
          ]),
          Subcommand(name: 'daemon', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'ssh', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'input-method', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'vscode', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'intellij-plugin', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(name: 'all', options: [
            Option(name: ['-h', '--help'], description: 'Print help')
          ]),
          Subcommand(
              name: 'help',
              description:
                  'Print this message or the help of the given subcommand(s)',
              subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all'),
                Subcommand(
                    name: 'help',
                    description:
                        'Print this message or the help of the given subcommand(s)')
              ])
        ], options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(name: 'install', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'uninstall', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'reinstall', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'status', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: ['ai', 'q'],
      description: 'English -> Bash translation',
      options: [
        Option(
            name: ['-n', '--n'],
            description: 'Number of completions to generate (must be <=5)',
            isRepeatable: true,
            args: [Arg(name: 'n', isOptional: true)]),
        Option(name: ['-h', '--help'], description: 'Print help')
      ],
      args: [Arg(name: 'input', isVariadic: true, isOptional: true)]),
  Subcommand(
      name: 'telemetry',
      description: 'Enable/disable telemetry',
      subcommands: [
        Subcommand(name: 'enable', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'disable', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(name: 'status', options: [
          Option(name: ['-h', '--help'], description: 'Print help')
        ]),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)',
            subcommands: [
              Subcommand(name: 'enable'),
              Subcommand(name: 'disable'),
              Subcommand(name: 'status'),
              Subcommand(
                  name: 'help',
                  description:
                      'Print this message or the help of the given subcommand(s)')
            ])
      ],
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(name: 'version', description: 'Version', options: [
    Option(name: ['-h', '--help'], description: 'Print help')
  ]),
  Subcommand(
      name: 'help-all',
      description: 'Print help for all subcommands',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'dashboard',
      description: 'Open the fig dashboard',
      options: [
        Option(name: ['-h', '--help'], description: 'Print help')
      ]),
  Subcommand(
      name: 'help',
      description: 'Print this message or the help of the given subcommand(s)',
      subcommands: [
        Subcommand(
            name: 'app',
            description: 'Interact with the desktop app',
            subcommands: [
              Subcommand(name: 'install', description: 'Install the Fig app'),
              Subcommand(
                  name: 'onboarding',
                  description: 'Run the CodeWhisperer tutorial again'),
              Subcommand(
                  name: 'running',
                  description: 'Check if CodeWhisperer is running'),
              Subcommand(
                  name: 'launch',
                  description: 'Launch the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'restart',
                  description: 'Restart the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'quit',
                  description: 'Quit the CodeWhisperer desktop app'),
              Subcommand(
                  name: 'set-path',
                  description: 'Set the internal pseudo-terminal path'),
              Subcommand(
                  name: 'uninstall',
                  description: 'Uninstall the CodeWhisperer app'),
              Subcommand(
                  name: 'prompts',
                  description: 'Prompts shown on terminal startup')
            ]),
        Subcommand(name: 'hook', description: 'Hook commands', subcommands: [
          Subcommand(name: 'editbuffer'),
          Subcommand(name: 'hide'),
          Subcommand(name: 'init'),
          Subcommand(name: 'integration-ready'),
          Subcommand(name: 'keyboard-focus-changed'),
          Subcommand(name: 'pre-exec'),
          Subcommand(name: 'prompt'),
          Subcommand(name: 'ssh')
        ]),
        Subcommand(
            name: 'debug',
            description: 'Debug CodeWhisperer',
            subcommands: [
              Subcommand(name: 'app', description: 'Debug CodeWhisperer app'),
              Subcommand(
                  name: 'build',
                  description: 'Switch to another branch of a Fig.js app'),
              Subcommand(
                  name: 'autocomplete-window',
                  description: 'Toggle/set autocomplete window debug mode'),
              Subcommand(
                  name: 'logs', description: 'Show CodeWhisperer debug logs'),
              Subcommand(
                  name: 'input-method',
                  description: 'CodeWhisperer input method editor',
                  subcommands: [
                    Subcommand(name: 'install'),
                    Subcommand(name: 'uninstall'),
                    Subcommand(name: 'list'),
                    Subcommand(name: 'status'),
                    Subcommand(name: 'source')
                  ]),
              Subcommand(
                  name: 'prompt-accessibility',
                  description: 'Prompt accessibility'),
              Subcommand(
                  name: 'sample', description: 'Sample CodeWhisperer process'),
              Subcommand(
                  name: 'verify-codesign',
                  description: 'Debug CodeWhisperer codesign verification'),
              Subcommand(name: 'accessibility', description: 'Accessibility'),
              Subcommand(name: 'key-tester', description: 'Key Tester'),
              Subcommand(
                  name: 'diagnostics', description: 'Watches diagnostics'),
              Subcommand(
                  name: 'query-index',
                  description:
                      'Queries remote repository for updates given the specified metadata'),
              Subcommand(
                  name: 'devtools',
                  description: 'Open up the devtools of a specific webview'),
              Subcommand(
                  name: 'get-index', description: 'Displays remote index'),
              Subcommand(
                  name: 'list-intellij-variants',
                  description: 'Lists installed IntelliJ variants'),
              Subcommand(
                  name: 'shell',
                  description:
                      'Disables sourcing of user shell config and instead uses a minimal CodeWhisperer default')
            ]),
        Subcommand(
            name: 'settings',
            description: 'Customize appearance & behavior',
            subcommands: [
              Subcommand(name: 'open', description: 'Open the settings file'),
              Subcommand(name: 'all', description: 'List all the settings')
            ]),
        Subcommand(
            name: 'tips',
            description: 'Enable/disable fig tips',
            subcommands: [
              Subcommand(name: 'enable', description: 'Enable fig tips'),
              Subcommand(name: 'disable', description: 'Disable fig tips'),
              Subcommand(
                  name: 'reset', description: 'Reset the tips to the default'),
              Subcommand(name: 'prompt', description: 'Show the tips')
            ]),
        Subcommand(name: 'install', description: 'Install fig cli components'),
        Subcommand(name: 'uninstall', description: 'Uninstall fig'),
        Subcommand(name: 'update', description: 'Update dotfiles'),
        Subcommand(name: 'diagnostic', description: 'Run diagnostic tests'),
        Subcommand(
            name: 'init',
            description: 'Generate the dotfiles for the given shell'),
        Subcommand(name: 'theme', description: 'Get or set theme'),
        Subcommand(name: 'issue', description: 'Create a new Github issue'),
        Subcommand(name: 'login', description: 'Login to CodeWhisperer'),
        Subcommand(name: 'logout', description: 'Logout of CodeWhisperer'),
        Subcommand(
            name: 'whoami',
            description: 'Prints details about the current user'),
        Subcommand(
            name: 'user',
            description: 'Manage your fig user',
            subcommands: [
              Subcommand(name: 'login', description: 'Login to CodeWhisperer'),
              Subcommand(
                  name: 'logout', description: 'Logout of CodeWhisperer'),
              Subcommand(
                  name: 'whoami',
                  description: 'Prints details about the current user')
            ]),
        Subcommand(
            name: 'doctor',
            description: 'Check CodeWhisperer is properly configured'),
        Subcommand(
            name: 'completion',
            description: 'Generate the completion spec for CodeWhisperer'),
        Subcommand(
            name: 'internal',
            description: 'Internal subcommands used for CodeWhisperer',
            subcommands: [
              Subcommand(
                  name: 'pre-cmd',
                  description:
                      'Command that is run during the PreCmd section of the fig integrations'),
              Subcommand(
                  name: 'local-state',
                  description: 'Change the local-state file',
                  subcommands: [
                    Subcommand(
                        name: 'init', description: 'Reload the state listener'),
                    Subcommand(
                        name: 'open', description: 'Open the state file'),
                    Subcommand(
                        name: 'all', description: 'List all the settings')
                  ]),
              Subcommand(
                  name: 'callback',
                  description: 'Callback used for the internal pseudoterminal'),
              Subcommand(name: 'install', description: 'Install fig cli'),
              Subcommand(name: 'uninstall', description: 'Uninstall fig cli'),
              Subcommand(name: 'get-shell'),
              Subcommand(name: 'hostname'),
              Subcommand(
                  name: 'should-figterm-launch',
                  description: 'Detects if Figterm should be launched'),
              Subcommand(name: 'event'),
              Subcommand(name: 'sockets-dir'),
              Subcommand(name: 'stream-from-socket'),
              Subcommand(name: 'figterm-socket-path'),
              Subcommand(name: 'ipc'),
              Subcommand(
                  name: 'uninstall-for-all-users', description: 'Linux only'),
              Subcommand(name: 'uuidgen'),
              Subcommand(name: 'open-uninstall-page'),
              Subcommand(
                  name: 'ssh-local-command',
                  description:
                      'Displays prompt to install remote shell integrations'),
              Subcommand(
                  name: 'prompt-ssh',
                  description:
                      '\\[Deprecated\\] Displays prompt to install remote shell integrations'),
              Subcommand(name: 'attempt-to-finish-input-method-installation'),
              Subcommand(name: 'dump-state'),
              Subcommand(name: 'finish-update'),
              Subcommand(name: 'swap-files'),
              Subcommand(name: 'check-ssh'),
              Subcommand(name: 'brew-uninstall'),
              Subcommand(
                  name: 'generate-ssh',
                  description: 'Generates an SSH configuration file'),
              Subcommand(name: 'ghost-text'),
              Subcommand(name: 'ghost-text-accept')
            ]),
        Subcommand(
            name: 'launch',
            description: 'Launch the CodeWhisperer desktop app'),
        Subcommand(
            name: 'quit', description: 'Quit the CodeWhisperer desktop app'),
        Subcommand(
            name: 'restart',
            description: 'Restart the CodeWhisperer desktop app'),
        Subcommand(
            name: 'onboarding', description: 'Run the CodeWhisperer tutorial'),
        Subcommand(
            name: 'integrations',
            description: 'Manage system integrations',
            subcommands: [
              Subcommand(name: 'install', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'uninstall', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'reinstall', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ]),
              Subcommand(name: 'status', subcommands: [
                Subcommand(name: 'dotfiles'),
                Subcommand(name: 'daemon'),
                Subcommand(name: 'ssh'),
                Subcommand(name: 'input-method'),
                Subcommand(name: 'vscode'),
                Subcommand(name: 'intellij'),
                Subcommand(name: 'all')
              ])
            ]),
        Subcommand(name: 'ai', description: 'English -> Bash translation'),
        Subcommand(
            name: 'telemetry',
            description: 'Enable/disable telemetry',
            subcommands: [
              Subcommand(name: 'enable'),
              Subcommand(name: 'disable'),
              Subcommand(name: 'status')
            ]),
        Subcommand(name: 'version', description: 'Version'),
        Subcommand(
            name: 'help-all', description: 'Print help for all subcommands'),
        Subcommand(name: 'dashboard', description: 'Open the fig dashboard'),
        Subcommand(
            name: 'help',
            description:
                'Print this message or the help of the given subcommand(s)')
      ])
], options: [
  Option(name: ['-h', '--help'], description: 'Print help'),
  Option(name: ['-V', '--version'], description: 'Print version')
]);
