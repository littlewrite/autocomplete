// Auto-generated from TypeScript source: wscat.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `wscat` CLI
final FigSpec wscatSpec = FigSpec(
  name: 'wscat',
  description: 'Communicate over websocket',
  options: [

    Option(
      name: ['-c', '--connect'],
      args: [
        Arg(
        name: 'url',
        template: 'history'
      )
      ],
      description: 'Connect to a WebSocket server'
    ),
    Option(
      name: ['-V', '--version'],
      description: 'Output the version number'
    ),
    Option(
      name: '--auth',
      description: 'Add basic HTTP authentication header (--connect only)',
      args: [
        Arg(
        name: 'username:passwor'
      )
      ],
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--ca',
      args: [
        Arg(
        name: 'ca'
      )
      ],
      description: 'Specify a Certificate Authority (--connect only)',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--cert',
      args: [
        Arg(
        name: 'cert'
      )
      ],
      description: 'Specify a Client SSL Certificate (--connect only)',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--host',
      args: [
        Arg(
        name: 'host'
      )
      ],
      description: 'Optional host'
    ),
    Option(
      name: '--key',
      args: [
        Arg(
        name: 'key'
      )
      ],
      description: 'Specify a Client SSL Certificate\'s key (--connect only)',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--max-redirects',
      args: [
        Arg(
        name: 'num'
      )
      ],
      description: 'Maximum number of redirects allowed (--connect only) (default: 10)',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--no-color',
      description: 'Run without color'
    ),
    Option(
      name: '--passphrase',
      args: [
        Arg(
        name: 'passphrase'
      )
      ],
      description: 'Specify a Client SSL Certificate Key\'s passphrase (--connect only). If you don\'t provide a value, it will be prompted for',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: '--proxy',
      args: [
        Arg(
        name: '[protocol://]host[:port]'
      )
      ],
      description: 'Connect via a proxy. Proxy must support CONNECT method'
    ),
    Option(
      name: '--slash',
      description: 'Enable slash commands for control frames (/ping, /pong, /close [code [, reason]])'
    ),
    Option(
      name: ['-H', '--header'],
      args: [
        Arg(
        name: 'header:value'
      )
      ],
      description: 'Set an HTTP header. Repeat to set multiple (--connect only) (default: [])',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: ['-L', '--location'],
      description: 'Follow redirects (--connect only)',
      dependsOn: ['-c', '--connect']
    ),
    Option(
      name: ['-l', '--listen'],
      args: [
        Arg(
        name: 'port'
      )
      ],
      description: 'Listen on port'
    ),
    Option(
      name: ['-n', '--no-check'],
      description: 'Do not check for unauthorized certificates'
    ),
    Option(
      name: ['-o', '--origin'],
      args: [
        Arg(
        name: 'origin'
      )
      ],
      description: 'Optional origin'
    ),
    Option(
      name: ['-p', '--protocol'],
      args: [
        Arg(
        name: 'protocol'
      )
      ],
      description: 'Optional protocol version'
    ),
    Option(
      name: ['-P', '--show-ping-pong'],
      description: 'Print a notification when a ping or pong is received'
    ),
    Option(
      name: ['-s', '--subprotocol'],
      args: [
        Arg(
        name: 'protocol',
        suggestions: [

          FigSuggestion(name: 'MBWS.huawei.com'),
          FigSuggestion(name: 'MBLWS.huawei.com'),
          FigSuggestion(name: 'soap'),
          FigSuggestion(name: 'wamp'),
          FigSuggestion(name: 'v10.stomp'),
          FigSuggestion(name: 'v11.stomp'),
          FigSuggestion(name: 'v12.stomp'),
          FigSuggestion(name: 'ocpp1.2'),
          FigSuggestion(name: 'ocpp1.5'),
          FigSuggestion(name: 'ocpp1.6'),
          FigSuggestion(name: 'ocpp2.0'),
          FigSuggestion(name: 'ocpp2.0.1'),
          FigSuggestion(name: 'rfb'),
          FigSuggestion(name: 'sip'),
          FigSuggestion(name: 'notificationchannel-netapi-rest.openmobilealliance.org'),
          FigSuggestion(name: 'wpcp'),
          FigSuggestion(name: 'amqp\t'),
          FigSuggestion(name: 'mqtt'),
          FigSuggestion(name: 'jsflow'),
          FigSuggestion(name: 'rwpcp'),
          FigSuggestion(name: 'xmpp'),
          FigSuggestion(name: 'ship'),
          FigSuggestion(name: 'mielecloudconnect'),
          FigSuggestion(name: 'v10.pcp.sap.com'),
          FigSuggestion(name: 'msrp'),
          FigSuggestion(name: 'v1.saltyrtc.org'),
          FigSuggestion(name: 'TLCP-2.0.0.lightstreamer.com'),
          FigSuggestion(name: 'bfcp'),
          FigSuggestion(name: 'sldp.softvelum.com'),
          FigSuggestion(name: 'opcua+uacp'),
          FigSuggestion(name: 'opcua+uajson'),
          FigSuggestion(name: 'v1.swindon-lattice+json'),
          FigSuggestion(name: 'v1.usp'),
          FigSuggestion(name: 'mles-websocket'),
          FigSuggestion(name: 'coap'),
          FigSuggestion(name: 'TLCP-2.1.0.lightstreamer.com'),
          FigSuggestion(name: 'sqlnet.oracle.com'),
          FigSuggestion(name: 'oneM2M.R2.0.json'),
          FigSuggestion(name: 'oneM2M.R2.0.xml'),
          FigSuggestion(name: 'oneM2M.R2.0.cbor'),
          FigSuggestion(name: 'transit'),
          FigSuggestion(name: '2016.serverpush.dash.mpeg.org'),
          FigSuggestion(name: '2018.mmt.mpeg.org'),
          FigSuggestion(name: 'clue'),
          FigSuggestion(name: 'webrtc.softvelum.com'),
          FigSuggestion(name: 'cobra.v2.json'),
          FigSuggestion(name: 'drp'),
          FigSuggestion(name: 'hub.bsc.bacnet.org'),
          FigSuggestion(name: 'dc.bsc.bacnet.org'),
          FigSuggestion(name: 'jmap'),
          FigSuggestion(name: 't140'),
          FigSuggestion(name: 'done'),
          FigSuggestion(name: 'TLCP-2.2.0.lightstreamer.com'),
          FigSuggestion(name: 'collection-update'),
          FigSuggestion(name: 'TLCP-2.3.0.lightstreamer.com'),
          FigSuggestion(name: 'text.ircv3.net'),
          FigSuggestion(name: 'binary.ircv3.net'),
          FigSuggestion(name: 'v3.penguin-stats.live+proto')
        ]
      )
      ],
      description: 'Optional subprotocol (default: [])'
    ),
    Option(
      name: ['-w', '--wait'],
      args: [
        Arg(
        name: 'seconds'
      )
      ],
      description: 'Wait given seconds after executing command'
    ),
    Option(
      name: ['-x', '--execute'],
      args: [
        Arg(
        name: 'command'
      )
      ],
      description: 'Execute command after connecting'
    ),
    Option(
      name: ['-h', '--help'],
      description: 'Display help for command'
    )
  ]
);
