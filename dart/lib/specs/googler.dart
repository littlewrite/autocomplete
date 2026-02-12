// Auto-generated from TypeScript source: googler.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `googler` CLI
final FigSpec googlerSpec = FigSpec(
  name: 'googler',
  description: 'Google from the command-line',
  options: [
    Option(
      name: ['-h', '--help'],
      description: 'Show this help message and exit'
    ),
    Option(
      name: ['-s', '--start'],
      description: 'Start at the Nth result',
      args: [
        Arg(
        name: 'N'
      )
      ]
    ),
    Option(
      name: ['-n', '--count'],
      description: 'Show N results',
      args: [
        Arg(
        name: 'N',
        defaultValue: '10'
      )
      ]
    ),
    Option(
      name: ['-N', '--news'],
      description: 'Show results from news section'
    ),
    Option(
      name: ['-V', '--videos'],
      description: 'Show results from videos section'
    ),
    Option(
      name: ['-c', '--tld'],
      description: 'Country-specific search with top-level domain .TLD, e.g., \'in\' for India',
      args: [
        Arg(
        name: 'top-level domain'
      )
      ]
    ),
    Option(
      name: ['-l', '--lang'],
      description: 'Display in language',
      args: [
        Arg(
        name: 'language'
      )
      ]
    ),
    Option(
      name: ['-g', '--geoloc'],
      description: 'Country-specific geolocation search with country code CC, e.g. \'in\' for India',
      args: [
        Arg(
        name: 'CC',
        description: 'Country codes are the same as top-level domains'
      )
      ]
    ),
    Option(
      name: ['-x', '--exact'],
      description: 'Disable automatic spelling correction'
    ),
    Option(
      name: '--colorize',
      description: 'Whether to colorize output which enables color when stdout is a tty device',
      args: [
        Arg(
        name: 'mode',
        defaultValue: 'auto',
        suggestions: [
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'always'),
          FigSuggestion(name: 'never')
        ]
      )
      ]
    ),
    Option(
      name: ['-C', '--nocolor'],
      description: 'Equivalent to --colorize=never'
    ),
    Option(
      name: '--colors',
      description: 'Set output colors',
      args: [
        Arg(
        name: 'colors',
        isVariadic: true
      )
      ]
    ),
    Option(
      name: ['-j', '--first', '--lucky'],
      description: 'Open the first result in web browser and exit'
    ),
    Option(
      name: ['-t', '--time'],
      description: 'Time limit search [h5 (5 hrs), d5 (5 days), w5 (5 weeks), m5 (5 months), y5 (5 years)',
      args: [
        Arg(
        name: 'time limit'
      )
      ]
    ),
    Option(
      name: '--from',
      description: 'Starting date/month/year of date range. Can be used in conjunction with --to and overrides -t, --time',
      args: [
        Arg(
        name: 'date',
        description: 'American date format with slashes, e.g., 2/24/2020, 2/2020, 2020'
      )
      ]
    ),
    Option(
      name: '--to',
      description: 'Ending date/month/year of date range',
      args: [
        Arg(
        name: 'date',
        description: 'American date format with slashes, e.g., 2/24/2020, 2/2020, 2020'
      )
      ]
    ),
    Option(
      name: ['-w', '--site'],
      description: 'Search a site using Google',
      args: [
        Arg(
        name: 'site'
      )
      ]
    ),
    Option(
      name: ['-e', '--exclude'],
      description: 'Exclude site from results'
    ),
    Option(
      name: '--unfilter',
      description: 'Do not omit similar results'
    ),
    Option(
      name: ['-p', '--proxy'],
      description: 'Tunnel traffic through an HTTP proxy',
      args: [
        Arg(
        name: 'PROXY',
        description: 'In the form of [http://][user:password@]proxyhost[:port]'
      )
      ]
    ),
    Option(
      name: '--notweak',
      description: 'Disable TCP optimizations and forced TLS 1.2'
    ),
    Option(
      name: '--json',
      description: 'Output in JSON format; implies --noprompt',
      dependsOn: ['--noprompt']
    ),
    Option(
      name: '--url-handler',
      description: 'Custom script or cli utility to open results',
      args: [
        Arg(
        name: 'util'
      )
      ]
    ),
    Option(
      name: '--show-browser-logs',
      description: 'Do not suppress browser output (stdout and stderr)'
    ),
    Option(
      name: ['--np', '--noprompt'],
      description: 'Search and exit, do not prompt'
    ),
    Option(
      name: ['-4', '--ipv4'],
      description: 'Only connect over IPv4 (by default, IPv4 is preferred but IPv6 is used as a fallback)'
    ),
    Option(
      name: ['-6', '--ipv6'],
      description: 'Only connect over IPv6'
    ),
    Option(
      name: ['-u', '--upgrade'],
      description: 'Perform in-place self-upgrade'
    ),
    Option(
      name: '--include-git',
      description: 'When used with --upgrade, get latest git master'
    ),
    Option(
      name: ['-v', '--version'],
      description: 'Show program\'s version number and exit'
    ),
    Option(
      name: ['-d', '--debug'],
      description: 'Enable debugging'
    )
  ],
  args: [
    Arg(
    name: 'keyword',
    description: 'Search keywords',
    isVariadic: true,
    isOptional: true
  )
  ]
);
