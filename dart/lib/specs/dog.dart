// Auto-generated from TypeScript source: dog.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> options = [

  Option(
    name: ['-q', '--query'],
    description: 'Host name or IP address to query',
    args: [
      Arg(
      name: 'HOS'
    )
    ]
  ),
  Option(
    name: ['-t', '--type'],
    description: 'Type of the DNS record being queried (A, MX, NS...)',
    args: [
      Arg(
      name: 'TYP'
    )
    ]
  ),
  Option(
    name: ['-n', '--nameserver'],
    description: 'Address of the nameserver to send packets to',
    args: [
      Arg(
      name: 'ADD'
    )
    ]
  ),
  Option(
    name: '-class',
    description: 'Network class of the DNS record being queried (IN, CH, HS)',
    args: [
      Arg(
      name: 'CLAS'
    )
    ]
  ),
  Option(
    name: '--edns',
    description: 'Whether to OPT in to EDNS (disable, hide, show)',
    args: [
      Arg(
      name: 'NUMBE'
    )
    ]
  ),
  Option(
    name: '--txid',
    description: 'Set the transaction ID to a specific value',
    args: [
      Arg(
      name: 'CLAS'
    )
    ]
  ),
  Option(
    name: '-Z',
    description: 'Set uncommon protocol-level tweaks',
    args: [
      Arg(
      name: 'TWEAK'
    )
    ]
  ),
  Option(
    name: ['-U', '--udp'],
    description: 'Use the DNS protocol over UDP'
  ),
  Option(
    name: ['-T', '--tcp'],
    description: 'Use the DNS protocol over TCP'
  ),
  Option(
    name: ['-S', '--tls'],
    description: 'Use the DNS-over-TLS protocol'
  ),
  Option(
    name: ['-H', '--https'],
    description: 'Use the DNS-over-HTTPS protocol'
  ),
  Option(
    name: ['-1', '--short'],
    description: 'Short mode: display nothing but the first result'
  ),
  Option(
    name: ['-J', '--json'],
    description: 'Display the output as JSON'
  ),
  Option(
    name: '--color',
    description: 'When to colourise the output (always, automatic, never)',
    args: [

      Arg(
        name: 'WHEN'
      )
    ]
  ),
  Option(
    name: '--seconds',
    description: 'Do not format durations, display them as seconds'
  ),
  Option(
    name: '--time',
    description: 'Print how long the response took to arrive'
  )
];

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
