// Auto-generated from TypeScript source: http.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `http` CLI
final FigSpec httpSpec = FigSpec(
  name: 'http',
  description: 'HTTPie: command-line HTTP client for the API era',
  args: [

    Arg(
      name: 'METHOD',
      isOptional: true,
      suggestions: [

        FigSuggestion(name: 'GET'),
        FigSuggestion(name: 'POST'),
        FigSuggestion(name: 'PUT'),
        FigSuggestion(name: 'DELETE'),
        FigSuggestion(name: 'HEAD')
      ],
      defaultValue: 'GET',
      description: 'The HTTP method to be used for the request (GET, POST, PUT, DELETE, ...)'
    ),
    Arg(
      name: 'URL',
      description: 'The scheme defaults to \'http://\' if the URL does not include one'
    ),
    Arg(
      name: 'REQUEST_ITEM',
      isOptional: true,
      isVariadic: true,
      description: 'Optional key-value pairs to be included in the request. The separator used determines the type'
    )
  ],
  options: [

    Option(
      name: ['--json', '-j'],
      exclusiveOn: ['--form', '-f', '--multipart', '--boundary'],
      description: 'Data items from the command line are serialized as a JSON object. The Content-Type and Accept headers are set to application/json'
    ),
    Option(
      name: ['--form', '-f'],
      exclusiveOn: ['--json', '-j', '--multipart', '--boundary']
    ),
    Option(
      name: '--multipart',
      exclusiveOn: ['--json', '-j', '--form', '-f', '--boundary'],
      description: 'Similar to --form, but always sends a multipart/form-data request (i.e., even without files)'
    ),
    Option(
      name: '--boundary',
      exclusiveOn: ['--json', '-j', '--multipart'],
      description: 'Specify a custom boundary string for multipart/form-data requests. Has effect only together with --form'
    ),
    Option(
      name: ['--compress', '-x'],
      description: 'Content compressed (encoded) with Deflate algorithm. The Content-Encoding header is set to deflate'
    ),
    Option(
      name: '--pretty',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'all'),
          FigSuggestion(name: 'colors'),
          FigSuggestion(name: 'format'),
          FigSuggestion(name: 'none')
        ]
      )
      ]
    ),
    Option(
      name: ['--style', '-s'],
      args: [
        Arg(
        name: 'STYLE',
        suggestions: [

          FigSuggestion(name: 'abap'),
          FigSuggestion(name: 'algol'),
          FigSuggestion(name: 'algol_nu'),
          FigSuggestion(name: 'arduino'),
          FigSuggestion(name: 'auto'),
          FigSuggestion(name: 'autumn'),
          FigSuggestion(name: 'borland'),
          FigSuggestion(name: 'bw'),
          FigSuggestion(name: 'colorful'),
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'emacs'),
          FigSuggestion(name: 'friendly'),
          FigSuggestion(name: 'fruity'),
          FigSuggestion(name: 'igor'),
          FigSuggestion(name: 'inkpot'),
          FigSuggestion(name: 'lovelace'),
          FigSuggestion(name: 'manni'),
          FigSuggestion(name: 'monokai'),
          FigSuggestion(name: 'murphy'),
          FigSuggestion(name: 'native'),
          FigSuggestion(name: 'paraiso-dark'),
          FigSuggestion(name: 'paraiso-light'),
          FigSuggestion(name: 'pastie'),
          FigSuggestion(name: 'perldoc'),
          FigSuggestion(name: 'rainbow_dash'),
          FigSuggestion(name: 'rrt'),
          FigSuggestion(name: 'sas'),
          FigSuggestion(name: 'solarized'),
          FigSuggestion(name: 'solarized-dark'),
          FigSuggestion(name: 'solarized-light'),
          FigSuggestion(name: 'stata'),
          FigSuggestion(name: 'stata-dark'),
          FigSuggestion(name: 'stata-light'),
          FigSuggestion(name: 'tango'),
          FigSuggestion(name: 'trac'),
          FigSuggestion(name: 'vim'),
          FigSuggestion(name: 'vs'),
          FigSuggestion(name: 'xcode')
        ],
        defaultValue: 'auto'
      )
      ]
    ),
    Option(
      name: '--unsorted',
      description: 'Disables all sorting while formatting output',
      exclusiveOn: ['--sorted']
    ),
    Option(
      name: '--sorted',
      description: 'Re-enables all sorting options while formatting output',
      exclusiveOn: ['--unsorted']
    ),
    Option(
      name: '--format-options',
      args: [
        Arg(
        name: 'FORMAT_OPTIONS',
        suggestions: [

          FigSuggestion(name: 'headers.sort:true'),
          FigSuggestion(name: 'json.format:true'),
          FigSuggestion(name: 'json.indent:4'),
          FigSuggestion(name: 'json.sort_keys:true')
        ]
      )
      ],
      isRepeatable: true,
      description: 'Controls output formatting'
    ),
    Option(
      name: ['--print', '-p'],
      args: [
        Arg(
        name: 'WHAT',
        suggestions: [

          FigSuggestion(
            name: 'H',
            description: 'Request headers'
          ),
          FigSuggestion(
            name: 'B',
            description: 'Request body'
          ),
          FigSuggestion(
            name: 'h',
            description: 'Response headers'
          ),
          FigSuggestion(
            name: 'b',
            description: 'Response body'
          )
        ],
        defaultValue: 'hb'
      )
      ],
      description: 'String specifying what the output should contain'
    ),
    Option(
      name: ['--headers', '-h'],
      description: 'Print only the response headers. Shortcut for --print=h'
    ),
    Option(
      name: ['--body', '-b'],
      description: 'Print only the response body. Shortcut for --print=b'
    ),
    Option(
      name: ['--verbose', '-v']
    ),
    Option(
      name: '--all'
    ),
    Option(
      name: ['--history-print', '-P'],
      args: [
        Arg(
        name: 'WHAT',
        suggestions: [

          FigSuggestion(
            name: 'H',
            description: 'Request headers'
          ),
          FigSuggestion(
            name: 'B',
            description: 'Request body'
          ),
          FigSuggestion(
            name: 'h',
            description: 'Response headers'
          ),
          FigSuggestion(
            name: 'b',
            description: 'Response body'
          )
        ],
        defaultValue: 'hb'
      )
      ]
    ),
    Option(
      name: ['--stream', '-S'],
      description: 'Always stream the response body by line, i.e., behave like `tail -f\''
    ),
    Option(
      name: ['--output', '-o'],
      args: [
        Arg(
        name: 'FILE',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: ['--download', '-d']
    ),
    Option(
      name: ['--continue', '-c'],
      description: 'Resume an interrupted download. Note that the --output option needs to be specified as well'
    ),
    Option(
      name: ['--quiet', '-q']
    ),
    Option(
      name: '--session',
      args: [
        Arg(
        name: 'SESSION_NAME_OR_PATH',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--session-read-only',
      args: [
        Arg(
        name: 'SESSION_NAME_OR_PATH',
        template: 'filepaths'
      )
      ],
      description: 'Create or read a session without updating it form the request/response exchange'
    ),
    Option(
      name: ['--auth', '-a'],
      args: [
        Arg(
        name: 'USER[:PASS]'
      )
      ],
      description: 'If only the username is provided (-a username), HTTPie will prompt for the password'
    ),
    Option(
      name: ['--auth-type', '-A'],
      args: [
        Arg(
        suggestions: [

          FigSuggestion(
            name: 'basic',
            description: 'Basic HTTP auth'
          ),
          FigSuggestion(
            name: 'digest',
            description: 'Digest HTTP auth'
          )
        ]
      )
      ],
      description: 'The authentication mechanism to be used. Defaults to "basic"'
    ),
    Option(
      name: '--ignore-netrc',
      description: 'Ignore credentials from .netrc'
    ),
    Option(
      name: '--offline',
      description: 'Build the request and print it but don’t actually send it'
    ),
    Option(
      name: '--proxy',
      args: [
        Arg(
        name: 'PROTOCOL:PROXY_URL'
      )
      ]
    ),
    Option(
      name: ['--follow', '-F'],
      description: 'Follow 30x Location redirects'
    ),
    Option(
      name: '--max-redirects',
      args: [
        Arg(
        name: 'MAX_REDIRECTS'
      )
      ],
      description: 'By default, requests have a limit of 30 redirects (works with --follow)'
    ),
    Option(
      name: '--max-headers',
      args: [
        Arg(
        name: 'MAX_HEADERS'
      )
      ],
      description: 'The maximum number of response headers to be read before giving up (default 0, i.e., no limit)'
    ),
    Option(
      name: '--timeout',
      args: [
        Arg(
        name: 'SECONDS'
      )
      ]
    ),
    Option(
      name: '--check-status'
    ),
    Option(
      name: '--path-as-is',
      description: 'Bypass dot segment (/../ or /./) URL squashing'
    ),
    Option(
      name: '--chunked',
      description: 'Enable streaming via chunked transfer encoding'
    ),
    Option(
      name: '--verify',
      args: [
        Arg(
        name: 'VERIFY',
        suggestions: [

          FigSuggestion(name: 'no'),
          FigSuggestion(name: 'yes')
        ],
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--ssl',
      args: [
        Arg(
        suggestions: [

          FigSuggestion(name: 'ssl2.3'),
          FigSuggestion(name: 'tls1'),
          FigSuggestion(name: 'tls1.1'),
          FigSuggestion(name: 'tls1.2')
        ]
      )
      ]
    ),
    Option(
      name: '--ciphers',
      args: [
        Arg(
        defaultValue: 'ECDHE+AESGCM:ECDHE+CHACHA20:DHE+AESGCM:DHE+CHACHA20:ECDH+AESGCM:DH+AESGCM:ECDH+AES:DH+AES:RSA+AESGCM:RSA+AES:!aNULL:!eNULL:!MD5:!DSS'
      )
      ],
      description: 'A string in the OpenSSL cipher list format'
    ),
    Option(
      name: '--cert',
      args: [
        Arg(
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--cert-key',
      args: [
        Arg(
        template: 'filepaths'
      )
      ],
      description: 'The private key to use with SSL. Only needed if --cert is given and the certificate file does not contain the private key'
    ),
    Option(
      name: ['--ignore-stdin', '-I'],
      description: 'Do not attempt to read stdin'
    ),
    Option(
      name: '--help',
      description: 'Show the help message and exit'
    ),
    Option(
      name: '--version',
      description: 'Show version and exit'
    ),
    Option(
      name: '--traceback',
      description: 'Prints the exception traceback should one occur'
    ),
    Option(
      name: '--default-scheme',
      args: [
        Arg(
        name: 'DEFAULT_SCHEME'
      )
      ],
      description: 'The default scheme to use if not specified in the URL'
    ),
    Option(
      name: '--debug'
    )
  ]
);
