// Auto-generated from TypeScript source: doggo.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `doggo` CLI
final FigSpec doggoSpec = FigSpec(
  name: 'doggo',
  description: 'DNS Client for Humans',
  options: [
    Option(
      name: '--version',
      description: 'Output version'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Output help'
    ),
    Option(
      name: ['-q', '--query'],
      insertValue: '-q {cursor}',
      description: 'Hostname to query the DNS records for (e.g., example.com)'
    ),
    Option(
      name: ['-t', '--type'],
      insertValue: '-t {cursor}',
      description: 'Type of the DNS Record (A, MX, NS, etc.)'
    ),
    Option(
      name: ['-n', '--nameserver'],
      insertValue: '-n {cursor}',
      description: 'Address of a specific nameserver to send queries to (e.g., 9.9.9.9, 8.8.8.8)'
    ),
    Option(
      name: ['-c', '--class'],
      insertValue: '-c {cursor}',
      description: 'Network class of the DNS record (IN, CH, HS, etc.)'
    ),
    Option(
      name: ['-x', '--reverse'],
      insertValue: '-x {cursor}',
      description: 'Performs a reverse DNS lookup for an IPv4 or IPv6 address'
    ),
    Option(
      name: '--any',
      description: 'Query all supported DNS record types (A, AAAA, CNAME, MX, NS, PTR, SOA, SRV, TXT, CAA)'
    ),
    Option(
      name: '--strategy',
      description: 'Specify strategy to query nameservers (all, random, first)'
    ),
    Option(
      name: '--ndots',
      description: 'Specify ndots parameter'
    ),
    Option(
      name: '--search',
      description: 'Use the search list defined in resolv.conf (default: true)'
    ),
    Option(
      name: '--timeout',
      description: 'Specify timeout (in seconds) for the resolver to return a response'
    ),
    Option(
      name: ['-4', '--ipv4'],
      description: 'Use IPv4 only'
    ),
    Option(
      name: ['-6', '--ipv6'],
      description: 'Use IPv4 only'
    ),
    Option(
      name: '--tls-hostname',
      description: 'Provide a hostname for TLS certificate verification'
    ),
    Option(
      name: '--skip-hostname-verification',
      description: 'Skip TLS Hostname Verification for DoT lookups'
    ),
    Option(
      name: '--aa',
      description: 'Set Authoritative Answer flag'
    ),
    Option(
      name: '--ad',
      description: 'Set Authenticated Data flag'
    ),
    Option(
      name: '--cd',
      description: 'Set Checking Disabled flag'
    ),
    Option(
      name: '--rd',
      description: 'Set Recursion Desired flag (default: true)'
    ),
    Option(
      name: '--z',
      description: 'Set Z flag (reserved for future use)'
    ),
    Option(
      name: '--do',
      description: 'Set DNSSEC OK flag'
    ),
    Option(
      name: ['-J', '--json'],
      description: 'Format the output as JSON'
    ),
    Option(
      name: '--short',
      description: 'Short output format (shows only the response section)'
    ),
    Option(
      name: '--color',
      description: 'Enable/disable colored output (default: true)'
    ),
    Option(
      name: '--debug',
      description: 'Enable debug logging'
    ),
    Option(
      name: '--time',
      description: 'Show query response time'
    )
  ],
  args: [
    Arg(
      name: 'domain',
      description: 'Hostname to query the DNS records for (e.g., example.com)'
    ),
    Arg(
      name: 'type',
      description: 'Type of the DNS Record (A, MX, NS, etc.)'
    ),
    Arg(
      name: 'nameserver',
      description: 'Address of a specific nameserver to send queries to (e.g., 9.9.9.9, 8.8.8.8)'
    )
  ]
);
