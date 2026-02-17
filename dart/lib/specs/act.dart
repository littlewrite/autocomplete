// Auto-generated from TypeScript source: act.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `act` CLI
final FigSpec actSpec = FigSpec(
  name: 'act',
  description: 'Run GitHub actions locally by specifying the event name (e.g. `push`) or an action name directly',
  subcommands: [

    Subcommand(
      name: 'completion',
      description: 'Generate the autocompletion script for the specified shell',
      subcommands: [

        Subcommand(
          name: 'bash',
          description: 'Generate the autocompletion script for bash',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'fish',
          description: 'Generate the autocompletion script for fish',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'powershell',
          description: 'Generate the autocompletion script for powershell',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        ),
        Subcommand(
          name: 'zsh',
          description: 'Generate the autocompletion script for zsh',
          options: [

            Option(
              name: '--no-descriptions',
              description: 'Disable completion descriptions'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'help',
      description: 'Help about any command',
      subcommands: [

        Subcommand(
          name: 'completion',
          description: 'Generate the autocompletion script for the specified shell',
          subcommands: [

            Subcommand(
              name: 'bash',
              description: 'Generate the autocompletion script for bash'
            ),
            Subcommand(
              name: 'fish',
              description: 'Generate the autocompletion script for fish'
            ),
            Subcommand(
              name: 'powershell',
              description: 'Generate the autocompletion script for powershell'
            ),
            Subcommand(
              name: 'zsh',
              description: 'Generate the autocompletion script for zsh'
            )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: ['--bind', '-b'],
      description: 'Bind working directory to container, rather than copy'
    ),
    Option(
      name: '--bug-report',
      description: 'Display system information for bug report'
    ),
    Option(
      name: '--container-cap-add',
      description: 'Kernel capabilities to add to the workflow containers (e.g. --container-cap-add SYS_PTRACE)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'container-cap-ad'
      )
      ]
    ),
    Option(
      name: '--container-cap-drop',
      description: 'Kernel capabilities to remove from the workflow containers (e.g. --container-cap-drop SYS_PTRACE)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'container-cap-dro'
      )
      ]
    ),
    Option(
      name: '--defaultbranch',
      description: 'The name of the main branch',
      args: [
        Arg(
        name: 'defaultbranc'
      )
      ]
    ),
    Option(
      name: '--detect-event',
      description: 'Use first event type from workflow as event that triggered the workflow'
    ),
    Option(
      name: '--env',
      description: 'Env to make available to actions with optional value (e.g. --env myenv=foo or --env myenv)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'en'
      )
      ]
    ),
    Option(
      name: ['--eventpath', '-e'],
      description: 'Path to event JSON file',
      args: [
        Arg(
        name: 'eventpat'
      )
      ]
    ),
    Option(
      name: ['--graph', '-g'],
      description: 'Draw workflows'
    ),
    Option(
      name: ['--job', '-j'],
      description: 'Run job',
      args: [
        Arg(
        name: 'jo'
      )
      ]
    ),
    Option(
      name: ['--list', '-l'],
      description: 'List workflows'
    ),
    Option(
      name: ['--platform', '-P'],
      description: 'Custom image to use per platform (e.g. -P ubuntu-18.04=nektos/act-environments-ubuntu:18.04)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'platfor'
      )
      ]
    ),
    Option(
      name: '--privileged',
      description: 'Use privileged mode'
    ),
    Option(
      name: ['--pull', '-p'],
      description: 'Pull docker image(s) even if already present'
    ),
    Option(
      name: '--rebuild',
      description: 'Rebuild local action docker image(s) even if already present'
    ),
    Option(
      name: '--remote-name',
      description: 'Git remote name that will be used to retrieve url of git repo',
      args: [
        Arg(
        name: 'remote-name',
        defaultValue: 'origi'
      )
      ]
    ),
    Option(
      name: ['--reuse', '-r'],
      description: 'Don\'t remove container(s) on successfully completed workflow(s) to maintain state between runs'
    ),
    Option(
      name: '--rm',
      description: 'Automatically remove container(s)/volume(s) after a workflow(s) failure'
    ),
    Option(
      name: ['--secret', '-s'],
      description: 'Secret to make available to actions with optional value (e.g. -s mysecret=foo or -s mysecret)',
      isRepeatable: true,
      args: [
        Arg(
        name: 'secre'
      )
      ]
    ),
    Option(
      name: '--use-gitignore',
      description: 'Controls whether paths specified in .gitignore should be copied into container'
    ),
    Option(
      name: '--userns',
      description: 'User namespace to use',
      args: [
        Arg(
        name: 'usern'
      )
      ]
    ),
    Option(
      name: ['--watch', '-w'],
      description: 'Watch the contents of the local repo and run when files change'
    ),
    Option(
      name: ['--actor', '-a'],
      description: 'User that triggered the event',
      isPersistent: true,
      args: [
        Arg(
        name: 'actor',
        defaultValue: 'nektos/ac'
      )
      ]
    ),
    Option(
      name: '--artifact-server-path',
      description: 'Defines the path where the artifact server stores uploads and retrieves downloads from. If not specified the artifact server will not start',
      isPersistent: true,
      args: [
        Arg(
        name: 'artifact-server-pat'
      )
      ]
    ),
    Option(
      name: '--artifact-server-port',
      description: 'Defines the port where the artifact server listens (will only bind to localhost)',
      isPersistent: true,
      args: [
        Arg(
        name: 'artifact-server-port',
        defaultValue: '3456'
      )
      ]
    ),
    Option(
      name: '--container-architecture',
      description: 'Architecture which should be used to run containers, e.g.: linux/amd64. If not specified, will use host default architecture. Requires Docker server API Version 1.41+. Ignored on earlier Docker server platforms',
      isPersistent: true,
      args: [
        Arg(
        name: 'container-architectur'
      )
      ]
    ),
    Option(
      name: '--container-daemon-socket',
      description: 'Path to Docker daemon socket which will be mounted to containers',
      isPersistent: true,
      args: [
        Arg(
        name: 'container-daemon-socket',
        defaultValue: '/var/run/docker.sock'
      )
      ]
    ),
    Option(
      name: ['--directory', '-C'],
      description: 'Working directory',
      isPersistent: true,
      args: [
        Arg(
        name: 'directory',
        defaultValue: '.',
        template: 'folder'
      )
      ]
    ),
    Option(
      name: ['--dryrun', '-n'],
      description: 'Dryrun mode',
      isPersistent: true
    ),
    Option(
      name: '--env-file',
      description: 'Environment file to read and use as env in the containers',
      isPersistent: true,
      args: [
        Arg(
        name: 'env-file',
        defaultValue: '.en'
      )
      ]
    ),
    Option(
      name: '--github-instance',
      description: 'GitHub instance to use. Don\'t use this if you are not using GitHub Enterprise Server',
      isPersistent: true,
      args: [
        Arg(
        name: 'github-instance',
        defaultValue: 'github.co'
      )
      ]
    ),
    Option(
      name: '--insecure-secrets',
      description: 'NOT RECOMMENDED! Doesn\'t hide secrets while printing logs',
      isPersistent: true
    ),
    Option(
      name: '--json',
      description: 'Output logs in json format',
      isPersistent: true
    ),
    Option(
      name: '--no-recurse',
      description: 'Flag to disable running workflows from subdirectories of specified path in \'--workflows\'/\'-W\' flag',
      isPersistent: true
    ),
    Option(
      name: '--no-skip-checkout',
      description: 'Do not skip actions/checkout',
      isPersistent: true
    ),
    Option(
      name: ['--quiet', '-q'],
      description: 'Disable logging of output from steps',
      isPersistent: true
    ),
    Option(
      name: '--secret-file',
      description: 'File with list of secrets to read from (e.g. --secret-file .secrets)',
      isPersistent: true,
      args: [
        Arg(
        name: 'secret-file',
        defaultValue: '.secret'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Verbose output',
      isPersistent: true
    ),
    Option(
      name: ['--workflows', '-W'],
      description: 'Path to workflow file(s)',
      isPersistent: true,
      args: [
        Arg(
        name: 'workflows',
        defaultValue: './.github/workflows/',
        template: ['folders', 'filepaths']
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Display help',
      isPersistent: true
    )
  ]
);
