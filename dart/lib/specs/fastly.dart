// Auto-generated from TypeScript source: fastly.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `fastly` CLI
final FigSpec fastlySpec = FigSpec(
  name: 'fastly',
  description: 'A CLI for interacting with the Fastly platform',
  subcommands: [

    Subcommand(
      name: 'acl',
      description: 'Manipulate Fastly ACLs (Access Control Lists)',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new ACL attached to the specified service version',
          options: [

            Option(
              name: '--name',
              description: 'Name for the ACL. Must start with an alphanumeric character and contain only alphanumeric characters, underscores, and whitespace',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an ACL from the specified service version',
          options: [

            Option(
              name: '--name',
              description: 'The name of the ACL to delete',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Retrieve a single ACL by name for the version and service',
          options: [

            Option(
              name: '--name',
              description: 'The name of the ACL',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List ACLs',
          options: [

            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an ACL for a particular service and version',
          options: [

            Option(
              name: '--name',
              description: 'The name of the ACL to update',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'The new name of the ACL',
              args: [
                Arg(
                name: 'new-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'acl-entry',
      description: 'Manipulate Fastly ACL (Access Control List) entries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Add an ACL entry to an ACL',
          options: [

            Option(
              name: '--acl-id',
              description: 'Alphanumeric string identifying a ACL',
              args: [
                Arg(
                name: 'acl-id'
              )
              ]
            ),
            Option(
              name: '--ip',
              description: 'An IP address',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A freeform descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--negated',
              description: 'Whether to negate the match'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Number of bits for the subnet mask applied to the IP address',
              args: [
                Arg(
                name: 'subnet'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an ACL entry from a specified ACL',
          options: [

            Option(
              name: '--acl-id',
              description: 'Alphanumeric string identifying a ACL',
              args: [
                Arg(
                name: 'acl-id'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Alphanumeric string identifying an ACL Entry',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Retrieve a single ACL entry',
          options: [

            Option(
              name: '--acl-id',
              description: 'Alphanumeric string identifying a ACL',
              args: [
                Arg(
                name: 'acl-id'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Alphanumeric string identifying an ACL Entry',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List ACLs',
          options: [

            Option(
              name: '--acl-id',
              description: 'Alphanumeric string identifying a ACL',
              args: [
                Arg(
                name: 'acl-id'
              )
              ]
            ),
            Option(
              name: '--direction',
              description: 'Direction in which to sort results',
              args: [
                Arg(
                name: 'direction'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--page',
              description: 'Page number of data set to fetch',
              args: [
                Arg(
                name: 'page'
              )
              ]
            ),
            Option(
              name: '--per-page',
              description: 'Number of records per page',
              args: [
                Arg(
                name: 'per-page'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--sort',
              description: 'Field on which to sort',
              args: [
                Arg(
                name: 'sort'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update an ACL entry for a specified ACL',
          options: [

            Option(
              name: '--acl-id',
              description: 'Alphanumeric string identifying a ACL',
              args: [
                Arg(
                name: 'acl-id'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A freeform descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--file',
              description: 'Batch update json passed as file path or content, e.g. \$(< batch.json)',
              args: [
                Arg(
                name: 'file'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Alphanumeric string identifying an ACL Entry',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--ip',
              description: 'An IP address',
              args: [
                Arg(
                name: 'ip'
              )
              ]
            ),
            Option(
              name: '--negated',
              description: 'Whether to negate the match'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Number of bits for the subnet mask applied to the IP address',
              args: [
                Arg(
                name: 'subnet'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'auth-token',
      description: 'Manage API tokens for Fastly service users',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an API token',
          options: [

            Option(
              name: '--password',
              description: 'User password corresponding with --token or \$FASTLY_API_TOKEN',
              args: [
                Arg(
                name: 'password'
              )
              ]
            ),
            Option(
              name: '--expires',
              description: 'Time-stamp (UTC) of when the token will expire',
              args: [
                Arg(
                name: 'expires'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of the token',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Authorization scope (repeat flag per scope)',
              args: [
                Arg(
                name: 'scope'
              )
              ]
            ),
            Option(
              name: '--services',
              description: 'A comma-separated list of alphanumeric strings identifying services (default: access to all services)',
              args: [
                Arg(
                name: 'services'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Revoke an API token',
          options: [

            Option(
              name: '--current',
              description: 'Revoke the token used to authenticate the request'
            ),
            Option(
              name: '--file',
              description: 'Revoke tokens in bulk from a newline delimited list of tokens',
              args: [
                Arg(
                name: 'file'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Alphanumeric string identifying a token',
              args: [
                Arg(
                name: 'id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Get the current API token',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List API tokens',
          options: [

            Option(
              name: '--customer-id',
              description: 'Alphanumeric string identifying the customer (falls back to FASTLY_CUSTOMER_ID)',
              args: [
                Arg(
                name: 'customer-id'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'backend',
      description: 'Manipulate Fastly service version backends',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a backend on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Backend name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--address',
              description: 'A hostname, IPv4, or IPv6 address for the backend',
              args: [
                Arg(
                name: 'address'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'Port number of the address',
              args: [
                Arg(
                name: 'port'
              )
              ]
            ),
            Option(
              name: '--override-host',
              description: 'The hostname to override the Host header',
              args: [
                Arg(
                name: 'override-host'
              )
              ]
            ),
            Option(
              name: '--connect-timeout',
              description: 'How long to wait for a timeout in milliseconds',
              args: [
                Arg(
                name: 'connect-timeout'
              )
              ]
            ),
            Option(
              name: '--max-conn',
              description: 'Maximum number of connections',
              args: [
                Arg(
                name: 'max-conn'
              )
              ]
            ),
            Option(
              name: '--first-byte-timeout',
              description: 'How long to wait for the first bytes in milliseconds',
              args: [
                Arg(
                name: 'first-byte-timeout'
              )
              ]
            ),
            Option(
              name: '--between-bytes-timeout',
              description: 'How long to wait between bytes in milliseconds',
              args: [
                Arg(
                name: 'between-bytes-timeout'
              )
              ]
            ),
            Option(
              name: '--auto-loadbalance',
              description: 'Whether or not this backend should be automatically load balanced'
            ),
            Option(
              name: '--weight',
              description: 'Weight used to load balance this backend against others',
              args: [
                Arg(
                name: 'weight'
              )
              ]
            ),
            Option(
              name: '--request-condition',
              description: 'Condition, which if met, will select this backend during a request',
              args: [
                Arg(
                name: 'request-condition'
              )
              ]
            ),
            Option(
              name: '--healthcheck',
              description: 'The name of the healthcheck to use with this backend',
              args: [
                Arg(
                name: 'healthcheck'
              )
              ]
            ),
            Option(
              name: '--shield',
              description: 'The shield POP designated to reduce inbound load on this origin by serving the cached data to the rest of the network',
              args: [
                Arg(
                name: 'shield'
              )
              ]
            ),
            Option(
              name: '--use-ssl',
              description: 'Whether or not to use SSL to reach the backend'
            ),
            Option(
              name: '--ssl-check-cert',
              description: 'Be strict on checking SSL certs'
            ),
            Option(
              name: '--ssl-ca-cert',
              description: 'CA certificate attached to origin',
              args: [
                Arg(
                name: 'ssl-ca-cert'
              )
              ]
            ),
            Option(
              name: '--ssl-client-cert',
              description: 'Client certificate attached to origin',
              args: [
                Arg(
                name: 'ssl-client-cert'
              )
              ]
            ),
            Option(
              name: '--ssl-client-key',
              description: 'Client key attached to origin',
              args: [
                Arg(
                name: 'ssl-client-key'
              )
              ]
            ),
            Option(
              name: '--ssl-cert-hostname',
              description: 'Overrides ssl_hostname, but only for cert verification. Does not affect SNI at all',
              args: [
                Arg(
                name: 'ssl-cert-hostname'
              )
              ]
            ),
            Option(
              name: '--ssl-sni-hostname',
              description: 'Overrides ssl_hostname, but only for SNI in the handshake. Does not affect cert validation at all',
              args: [
                Arg(
                name: 'ssl-sni-hostname'
              )
              ]
            ),
            Option(
              name: '--min-tls-version',
              description: 'Minimum allowed TLS version on SSL connections to this backend',
              args: [
                Arg(
                name: 'min-tls-version'
              )
              ]
            ),
            Option(
              name: '--max-tls-version',
              description: 'Maximum allowed TLS version on SSL connections to this backend',
              args: [
                Arg(
                name: 'max-tls-version'
              )
              ]
            ),
            Option(
              name: '--ssl-ciphers',
              description: 'Colon delimited list of OpenSSL ciphers (see https://www.openssl.org/docs/man1.0.2/man1/ciphers for details)',
              args: [
                Arg(
                name: 'ssl-ciphers'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a backend on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Backend name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a backend on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of backend',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List backends on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a backend on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Backend name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'New backend name',
              args: [
                Arg(
                name: 'new-name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--address',
              description: 'A hostname, IPv4, or IPv6 address for the backend',
              args: [
                Arg(
                name: 'address'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'Port number of the address',
              args: [
                Arg(
                name: 'port'
              )
              ]
            ),
            Option(
              name: '--override-host',
              description: 'The hostname to override the Host header',
              args: [
                Arg(
                name: 'override-host'
              )
              ]
            ),
            Option(
              name: '--connect-timeout',
              description: 'How long to wait for a timeout in milliseconds',
              args: [
                Arg(
                name: 'connect-timeout'
              )
              ]
            ),
            Option(
              name: '--max-conn',
              description: 'Maximum number of connections',
              args: [
                Arg(
                name: 'max-conn'
              )
              ]
            ),
            Option(
              name: '--first-byte-timeout',
              description: 'How long to wait for the first bytes in milliseconds',
              args: [
                Arg(
                name: 'first-byte-timeout'
              )
              ]
            ),
            Option(
              name: '--between-bytes-timeout',
              description: 'How long to wait between bytes in milliseconds',
              args: [
                Arg(
                name: 'between-bytes-timeout'
              )
              ]
            ),
            Option(
              name: '--auto-loadbalance',
              description: 'Whether or not this backend should be automatically load balanced'
            ),
            Option(
              name: '--weight',
              description: 'Weight used to load balance this backend against others',
              args: [
                Arg(
                name: 'weight'
              )
              ]
            ),
            Option(
              name: '--request-condition',
              description: 'Condition, which if met, will select this backend during a request',
              args: [
                Arg(
                name: 'request-condition'
              )
              ]
            ),
            Option(
              name: '--healthcheck',
              description: 'The name of the healthcheck to use with this backend',
              args: [
                Arg(
                name: 'healthcheck'
              )
              ]
            ),
            Option(
              name: '--shield',
              description: 'The shield POP designated to reduce inbound load on this origin by serving the cached data to the rest of the network',
              args: [
                Arg(
                name: 'shield'
              )
              ]
            ),
            Option(
              name: '--use-ssl',
              description: 'Whether or not to use SSL to reach the backend'
            ),
            Option(
              name: '--ssl-check-cert',
              description: 'Be strict on checking SSL certs'
            ),
            Option(
              name: '--ssl-ca-cert',
              description: 'CA certificate attached to origin',
              args: [
                Arg(
                name: 'ssl-ca-cert'
              )
              ]
            ),
            Option(
              name: '--ssl-client-cert',
              description: 'Client certificate attached to origin',
              args: [
                Arg(
                name: 'ssl-client-cert'
              )
              ]
            ),
            Option(
              name: '--ssl-client-key',
              description: 'Client key attached to origin',
              args: [
                Arg(
                name: 'ssl-client-key'
              )
              ]
            ),
            Option(
              name: '--ssl-cert-hostname',
              description: 'Overrides ssl_hostname, but only for cert verification. Does not affect SNI at all',
              args: [
                Arg(
                name: 'ssl-cert-hostname'
              )
              ]
            ),
            Option(
              name: '--ssl-sni-hostname',
              description: 'Overrides ssl_hostname, but only for SNI in the handshake. Does not affect cert validation at all',
              args: [
                Arg(
                name: 'ssl-sni-hostname'
              )
              ]
            ),
            Option(
              name: '--min-tls-version',
              description: 'Minimum allowed TLS version on SSL connections to this backend',
              args: [
                Arg(
                name: 'min-tls-version'
              )
              ]
            ),
            Option(
              name: '--max-tls-version',
              description: 'Maximum allowed TLS version on SSL connections to this backend',
              args: [
                Arg(
                name: 'max-tls-version'
              )
              ]
            ),
            Option(
              name: '--ssl-ciphers',
              description: 'Colon delimited list of OpenSSL ciphers (see https://www.openssl.org/docs/man1.0.2/man1/ciphers for details)',
              args: [
                Arg(
                name: 'ssl-ciphers'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'compute',
      description: 'Manage Compute@Edge packages',
      subcommands: [

        Subcommand(
          name: 'build',
          description: 'Build a Compute@Edge package locally',
          options: [

            Option(
              name: '--include-source',
              description: 'Include source code in built package'
            ),
            Option(
              name: '--language',
              description: 'Language type',
              args: [
                Arg(
                name: 'language'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Package name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--skip-verification',
              description: 'Skip verification steps and force build'
            ),
            Option(
              name: '--timeout',
              description: 'Timeout, in seconds, for the build compilation step',
              args: [
                Arg(
                name: 'timeout'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Deploy a package to a Fastly Compute@Edge service',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'Human-readable comment',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The name of the domain associated to the package',
              args: [
                Arg(
                name: 'domain'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Package name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--package',
              description: 'Path to a package tar.gz',
              args: [
                Arg(
                name: 'package'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'init',
          description: 'Initialize a new Compute@Edge package locally',
          options: [

            Option(
              name: '--name',
              description: 'Name of package, falls back to --directory',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--description',
              description: 'Description of the package',
              args: [
                Arg(
                name: 'description'
              )
              ]
            ),
            Option(
              name: '--directory',
              description: 'Destination to write the new package, defaulting to the current directory',
              args: [
                Arg(
                name: 'directory'
              )
              ]
            ),
            Option(
              name: '--author',
              description: 'Author(s) of the package',
              args: [
                Arg(
                name: 'author'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'Language of the package',
              args: [
                Arg(
                name: 'language'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'Local project directory, or Git repository URL, or URL referencing a .zip/.tar.gz file, containing a package template',
              args: [
                Arg(
                name: 'from'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Skip non-empty directory verification step and force new project creation'
            )
          ]
        ),
        Subcommand(
          name: 'pack',
          description: 'Package a pre-compiled Wasm binary for a Fastly Compute@Edge service',
          options: [

            Option(
              name: '--wasm-binary',
              description: 'Path to a pre-compiled Wasm binary',
              args: [
                Arg(
                name: 'wasm-binary'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'publish',
          description: 'Build and deploy a Compute@Edge package to a Fastly service',
          options: [

            Option(
              name: '--comment',
              description: 'Human-readable comment',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--domain',
              description: 'The name of the domain associated to the package',
              args: [
                Arg(
                name: 'domain'
              )
              ]
            ),
            Option(
              name: '--include-source',
              description: 'Include source code in built package'
            ),
            Option(
              name: '--language',
              description: 'Language type',
              args: [
                Arg(
                name: 'language'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Package name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--package',
              description: 'Path to a package tar.gz',
              args: [
                Arg(
                name: 'package'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--skip-verification',
              description: 'Skip verification steps and force build'
            ),
            Option(
              name: '--timeout',
              description: 'Timeout, in seconds, for the build compilation step',
              args: [
                Arg(
                name: 'timeout'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'serve',
          description: 'Build and run a Compute@Edge package locally',
          options: [

            Option(
              name: '--addr',
              description: 'The IPv4 address and port to listen on',
              args: [
                Arg(
                name: 'addr'
              )
              ]
            ),
            Option(
              name: '--env',
              description: 'The environment configuration to use (e.g. stage)',
              args: [
                Arg(
                name: 'env'
              )
              ]
            ),
            Option(
              name: '--file',
              description: 'The Wasm file to run',
              args: [
                Arg(
                name: 'file'
              )
              ]
            ),
            Option(
              name: '--include-source',
              description: 'Include source code in built package'
            ),
            Option(
              name: '--language',
              description: 'Language type',
              args: [
                Arg(
                name: 'language'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Package name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--skip-build',
              description: 'Skip the build step'
            ),
            Option(
              name: '--skip-verification',
              description: 'Skip verification steps and force build'
            ),
            Option(
              name: '--timeout',
              description: 'Timeout, in seconds, for the build compilation step',
              args: [
                Arg(
                name: 'timeout'
              )
              ]
            ),
            Option(
              name: '--watch',
              description: 'Watch for file changes, then rebuild project and restart local server'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a package on a Fastly Compute@Edge service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--package',
              description: 'Path to a package tar.gz',
              args: [
                Arg(
                name: 'package'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Validate a Compute@Edge package',
          options: [

            Option(
              name: '--package',
              description: 'Path to a package tar.gz',
              args: [
                Arg(
                name: 'package'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'config',
      description: 'Display the Fastly CLI configuration',
      options: [

        Option(
          name: '--location',
          description: 'Print the location of the CLI configuration file'
        )
      ]
    ),
    Subcommand(
      name: 'dictionary',
      description: 'Manipulate Fastly edge dictionaries',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Fastly edge dictionary on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Name of Dictionary',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--write-only',
              description: 'Whether to mark this dictionary as write-only. Can be true or false (defaults to false)',
              args: [
                Arg(
                name: 'write-only'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Fastly edge dictionary from a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Name of Dictionary',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a Fastly edge dictionary',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of Dictionary',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all dictionaries on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update name of dictionary on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Old name of Dictionary',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'New name of Dictionary',
              args: [
                Arg(
                name: 'new-name'
              )
              ]
            ),
            Option(
              name: '--write-only',
              description: 'Whether to mark this dictionary as write-only. Can be true or false (defaults to false)',
              args: [
                Arg(
                name: 'write-only'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'dictionary-item',
      description: 'Manipulate Fastly edge dictionary items',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new item on a Fastly edge dictionary',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--dictionary-id',
              description: 'Dictionary ID',
              args: [
                Arg(
                name: 'dictionary-id'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Dictionary item key',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Dictionary item value',
              args: [
                Arg(
                name: 'value'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an item from a Fastly edge dictionary',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--dictionary-id',
              description: 'Dictionary ID',
              args: [
                Arg(
                name: 'dictionary-id'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Dictionary item key',
              args: [
                Arg(
                name: 'key'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a Fastly edge dictionary item',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--dictionary-id',
              description: 'Dictionary ID',
              args: [
                Arg(
                name: 'dictionary-id'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Dictionary item key',
              args: [
                Arg(
                name: 'key'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List items in a Fastly edge dictionary',
          options: [

            Option(
              name: '--dictionary-id',
              description: 'Dictionary ID',
              args: [
                Arg(
                name: 'dictionary-id'
              )
              ]
            ),
            Option(
              name: '--direction',
              description: 'Direction in which to sort results',
              args: [
                Arg(
                name: 'direction'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--page',
              description: 'Page number of data set to fetch',
              args: [
                Arg(
                name: 'page'
              )
              ]
            ),
            Option(
              name: '--per-page',
              description: 'Number of records per page',
              args: [
                Arg(
                name: 'per-page'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--sort',
              description: 'Field on which to sort',
              args: [
                Arg(
                name: 'sort'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update or insert an item on a Fastly edge dictionary',
          options: [

            Option(
              name: '--dictionary-id',
              description: 'Dictionary ID',
              args: [
                Arg(
                name: 'dictionary-id'
              )
              ]
            ),
            Option(
              name: '--file',
              description: 'Batch update json file',
              args: [
                Arg(
                name: 'file'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'Dictionary item key',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Dictionary item value',
              args: [
                Arg(
                name: 'value'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'domain',
      description: 'Manipulate Fastly service version domains',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a domain on a Fastly service version',
          options: [

            Option(
              name: '--name',
              description: 'Domain name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a domain on a Fastly service version',
          options: [

            Option(
              name: '--name',
              description: 'Domain name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a domain on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of domain',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List domains on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a domain on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Domain name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'New domain name',
              args: [
                Arg(
                name: 'new-name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate',
          description: 'Checks the status of a specific domain\'s DNS record for a Service Version',
          options: [

            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--all',
              description: 'Checks the status of all domains\' DNS records for a Service Version'
            ),
            Option(
              name: '--name',
              description: 'The name of the domain associated with this service',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'healthcheck',
      description: 'Manipulate Fastly service version healthchecks',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a healthcheck on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Healthcheck name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--method',
              description: 'Which HTTP method to use',
              args: [
                Arg(
                name: 'method'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'Which host to check',
              args: [
                Arg(
                name: 'host'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path to check',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--http-version',
              description: 'Whether to use version 1.0 or 1.1 HTTP',
              args: [
                Arg(
                name: 'http-version'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Timeout in milliseconds',
              args: [
                Arg(
                name: 'timeout'
              )
              ]
            ),
            Option(
              name: '--check-interval',
              description: 'How often to run the healthcheck in milliseconds',
              args: [
                Arg(
                name: 'check-interval'
              )
              ]
            ),
            Option(
              name: '--expected-response',
              description: 'The status code expected from the host',
              args: [
                Arg(
                name: 'expected-response'
              )
              ]
            ),
            Option(
              name: '--window',
              description: 'The number of most recent healthcheck queries to keep for this healthcheck',
              args: [
                Arg(
                name: 'window'
              )
              ]
            ),
            Option(
              name: '--threshold',
              description: 'How many healthchecks must succeed to be considered healthy',
              args: [
                Arg(
                name: 'threshold'
              )
              ]
            ),
            Option(
              name: '--initial',
              description: 'When loading a config, the initial number of probes to be seen as OK',
              args: [
                Arg(
                name: 'initial'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a healthcheck on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Healthcheck name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a healthcheck on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Name of healthcheck',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List healthchecks on a Fastly service version',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a healthcheck on a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--name',
              description: 'Healthcheck name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--new-name',
              description: 'Healthcheck name',
              args: [
                Arg(
                name: 'new-name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'A descriptive note',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            ),
            Option(
              name: '--method',
              description: 'Which HTTP method to use',
              args: [
                Arg(
                name: 'method'
              )
              ]
            ),
            Option(
              name: '--host',
              description: 'Which host to check',
              args: [
                Arg(
                name: 'host'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path to check',
              args: [
                Arg(
                name: 'path'
              )
              ]
            ),
            Option(
              name: '--http-version',
              description: 'Whether to use version 1.0 or 1.1 HTTP',
              args: [
                Arg(
                name: 'http-version'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Timeout in milliseconds',
              args: [
                Arg(
                name: 'timeout'
              )
              ]
            ),
            Option(
              name: '--check-interval',
              description: 'How often to run the healthcheck in milliseconds',
              args: [
                Arg(
                name: 'check-interval'
              )
              ]
            ),
            Option(
              name: '--expected-response',
              description: 'The status code expected from the host',
              args: [
                Arg(
                name: 'expected-response'
              )
              ]
            ),
            Option(
              name: '--window',
              description: 'The number of most recent healthcheck queries to keep for this healthcheck',
              args: [
                Arg(
                name: 'window'
              )
              ]
            ),
            Option(
              name: '--threshold',
              description: 'How many healthchecks must succeed to be considered healthy',
              args: [
                Arg(
                name: 'threshold'
              )
              ]
            ),
            Option(
              name: '--initial',
              description: 'When loading a config, the initial number of probes to be seen as OK',
              args: [
                Arg(
                name: 'initial'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'ip-list',
      description: 'List Fastly\'s public IPs'
    ),
    Subcommand(
      name: 'log-tail',
      description: 'Tail Compute@Edge logs',
      options: [

        Option(
          name: '--service-id',
          description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
          args: [
            Arg(
            name: 'service-id'
          )
          ]
        ),
        Option(
          name: '--service-name',
          description: 'The name of the service',
          args: [
            Arg(
            name: 'service-name'
          )
          ]
        ),
        Option(
          name: '--from',
          description: 'From time, in Unix seconds',
          args: [
            Arg(
            name: 'from'
          )
          ]
        ),
        Option(
          name: '--to',
          description: 'To time, in Unix seconds',
          args: [
            Arg(
            name: 'to'
          )
          ]
        ),
        Option(
          name: '--sort-buffer',
          description: 'Duration of sort buffer for received logs',
          args: [
            Arg(
            name: 'sort-buffer'
          )
          ]
        ),
        Option(
          name: '--search-padding',
          description: 'Time beyond from/to to consider in searches',
          args: [
            Arg(
            name: 'search-padding'
          )
          ]
        ),
        Option(
          name: '--stream',
          description: 'Output: stdout, stderr, both (default)',
          args: [
            Arg(
            name: 'stream'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'logging',
      description: 'Manipulate Fastly service version logging endpoints',
      subcommands: [

        Subcommand(
          name: 'azureblob',
          description: 'Manipulate Fastly service version Azure Blob Storage logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Azure Blob Storage logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Azure Blob Storage logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--container',
                  description: 'The name of the Azure Blob Storage container in which to store logs',
                  args: [
                    Arg(
                    name: 'container'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'The unique Azure Blob Storage namespace in which your data objects are stored',
                  args: [
                    Arg(
                    name: 'account-name'
                  )
                  ]
                ),
                Option(
                  name: '--sas-token',
                  description: 'The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work',
                  args: [
                    Arg(
                    name: 'sas-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--file-max-bytes',
                  description: 'The maximum size of a log file in bytes',
                  args: [
                    Arg(
                    name: 'file-max-bytes'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Azure Blob Storage logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Azure Blob Storage logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an Azure Blob Storage logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Azure Blob Storage logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Azure Blob Storage logging endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an Azure Blob Storage logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Azure Blob Storage logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Azure Blob Storage logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--container',
                  description: 'The name of the Azure Blob Storage container in which to store logs',
                  args: [
                    Arg(
                    name: 'container'
                  )
                  ]
                ),
                Option(
                  name: '--account-name',
                  description: 'The unique Azure Blob Storage namespace in which your data objects are stored',
                  args: [
                    Arg(
                    name: 'account-name'
                  )
                  ]
                ),
                Option(
                  name: '--sas-token',
                  description: 'The Azure shared access signature providing write access to the blob service objects. Be sure to update your token before it expires or the logging functionality will not work',
                  args: [
                    Arg(
                    name: 'sas-token'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--file-max-bytes',
                  description: 'The maximum size of a log file in bytes',
                  args: [
                    Arg(
                    name: 'file-max-bytes'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'bigquery',
          description: 'Manipulate Fastly service version BigQuery logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a BigQuery logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the BigQuery logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--project-id',
                  description: 'Your Google Cloud Platform project ID',
                  args: [
                    Arg(
                    name: 'project-id'
                  )
                  ]
                ),
                Option(
                  name: '--dataset',
                  description: 'Your BigQuery dataset',
                  args: [
                    Arg(
                    name: 'dataset'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'Your BigQuery table',
                  args: [
                    Arg(
                    name: 'table'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Your Google Cloud Platform service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your Google Cloud Platform account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--template-suffix',
                  description: 'BigQuery table name suffix template',
                  args: [
                    Arg(
                    name: 'template-suffix'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Must produce JSON that matches the schema of your BigQuery table',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a BigQuery logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the BigQuery logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a BigQuery logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the BigQuery logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List BigQuery endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a BigQuery logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the BigQuery logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the BigQuery logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--project-id',
                  description: 'Your Google Cloud Platform project ID',
                  args: [
                    Arg(
                    name: 'project-id'
                  )
                  ]
                ),
                Option(
                  name: '--dataset',
                  description: 'Your BigQuery dataset',
                  args: [
                    Arg(
                    name: 'dataset'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'Your BigQuery table',
                  args: [
                    Arg(
                    name: 'table'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Your Google Cloud Platform service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your Google Cloud Platform account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--template-suffix',
                  description: 'BigQuery table name suffix template',
                  args: [
                    Arg(
                    name: 'template-suffix'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Must produce JSON that matches the schema of your BigQuery table',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cloudfiles',
          description: 'Manipulate Fastly service version Cloudfiles logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Cloudfiles logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Cloudfiles logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--user',
                  description: 'The username for your Cloudfile account',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your Cloudfile account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of your Cloudfiles container',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to stream logs to. One of: DFW-Dallas, ORD-Chicago, IAD-Northern Virginia, LON-London, SYD-Sydney, HKG-Hong Kong',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Cloudfiles logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Cloudfiles logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Cloudfiles logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Cloudfiles logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Cloudfiles endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Cloudfiles logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Cloudfiles logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Cloudfiles logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for your Cloudfile account',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your Cloudfile account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of your Cloudfiles container',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to stream logs to. One of: DFW-Dallas, ORD-Chicago, IAD-Northern Virginia, LON-London, SYD-Sydney, HKG-Hong Kong',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'datadog',
          description: 'Manipulate Fastly service version Datadog logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Datadog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Datadog logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--auth-token',
                  description: 'The API key from your Datadog account',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region that log data will be sent to. One of US or EU. Defaults to US if undefined',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. For details on the default value refer to the documentation (https://developer.fastly.com/reference/api/logging/datadog/)',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Datadog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Datadog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Datadog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Datadog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Datadog endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Datadog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Datadog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Datadog logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The API key from your Datadog account',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region that log data will be sent to. One of US or EU. Defaults to US if undefined',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. For details on the default value refer to the documentation (https://developer.fastly.com/reference/api/logging/datadog/)',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'digitalocean',
          description: 'Manipulate Fastly service version DigitalOcean Spaces logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a DigitalOcean Spaces logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the DigitalOcean Spaces logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of the DigitalOcean Space',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your DigitalOcean Spaces account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your DigitalOcean Spaces account secret key',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain of the DigitalOcean Spaces endpoint (default \'nyc3.digitaloceanspaces.com\')',
                  args: [
                    Arg(
                    name: 'domain'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a DigitalOcean Spaces logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the DigitalOcean Spaces logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a DigitalOcean Spaces logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the DigitalOcean Spaces logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List DigitalOcean Spaces logging endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a DigitalOcean Spaces logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the DigitalOcean Spaces logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the DigitalOcean Spaces logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of the DigitalOcean Space',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain of the DigitalOcean Spaces endpoint (default \'nyc3.digitaloceanspaces.com\')',
                  args: [
                    Arg(
                    name: 'domain'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your DigitalOcean Spaces account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your DigitalOcean Spaces account secret key',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'elasticsearch',
          description: 'Manipulate Fastly service version Elasticsearch logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Elasticsearch logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Elasticsearch logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--index',
                  description: 'The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch index format rules (https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support strftime (http://man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, #{%F} will interpolate as YYYY-MM-DD with today\'s date',
                  args: [
                    Arg(
                    name: 'index'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The URL to stream logs to. Must use HTTPS',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--pipeline',
                  description: 'The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. For example my_pipeline_id. Learn more about creating a pipeline in the Elasticsearch docs (https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html)',
                  args: [
                    Arg(
                    name: 'pipeline'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Elasticsearch can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-entries',
                  description: 'Maximum number of logs to append to a batch, if non-zero. Defaults to 10k',
                  args: [
                    Arg(
                    name: 'request-max-entries'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-bytes',
                  description: 'Maximum size of log batch, if non-zero. Defaults to 100MB',
                  args: [
                    Arg(
                    name: 'request-max-bytes'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Elasticsearch logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Elasticsearch logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an Elasticsearch logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Elasticsearch logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Elasticsearch endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an Elasticsearch logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Elasticsearch logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Elasticsearch logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--index',
                  description: 'The name of the Elasticsearch index to send documents (logs) to. The index must follow the Elasticsearch index format rules (https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html). We support strftime (http://man7.org/linux/man-pages/man3/strftime.3.html) interpolated variables inside braces prefixed with a pound symbol. For example, #{%F} will interpolate as YYYY-MM-DD with today\'s date',
                  args: [
                    Arg(
                    name: 'index'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The URL to stream logs to. Must use HTTPS',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--pipeline',
                  description: 'The ID of the Elasticsearch ingest pipeline to apply pre-process transformations to before indexing. For example my_pipeline_id. Learn more about creating a pipeline in the Elasticsearch docs (https://www.elastic.co/guide/en/elasticsearch/reference/current/ingest.html)',
                  args: [
                    Arg(
                    name: 'pipeline'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Elasticsearch can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-entries',
                  description: 'Maximum number of logs to append to a batch, if non-zero. Defaults to 10k',
                  args: [
                    Arg(
                    name: 'request-max-entries'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-bytes',
                  description: 'Maximum size of log batch, if non-zero. Defaults to 100MB',
                  args: [
                    Arg(
                    name: 'request-max-bytes'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ftp',
          description: 'Manipulate Fastly service version FTP logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an FTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the FTP logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--address',
                  description: 'An hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for the server (can be anonymous)',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password for the server (for anonymous use an email address)',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload log files to. If the path ends in / then it is treated as a directory',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an FTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the FTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an FTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the FTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List FTP endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an FTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the FTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the FTP logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--address',
                  description: 'An hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'The username for the server (can be anonymous)',
                  args: [
                    Arg(
                    name: 'username'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password for the server (for anonymous use an email address)',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload log files to. If the path ends in / then it is treated as a directory',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'gcs',
          description: 'Manipulate Fastly service version GCS logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a GCS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the GCS logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--user',
                  description: 'Your GCS service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The bucket of the GCS bucket',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your GCS account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to (default \'/\')',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a GCS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the GCS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a GCS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the GCS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List GCS endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a GCS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the GCS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the GCS logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The bucket of the GCS bucket',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Your GCS service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your GCS account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to (default \'/\')',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'googlepubsub',
          description: 'Manipulate Fastly service version Google Cloud Pub/Sub logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Google Cloud Pub/Sub logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Google Cloud Pub/Sub logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--user',
                  description: 'Your Google Cloud Platform service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your Google Cloud Platform account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'The Google Cloud Pub/Sub topic to which logs will be published',
                  args: [
                    Arg(
                    name: 'topic'
                  )
                  ]
                ),
                Option(
                  name: '--project-id',
                  description: 'The ID of your Google Cloud Platform project',
                  args: [
                    Arg(
                    name: 'project-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Google Cloud Pub/Sub logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Google Cloud Pub/Sub logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Google Cloud Pub/Sub logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Google Cloud Pub/Sub logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Google Cloud Pub/Sub endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Google Cloud Pub/Sub logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Google Cloud Pub/Sub logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Google Cloud Pub/Sub logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'Your Google Cloud Platform service account email address. The client_email field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your Google Cloud Platform account secret key. The private_key field in your service account authentication JSON',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'The Google Cloud Pub/Sub topic to which logs will be published',
                  args: [
                    Arg(
                    name: 'topic'
                  )
                  ]
                ),
                Option(
                  name: '--project-id',
                  description: 'The ID of your Google Cloud Platform project',
                  args: [
                    Arg(
                    name: 'project-id'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'heroku',
          description: 'Manipulate Fastly service version Heroku logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Heroku logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Heroku logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--url',
                  description: 'The url to stream logs to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://devcenter.heroku.com/articles/add-on-partner-log-integration)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Heroku logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Heroku logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Heroku logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Heroku logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Heroku endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Heroku logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Heroku logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Heroku logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The url to stream logs to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://devcenter.heroku.com/articles/add-on-partner-log-integration)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'honeycomb',
          description: 'Manipulate Fastly service version Honeycomb logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Honeycomb logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Honeycomb logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--dataset',
                  description: 'The Honeycomb Dataset you want to log to',
                  args: [
                    Arg(
                    name: 'dataset'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The Write Key from the Account page of your Honeycomb account',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Honeycomb can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Honeycomb logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Honeycomb logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Honeycomb logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Honeycomb logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Honeycomb endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Honeycomb logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Honeycomb logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Honeycomb logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Honeycomb can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--dataset',
                  description: 'The Honeycomb Dataset you want to log to',
                  args: [
                    Arg(
                    name: 'dataset'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The Write Key from the Account page of your Honeycomb account',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'https',
          description: 'Manipulate Fastly service version HTTPS logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an HTTPS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the HTTPS logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--url',
                  description: 'URL that log data will be sent to. Must use the https protocol',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--content-type',
                  description: 'Content type of the header sent with the request',
                  args: [
                    Arg(
                    name: 'content-type'
                  )
                  ]
                ),
                Option(
                  name: '--header-name',
                  description: 'Name of the custom header sent with the request',
                  args: [
                    Arg(
                    name: 'header-name'
                  )
                  ]
                ),
                Option(
                  name: '--header-value',
                  description: 'Value of the custom header sent with the request',
                  args: [
                    Arg(
                    name: 'header-value'
                  )
                  ]
                ),
                Option(
                  name: '--method',
                  description: 'HTTP method used for request. Can be POST or PUT. Defaults to POST if not specified',
                  args: [
                    Arg(
                    name: 'method'
                  )
                  ]
                ),
                Option(
                  name: '--json-format',
                  description: 'Enforces valid JSON formatting for log entries. Can be disabled 0, array of json (wraps JSON log batches in an array) 1, or newline delimited json (places each JSON log entry onto a new line in a batch) 2',
                  args: [
                    Arg(
                    name: 'json-format'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that HTTPS can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-entries',
                  description: 'Maximum number of logs to append to a batch, if non-zero. Defaults to 10k',
                  args: [
                    Arg(
                    name: 'request-max-entries'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-bytes',
                  description: 'Maximum size of log batch, if non-zero. Defaults to 100MB',
                  args: [
                    Arg(
                    name: 'request-max-bytes'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an HTTPS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the HTTPS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an HTTPS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the HTTPS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List HTTPS endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an HTTPS logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the HTTPS logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the HTTPS logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'URL that log data will be sent to. Must use the https protocol',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--content-type',
                  description: 'Content type of the header sent with the request',
                  args: [
                    Arg(
                    name: 'content-type'
                  )
                  ]
                ),
                Option(
                  name: '--header-name',
                  description: 'Name of the custom header sent with the request',
                  args: [
                    Arg(
                    name: 'header-name'
                  )
                  ]
                ),
                Option(
                  name: '--header-value',
                  description: 'Value of the custom header sent with the request',
                  args: [
                    Arg(
                    name: 'header-value'
                  )
                  ]
                ),
                Option(
                  name: '--method',
                  description: 'HTTP method used for request. Can be POST or PUT. Defaults to POST if not specified',
                  args: [
                    Arg(
                    name: 'method'
                  )
                  ]
                ),
                Option(
                  name: '--json-format',
                  description: 'Enforces valid JSON formatting for log entries. Can be disabled 0, array of json (wraps JSON log batches in an array) 1, or newline delimited json (places each JSON log entry onto a new line in a batch) 2',
                  args: [
                    Arg(
                    name: 'json-format'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that HTTPS can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-entries',
                  description: 'Maximum number of logs to append to a batch, if non-zero. Defaults to 10k',
                  args: [
                    Arg(
                    name: 'request-max-entries'
                  )
                  ]
                ),
                Option(
                  name: '--request-max-bytes',
                  description: 'Maximum size of log batch, if non-zero. Defaults to 100MB',
                  args: [
                    Arg(
                    name: 'request-max-bytes'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'kafka',
          description: 'Manipulate Fastly service version Kafka logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Kafka logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Kafka logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--topic',
                  description: 'The Kafka topic to send logs to',
                  args: [
                    Arg(
                    name: 'topic'
                  )
                  ]
                ),
                Option(
                  name: '--brokers',
                  description: 'A comma-separated list of IP addresses or hostnames of Kafka brokers',
                  args: [
                    Arg(
                    name: 'brokers'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. One of: gzip, snappy, lz4',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                ),
                Option(
                  name: '--required-acks',
                  description: 'The Number of acknowledgements a leader must receive before a write is considered successful. One of: 1 (default) One server needs to respond. 0\tNo servers need to respond. -1\tWait for all in-sync replicas to respond',
                  args: [
                    Arg(
                    name: 'required-acks'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Kafka can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--parse-log-keyvals',
                  description: 'Parse key-value pairs within the log format'
                ),
                Option(
                  name: '--max-batch-size',
                  description: 'The maximum size of the log batch in bytes',
                  args: [
                    Arg(
                    name: 'max-batch-size'
                  )
                  ]
                ),
                Option(
                  name: '--use-sasl',
                  description: 'Enable SASL authentication. Requires --auth-method, --username, and --password to be specified'
                ),
                Option(
                  name: '--auth-method',
                  description: 'SASL authentication method. Valid values are: plain, scram-sha-256, scram-sha-512',
                  args: [
                    Arg(
                    name: 'auth-method'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'SASL authentication username. Required if --auth-method is specified',
                  args: [
                    Arg(
                    name: 'username'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'SASL authentication password. Required if --auth-method is specified',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Kafka logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kafka logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Kafka logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kafka logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Kafka endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kafka logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kafka logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Kafka logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--topic',
                  description: 'The Kafka topic to send logs to',
                  args: [
                    Arg(
                    name: 'topic'
                  )
                  ]
                ),
                Option(
                  name: '--brokers',
                  description: 'A comma-separated list of IP addresses or hostnames of Kafka brokers',
                  args: [
                    Arg(
                    name: 'brokers'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. One of: gzip, snappy, lz4',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                ),
                Option(
                  name: '--required-acks',
                  description: 'The Number of acknowledgements a leader must receive before a write is considered successful. One of: 1 (default) One server needs to respond. 0\tNo servers need to respond. -1\tWait for all in-sync replicas to respond',
                  args: [
                    Arg(
                    name: 'required-acks'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting. Your log must produce valid JSON that Kafka can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--parse-log-keyvals',
                  description: 'Parse key-value pairs within the log format'
                ),
                Option(
                  name: '--max-batch-size',
                  description: 'The maximum size of the log batch in bytes',
                  args: [
                    Arg(
                    name: 'max-batch-size'
                  )
                  ]
                ),
                Option(
                  name: '--use-sasl',
                  description: 'Enable SASL authentication. Requires --auth-method, --username, and --password to be specified'
                ),
                Option(
                  name: '--auth-method',
                  description: 'SASL authentication method. Valid values are: plain, scram-sha-256, scram-sha-512',
                  args: [
                    Arg(
                    name: 'auth-method'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'SASL authentication username. Required if --auth-method is specified',
                  args: [
                    Arg(
                    name: 'username'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'SASL authentication password. Required if --auth-method is specified',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'kinesis',
          description: 'Manipulate a Kinesis logging endpoint for a specific Fastly service version',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Amazon Kinesis logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Kinesis logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--stream-name',
                  description: 'The Amazon Kinesis stream to send logs to',
                  args: [
                    Arg(
                    name: 'stream-name'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region where the Kinesis stream exists',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'The access key associated with the target Amazon Kinesis stream',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'The secret key associated with the target Amazon Kinesis stream',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--iam-role',
                  description: 'The IAM role ARN for logging',
                  args: [
                    Arg(
                    name: 'iam-role'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Kinesis logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kinesis logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Kinesis logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kinesis logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Kinesis endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Kinesis logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Kinesis logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Kinesis logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--stream-name',
                  description: 'Your Kinesis stream name',
                  args: [
                    Arg(
                    name: 'stream-name'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your Kinesis account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your Kinesis account secret key',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--iam-role',
                  description: 'The IAM role ARN for logging',
                  args: [
                    Arg(
                    name: 'iam-role'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The AWS region where the Kinesis stream exists',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logentries',
          description: 'Manipulate Fastly service version Logentries logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Logentries logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Logentries logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--auth-token',
                  description: 'Use token based authentication (https://logentries.com/doc/input-token/)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to which to stream logs',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Logentries logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logentries logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Logentries logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logentries logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Logentries endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Logentries logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logentries logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Logentries logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--auth-token',
                  description: 'Use token based authentication (https://logentries.com/doc/input-token/)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to which to stream logs',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'loggly',
          description: 'Manipulate Fastly service version Loggly logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Loggly logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Loggly logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://www.loggly.com/docs/customer-token-authentication-token/)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Loggly logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Loggly logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Loggly logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Loggly logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Loggly endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Loggly logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Loggly logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Loggly logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://www.loggly.com/docs/customer-token-authentication-token/)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'logshuttle',
          description: 'Manipulate Fastly service version Logshuttle logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Logshuttle logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Logshuttle logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--url',
                  description: 'Your Log Shuttle endpoint url',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The data authentication token associated with this endpoint',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Logshuttle logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logshuttle logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Logshuttle logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logshuttle logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Logshuttle endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Logshuttle logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Logshuttle logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Logshuttle logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'Your Log Shuttle endpoint url',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The data authentication token associated with this endpoint',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'newrelic',
          description: 'Manipulate a NewRelic logging endpoint for a specific Fastly service version',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an New Relic logging endpoint attached to the specified service version',
              options: [

                Option(
                  name: '--key',
                  description: 'The Insert API key from the Account page of your New Relic account',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name for the real-time logging configuration',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--format',
                  description: 'A Fastly log format string. Must produce valid JSON that New Relic Logs can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to which to stream logs',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the New Relic Logs logging object for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name for the real-time logging configuration to delete',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Get the details of a New Relic Logs logging object for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name for the real-time logging configuration',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all of the New Relic Logs logging objects for a particular service and version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a New Relic Logs logging object for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name for the real-time logging configuration to update',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--format',
                  description: 'A Fastly log format string. Must produce valid JSON that New Relic Logs can ingest',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'The Insert API key from the Account page of your New Relic account',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'The name for the real-time logging configuration',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region to which to stream logs',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'openstack',
          description: 'Manipulate Fastly service version OpenStack logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an OpenStack logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the OpenStack logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of your OpenStack container',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your OpenStack account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for your OpenStack account',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'Your OpenStack auth url',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an OpenStack logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the OpenStack logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an OpenStack logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the OpenStack logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List OpenStack logging endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an OpenStack logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the OpenStack logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the OpenStack logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'The name of the Openstack Space',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your OpenStack account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for your OpenStack account',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'Your OpenStack auth url',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'papertrail',
          description: 'Manipulate Fastly service version Papertrail logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Papertrail logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Papertrail logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--address',
                  description: 'A hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Papertrail logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Papertrail logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Papertrail logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Papertrail logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Papertrail endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Papertrail logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Papertrail logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Papertrail logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--address',
                  description: 'A hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 's3',
          description: 'Manipulate Fastly service version S3 logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Amazon S3 logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the S3 logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--bucket',
                  description: 'Your S3 bucket name',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your S3 account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your S3 account secret key',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--iam-role',
                  description: 'The IAM role ARN for logging',
                  args: [
                    Arg(
                    name: 'iam-role'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain of the S3 endpoint',
                  args: [
                    Arg(
                    name: 'domain'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--redundancy',
                  description: 'The S3 redundancy level. Can be either standard or reduced_redundancy',
                  args: [
                    Arg(
                    name: 'redundancy'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--server-side-encryption',
                  description: 'Set to enable S3 Server Side Encryption. Can be either AES256 or aws:kms',
                  args: [
                    Arg(
                    name: 'server-side-encryption'
                  )
                  ]
                ),
                Option(
                  name: '--server-side-encryption-kms-key-id',
                  description: 'Server-side KMS Key ID. Must be set if server-side-encryption is set to aws:kms',
                  args: [
                    Arg(
                    name: 'server-side-encryption-kms-key-id'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a S3 logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the S3 logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a S3 logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the S3 logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List S3 endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a S3 logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the S3 logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the S3 logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--bucket',
                  description: 'Your S3 bucket name',
                  args: [
                    Arg(
                    name: 'bucket'
                  )
                  ]
                ),
                Option(
                  name: '--access-key',
                  description: 'Your S3 account access key',
                  args: [
                    Arg(
                    name: 'access-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'Your S3 account secret key',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--iam-role',
                  description: 'The IAM role ARN for logging',
                  args: [
                    Arg(
                    name: 'iam-role'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'The domain of the S3 endpoint',
                  args: [
                    Arg(
                    name: 'domain'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--redundancy',
                  description: 'The S3 redundancy level. Can be either standard or reduced_redundancy',
                  args: [
                    Arg(
                    name: 'redundancy'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--server-side-encryption',
                  description: 'Set to enable S3 Server Side Encryption. Can be either AES256 or aws:kms',
                  args: [
                    Arg(
                    name: 'server-side-encryption'
                  )
                  ]
                ),
                Option(
                  name: '--server-side-encryption-kms-key-id',
                  description: 'Server-side KMS Key ID. Must be set if server-side-encryption is set to aws:kms',
                  args: [
                    Arg(
                    name: 'server-side-encryption-kms-key-id'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'scalyr',
          description: 'Manipulate Fastly service version Scalyr logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Scalyr logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Scalyr logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://www.scalyr.com/keys)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region that log data will be sent to. One of US or EU. Defaults to US if undefined',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Scalyr logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Scalyr logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Scalyr logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Scalyr logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Scalyr endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Scalyr logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Scalyr logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Scalyr logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'The token to use for authentication (https://www.scalyr.com/keys)',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--region',
                  description: 'The region that log data will be sent to. One of US or EU. Defaults to US if undefined',
                  args: [
                    Arg(
                    name: 'region'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sftp',
          description: 'Manipulate Fastly service version SFTP logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an SFTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the SFTP logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--address',
                  description: 'The hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for the server',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-known-hosts',
                  description: 'A list of host keys for all hosts we can connect to over SFTP',
                  args: [
                    Arg(
                    name: 'ssh-known-hosts'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password for the server. If both password and secret_key are passed, secret_key will be used in preference',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'The SSH private key for the server. If both password and secret_key are passed, secret_key will be used in preference',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to. The directory must exist on the SFTP server before logs can be saved to it',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an SFTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the SFTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about an SFTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the SFTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List SFTP endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update an SFTP logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the SFTP logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the SFTP logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--address',
                  description: 'The hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--public-key',
                  description: 'A PGP public key that Fastly will use to encrypt your log files before writing them to disk',
                  args: [
                    Arg(
                    name: 'public-key'
                  )
                  ]
                ),
                Option(
                  name: '--secret-key',
                  description: 'The SSH private key for the server. If both password and secret_key are passed, secret_key will be used in preference',
                  args: [
                    Arg(
                    name: 'secret-key'
                  )
                  ]
                ),
                Option(
                  name: '--ssh-known-hosts',
                  description: 'A list of host keys for all hosts we can connect to over SFTP',
                  args: [
                    Arg(
                    name: 'ssh-known-hosts'
                  )
                  ]
                ),
                Option(
                  name: '--user',
                  description: 'The username for the server',
                  args: [
                    Arg(
                    name: 'user'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The password for the server. If both password and secret_key are passed, secret_key will be used in preference',
                  args: [
                    Arg(
                    name: 'password'
                  )
                  ]
                ),
                Option(
                  name: '--path',
                  description: 'The path to upload logs to. The directory must exist on the SFTP server before logs can be saved to it',
                  args: [
                    Arg(
                    name: 'path'
                  )
                  ]
                ),
                Option(
                  name: '--period',
                  description: 'How frequently log files are finalized so they can be available for reading (in seconds, default 3600)',
                  args: [
                    Arg(
                    name: 'period'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--gzip-level',
                  description: 'What level of GZIP encoding to have when dumping logs (default 0, no compression)',
                  args: [
                    Arg(
                    name: 'gzip-level'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--timestamp-format',
                  description: 'Strftime specified timestamp formatting (default "%Y-%m-%dT%H:%M:%S.000")',
                  args: [
                    Arg(
                    name: 'timestamp-format'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--compression-codec',
                  description: 'The codec used for compression of your logs. Valid values are zstd, snappy, and gzip. If the specified codec is "gzip", gzip_level will default to 3. To specify a different level, leave compression_codec blank and explicitly set the level using gzip_level. Specifying both compression_codec and gzip_level in the same API request will result in an error',
                  args: [
                    Arg(
                    name: 'compression-codec'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'splunk',
          description: 'Manipulate Fastly service version Splunk logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Splunk logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Splunk logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--url',
                  description: 'The URL to POST to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'A Splunk token for use in posting logs over HTTP to your collector',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Splunk logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Splunk logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Splunk logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Splunk logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Splunk endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Splunk logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Splunk logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Splunk logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The URL to POST to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'The hostname used to verify the server\'s certificate. It can either be the Common Name or a Subject Alternative Name (SAN)',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: '\tWhere in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: '',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sumologic',
          description: 'Manipulate Fastly service version Sumologic logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Sumologic logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Sumologic logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--url',
                  description: 'The URL to POST to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Sumologic logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Sumologic logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Sumologic logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Sumologic logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Sumologic endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Sumologic logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Sumologic logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Sumologic logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--url',
                  description: 'The URL to POST to',
                  args: [
                    Arg(
                    name: 'url'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (the default, version 2 log format) or 1 (the version 1 log format). The logging call gets placed by default in vcl_log if format_version is set to 2 and in vcl_deliver if format_version is set to 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug. This field is not required and has no default value',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'syslog',
          description: 'Manipulate Fastly service version Syslog logging endpoints',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a Syslog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the Syslog logging object. Used as a primary key for API access',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--address',
                  description: 'A hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'Used during the TLS handshake to validate the certificate',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'Whether to prepend each message with a specific token',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a Syslog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Syslog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Show detailed information about a Syslog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Syslog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List Syslog endpoints on a Fastly service version',
              options: [

                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a Syslog logging endpoint on a Fastly service version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the Syslog logging object',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name of the Syslog logging object',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--address',
                  description: 'A hostname or IPv4 address',
                  args: [
                    Arg(
                    name: 'address'
                  )
                  ]
                ),
                Option(
                  name: '--port',
                  description: 'The port number',
                  args: [
                    Arg(
                    name: 'port'
                  )
                  ]
                ),
                Option(
                  name: '--use-tls',
                  description: 'Whether to use TLS for secure logging. Can be either true or false'
                ),
                Option(
                  name: '--tls-ca-cert',
                  description: 'A secure certificate to authenticate the server with. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-ca-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-hostname',
                  description: 'Used during the TLS handshake to validate the certificate',
                  args: [
                    Arg(
                    name: 'tls-hostname'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-cert',
                  description: 'The client certificate used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-cert'
                  )
                  ]
                ),
                Option(
                  name: '--tls-client-key',
                  description: 'The client private key used to make authenticated requests. Must be in PEM format',
                  args: [
                    Arg(
                    name: 'tls-client-key'
                  )
                  ]
                ),
                Option(
                  name: '--auth-token',
                  description: 'Whether to prepend each message with a specific token',
                  args: [
                    Arg(
                    name: 'auth-token'
                  )
                  ]
                ),
                Option(
                  name: '--format',
                  description: 'Apache style log formatting',
                  args: [
                    Arg(
                    name: 'format'
                  )
                  ]
                ),
                Option(
                  name: '--format-version',
                  description: 'The version of the custom logging format used for the configured endpoint. Can be either 2 (default) or 1',
                  args: [
                    Arg(
                    name: 'format-version'
                  )
                  ]
                ),
                Option(
                  name: '--message-type',
                  description: 'How the message should be formatted. One of: classic (default), loggly, logplex or blank',
                  args: [
                    Arg(
                    name: 'message-type'
                  )
                  ]
                ),
                Option(
                  name: '--response-condition',
                  description: 'The name of an existing condition in the configured endpoint, or leave blank to always execute',
                  args: [
                    Arg(
                    name: 'response-condition'
                  )
                  ]
                ),
                Option(
                  name: '--placement',
                  description: 'Where in the generated VCL the logging call should be placed, overriding any format_version default. Can be none or waf_debug',
                  args: [
                    Arg(
                    name: 'placement'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pops',
      description: 'List Fastly datacenters'
    ),
    Subcommand(
      name: 'profile',
      description: 'Manage user profiles',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create user profile'
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete user profile'
        ),
        Subcommand(
          name: 'list',
          description: 'List user profiles'
        ),
        Subcommand(
          name: 'switch',
          description: 'Switch user profile'
        ),
        Subcommand(
          name: 'token',
          description: 'Print access token',
          options: [

            Option(
              name: '--name',
              description: 'Print access token for the named profile',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update user profile'
        )
      ]
    ),
    Subcommand(
      name: 'purge',
      description: 'Invalidate objects in the Fastly cache',
      options: [

        Option(
          name: '--all',
          description: 'Purge everything from a service'
        ),
        Option(
          name: '--file',
          description: 'Purge a service of a newline delimited list of Surrogate Keys',
          args: [
            Arg(
            name: 'file'
          )
          ]
        ),
        Option(
          name: '--key',
          description: 'Purge a service of objects tagged with a Surrogate Key',
          args: [
            Arg(
            name: 'key'
          )
          ]
        ),
        Option(
          name: '--service-id',
          description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
          args: [
            Arg(
            name: 'service-id'
          )
          ]
        ),
        Option(
          name: '--service-name',
          description: 'The name of the service',
          args: [
            Arg(
            name: 'service-name'
          )
          ]
        ),
        Option(
          name: '--soft',
          description: 'A \'soft\' purge marks affected objects as stale rather than making them inaccessible'
        ),
        Option(
          name: '--url',
          description: 'Purge an individual URL',
          args: [
            Arg(
            name: 'url'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'service',
      description: 'Manipulate Fastly services',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Fastly service',
          options: [

            Option(
              name: '--name',
              description: 'Service name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'Service type. Can be one of "wasm" or "vcl", defaults to "vcl"',
              args: [
                Arg(
                name: 'type'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'Human-readable comment',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a Fastly service',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Force deletion of an active service'
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Show detailed information about a Fastly service',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Fastly services',
          options: [

            Option(
              name: '--direction',
              description: 'Direction in which to sort results',
              args: [
                Arg(
                name: 'direction'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--page',
              description: 'Page number of data set to fetch',
              args: [
                Arg(
                name: 'page'
              )
              ]
            ),
            Option(
              name: '--per-page',
              description: 'Number of records per page',
              args: [
                Arg(
                name: 'per-page'
              )
              ]
            ),
            Option(
              name: '--sort',
              description: 'Field on which to sort',
              args: [
                Arg(
                name: 'sort'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'search',
          description: 'Search for a Fastly service by name',
          options: [

            Option(
              name: '--name',
              description: 'Service name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Fastly service',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'Service name',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--comment',
              description: 'Human-readable comment',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'service-version',
      description: 'Manipulate Fastly service versions',
      subcommands: [

        Subcommand(
          name: 'activate',
          description: 'Activate a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            )
          ]
        ),
        Subcommand(
          name: 'clone',
          description: 'Clone a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deactivate',
          description: 'Deactivate a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Fastly service versions',
          options: [

            Option(
              name: '--json',
              description: 'Render output as JSON'
            ),
            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a Fastly service version',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--version',
              description: '\'latest\', \'active\', or the number of a specific version',
              args: [
                Arg(
                name: 'version'
              )
              ]
            ),
            Option(
              name: '--autoclone',
              description: 'If the selected service version is not editable, clone it and use the clone'
            ),
            Option(
              name: '--comment',
              description: 'Human-readable comment',
              args: [
                Arg(
                name: 'comment'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'stats',
      description: 'View historical and realtime statistics for a Fastly service',
      subcommands: [

        Subcommand(
          name: 'historical',
          description: 'View historical stats for a Fastly service',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--from',
              description: 'From time, accepted formats at https://fastly.dev/reference/api/metrics-stats/historical-stats',
              args: [
                Arg(
                name: 'from'
              )
              ]
            ),
            Option(
              name: '--to',
              description: 'To time',
              args: [
                Arg(
                name: 'to'
              )
              ]
            ),
            Option(
              name: '--by',
              description: 'Aggregation period (minute/hour/day)',
              args: [
                Arg(
                name: 'by'
              )
              ]
            ),
            Option(
              name: '--region',
              description: 'Filter by region (\'stats regions\' to list)',
              args: [
                Arg(
                name: 'region'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Output format (json)',
              args: [
                Arg(
                name: 'format'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'realtime',
          description: 'View realtime stats for a Fastly service',
          options: [

            Option(
              name: '--service-id',
              description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
              args: [
                Arg(
                name: 'service-id'
              )
              ]
            ),
            Option(
              name: '--service-name',
              description: 'The name of the service',
              args: [
                Arg(
                name: 'service-name'
              )
              ]
            ),
            Option(
              name: '--format',
              description: 'Output format (json)',
              args: [
                Arg(
                name: 'format'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regions',
          description: 'List stats regions'
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the CLI to the latest version'
    ),
    Subcommand(
      name: 'user',
      description: 'Manipulate users of the Fastly API and web interface',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a user of the Fastly API and web interface',
          options: [

            Option(
              name: '--login',
              description: 'The login associated with the user (typically, an email address)',
              args: [
                Arg(
                name: 'login'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The real life name of the user',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'The permissions role assigned to the user. Can be user, billing, engineer, or superuser',
              args: [
                Arg(
                name: 'role'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a user of the Fastly API and web interface',
          options: [

            Option(
              name: '--id',
              description: 'Alphanumeric string identifying the user',
              args: [
                Arg(
                name: 'id'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'describe',
          description: 'Get a specific user of the Fastly API and web interface',
          options: [

            Option(
              name: '--current',
              description: 'Get the logged in user'
            ),
            Option(
              name: '--id',
              description: 'Alphanumeric string identifying the user',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all users from a specified customer id',
          options: [

            Option(
              name: '--customer-id',
              description: 'Alphanumeric string identifying the customer (falls back to FASTLY_CUSTOMER_ID)',
              args: [
                Arg(
                name: 'customer-id'
              )
              ]
            ),
            Option(
              name: '--json',
              description: 'Render output as JSON'
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a user of the Fastly API and web interface',
          options: [

            Option(
              name: '--id',
              description: 'Alphanumeric string identifying the user',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--login',
              description: 'The login associated with the user (typically, an email address)',
              args: [
                Arg(
                name: 'login'
              )
              ]
            ),
            Option(
              name: '--name',
              description: 'The real life name of the user',
              args: [
                Arg(
                name: 'name'
              )
              ]
            ),
            Option(
              name: '--password-reset',
              description: 'Requests a password reset for the specified user'
            ),
            Option(
              name: '--role',
              description: 'The permissions role assigned to the user. Can be user, billing, engineer, or superuser',
              args: [
                Arg(
                name: 'role'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'vcl',
      description: 'Manipulate Fastly service version VCL',
      subcommands: [

        Subcommand(
          name: 'custom',
          description: 'Manipulate Fastly service version custom VCL',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Upload a VCL for a particular service and version',
              options: [

                Option(
                  name: '--content',
                  description: 'VCL passed as file path or content, e.g. \$(< main.vcl)',
                  args: [
                    Arg(
                    name: 'content'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the VCL',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--main',
                  description: 'Whether the VCL is the \'main\' entrypoint'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the uploaded VCL for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the VCL to delete',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Get the uploaded VCL for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the VCL',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the uploaded VCLs for a particular service and version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the uploaded VCL for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the VCL to update',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--new-name',
                  description: 'New name for the VCL',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--content',
                  description: 'VCL passed as file path or content, e.g. \$(< main.vcl)',
                  args: [
                    Arg(
                    name: 'content'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'snippet',
          description: 'Manipulate Fastly VCL snippets (blocks of VCL logic inserted into your service\'s configuration that don\'t require custom VCL)',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a snippet for a particular service and version',
              options: [

                Option(
                  name: '--content',
                  description: 'VCL snippet passed as file path or content, e.g. \$(< snippet.vcl)',
                  args: [
                    Arg(
                    name: 'content'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'The name of the VCL snippet',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'The location in generated VCL where the snippet should be placed',
                  args: [
                    Arg(
                    name: 'type'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--dynamic',
                  description: 'Whether the VCL snippet is dynamic or versioned'
                ),
                Option(
                  name: '--priority',
                  description: 'Priority determines execution order. Lower numbers execute first',
                  args: [
                    Arg(
                    name: 'priority'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a specific snippet for a particular service and version',
              options: [

                Option(
                  name: '--name',
                  description: 'The name of the VCL snippet to delete',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'describe',
              description: 'Get the uploaded VCL snippet for a particular service and version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--dynamic',
                  description: 'Whether the VCL snippet is dynamic or versioned'
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the VCL snippet',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--snippet-id',
                  description: 'Alphanumeric string identifying a VCL Snippet',
                  args: [
                    Arg(
                    name: 'snippet-id'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the uploaded VCL snippets for a particular service and version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--json',
                  description: 'Render output as JSON'
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a VCL snippet for a particular service and version',
              options: [

                Option(
                  name: '--version',
                  description: '\'latest\', \'active\', or the number of a specific version',
                  args: [
                    Arg(
                    name: 'version'
                  )
                  ]
                ),
                Option(
                  name: '--autoclone',
                  description: 'If the selected service version is not editable, clone it and use the clone'
                ),
                Option(
                  name: '--content',
                  description: 'VCL snippet passed as file path or content, e.g. \$(< snippet.vcl)',
                  args: [
                    Arg(
                    name: 'content'
                  )
                  ]
                ),
                Option(
                  name: '--dynamic',
                  description: 'Whether the VCL snippet is dynamic or versioned'
                ),
                Option(
                  name: '--name',
                  description: 'The name of the VCL snippet to update',
                  args: [
                    Arg(
                    name: 'name'
                  )
                  ]
                ),
                Option(
                  name: '--new-name',
                  description: 'New name for the VCL snippet',
                  args: [
                    Arg(
                    name: 'new-name'
                  )
                  ]
                ),
                Option(
                  name: '--priority',
                  description: 'Priority determines execution order. Lower numbers execute first',
                  args: [
                    Arg(
                    name: 'priority'
                  )
                  ]
                ),
                Option(
                  name: '--service-id',
                  description: 'Service ID (falls back to FASTLY_SERVICE_ID, then fastly.toml)',
                  args: [
                    Arg(
                    name: 'service-id'
                  )
                  ]
                ),
                Option(
                  name: '--service-name',
                  description: 'The name of the service',
                  args: [
                    Arg(
                    name: 'service-name'
                  )
                  ]
                ),
                Option(
                  name: '--snippet-id',
                  description: 'Alphanumeric string identifying a VCL Snippet',
                  args: [
                    Arg(
                    name: 'snippet-id'
                  )
                  ]
                ),
                Option(
                  name: '--type',
                  description: 'The location in generated VCL where the snippet should be placed',
                  args: [
                    Arg(
                    name: 'type'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'version',
      description: 'Display version information for the Fastly CLI'
    ),
    Subcommand(
      name: 'whoami',
      description: 'Get information about the currently authenticated account'
    )
  ],
  options: [

    Option(
      name: '--help',
      description: 'Show context-sensitive help'
    ),
    Option(
      name: '--accept-defaults',
      description: 'Accept default options for all interactive prompts apart from Yes/No confirmations'
    ),
    Option(
      name: '--auto-yes',
      description: 'Answer yes automatically to all Yes/No confirmations. This may suppress security warnings'
    ),
    Option(
      name: '--non-interactive',
      description: 'Do not prompt for user input - suitable for CI processes. Equivalent to --accept-defaults and --auto-yes'
    ),
    Option(
      name: '--profile',
      description: 'Switch account profile for single command execution (see also: \'fastly profile switch\')',
      args: [
        Arg(
        name: 'profile'
      )
      ]
    ),
    Option(
      name: '--token',
      description: 'Fastly API token (or via FASTLY_API_TOKEN)',
      args: [
        Arg(
        name: 'token'
      )
      ]
    ),
    Option(
      name: '--verbose',
      description: 'Verbose logging'
    )
  ]
);
