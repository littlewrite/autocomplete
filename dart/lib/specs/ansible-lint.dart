// Auto-generated from TypeScript source: ansible-lint.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `ansible-lint` CLI
final FigSpec ansibleLintSpec = FigSpec(
  name: 'ansible-lint',
  description: 'Ansible static code analysis',
  options: [

    Option(
      name: ['--help', '-h'],
      description: 'Show help for ansible-lint'
    ),
    Option(
      name: ['--list-rules', '-L'],
      description: 'List all the rules',
      exclusiveOn: ['-T']
    ),
    Option(
      name: ['--list-tags', '-T'],
      description: 'List all the tags and the rules they cover',
      exclusiveOn: ['-L']
    ),
    Option(
      name: ['--format', '-f'],
      description: 'Stdout formatting'
    ),
    Option(
      name: '-q',
      description: 'Quieter, reduce verbosity, can be specified twice',
      isRepeatable: 2
    ),
    Option(
      name: '-p',
      description: 'Parseable output, same as \'-f pep8\''
    ),
    Option(
      name: '--progressive',
      description: 'Return success if it detects a reduction in number of violations compared with previous git commit. This feature works only in git repositories'
    ),
    Option(
      name: '--project-dir',
      description: 'Location of project/repository, autodetected based on location of configuration file',
      args: [
        Arg(
        name: 'PROJECT_DIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: ['--rules-dir', '-r'],
      description: 'Specify custom rule directories',
      args: [
        Arg(
        name: 'RULESDIR',
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '-R',
      description: 'Keep using embedded rules when using \'-r\''
    ),
    Option(
      name: '--write',
      description: 'Allow ansible-lint to reformat YAML files and run rule transforms',
      args: [
        Arg(
        name: 'WRITE_LIST',
        description: 'Limit the effective rule transforms by passing a keywords \'all\' or \'none\' or a comma separated list of rule ids or rule tags',
        suggestions: [

          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'none'),
          FigSuggestion(name: 'rule1,rule2,...')
        ],
        defaultValue: 'all'
      )
      ]
    ),
    Option(
      name: '--show-relpath',
      description: 'Display path relative to CWD'
    ),
    Option(
      name: ['--tags', '-t'],
      description: 'Only check rules whose id/tags match these values'
    ),
    Option(
      name: '-v',
      description: 'Increase verbosity level (-vv for more)',
      isRepeatable: 2
    ),
    Option(
      name: ['--skip-list', '-x'],
      description: 'Only check rules whose id/tags do not match these values',
      args: [
        Arg(
        name: 'SKIP_LIST'
      )
      ]
    ),
    Option(
      name: ['--warn-list', '-w'],
      description: 'Only warn about these rules, unless overridden in config file defaults to \'experimental\'',
      args: [
        Arg(
        name: 'WARN_LIST'
      )
      ]
    ),
    Option(
      name: '--enable-list',
      description: 'Activate optional rules by their tag name',
      args: [
        Arg(
        name: 'ENABLE_LIST'
      )
      ]
    ),
    Option(
      name: '--nocolor',
      description: 'Disable colored output, same as NO_COLOR=1'
    ),
    Option(
      name: '--force-color',
      description: 'Force colored output, same as FORCE_COLOR=1'
    ),
    Option(
      name: '--exclude-paths',
      description: 'Path to directories or files to skip. This option is repeatable',
      args: [
        Arg(
        name: 'EXCLUDE_PATHS',
        isVariadic: true,
        template: 'folders'
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'Specify configuration file to use. By default it will look for \'.ansible-lint\' or \'.config/ansible-lint.yml\'',
      args: [
        Arg(
        name: 'CONFIG_FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--offline',
      description: 'Disable installation of requirements.yml'
    ),
    Option(
      name: '--version',
      description: 'Show version of ansible-lint'
    )
  ],
  args: [
    Arg(
    name: 'lintables',
    description: 'Files to lint',
    isOptional: true,
    isVariadic: true,
    template: 'filepaths'
  )
  ]
);
