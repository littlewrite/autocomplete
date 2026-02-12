// Auto-generated from TypeScript source: cdk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `cdk` CLI
final FigSpec cdkSpec = FigSpec(
  name: 'cdk',
  description: 'AWS CDK CLI',
  subcommands: [
    Subcommand(
      name: 'init',
      description: 'Create a new, empty CDK project from a template'
    ),
    Subcommand(
      name: 'metadata',
      description: 'Returns all metadata associated with this stack'
    ),
    Subcommand(
      name: 'doctor',
      description: 'Check your set-up for potential problems'
    ),
    Subcommand(
      name: 'diff',
      description: 'Compares the specified stack with the deployed stack'
    ),
    Subcommand(
      name: 'destroy',
      description: 'Destroy the specified stack(s)'
    ),
    Subcommand(
      name: 'deploy',
      description: 'Deploy the specified stack(s) into your AWS account'
    ),
    Subcommand(
      name: 'bootstrap',
      description: 'Deploys the CDK toolkit stack into an AWS environment'
    ),
    Subcommand(
      name: ['synth', 'synthesize'],
      description: 'Synthesizes and prints the CloudFormation template for this stack'
    ),
    Subcommand(
      name: ['ls', 'list'],
      description: 'List all stacks in the app'
    ),
    Subcommand(
      name: 'import',
      description: 'Import existing resource(s) into the given STACK'
    ),
    Subcommand(
      name: 'watch',
      description: 'Shortcut for \'deploy --watch\''
    ),
    Subcommand(
      name: ['ack', 'acknowledge'],
      description: 'Acknowledge a notice so that it does not show up anymore'
    ),
    Subcommand(
      name: 'notices',
      description: 'Returns a list of relevant notices'
    ),
    Subcommand(
      name: 'context',
      description: 'Manage cached context values'
    ),
    Subcommand(
      name: ['doc', 'docs'],
      description: 'Opens the reference documentation in a browser'
    )
  ],
  options: [
    Option(
      name: '--version',
      description: 'The current version'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Show help'
    )
  ]
);
