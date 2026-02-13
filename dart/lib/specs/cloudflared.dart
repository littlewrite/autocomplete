// Auto-generated from TypeScript source: cloudflared.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

final List<Option> tcp_rdp_ssh_smb_options = [

  Option(
    name: ['--hostname', '--tunnel-host', '-T'],
    description: 'Specify the hostname of your application',
    args: [
      Arg(
      name: 'value',
      description: 'Hostname'
    )
    ]
  ),
  Option(
    name: '--destination',
    description: 'Specify the destination address of your SSH server',
    args: [
      Arg(
      name: 'value',
      description: 'Address of SSH server'
    )
    ]
  ),
  Option(
    name: ['--url', '--listener', '-L'],
    description: 'Specify the host:port to forward data to Cloudflare edge',
    args: [
      Arg(
      name: 'value',
      description: 'Host:port to forward data to Cloudflare edge'
    )
    ]
  ),
  Option(
    name: ['--service-token-id', '--id'],
    description: 'Specify an Access service token ID you wish to use. [\$TUNNEL_SERVICE_TOKEN_ID]',
    args: [
      Arg(
      name: 'value',
      description: 'Access service token ID'
    )
    ]
  ),
  Option(
    name: ['--service-token-secret', '--secret'],
    description: 'Specify an Access service token secret you wish to use. [\$TUNNEL_SERVICE_TOKEN_SECRET]',
    args: [
      Arg(
      name: 'value',
      description: 'Access service token secret'
    )
    ]
  ),
  Option(
    name: ['--log-directory', '--logfile'],
    description: 'Save application log to this directory for reporting issues',
    args: [
      Arg(
      name: 'value',
      description: 'Directory',
      template: ['folders']
    )
    ]
  ),
  Option(
    name: ['--log-level', '--loglevel'],
    description: 'Application logging level {debug, info, warn, error, fatal}',
    args: [
      Arg(
      name: 'value',
      description: 'Directory',
      suggestions: [

        FigSuggestion(
          name: 'debug'
        ),
        FigSuggestion(
          name: 'info'
        ),
        FigSuggestion(
          name: 'warn'
        ),
        FigSuggestion(
          name: 'error'
        ),
        FigSuggestion(
          name: 'fatal'
        )
      ]
    )
    ]
  )
];

/// Completion spec for `cloudflared` CLI
final FigSpec cloudflaredSpec = FigSpec(
  name: 'cloudflared',
  description: 'Cloudflared connects your machine or user identity to Cloudflare\'s global network',
  subcommands: [],
  options: [

    Option(
      name: ['--credentials-file', '--cred-file'],
      description: 'Filepath at which to read/write the tunnel credentials [\$TUNNEL_CRED_FILE]',
      args: [
        Arg(
        name: 'value',
        description: 'Credentials path',
        template: 'filepaths'
      )
      ]
    ),
    Option(
      name: '--region',
      description: 'Cloudflare Edge region to connect to. Omit or set to empty to connect to the global region. [\$TUNNEL_REGION]',
      args: [
        Arg(
        name: 'value',
        description: 'Region'
      )
      ]
    ),
    Option(
      name: ['--overwrite-dns', '-f'],
      description: 'Overwrites existing DNS records with this hostname (default: false) [\$TUNNEL_FORCE_PROVISIONING_DNS]'
    ),
    Option(
      name: ['--help', '-h'],
      description: 'Show help for cloudflared',
      isPersistent: true
    )
  ]
);
