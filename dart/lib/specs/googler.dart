// AI-generated from TypeScript source: googler.ts
import 'package:autocomplete/src/spec.dart';

final FigSpec googlerSpec = FigSpec(
  name: 'googler',
  description: 'Google from the command-line',
  options: [
    FigOption(
      name: ['-h', '--help'],
      description: 'Show this help message and exit',
    ),
    FigOption(
      name: ['-s', '--start'],
      description: 'Start at the Nth result',
      args: [
        FigArg(
          name: 'N',
        ),
      ],
    ),
    FigOption(
      name: ['-n', '--count'],
      description: 'Show N results',
      args: [
        FigArg(
          name: 'N',
          defaultValue: '10',
        ),
      ],
    ),
    FigOption(
      name: ['-N', '--news'],
      description: 'Show results from news section',
    ),
    FigOption(
      name: ['-V', '--videos'],
      description: 'Show results from videos section',
    ),
    FigOption(
      name: ['-c', '--tld'],
      description:
          "Country-specific search with top-level domain .TLD, e.g., 'in' for India",
      args: [
        FigArg(
          name: 'top-level domain',
        ),
      ],
    ),
    FigOption(
      name: ['-l', '--lang'],
      description: 'Display in language',
      args: [
        FigArg(
          name: 'language',
        ),
      ],
    ),
    FigOption(
      name: ['-g', '--geoloc'],
      description:
          "Country-specific geolocation search with country code CC, e.g. 'in' for India",
      args: [
        FigArg(
          name: 'CC',
          description: 'Country codes are the same as top-level domains',
        ),
      ],
    ),
    FigOption(
      name: ['-x', '--exact'],
      description: 'Disable automatic spelling correction',
    ),
    FigOption(
      name: ['--colorize'],
      description:
          'Whether to colorize output which enables color when stdout is a tty device',
      args: [
        FigArg(
          name: 'mode',
          defaultValue: 'auto',
          suggestions: [
            const FigSuggestion(name: ['auto']),
            const FigSuggestion(name: ['always']),
            const FigSuggestion(name: ['never']),
          ],
        ),
      ],
    ),
    FigOption(
      name: ['-C', '--nocolor'],
      description: 'Equivalent to --colorize=never',
    ),
    FigOption(
      name: ['--colors'],
      description: 'Set output colors',
      args: [
        FigArg(
          name: 'colors',
          isVariadic: true,
        ),
      ],
    ),
    FigOption(
      name: ['-j', '--first', '--lucky'],
      description: 'Open the first result in web browser and exit',
    ),
    FigOption(
      name: ['-t', '--time'],
      description:
          'Time limit search [h5 (5 hrs), d5 (5 days), w5 (5 weeks), m5 (5 months), y5 (5 years)',
      args: [
        FigArg(
          name: 'time limit',
        ),
      ],
    ),
    FigOption(
      name: ['--from'],
      description:
          'Starting date/month/year of date range. Can be used in conjunction with --to and overrides -t, --time',
      args: [
        FigArg(
          name: 'date',
          description:
              'American date format with slashes, e.g., 2/24/2020, 2/2020, 2020',
        ),
      ],
    ),
    FigOption(
      name: ['--to'],
      description: 'Ending date/month/year of date range',
      args: [
        FigArg(
          name: 'date',
          description:
              'American date format with slashes, e.g., 2/24/2020, 2/2020, 2020',
        ),
      ],
    ),
    FigOption(
      name: ['-w', '--site'],
      description: 'Search a site using Google',
      args: [
        FigArg(
          name: 'site',
        ),
      ],
    ),
    FigOption(
      name: ['-e', '--exclude'],
      description: 'Exclude site from results',
    ),
    FigOption(
      name: ['--unfilter'],
      description: 'Do not omit similar results',
    ),
    FigOption(
      name: ['-p', '--proxy'],
      description: 'Tunnel traffic through an HTTP proxy',
      args: [
        FigArg(
          name: 'PROXY',
          description:
              'In the form of [http://][user:password@]proxyhost[:port]',
        ),
      ],
    ),
    FigOption(
      name: ['--notweak'],
      description: 'Disable TCP optimizations and forced TLS 1.2',
    ),
    FigOption(
      name: ['--json'],
      description: 'Output in JSON format; implies --noprompt',
      dependsOn: ['--noprompt'],
    ),
    FigOption(
      name: ['--url-handler'],
      description: 'Custom script or cli utility to open results',
      args: [
        FigArg(
          name: 'util',
        ),
      ],
    ),
    FigOption(
      name: ['--show-browser-logs'],
      description: 'Do not suppress browser output (stdout and stderr)',
    ),
    FigOption(
      name: ['--np', '--noprompt'],
      description: 'Search and exit, do not prompt',
    ),
    FigOption(
      name: ['-4', '--ipv4'],
      description:
          'Only connect over IPv4 (by default, IPv4 is preferred but IPv6 is used as a fallback)',
    ),
    FigOption(
      name: ['-6', '--ipv6'],
      description: 'Only connect over IPv6',
    ),
    FigOption(
      name: ['-u', '--upgrade'],
      description: 'Perform in-place self-upgrade',
    ),
    FigOption(
      name: ['--include-git'],
      description: 'When used with --upgrade, get latest git master',
    ),
    FigOption(
      name: ['-v', '--version'],
      description: "Show program's version number and exit",
    ),
    FigOption(
      name: ['-d', '--debug'],
      description: 'Enable debugging',
    ),
  ],
  args: [
    FigArg(
      name: 'keyword',
      description: 'Search keywords',
      isVariadic: true,
      isOptional: true,
    ),
  ],
);
