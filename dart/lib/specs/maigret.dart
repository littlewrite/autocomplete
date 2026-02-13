// Auto-generated from TypeScript source: maigret.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `maigret` CLI
final FigSpec maigretSpec = FigSpec(
  name: 'maigret',
  description: 'Maigret is an easy-to-use and powerful OSINT tool for collecting a dossier on a person by username only',
  args: [
    Arg(
    name: 'user',
    description: 'The username for which you want to search sites',
    isVariadic: true
  )
  ],
  options: [

    Option(
      name: ['-a', '--all-sites'],
      description: 'Use all sites for scan'
    ),
    Option(
      name: '--version',
      description: 'Display version information and dependencies'
    ),
    Option(
      name: '--timeout',
      args: [
        Arg(
        name: 'Timeout',
        description: 'Timeout in seconds'
      )
      ],
      description: 'Time in seconds to wait for response to requests (default {settings.timeout}s). A longer timeout will be more likely to get results from slow sites. On the other hand, this may cause a long delay to gather all results'
    ),
    Option(
      name: '--retries',
      args: [
        Arg(
        name: 'Retries',
        description: 'Number of attempts'
      )
      ],
      description: 'Attempts to restart temporarily failed requests'
    ),
    Option(
      name: ['-n', '--max-connections'],
      args: [
        Arg(
        name: 'Connections',
        description: 'Number connections'
      )
      ],
      description: 'Allowed number of concurrent connections (default {settings.max_connections})'
    ),
    Option(
      name: '--no-recursion',
      description: 'Disable recursive search by additional data extracted from pages'
    ),
    Option(
      name: '--no-extracting',
      description: 'Disable parsing pages for additional data and other usernames'
    ),
    Option(
      name: '--id-type',
      args: [
        Arg(
        name: 'Type',
        description: 'Type of identifier',
        suggestions: [

          FigSuggestion(name: 'username'),
          FigSuggestion(name: 'yandex_public_id'),
          FigSuggestion(name: 'gaia_id'),
          FigSuggestion(name: 'vk_id'),
          FigSuggestion(name: 'ok_id'),
          FigSuggestion(name: 'wikimapia_uid'),
          FigSuggestion(name: 'steam_id'),
          FigSuggestion(name: 'uidme_uguid'),
          FigSuggestion(name: 'yelp_userid')
        ],
        defaultValue: 'username'
      )
      ],
      description: 'Specify identifier(s) type (default: username)'
    ),
    Option(
      name: '--db',
      args: [
        Arg(
        name: 'DB path',
        description: 'DB path',
        template: ['filepaths']
      )
      ],
      description: 'Load Maigret database from a JSON file or HTTP web resource'
    ),
    Option(
      name: '--cookies-jar-file',
      args: [
        Arg(
        name: 'Cookie file',
        description: 'Cookie file',
        template: ['filepaths']
      )
      ],
      description: 'File with cookies'
    ),
    Option(
      name: '--ignore-ids',
      args: [
        Arg(
        name: 'Ignored ids',
        description: 'Ignored ids',
        isVariadic: true
      )
      ],
      description: 'Do not make search by the specified username or other ids'
    ),
    Option(
      name: ['-fo', '--folderoutput'],
      args: [
        Arg(
        name: 'Reports path',
        description: 'Reports path',
        template: 'folders'
      )
      ],
      description: 'If using multiple usernames, the output of the results will be saved to this folder'
    ),
    Option(
      name: ['-p', '--proxy'],
      args: [
        Arg(
        name: 'Proxy URL',
        description: 'Proxy URL'
      )
      ],
      description: 'Make requests over a proxy. e.g. socks5://127.0.0.1:1080'
    ),
    Option(
      name: '--tor-proxy',
      args: [
        Arg(
        name: 'Tor Proxy URL',
        description: 'Tor Proxy URL'
      )
      ],
      description: 'Specify URL of your Tor gateway. Default is socks5://127.0.0.1:9050'
    ),
    Option(
      name: '--i2p-proxy',
      args: [
        Arg(
        name: 'I2P URL',
        description: 'I2P URL'
      )
      ],
      description: 'Specify URL of your I2P gateway. Default is http://127.0.0.1:4444'
    ),
    Option(
      name: '--with-domains',
      description: 'Enable (experimental) feature of checking domains on usernames'
    ),
    Option(
      name: '--tags',
      args: [
        Arg(
        name: 'Tags',
        isVariadic: true
      )
      ],
      description: 'Specify tags of sites (see `--stats`)'
    ),
    Option(
      name: '--site',
      args: [
        Arg(
        name: 'Site name',
        isVariadic: true
      )
      ],
      description: 'Limit analysis to just the specified sites (multiple option)'
    ),
    Option(
      name: '--use-disabled-sites',
      description: 'Use disabled sites to search (may cause many false positives)'
    ),
    Option(
      name: '--parse',
      args: [
        Arg(
        name: 'Parse URL',
        defaultValue: ''
      )
      ],
      description: 'Parse page by URL and extract username and IDs to use for search'
    ),
    Option(
      name: '--submit',
      args: [
        Arg(
        name: 'Site URL',
        defaultValue: 'False'
      )
      ],
      description: 'URL of existing profile in new site to submit'
    ),
    Option(
      name: '--self-check',
      description: 'Do self check for sites and database and disable non-working ones'
    ),
    Option(
      name: '--stats',
      description: 'Show database statistics (most frequent sites engines and tags)'
    ),
    Option(
      name: '--print-not-found',
      description: 'Print sites where the username was not found'
    ),
    Option(
      name: '--print-errors',
      description: 'Print errors messages: connection, captcha, site country ban, etc'
    ),
    Option(
      name: ['-v', '--verbose'],
      description: 'Display extra information and metrics'
    ),
    Option(
      name: ['-info', '--vv'],
      description: 'Display extra/service information and metrics'
    ),
    Option(
      name: ['--debug', '-vvv', '-d'],
      description: 'Display extra/service/debug information and metrics, save responses in debug.log'
    ),
    Option(
      name: '--no-color',
      description: 'Don\'t color terminal output'
    ),
    Option(
      name: '--no-progressbar',
      description: 'Don\'t show progressbar'
    ),
    Option(
      name: ['-T', '--txt'],
      description: 'Create a TXT report (one report per username)'
    ),
    Option(
      name: ['-C', '--csv'],
      description: 'Create a CSV report (one report per username)'
    ),
    Option(
      name: ['-H', '--html'],
      description: 'Create an HTML report (one report per username)'
    ),
    Option(
      name: ['-X', '--xmind'],
      description: 'Create a XMind 8 mindmap report (one report per username)'
    ),
    Option(
      name: ['-P', '--pdf'],
      description: 'Create a PDF report (one report per username)'
    ),
    Option(
      name: ['-G', '--graph'],
      description: 'Create a graph report (one report per username)'
    ),
    Option(
      name: ['-J', '--json'],
      args: [
        Arg(
        name: 'Type',
        suggestions: [

          FigSuggestion(name: 'simple'),
          FigSuggestion(name: 'ndjson')
        ]
      )
      ],
      description: 'Generate a JSON report of specific type: simple, ndjson (one report per username)'
    ),
    Option(
      name: '--reports-sorting',
      args: [
        Arg(
        name: 'Type',
        suggestions: [

          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'data')
        ]
      )
      ],
      description: 'Method of results sorting in reports (default: in order of getting the result)'
    )
  ]
);
