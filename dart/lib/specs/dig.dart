// Auto-generated from TypeScript source: dig.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dig` CLI
final FigSpec digSpec = FigSpec(
  name: 'dig',
  description: 'Domain Information Groper',
  subcommands: [

    Subcommand(
      name: 'A',
      description: 'Query Domain A Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'MX',
      description: 'Query Domain MX Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'CNAME',
      description: 'Query Domain CNAME Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'TXT',
      description: 'Query Domain TXT Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'NS',
      description: 'Query MX Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'SOA',
      description: 'Query SOA Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'TTL',
      description: 'Query TTL Record',
      options: [

        Option(
          name: ['+short', ''],
          insertValue: '+short {cursor}',
          description: 'Only print meaningful results',
          args: [
            Arg(
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ANY +noall +answer',
      description: 'Query ALL DNS Records'
    ),
    Subcommand(
      name: '+nocomments +noquestion +noauthority +noadditional +nostats',
      description: 'Query only answer section'
    )
  ]
);
