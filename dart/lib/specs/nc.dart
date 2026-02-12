// Auto-generated from TypeScript source: nc.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `nc` CLI
final FigSpec ncSpec = FigSpec(
  name: 'nc',
  description: 'Arbitrary TCP and UDP connections and listens',
  parserDirectives: ParserDirectives(
    optionsMustPrecedeArguments: true
  ),
  options: [
    Option(
      name: '-4',
      description: 'Forces nc to use IPv4 addresses only',
      args: [
        Arg(
        isOptional: true
      )
      ],
      exclusiveOn: ['-6']
    ),
    Option(
      name: '-6',
      description: 'Forces nc to use IPv6 addresses only',
      args: [
        Arg(
        isOptional: true
      )
      ],
      exclusiveOn: ['-4']
    ),
    Option(
      name: '-A',
      description: 'Set SO_RECV_ANYIF on socket',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-b',
      description: 'Specifies the interface to bind the socket to',
      args: [
        Arg(
        name: 'boundif'
      )
      ]
    ),
    Option(
      name: '-c',
      description: 'Send CRLF as line-ending',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-D',
      description: 'Enable debugging on the socket',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-C',
      description: 'Force nc not to use cellular data context',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-d',
      description: 'Do not attempt to read from stdin',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-h',
      description: 'Prints out nc help',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-i',
      description: 'Specifies a delay time interval between lines of text sent and received',
      args: [
        Arg(
        name: 'interval'
      )
      ]
    ),
    Option(
      name: '-G',
      description: 'TCP connection timeout in seconds',
      args: [
        Arg(
        name: 'conntimeout'
      )
      ]
    ),
    Option(
      name: '-H',
      description: 'Initial TCP keep alive timeout in seconds',
      args: [
        Arg(
        name: 'keepidle'
      )
      ]
    ),
    Option(
      name: '-I',
      description: 'Interval for repeating TCP keep alive timeout in seconds',
      args: [
        Arg(
        name: 'keepintvl'
      )
      ]
    ),
    Option(
      name: '-J',
      description: 'Number of times to repeat TCP keep alive packets',
      args: [
        Arg(
        name: 'keepcnt'
      )
      ]
    ),
    Option(
      name: '-k',
      description: 'Force nc to stay listening for another connection after its current connection is completed',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-l',
      description: 'Used to specify that nc should listen for an incoming connection rather than initiate a connection to a remote host',
      args: [
        Arg(
        name: 'port'
      )
      ],
      exclusiveOn: ['-p', '-s', '-z', '-w']
    ),
    Option(
      name: '-L',
      description: 'Number of prbes to send to the peer before declaring that the peer is not reachable',
      args: [
        Arg(
        name: 'num_probes'
      )
      ]
    ),
    Option(
      name: '-n',
      description: 'Do not do any DNS or service lookups on any specified addresses, hostnames or ports',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-p',
      description: 'Specifies the source port nc should use, subject to privilege restrictions and availability',
      args: [
        Arg(
        name: 'source_port'
      )
      ],
      exclusiveOn: ['-l']
    ),
    Option(
      name: '-r',
      description: 'Specifies that source and/or destination ports should be chosen randomly instead of sequentially within a range or in the order that the system assigns them',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-s',
      description: 'Specifies the IP of the interface which is used to send the packets',
      args: [
        Arg(
        name: 'source_ip_address'
      )
      ],
      exclusiveOn: ['-l']
    ),
    Option(
      name: '-t',
      description: 'Causes nc to send RFC 854 DON\'T and WON\'T responses to RFC 854 DO and WILL requests',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-U',
      description: 'Specifies to use Unix Domain Sockets',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-u',
      description: 'Use UDP instead of the default option of TCP',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-v',
      description: 'Have nc give more verbose output',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '-w',
      description: 'If a connection and stdin are idle for more than timeout seconds, then the connection is silently closed',
      args: [
        Arg(
        name: 'timeout'
      )
      ],
      exclusiveOn: ['-l']
    ),
    Option(
      name: '-X',
      description: 'Requests that nc should use the specified protocol when talking to the proxy server',
      args: [
        Arg(
        name: 'proxy_version'
      )
      ]
    ),
    Option(
      name: '-x',
      description: 'Requests that nc should connect to hostname using a proxy at proxy_address and port',
      args: [
        Arg(
        name: 'proxy_address[:port]'
      )
      ]
    ),
    Option(
      name: '-z',
      description: 'Specifies that nc should just scan for listening daemons, without sending any data to them',
      args: [
        Arg(
        isOptional: true
      )
      ],
      exclusiveOn: ['-l']
    ),
    Option(
      name: '--apple-delegate-pid',
      description: 'Requests that nc should delegate the socket for the specified PID',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--apple-delegate-uuid',
      description: 'Requests that nc should delegate the socket for the specified UUID',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--apple-ext-bk-idle',
      description: 'Requests that nc marks its socket for extended background idle time when the process becomes suspended',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--apple-nowakefromsleep',
      description: 'When the parameter n is greater than 0, requests that nc marks its socket to exlude the local port from the list of opened ports that is queried by drivers when the system goes to sleep args',
      args: [
        Arg(
        isOptional: true
      )
      ]
    ),
    Option(
      name: '--ecn',
      description: 'Requests that nc marks to use the socket option TCP_ECN_MODE to set the ECN mode',
      args: [
        Arg(
        isOptional: true,
        suggestions: [
          FigSuggestion(name: 'default'),
          FigSuggestion(name: 'enable'),
          FigSuggestion(name: 'disable')
        ],
        defaultValue: 'default'
      )
      ]
    )
  ],
  args: [
    Arg(
      name: 'hostname',
      description: 'Hostname or IP address to listen on or connect to',
      isOptional: true
    ),
    Arg(
      name: 'port',
      description: 'Port to listen on or connect to',
      isOptional: true,
      isVariadic: true
    )
  ]
);
