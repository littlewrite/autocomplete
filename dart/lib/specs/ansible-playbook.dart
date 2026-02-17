// Auto-generated from TypeScript source: ansible-playbook.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ansible-playbook` CLI
final FigSpec ansiblePlaybookSpec = FigSpec(
  name: 'ansible-playbook',
  description: 'Runs Ansible playbooks, executing the defined tasks on the targeted hosts',
  args: [
    Arg(
    name: 'playbook',
    description: 'Playbook(s)',
    isVariadic: true
  )
  ],
  options: [

    Option(
      name: '--ask-vault-pass',
      description: 'Ask for vault password'
    ),
    Option(
      name: '--flush-cache',
      description: 'Clears the fact cache for every host in inventory'
    ),
    Option(
      name: '--force-handlers',
      description: 'Run handlers even if a task fails'
    ),
    Option(
      name: '--list-hosts',
      description: 'Outputs a list of matching hosts; does not execute'
    ),
    Option(
      name: '--list-tags',
      description: 'List all available tags'
    ),
    Option(
      name: '--list-tasks',
      description: 'List all tasks that would be executed'
    ),
    Option(
      name: '--skip-tags',
      description: 'Only run plays and tasks whose tags do not match these values',
      args: [
        Arg(
        name: 'tags'
      )
      ]
    ),
    Option(
      name: '--start-at-task',
      description: 'Start the playbook at the task matching this name one-step-at-a-time',
      args: [
        Arg(
        name: 'task name'
      )
      ]
    ),
    Option(
      name: '--step',
      description: 'Execute one-step-at-a-time'
    ),
    Option(
      name: '--syntax-check',
      description: 'Perform a syntax check on the playbook, but do not execute it'
    ),
    Option(
      name: '--vault-id',
      description: 'Specify the vault identity to use',
      args: [
        Arg(
        name: 'vault ID'
      )
      ]
    ),
    Option(
      name: '--vault-password-file',
      description: 'Specify a vault password file',
      args: [
        Arg(
        name: 'vault password file',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--version',
      description: 'Show program\'s version number, config file location, configured module search path, module location and executable location'
    ),
    Option(
      name: ['--check', '-C'],
      description: 'Don\'t make any changes; instead, try to predict some of the changes that may occur'
    ),
    Option(
      name: ['--diff', '-D'],
      description: 'When changing (small) files and templates, show the differences in those files'
    ),
    Option(
      name: ['--module-path', '-M'],
      description: 'Prepend colon-separated path(s) to module library',
      args: [
        Arg(
        name: 'module path',
        template: ['folders']
      )
      ]
    ),
    Option(
      name: ['--extra-vars', '-e'],
      description: 'Set additional variables as key=value or YAML/JSON, if filename prepend with @',
      args: [
        Arg(
        name: 'extra vars'
      )
      ]
    ),
    Option(
      name: ['--forks', '-f'],
      description: 'Specify number of parallel processes to use',
      args: [
        Arg(
        name: 'forks'
      )
      ]
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for ansible'
    ),
    Option(
      name: ['--inventory', '-i'],
      description: 'Specify inventory host path or comma separated host list',
      args: [
        Arg(
        name: 'inventory'
      )
      ]
    ),
    Option(
      name: ['--limit', '-l'],
      description: 'Limit selected hosts to an additional pattern',
      args: [
        Arg(
        name: 'subset'
      )
      ]
    ),
    Option(
      name: ['--tags', '-t'],
      description: 'Only run plays and tasks tagged with these values',
      args: [
        Arg(
        name: 'tags'
      )
      ]
    ),
    Option(
      name: ['--verbose', '-v'],
      description: 'Enable verbose mode'
    ),
    Option(
      name: '-vvv',
      description: 'Enable very verbose mode'
    ),
    Option(
      name: '-vvvv',
      description: 'Enable connection debug mode'
    ),
    Option(
      name: '--become-method',
      description: 'Privilege escalation method to use',
      args: [
        Arg(
        name: 'become method',
        suggestions: [

          FigSuggestion(name: 'sudo'),
          FigSuggestion(name: 'su'),
          FigSuggestion(name: 'pbrun'),
          FigSuggestion(name: 'pfexec'),
          FigSuggestion(name: 'doas'),
          FigSuggestion(name: 'dzdo'),
          FigSuggestion(name: 'ksu'),
          FigSuggestion(name: 'runas'),
          FigSuggestion(name: 'machinectl')
        ]
      )
      ]
    ),
    Option(
      name: '--become-user',
      description: 'Privilege escalation user to use',
      args: [
        Arg(
        name: 'become user'
      )
      ]
    ),
    Option(
      name: ['--ask-become-pass', '-K'],
      description: 'Prompt for privilege escalation password'
    ),
    Option(
      name: ['--become', '-b'],
      description: 'Run operations with become'
    ),
    Option(
      name: ['--private-key', '--key-file'],
      description: 'Use this fole to authenticate the connection',
      args: [
        Arg(
        name: 'private key',
        template: ['filepaths']
      )
      ]
    ),
    Option(
      name: '--scp-extra-args',
      description: 'Extra arguments to pass to (only) scp',
      args: [
        Arg(
        name: 'SCP extra args'
      )
      ]
    ),
    Option(
      name: '--sftp-extra-args',
      description: 'Extra arguments to pass to (only) sftp',
      args: [
        Arg(
        name: 'SFTP extra args'
      )
      ]
    ),
    Option(
      name: '-ssh-extra-args',
      description: 'Extra arguments to pass to (only) ssh',
      args: [
        Arg(
        name: 'SSH extra args'
      )
      ]
    ),
    Option(
      name: '--ssh-common-args',
      description: 'Extra arguments to pass to sftp/scp/ssh',
      args: [
        Arg(
        name: 'SSH common args'
      )
      ]
    ),
    Option(
      name: ['--timeout', '-T'],
      description: 'Override the connection timeout in seconds',
      args: [
        Arg(
        name: 'timeout'
      )
      ]
    ),
    Option(
      name: ['--connection', '-c'],
      description: 'Connection type to use',
      args: [
        Arg(
        name: 'connection type'
      )
      ]
    ),
    Option(
      name: ['--ask-pass', '-k'],
      description: 'Ask for connection password'
    ),
    Option(
      name: ['--user', '-u'],
      description: 'Connect as this user',
      args: [
        Arg(
        name: 'user'
      )
      ]
    )
  ]
);
