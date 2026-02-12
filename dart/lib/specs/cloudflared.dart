// Auto-generated from TypeScript source: cloudflared.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

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
