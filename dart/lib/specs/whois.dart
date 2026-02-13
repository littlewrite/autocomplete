// Auto-generated from TypeScript source: whois.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `whois` CLI
final FigSpec whoisSpec = FigSpec(
  name: 'whois',
  description: 'Query a database for information about a domain registrant',
  args: [
    Arg(
    name: 'name',
    isVariadic: true
  )
  ],
  options: [

    Option(
      name: '-a',
      description: 'Use the American Registry for Internet Numbers (ARIN) database'
    ),
    Option(
      name: '-A',
      description: 'Use the Asia/Pacific Network Information Center (APNIC) database'
    ),
    Option(
      name: '-b',
      description: 'Use the Network Abuse Clearinghouse database'
    ),
    Option(
      name: '-c',
      description: 'Equivalent to \'-h TLD.whois-servers.net\', where \'TLD\' is this option\'s argument',
      args: [
        Arg(
        name: 'TL'
      )
      ],
      exclusiveOn: ['-h']
    ),
    Option(
      name: '-f',
      description: 'Use the African Network Information Centre (AfriNIC) database'
    ),
    Option(
      name: '-g',
      description: 'Use the US non-military federal government database'
    ),
    Option(
      name: '-h',
      description: 'Use the specified host instead of the default (host name or IP)',
      args: [
        Arg(
        name: 'hostnam'
      )
      ],
      exclusiveOn: ['-c']
    ),
    Option(
      name: '-i',
      description: 'Use the traditional Network Information Center (InterNIC) database'
    ),
    Option(
      name: '-I',
      description: 'Use the Internet Assigned Numbers Authority (IANA) database'
    ),
    Option(
      name: '-k',
      description: 'Use the National Internet Development Agency of Korea (KRNIC) database'
    ),
    Option(
      name: '-l',
      description: 'Use the Latin American and Caribbean IP address Regional Registry (LACNIC) database'
    ),
    Option(
      name: '-m',
      description: 'Use the Route Arbiter Database (RADB) database'
    ),
    Option(
      name: '-p',
      description: 'Connect to the whois server on the given port',
      args: [
        Arg(
        name: 'port',
        defaultValue: '4'
      )
      ]
    ),
    Option(
      name: '-P',
      description: 'Use the PeeringDB database of AS numbers'
    ),
    Option(
      name: '-Q',
      description: 'Do a quick lookup (don\'t follow referrals)'
    ),
    Option(
      name: '-r',
      description: 'Use the Réseaux IP Européens (RIPE) database'
    ),
    Option(
      name: '-R',
      description: 'Do a recursive lookup'
    ),
    Option(
      name: '-S',
      description: 'Print the output verbatim'
    )
  ]
);
