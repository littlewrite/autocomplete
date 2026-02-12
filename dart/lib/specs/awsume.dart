// Auto-generated from TypeScript source: awsume.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `awsume` CLI
final FigSpec awsumeSpec = FigSpec(
  name: 'awsume',
  description: 'Awsume',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true
  ),
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for awsume'
    ),
    Option(
      name: ['--version', '-v'],
      description: 'Display the current version of awsume'
    ),
    Option(
      name: ['--output-profile', '-o'],
      description: 'A profile to output credentials to',
      args: [
        Arg(
        name: 'output_profile'
      )
      ]
    ),
    Option(
      name: '--clean',
      description: 'Clean expired output profiles'
    ),
    Option(
      name: ['--refresh', '-r'],
      description: 'Force refresh credentials'
    ),
    Option(
      name: ['--show-commands', '-s'],
      description: 'Show the commands to set the credentials'
    ),
    Option(
      name: ['--unset', '-u'],
      description: 'Unset your aws environment variables'
    ),
    Option(
      name: ['--auto-refresh', '-a'],
      description: 'Auto refresh credentials'
    ),
    Option(
      name: ['--kill-refresher', '-k'],
      description: 'Kill autoawsume'
    ),
    Option(
      name: ['--list-profiles', '-l'],
      description: 'List profiles, "more" for detail (slow)',
      args: [
        Arg(
      )
      ]
    ),
    Option(
      name: '--refresh-autocomplete',
      description: 'Refresh all plugin autocomplete profiles'
    ),
    Option(
      name: '--role-arn',
      description: 'Role ARN or <partition>:<account_id>:<role_name>',
      args: [
        Arg(
        name: 'role_arn'
      )
      ]
    ),
    Option(
      name: '--principal-arn',
      description: 'Principal ARN or <partition>:<account_id>:<provider_name>',
      args: [
        Arg(
        name: 'principal_arn'
      )
      ]
    ),
    Option(
      name: '--source-profile',
      description: 'Source_profile to use(role-arn only)',
      args: [
        Arg(
        name: 'source_profile'
      )
      ]
    ),
    Option(
      name: '--external-id',
      description: 'External ID to pass to the assume_role',
      args: [
        Arg(
        name: 'external_id'
      )
      ]
    ),
    Option(
      name: '--mfa-token',
      description: 'Your mfa token',
      args: [
        Arg(
        name: 'mfa-token'
      )
      ]
    ),
    Option(
      name: '--region',
      description: 'The region you want to awsume into',
      args: [
        Arg(
        name: 'region'
      )
      ]
    ),
    Option(
      name: '--session-name',
      description: 'Set a custom role session name',
      args: [
        Arg(
        name: 'session_name'
      )
      ]
    ),
    Option(
      name: '--role-duration',
      description: 'Seconds to get role creds for',
      args: [
        Arg(
        name: 'role_duration'
      )
      ]
    ),
    Option(
      name: '--with-saml',
      description: 'Use saml (requires plugin)'
    ),
    Option(
      name: '--with-web-identity',
      description: 'Use web identity (requires plugin)'
    ),
    Option(
      name: '--json',
      description: 'Use json credentials',
      args: [
        Arg(
        name: 'json'
      )
      ]
    ),
    Option(
      name: '--credentials-file',
      description: 'Target a shared credentials file',
      args: [
        Arg(
        name: 'credentials_file'
      )
      ]
    ),
    Option(
      name: '--config-file',
      description: 'Target a config file',
      args: [
        Arg(
        name: 'config_file'
      )
      ]
    ),
    Option(
      name: '--config',
      description: 'Configure awsume',
      args: [
        Arg(
        name: 'option',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: '--list-plugins',
      description: 'List installed plugins'
    ),
    Option(
      name: '--info',
      description: 'Print any info logs to stderr'
    ),
    Option(
      name: '--debug',
      description: 'Print any debug logs to stderr'
    ),
    Option(
      name: ['--console', '-c'],
      description: 'Open AWS console'
    ),
    Option(
      name: ['--console-link', '-cl'],
      description: 'Get a sign-on url'
    ),
    Option(
      name: ['--console-service', '-cs'],
      description: 'Open the console to a specific service',
      args: [
        Arg(
        name: 'service'
      )
      ]
    ),
    Option(
      name: ['-cls', '-csl'],
      description: 'Get a sign-on url to a specific service',
      args: [
        Arg(
        name: 'service'
      )
      ]
    )
  ],
  args: [
    Arg(
    name: 'profile',
    template: ['history']
  )
  ]
);
