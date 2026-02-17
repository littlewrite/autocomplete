// Auto-generated from TypeScript source: vercel.ts
// Generated at: 2026-02-16
// WARNING: Manual changes may be overwritten!
// Unconverted parts are marked with: // TS_UNCONVERTED_START ... // TS_UNCONVERTED_END (grep TS_UNCONVERTED to find them).

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vercel` CLI
final FigSpec vercelSpec =
    FigSpec(name: 'vercel', description: 'CLI Interface for Vercel.com', args: [
  Arg(name: 'path to project', template: 'folders')
], options: [
  Option(name: ['-h', '--help'], description: 'Output usage information'),
  Option(name: ['-v', '--version'], description: 'Output the version number'),
  Option(
      name: ['-V', '--platform-version'],
      description: 'Set the platform version to deploy to'),
  Option(
      name: ['-A', '--local-config'],
      description: 'Path to the local \'vercel.json\' file',
      args: [Arg(template: 'filepaths')]),
  Option(
      name: ['-Q', '--global-config'],
      description: 'Path to the global \'.vercel\' directory',
      args: [Arg(template: 'folders')]),
  Option(name: ['-d', '--debug'], description: 'Provides more verbose output'),
  Option(
      name: ['-f', '--force'],
      description: 'Force a new deployment even if nothing has changed'),
  Option(
      name: '-with-cache',
      description: 'Retain build cache when using --force'),
  Option(
      name: ['-t', '--token'],
      description: 'Execute command with an auth token',
      args: [
        Arg(
            name: 'auth token',
            description: 'Auth token to add to your command')
      ]),
  Option(
      name: ['-p', '--public'],
      description: 'Deployment is public (\'/_src\' is exposed)'),
  Option(
      name: ['-e', '--env'],
      description:
          'Include an env var during run time (e.g.: \'-e KEY=value\'). Can appear many times'),
  Option(
      name: ['-b', '--build-env'],
      description: 'Similar to `--env` but for build time only'),
  Option(
      name: ['-m', '--meta'],
      description:
          'Add metadata for the deployment (e.g.: `-m KEY=value`). Can appear many times'),
  Option(
      name: ['-C', '--no-clipboard'],
      description: 'Do not attempt to copy URL to clipboard'),
  Option(
      name: ['-S', '--scope'],
      description: 'Set a custom scope',
      args: [
        Arg(name: 'team name', description: 'Team to execute commands from')
      ]),
  Option(
      name: '--regions',
      description: 'Set default regions to enable the deployment on'),
  Option(name: '--prod', description: 'Create a production deployment'),
  Option(
      name: ['-c', '--confirm'],
      description: 'Confirm default options and skip questions')
], subcommands: [
  Subcommand(
      name: 'deploy',
      description: 'Performs a deployment (default)',
      args: [Arg(template: 'folders')]),
  Subcommand(
      name: 'dev',
      description: 'Start a local development server',
      options: [
        Option(name: '--listen', description: 'Specifies which port to run on')
      ]),
  Subcommand(
      name: 'env',
      description: 'Manages the Environment Variables for your current Project',
      subcommands: [
        Subcommand(
            name: 'add',
            description: 'Add an environment variable',
            args: [
              Arg(name: 'name', description: 'Name of the env variable to add'),
              Arg(
                  name: 'environment',
                  description: 'Environment to add the variable to',
                  suggestions: [
                    FigSuggestion(name: 'production', icon: '🔵'),
                    FigSuggestion(name: 'preview', icon: '🟠'),
                    FigSuggestion(name: 'development', icon: '🟡')
                  ])
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove an environment variable',
            args: [
              Arg(name: 'name', description: 'Name of the variable to remove'),
              Arg(
                  name: 'environment',
                  description: 'Environment to remove from',
                  suggestions: [
                    FigSuggestion(name: 'production', icon: '🔵'),
                    FigSuggestion(name: 'preview', icon: '🟠'),
                    FigSuggestion(name: 'development', icon: '🟡')
                  ])
            ]),
        Subcommand(
            name: 'pull',
            description:
                'Download dev env variables from cloud and write to .env',
            args: [
              Arg(
                  name: 'file',
                  description: 'The file to write downloaded variables to',
                  template: 'filepaths')
            ]),
        Subcommand(
            name: 'ls',
            description:
                'List environment variables for a specific environment',
            args: [
              Arg(
                  name: 'environment',
                  description: 'Environment to list variables for')
            ])
      ]),
  Subcommand(name: 'init', description: 'Initialize an example project', args: [
    Arg(
        name: 'project name',
        description: 'Project name to initialize locally'),
    Arg(
        name: 'new project name',
        description: 'Initialize specific project locally and rename directory')
  ]),
  Subcommand(name: 'list', description: 'Lists deployments', args: [
    Arg(
        name: 'project name',
        description: 'View deployments for specified project')
  ], options: [
    Option(
        name: ['-m', '--meta'],
        description: 'Filters results based on project metadata',
        args: [Arg(isVariadic: true)])
  ]),
  Subcommand(name: 'ls', description: 'Lists deployments', args: [
    Arg(
        name: 'project name',
        description: 'View deployments for specified project')
  ]),
  Subcommand(
      name: 'inspect',
      description: 'Displays information related to a deployment',
      args: [
        Arg(name: 'url', description: 'The URL of the deployment to inspect')
      ]),
  Subcommand(
      name: 'login',
      description: 'Logs into your account or creates a new one'),
  Subcommand(name: 'logout', description: 'Logs out of your account'),
  Subcommand(
      name: 'switch',
      description: 'Switches between teams and your personal account',
      args: [Arg(name: 'team name', description: 'Team to switch to')]),
  Subcommand(
      name: 'help',
      description: 'Displays complete help for [cmd]',
      args: [
        Arg(
            name: 'command',
            description: 'Command to detailed information about')
      ]),
  Subcommand(name: 'rm', description: 'Removes a deployment', args: [
    Arg(name: 'deployment url', description: 'URL of the deployment to remove')
  ], options: [
    Option(
        name: ['-s', '--safe'],
        description:
            'Skip removal of deployments with an active preview URL or production domain'),
    Option(
        name: ['-y', '--yes'],
        description:
            'Skip confirmation step for a deployment or project removal')
  ]),
  Subcommand(name: 'remove', description: 'Removes a deployment', args: [
    Arg(name: 'deployment url', description: 'URL of the deployment to remove')
  ]),
  Subcommand(
      name: 'domains',
      description: 'Manages your domain names',
      subcommands: [
        Subcommand(
            name: 'ls', description: 'List all domains under an account'),
        Subcommand(
            name: 'inspect',
            description: 'Retrieves information about a domain',
            args: [Arg(name: 'domain', description: 'Domain to inspect')]),
        Subcommand(
            name: 'add',
            description: 'Add a domain to an account',
            args: [Arg(name: 'domain', description: 'Domain to add')]),
        Subcommand(
            name: 'rm',
            description: 'Removes a domain from an account',
            args: [Arg(name: 'domain', description: 'Domain to remove')]),
        Subcommand(
            name: 'buy',
            description: 'Buy a domain for an account',
            args: [Arg(name: 'domain', description: 'Domain to buy')]),
        Subcommand(
            name: 'move',
            description: 'Removes a domain from an account',
            args: [
              Arg(name: 'domain', description: 'Domain to move'),
              Arg(
                  name: 'account name',
                  description: 'Account to move the domain to')
            ]),
        Subcommand(
            name: 'transfer-in',
            description: 'Transfers in a domain to an account',
            args: [Arg(name: 'domain', description: 'Domain to transfer in')]),
        Subcommand(
            name: 'verify',
            description: 'Verifies a domain for an account',
            args: [Arg(name: 'domain', description: 'Domain to verify')])
      ]),
  Subcommand(
      name: 'dns',
      description: 'Manages your DNS records',
      subcommands: [
        Subcommand(
            name: 'add',
            description: 'Add DNS record for a domain',
            args: [
              Arg(name: 'domain', description: 'Domain to add record to'),
              Arg(name: 'subdomain', description: 'Subdomain to add record to'),
              Arg(
                  name: 'record type',
                  description: 'Type of record to add',
                  suggestions: [
                    FigSuggestion(name: 'A', description: 'A record'),
                    FigSuggestion(name: 'AAAA', description: 'AAAA record'),
                    FigSuggestion(name: 'ALIAS', description: 'ALIAS record'),
                    FigSuggestion(name: 'CNAME', description: 'CName record'),
                    FigSuggestion(name: 'TXT', description: 'TXT record')
                  ]),
              Arg(name: 'value', description: 'Record value')
            ])
      ]),
  Subcommand(
      name: 'certs',
      description: 'Manages your SSL certificates',
      subcommands: [
        Subcommand(
            name: 'ls', description: 'List all certificates under an account'),
        Subcommand(
            name: 'issue',
            description: 'Issue certificates for multiple domains',
            args: [
              Arg(
                  name: 'Domains',
                  description:
                      'List of domains separated by commas to issue certificates for',
                  isVariadic: true)
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove a certificate by id',
            args: [
              Arg(
                  name: 'certificate id',
                  description: 'Id of the certificate to remove')
            ])
      ],
      options: [
        Option(
            name: '--challenge-only',
            description: 'Show challenges needed to issue a certificate'),
        Option(
            name: '--crt',
            description: 'Include path to .crt',
            args: [Arg(template: 'filepath')]),
        Option(
            name: '--key',
            description: 'Include path to .key',
            args: [Arg(template: 'filepath')]),
        Option(
            name: '--ca',
            description: 'Include path to .ca',
            args: [Arg(template: 'filepath')])
      ]),
  Subcommand(
      name: 'secrets',
      description:
          'Manages your global Secrets, for use in Environment Variables',
      subcommands: [
        Subcommand(name: 'list', description: 'List all secrets'),
        Subcommand(name: 'add', description: 'Add a new secret', args: [
          Arg(name: 'secret name', description: 'Name of the secret to add'),
          Arg(name: 'secret value', description: 'Value of the secret to add')
        ]),
        Subcommand(name: 'rename', description: 'Rename a secret', args: [
          Arg(
              name: 'old name',
              description: 'Old name of the secret to rename'),
          Arg(name: 'new name', description: 'New name of the secret')
        ]),
        Subcommand(name: 'remove', description: 'Remove a secret', args: [
          Arg(name: 'secret name', description: 'Name of the seret to remove')
        ])
      ]),
  Subcommand(
      name: 'logs',
      description: 'Displays the logs for a deployment',
      args: [
        Arg(
            name: 'deployment url',
            description: 'Get logs for specified deployment')
      ],
      options: [
        Option(
            name: ['-a', '--all'],
            description: 'Receive access logs in addition to regular logs'),
        Option(
            name: ['-f', '--follow'],
            description: 'Watch for additional logs output'),
        Option(
            name: ['-n', '--number'],
            description: 'Specify number of log lines to output',
            args: [Arg()]),
        Option(
            name: ['-o', '--output'],
            description:
                'Specifies format of logs output as \'short\' or \'raw\'',
            args: [Arg()]),
        Option(
            name: '--since',
            description: 'Return logs after a specific ISO 8601 date',
            args: [Arg()]),
        Option(
            name: ['-q', '--query'],
            description: 'Return logs against a search query',
            args: [Arg()]),
        Option(
            name: '--until',
            description: 'Return logs up to a specific ISO 8601 date',
            args: [Arg()])
      ]),
  Subcommand(name: 'teams', description: 'Manages your teams', subcommands: [
    Subcommand(name: 'list', description: 'List all teams under an account'),
    Subcommand(name: 'add', description: 'Create a new team'),
    Subcommand(
        name: 'invite',
        description: 'Invite a new member to the team',
        args: [
          Arg(name: 'email', description: 'Email of member to invite to team')
        ])
  ]),
  Subcommand(
      name: 'whoami',
      description: 'Shows the username of the currently logged in user'),
  Subcommand(
      name: 'alias',
      description:
          'Apply custom domains based on git branches, or other heuristics',
      subcommands: [
        Subcommand(
            name: 'set',
            description: 'Assign a custom domain to a deployment',
            args: [
              Arg(
                  name: 'url',
                  description:
                      'The URL of the deployment to assign to a domain'),
              Arg(
                  name: 'domain',
                  description: 'The domain you want to assign to')
            ]),
        Subcommand(
            name: 'rm',
            description: 'Remove a custom domain from a deployment',
            args: [Arg(name: 'domain', description: 'The domain to remove')]),
        Subcommand(
            name: 'ls',
            description:
                'List custom domains that were assigned to deployments')
      ]),
  Subcommand(
      name: 'link',
      description: 'Links your local directory to a Project',
      args: [Arg(isOptional: true, name: 'directory', template: 'folders')]),
  Subcommand(
      name: 'billing',
      description: 'Manage payment methods',
      subcommands: [
        Subcommand(
            name: 'ls',
            description: 'List all the payment methods of the active account'),
        Subcommand(
            name: 'add', description: 'Interactively add a new credit card'),
        Subcommand(
            name: 'rm',
            description: 'Remove a credit card by ID',
            args: [
              Arg(name: 'id', description: 'The id of the card to remove')
            ]),
        Subcommand(
            name: 'set-default',
            description: 'Select which credit card should be default',
            args: [
              Arg(name: 'id', description: 'The id of the card to set default')
            ])
      ])
]);

// === TS Generator blocks: convert manually or with AI (grep TS_GENERATOR_BLOCK_START) ===

// TS_GENERATOR_BLOCK_START (envVarList)
// const envVarList: Fig.Generator = {
//   script: ["vercel", "env", "ls"],
//   postProcess: function (out) {
//     const lines = out.split("\n");
//     const envList = [];
//     for (let i = 4; i < lines.length; i++) {
//       const envVar = lines[i].match(/\S+/g)[0];
//       envList.push({
//         name: envVar,
//       });
//     }
//     return envList;
//   },
// };
// TS_GENERATOR_BLOCK_END

// TS_GENERATOR_BLOCK_START (teamList)
// const teamList: Fig.Generator = {
//   script: ["vercel", "teams", "list"],
//   postProcess: function (out) {
//     const lines = out.split("\n");
//     const teamList = [];
//     for (let i = 3; i < lines.length; i++) {
//       const teamName = lines[i].match(/\S+/g)[0];
//       teamList.push({
//         name: teamName,
//       });
//     }
//     return teamList;
//   },
// };
// TS_GENERATOR_BLOCK_END
