// AI-generated from TypeScript source: aws-vault.ts

import 'package:autocomplete/src/spec.dart';

final FigGenerator profilesGenerator = FigGenerator(
  script: ['aws-vault', 'list', '--profiles'],
  postProcess: (out, [tokens]) {
    // 明确知道 tokens 是可选的位置参数
    return out
        .split('\n')
        .where((line) => line.trim().isNotEmpty)
        .map((name) => FigSuggestion(name: name.trim()))
        .toList();
  },
);

final List<FigSubcommand> subcommands = [
  Subcommand(
      name: 'add',
      description: 'Add credentials to the secure keystore',
      args: [Arg(name: 'profile', description: 'The profile you want to add')]),
  Subcommand(
      name: 'remove',
      description: 'Remove credentials from the secure keystore',
      args: [
        Arg(name: 'profile', generators: profilesGenerator)
      ],
      options: [
        Option(
            name: ['-f', '--force'],
            description: 'Force-remove the profile without a prompt')
      ]),
  Subcommand(
      name: 'list',
      description: 'List profiles, along with their credentials and sessions',
      options: [
        Option(name: '--profiles', description: 'Show only the profile names'),
        Option(name: '--sessions', description: 'Show only the session names'),
        Option(
            name: '--credentials',
            description: 'Show only the profiles with stored credential')
      ]),
  Subcommand(name: 'rotate', description: 'Rotate credentials', args: [
    Arg(name: 'profile', generators: profilesGenerator)
  ], options: [
    Option(
        name: ['-n', '--no-session'],
        description: 'Use master credentials, no session or role used')
  ]),
  Subcommand(
      name: 'exec',
      description: 'Execute a command with AWS credentials',
      args: [
        Arg(name: 'profile', generators: profilesGenerator),
        Arg(name: 'command')
      ],
      options: [
        Option(
            name: ['-d', '--duration'],
            description:
                'Duration of the temporary or assume-role session. Defaults to 1h',
            args: [Arg(name: 'DURATION')]),
        Option(
            name: ['-n', '--no-session'],
            description: 'Use master credentials, no session or role used'),
        Option(
            name: '--region',
            description: 'The AWS region',
            args: [Arg(name: 'REGION')]),
        Option(
            name: ['-t', '--mfa-token'],
            description: 'The MFA token to use',
            args: [Arg(name: 'MFA-TOKEN')])
      ]),
  Subcommand(
      name: 'export',
      description: 'Export AWS credentials',
      args: [Arg(name: 'profile', generators: profilesGenerator)]),
  Subcommand(
      name: 'clear',
      description: 'Clear temporary credentials from the secure keystore',
      args: [Arg(name: 'profile', generators: profilesGenerator)]),
  Subcommand(
      name: 'login',
      description: 'Generate a login link for the AWS Console',
      args: [Arg(name: 'profile', generators: profilesGenerator)]),
  Subcommand(
      name: 'help',
      description: 'Show help about the command',
      args: [Arg(name: 'command', template: 'help')])
];

/// Completion spec for `aws-vault` CLI
final FigSpec awsVaultSpec = FigSpec(
    name: 'aws-vault',
    description:
        'A vault for securely storing and accessing AWS credentials in development environments',
    options: [
      Option(
          name: '--help',
          description:
              'Show context-sensitive help (also try --help-long and --help-man)'),
      Option(name: '--version', description: 'Show application version'),
      Option(name: '--debug', description: 'Show debugging output')
    ]);
