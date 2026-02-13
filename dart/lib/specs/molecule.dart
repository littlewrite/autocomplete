// Auto-generated from TypeScript source: molecule.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `molecule` CLI
final FigSpec moleculeSpec = FigSpec(
  name: 'molecule',
  description: 'Molecule aids in the development and testing of Ansible roles',
  subcommands: [

    Subcommand(
      name: 'check',
      description: 'Use the provisioner to perform a Dry-Run (destroy, dependency, create, prepare, converge)',
      options: []
    ),
    Subcommand(
      name: 'cleanup',
      description: 'Use the provisioner to cleanup any changes made to external systems during the stages of testing',
      options: []
    ),
    Subcommand(
      name: 'converge',
      description: 'Use the provisioner to configure instances (dependency, create, prepare converge)',
      options: []
    ),
    Subcommand(
      name: 'create',
      description: 'Use the provisioner to start the instances',
      options: []
    ),
    Subcommand(
      name: 'dependency',
      description: 'Manage the role\'s dependencies',
      options: []
    ),
    Subcommand(
      name: 'destroy',
      description: 'Use the provisioner to destroy the instances',
      options: [

        Option(
          name: '--all',
          description: 'Destroy all scenarios. Default is False',
          exclusiveOn: ['--no-all']
        ),
        Option(
          name: '--no-all',
          description: 'Do not destroy all scenarios',
          exclusiveOn: ['--all']
        )
      ]
    ),
    Subcommand(
      name: 'drivers',
      description: 'List drivers',
      options: [

        Option(
          name: ['--format', '-f'],
          description: 'Change output format. (simple)',
          args: [
            Arg(
            name: 'TEXT',
            suggestions: [

              FigSuggestion(name: 'simple'),
              FigSuggestion(name: 'plain')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'idempotence',
      description: 'Use the provisioner to configure the instances and parse the output to determine idempotence',
      options: []
    ),
    Subcommand(
      name: 'init',
      description: 'Initialize a new role or scenario',
      subcommands: [

        Subcommand(
          name: 'role',
          description: 'Initialize a new role for use with Molecule, namespace is required outside collections, like acme.myrole',
          options: [],
          args: [
            Arg(
            name: 'ROLE_NAM'
          )
          ],
          parserDirectives: ParserDirectives(
            optionsMustPrecedeArguments: true
          )
        ),
        Subcommand(
          name: 'scenario',
          description: 'Initialize a new scenario for use with Molecule',
          options: [

            Option(
              name: ['--role-name', '-r'],
              description: 'Name of the role to create',
              args: [
                Arg(
                name: 'TEX'
              )
              ]
            )
          ],
          args: [
            Arg(
            name: 'SCENARIO_NAM'
          )
          ],
          parserDirectives: ParserDirectives(
            optionsMustPrecedeArguments: true
          )
        )
      ]
    ),
    Subcommand(
      name: 'lint',
      description: 'Lint the role (dependency, lint)',
      options: []
    ),
    Subcommand(
      name: 'list',
      description: 'List status of instances',
      options: [

        Option(
          name: ['--format', '-f'],
          description: 'Change output format. (simple)',
          args: [
            Arg(
            name: 'TEXT',
            suggestions: [

              FigSuggestion(name: 'simple'),
              FigSuggestion(name: 'plain'),
              FigSuggestion(name: 'yaml')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login',
      description: 'Log in to one instance',
      options: [

        Option(
          name: ['--host', '-h'],
          description: 'Host to access',
          args: [
            Arg(
            name: 'TEX'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'matrix',
      description: 'List matrix of steps used to test instances',
      options: []
    ),
    Subcommand(
      name: 'prepare',
      description: 'Use the provisioner to prepare the instances into a particular starting state',
      options: [

        Option(
          name: '--force',
          description: 'Enable force mode. Default is disabled',
          exclusiveOn: ['--no-force']
        ),
        Option(
          name: '--no-force',
          description: 'Disable force mode',
          exclusiveOn: ['--force']
        )
      ]
    ),
    Subcommand(
      name: 'reset',
      description: 'Reset molecule temporary folders',
      options: []
    ),
    Subcommand(
      name: 'side-effect',
      description: 'Use the provisioner to perform side-effects to the instances',
      options: []
    ),
    Subcommand(
      name: 'syntax',
      description: 'Use the provisioner to syntax check the role',
      options: []
    ),
    Subcommand(
      name: 'test',
      description: 'Test (dependency, lint, cleanup, destroy, syntax, create, prepare, converge, idempotence, side_effect, verify, cleanup, destroy)',
      options: [

        Option(
          name: '--all',
          description: 'Test all scenarios. Default is False',
          exclusiveOn: ['--no-all']
        ),
        Option(
          name: '--no-all',
          description: 'Do not test all scenarios',
          exclusiveOn: ['--all']
        ),
        Option(
          name: '--destroy',
          description: 'The destroy strategy used at the conclusion of a Molecule run (always)',
          args: [
            Arg(
            name: 'TEXT',
            suggestions: [

              FigSuggestion(name: 'always'),
              FigSuggestion(name: 'never')
            ]
          )
          ]
        )
      ]
    )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Show help',
      isPersistent: true
    ),
    Option(
      name: '--version',
      description: 'Show molecule version'
    )
  ]
);
