// Auto-generated from TypeScript source: dog.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dog` CLI
final FigSpec dogSpec = FigSpec(
  name: 'dog',
  description: 'A command-line DNS client',
  subcommands: [
    Subcommand(
      name: 'A',
      description: 'Query Domain A Record'
    ),
    Subcommand(
      name: 'MX',
      description: 'Query Domain MX Record'
    ),
    Subcommand(
      name: 'CNAME',
      description: 'Query Domain CNAME Record'
    ),
    Subcommand(
      name: 'TXT',
      description: 'Query Domain TXT Record'
    ),
    Subcommand(
      name: 'NS',
      description: 'Query NS Record'
    ),
    Subcommand(
      name: 'SOA',
      description: 'Query SOA Record'
    ),
    Subcommand(
      name: 'TTL',
      description: 'Query TTL Record'
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
