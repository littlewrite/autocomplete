// Auto-generated from TypeScript source: nmap.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nmap` CLI
final FigSpec nmapSpec = FigSpec(
  name: 'nmap',
  description: 'Network exploration tool and security / port scanner',
  parserDirectives: ParserDirectives(
    flagsArePosixNoncompliant: true,
    optionsMustPrecedeArguments: false
  ),
  options: [

    Option(
      name: '-iL',
      description: 'Input from list of hosts/networks'
    ),
    Option(
      name: '-iR',
      description: 'Choose random targets'
    ),
    Option(
      name: '--exclude',
      description: 'Excluide hosts/networks'
    ),
    Option(
      name: '--excludefile',
      description: 'Exclude list from file'
    ),
    Option(
      name: '-sS',
      description: 'TCP SYN scan'
    ),
    Option(
      name: '-sT',
      description: 'TCP scan'
    ),
    Option(
      name: '-sA',
      description: 'TCP ACK scan'
    ),
    Option(
      name: '-sW',
      description: 'TCP Window scan'
    ),
    Option(
      name: '-sM',
      description: 'TCP Maimon scan'
    ),
    Option(
      name: '-sU',
      description: 'UDP scan'
    ),
    Option(
      name: '-sP',
      description: 'Ping scan'
    ),
    Option(
      name: '-sN',
      description: 'TCP Null scan'
    ),
    Option(
      name: '-sF',
      description: 'FIN scan'
    ),
    Option(
      name: '-sX',
      description: 'Xmas scan'
    ),
    Option(
      name: '-sO',
      description: 'IP protocol scan'
    ),
    Option(
      name: '-p',
      description: 'Scan specified ports'
    ),
    Option(
      name: ['-v', '-vv'],
      description: 'Increase verbosity level'
    ),
    Option(
      name: '-O',
      description: 'Enable OS detection'
    ),
    Option(
      name: '--osscan-limit',
      description: 'Limit OS detection to promising targets'
    ),
    Option(
      name: '---osscan-guess',
      description: 'Guess OS more aggressively'
    ),
    Option(
      name: '-A',
      description: 'Enable a full detection'
    ),
    Option(
      name: '-6',
      description: 'Enable IPV6 scanning'
    ),
    Option(
      name: '-V',
      description: 'Print version number'
    ),
    Option(
      name: '-privileged',
      description: 'Assume that user is fully privileges'
    ),
    Option(
      name: '-unprivileged',
      description: 'Assume that user lacks raw socket privileges'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for nmap'
    )
  ]
);
