// Auto-generated from TypeScript source: vault.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vault` CLI
final FigSpec vaultSpec = FigSpec(
  name: 'vault',
  description: 'Interact with HashiCorp Vault',
  parserDirectives: ParserDirectives(),
  subcommands: [
    Subcommand(
      name: 'read',
      description: 'Reads data from Vault at the given path',
      options: []
    ),
    Subcommand(
      name: 'write',
      description: 'Writes data from Vault at the given path',
      options: [],
      args: []
    ),
    Subcommand(
      name: 'delete',
      description: 'Deletes secrets and configuration from Vault at the given path',
      options: []
    ),
    Subcommand(
      name: 'list',
      description: 'Lists data from Vault at the given path',
      options: []
    ),
    Subcommand(
      name: 'login',
      description: 'Authenticates users or machines to Vault using the provided arguments',
      options: []
    ),
    Subcommand(
      name: 'agent',
      description: 'This command starts a Vault agent that can perform automatic authentication in certain environments',
      options: []
    ),
    Subcommand(
      name: 'server',
      description: 'This command starts a Vault server that responds to API requests. By default, Vault will start in a \'sealed\' state. The Vault cluster must be initialized before use, usually by the \'vault operator init\' command. Each Vault server must also be unsealed using the \'vault operator unseal\' command or the API before the server can respond to requests',
      options: []
    ),
    Subcommand(
      name: 'status',
      description: 'Prints the current state of Vault including whether it is sealed and if HA mode is enabled. This command prints regardless of whether the Vault is sealed',
      options: []
    ),
    Subcommand(
      name: 'unwrap',
      description: 'Unwraps a wrapped secret from Vault by the given token. The result is the same as the \'vault read\' operation on the non-wrapped secret. If no token is given, the data in the currently authenticated token is unwrapped',
      options: []
    ),
    Subcommand(
      name: 'audit',
      description: 'This command groups subcommands for interacting with Vault\'s audit devices. Users can list, enable, and disable audit devices',
      subcommands: [
        Subcommand(
          name: 'list',
          description: 'Lists the enabled audit devices in the Vault server. The output lists the enabled audit devices and the options for those devices',
          options: []
        ),
        Subcommand(
          name: 'disable',
          description: 'Disables an audit device. Once an audit device is disabled, no future audit logs are dispatched to it. The data associated with the audit device is not affected',
          options: [],
          args: [
            Arg(
            name: 'PATH',
            description: 'Disable the audit device enabled at this path'
          )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables an audit device at a given path',
          options: [],
          args: []
        )
      ]
    ),
    Subcommand(
      name: 'debug',
      description: 'Probes a specific Vault server node for a specified period of time, recording information about the node, its cluster, and its host environment',
      options: []
    ),
    Subcommand(
      name: 'kv',
      description: 'This command has subcommands for interacting with Vault\'s key-value store. Here are some simple examples, and more detailed examples are available in the subcommands or the documentation',
      options: [],
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Deletes the data for the provided version and path in the key-value store. The versioned data will not be fully removed, but marked as deleted and will no longer be returned in normal get requests',
          options: []
        ),
        Subcommand(
          name: 'destroy',
          description: 'Permanently removes the specified versions\' data from the key-value store. If no key exists at the path, no action is taken',
          options: []
        ),
        Subcommand(
          name: 'enable-versioning',
          description: 'This command turns on versioning for the backend at the provided path',
          options: []
        ),
        Subcommand(
          name: 'get',
          description: 'Retrieves the value from Vault\'s key-value store at the given key name. If no key exists with that name, an error is returned. If a key exists with that name but has no data, nothing is returned',
          options: []
        ),
        Subcommand(
          name: 'list',
          description: 'Lists data from Vault\'s key-value store at the given path',
          options: []
        ),
        Subcommand(
          name: 'metadata',
          description: 'This command has subcommands for interacting with the metadata endpoint in Vault\'s key-value store. Here are some simple examples, and more detailed examples are available in the subcommands or the documentation',
          options: [],
          subcommands: [
            Subcommand(
              name: 'delete',
              description: 'Deletes all versions and metadata for the provided key',
              options: []
            ),
            Subcommand(
              name: 'get',
              description: 'Retrieves the metadata from Vault\'s key-value store at the given key name. If no key exists with that name, an error is returned',
              options: []
            ),
            Subcommand(
              name: 'patch',
              description: 'This command can be used to create a blank key in the key-value store or to update key configuration for a specified key',
              options: []
            ),
            Subcommand(
              name: 'put',
              description: 'This command can be used to create a blank key in the key-value store or to update key configuration for a specified key',
              options: []
            )
          ]
        ),
        Subcommand(
          name: 'patch',
          description: 'Writes the data to the given path in the key-value store. The data can be of any type',
          options: [],
          args: []
        ),
        Subcommand(
          name: 'put',
          description: 'Writes the data to the given path in the key-value store. The data can be of any type',
          options: [],
          args: []
        ),
        Subcommand(
          name: 'rollback',
          description: 'Restores a given previous version to the current version at the given path. The value is written as a new version; for instance, if the current version is 5 and the rollback version is 2, the data from version 2 will become version 6',
          options: []
        ),
        Subcommand(
          name: 'undelete',
          description: 'Undeletes the data for the provided version and path in the key-value store. This restores the data, allowing it to be returned on get requests',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'lease',
      description: 'This command groups subcommands for interacting with leases. Users can revoke or renew leases',
      options: [],
      subcommands: [
        Subcommand(
          name: 'lookup',
          description: 'Lookup the lease information of a secret',
          options: []
        ),
        Subcommand(
          name: 'renew',
          description: 'Renews the lease on a secret, extending the time that it can be used before it is revoked by Vault',
          options: []
        ),
        Subcommand(
          name: 'revoke',
          description: 'Revokes secrets by their lease ID. This command can revoke a single secret or multiple secrets based on a path-matched prefix',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'monitor',
      description: 'Stream log messages of a Vault server. The monitor command lets you listen for log levels that may be filtered out of the server logs. For example, the server may be logging at the INFO level, but with the monitor command you can set -log-level=DEBUG',
      options: []
    ),
    Subcommand(
      name: 'namespace',
      description: 'This command groups subcommands for interacting with Vault namespaces. These subcommands operate in the context of the namespace that the currently logged in token belongs to',
      options: [],
      subcommands: [
        Subcommand(
          name: 'create',
          description: 'Create a child namespace. The namespace created will be relative to the namespace provided in either the VAULT_NAMESPACE environment variable or -namespace CLI flag',
          options: []
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an existing namespace. The namespace deleted will be relative to the namespace provided in either the VAULT_NAMESPACE environment variable or -namespace CLI flag',
          options: []
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the enabled child namespaces',
          options: []
        ),
        Subcommand(
          name: 'lock',
          description: 'Lock the current namespace, and all descendants',
          options: []
        ),
        Subcommand(
          name: 'lookup',
          description: 'Get information about the namespace of the locally authenticated token',
          options: []
        ),
        Subcommand(
          name: 'unlock',
          description: 'Unlock the current namespace, and all descendants, with unlock key',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'operator',
      description: 'This command groups subcommands for operators interacting with Vault. Most users will not need to interact with these commands. Here are a few examples of the operator commands',
      options: [],
      subcommands: [
        Subcommand(
          name: 'diagnose',
          description: 'This command troubleshoots Vault startup issues, such as TLS configuration or auto-unseal. It should be run using the same environment variables and configuration files as the \'vault server\' command, so that startup problems can be accurately reproduced',
          options: []
        ),
        Subcommand(
          name: 'generate-root',
          description: 'Generates a new root token by combining a quorum of share holders. Must provide either \'-otp\' or \'-pgp-key\'',
          options: []
        ),
        Subcommand(
          name: 'init',
          description: 'Initializes a Vault server. Initialization is the process by which Vault\'s storage backend is prepared to receive data. Since Vault servers share the same storage backend in HA mode, you only need to initialize one Vault to initialize the storage backend',
          options: []
        ),
        Subcommand(
          name: 'key-status',
          description: 'Provides information about the active encryption key. Specifically, the current key term and the key installation time',
          options: []
        ),
        Subcommand(
          name: 'members',
          description: 'Provides the details of all the nodes in the cluster',
          options: []
        ),
        Subcommand(
          name: 'migrate',
          description: 'This command starts a storage backend migration process to copy all data from one backend to another. This operates directly on encrypted data and does not require a Vault server, nor any unsealing'
        ),
        Subcommand(
          name: 'raft',
          description: 'This command groups subcommands for operators interacting with the Vault raft storage backend. Most users will not need to interact with these commands. Here are a few examples of the raft operator commands',
          subcommands: [
            Subcommand(
              name: 'autopilot',
              description: 'Raft auto pilot',
              subcommands: [
                Subcommand(
                  name: 'get-config',
                  description: 'Returns the configuration of the autopilot subsystem under integrated storage',
                  options: []
                ),
                Subcommand(
                  name: 'set-config',
                  description: 'Modify the configuration of the autopilot subsystem under integrated storage',
                  options: []
                ),
                Subcommand(
                  name: 'state',
                  description: 'Displays the state of the raft cluster under integrated storage as seen by autopilot',
                  options: []
                )
              ]
            ),
            Subcommand(
              name: 'join',
              description: 'Joins a node to the Raft cluster',
              options: [],
              args: [
                Arg(
                name: 'leader-api-addr|auto-join-configuration',
                suggestions: [
                  FigSuggestion(name: 'http://127.0.0.2:8200'),
                  FigSuggestion(name: 'provider=aws region=eu-west-1 ...')
                ]
              )
              ]
            ),
            Subcommand(
              name: 'list-peers',
              description: 'Returns the Raft peer set',
              options: []
            ),
            Subcommand(
              name: 'remove-peer',
              description: 'Removes a node from the Raft cluster',
              options: [],
              args: [
                Arg(
                name: 'server_id'
              )
              ]
            ),
            Subcommand(
              name: 'snapshot',
              description: 'Restores and saves snapshots from the Raft cluster',
              subcommands: [
                Subcommand(
                  name: 'restore',
                  description: 'Installs the provided snapshot, returning the cluster to the state defined in it',
                  options: [],
                  args: [
                    Arg(
                    name: 'snapshot_file',
                    description: 'Save snapshot to this file',
                    template: 'filepaths'
                  )
                  ]
                ),
                Subcommand(
                  name: 'save',
                  description: 'Saves a snapshot of the current state of the Raft cluster into a file',
                  options: [],
                  args: [
                    Arg(
                    name: 'snapshot_file',
                    description: 'Restore snapshot from this file',
                    template: 'filepaths'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rekey',
          description: 'Generates a new set of unseal keys. This can optionally change the total number of key shares or the required threshold of those key shares to reconstruct the root key. This operation is zero downtime, but it requires the Vault is unsealed and a quorum of existing unseal keys are provided',
          options: [],
          args: [
            Arg(
            name: 'key',
            description: 'An unseal key may be provided directly on the command line as an argument to the command. If key is specified as \'-\', the command will read from stdin. If a TTY is available, the command will prompt for text',
            suggestions: [
              FigSuggestion(name: '-')
            ],
            defaultValue: '-'
          )
          ]
        ),
        Subcommand(
          name: 'rotate',
          description: 'Rotates the underlying encryption key which is used to secure data written to the storage backend. This installs a new key in the key ring. This new key is used to encrypted new data, while older keys in the ring are used to decrypt older data',
          options: []
        ),
        Subcommand(
          name: 'seal',
          description: 'Seals the Vault server. Sealing tells the Vault server to stop responding to any operations until it is unsealed. When sealed, the Vault server discards its in-memory root key to unlock the data, so it is physically blocked from responding to operations unsealed',
          options: []
        ),
        Subcommand(
          name: 'step-down',
          description: 'Forces the Vault server at the given address to step down from active duty.  While the affected node will have a delay before attempting to acquire the leader lock again, if no other Vault nodes acquire the lock beforehand, it is possible for the same node to re-acquire the lock and become active again',
          options: []
        ),
        Subcommand(
          name: 'unseal',
          description: 'Provide a portion of the root key to unseal a Vault server. Vault starts in a sealed state. It cannot perform operations until it is unsealed. This command accepts a portion of the root key (an \'unseal key\')',
          options: [],
          args: [
            Arg(
            name: 'key',
            description: 'The unseal key can be supplied as an argument to the command, but this is not recommended as the unseal key will be available in your history',
            isOptional: true
          )
          ]
        ),
        Subcommand(
          name: 'usage',
          description: 'List the client counts for the default reporting period',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'path-help',
      description: 'Retrieves API help for paths. All endpoints in Vault provide built-in help in markdown format. This includes system paths, secret engines, and auth methods',
      options: []
    ),
    Subcommand(
      name: 'plugin',
      description: 'This command groups subcommands for interacting with Vault\'s plugins and the plugin catalog. The plugin catalog is divided into three types: \'auth\', \'database\', and \'secret\' plugins. A type must be specified on each call. Here are a few examples of the plugin commands',
      subcommands: [
        Subcommand(
          name: 'deregister',
          description: 'Deregister an existing plugin in the catalog. If the plugin does not exist, no action is taken (the command is idempotent). The argument of type takes \'auth\', \'database\', or \'secret\'',
          options: [],
          args: [
            Arg(
              name: 'type',
              description: 'Plugin type',
              suggestions: [
                FigSuggestion(name: 'auth'),
                FigSuggestion(name: 'database'),
                FigSuggestion(name: 'secret')
              ]
            ),
            Arg(
              name: 'name',
              description: 'Plugin name'
            )
          ]
        ),
        Subcommand(
          name: 'info',
          description: 'Displays information about a plugin in the catalog with the given name. If the plugin does not exist, an error is returned. The argument of type takes \'auth\', \'database\', or \'secret\'',
          options: [],
          args: []
        ),
        Subcommand(
          name: 'list',
          description: 'Lists available plugins registered in the catalog. This does not list whether plugins are in use, but rather just their availability. The last argument of type takes \'auth\', \'database\', or \'secret\'',
          options: []
        ),
        Subcommand(
          name: 'register',
          description: 'Registers a new plugin in the catalog. The plugin binary must exist in Vault\'s configured plugin directory. The argument of type takes \'auth\', \'database\', or \'secret\'',
          options: [],
          args: []
        ),
        Subcommand(
          name: 'reload',
          description: 'Reloads mounted plugins. Either the plugin name or the desired plugin mount(s) must be provided, but not both. In case the plugin name is provided, all of its corresponding mounted paths that use the plugin backend will be reloaded',
          options: []
        ),
        Subcommand(
          name: 'reload-status',
          description: 'Retrieves the status of a recent cluster plugin reload. The reload id must be provided',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'policy',
      subcommands: [
        Subcommand(
          name: 'delete',
          description: 'Deletes the policy named NAME in the Vault server. Once the policy is deleted, all tokens associated with the policy are affected immediately',
          options: []
        ),
        Subcommand(
          name: 'fmt',
          description: 'Formats a local policy file to the policy specification. This command will overwrite the file at the given PATH with the properly-formatted policy file contents',
          options: []
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the names of the policies that are installed on the Vault server',
          options: []
        ),
        Subcommand(
          name: 'read',
          description: 'Prints the contents and metadata of the Vault policy named NAME. If the policy does not exist, an error is returned',
          options: []
        ),
        Subcommand(
          name: 'write',
          description: 'Uploads a policy with name NAME from the contents of a local file PATH or stdin. If PATH is \'-\', the policy is read from stdin. Otherwise, it is loaded from the file at the given path on the local disk',
          options: [],
          args: []
        )
      ]
    ),
    Subcommand(
      name: 'print',
      description: 'This command groups subcommands for interacting with Vault\'s runtime values',
      subcommands: [
        Subcommand(
          name: 'token',
          description: 'Prints the value of the Vault token that will be used for commands, after taking into account the configured token-helper and the environment'
        )
      ]
    ),
    Subcommand(
      name: 'secrets',
      description: 'This command groups subcommands for interacting with Vault\'s secrets engines.  Each secret engine behaves differently. Please see the documentation for more information',
      subcommands: [
        Subcommand(
          name: 'disable',
          description: 'Disables a secrets engine at the given PATH. The argument corresponds to the enabled PATH of the engine, not the TYPE! All secrets created by this engine are revoked and its Vault data is removed',
          options: []
        ),
        Subcommand(
          name: 'enable',
          description: 'Enables a secrets engine. By default, secrets engines are enabled at the path corresponding to their TYPE, but users can customize the path using the -path option',
          options: []
        ),
        Subcommand(
          name: 'list',
          description: 'Lists the enabled secret engines on the Vault server. This command also outputs information about the enabled path including configured TTLs and human-friendly descriptions. A TTL of \'system\' indicates that the system default is in use',
          options: []
        ),
        Subcommand(
          name: 'move',
          description: 'Moves an existing secrets engine to a new path. Any leases from the old secrets engine are revoked, but all configuration associated with the engine is preserved. It initiates the migration and intermittently polls its status, exiting if a final state is reached',
          options: []
        ),
        Subcommand(
          name: 'tune',
          description: 'Tunes the configuration options for the secrets engine at the given PATH.  The argument corresponds to the PATH where the secrets engine is enabled, not the TYPE',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'ssh',
      description: 'Establishes an SSH connection with the target machine',
      options: []
    ),
    Subcommand(
      name: 'token',
      description: 'This command groups subcommands for interacting with tokens. Users can create, lookup, renew, and revoke tokens',
      subcommands: [
        Subcommand(
          name: 'capabilities',
          description: 'Fetches the capabilities of a token for a given path. If a TOKEN is provided as an argument, the \'/sys/capabilities\' endpoint and permission is used. If no TOKEN is provided, the \'/sys/capabilities-self\' endpoint and permission is used with the locally authenticated token',
          options: [],
          args: []
        ),
        Subcommand(
          name: 'create',
          description: 'Creates a new token that can be used for authentication. This token will be created as a child of the currently authenticated token. The generated token will inherit all policies and permissions of the currently authenticated token unless you explicitly define a subset list policies to assign to the token',
          options: []
        ),
        Subcommand(
          name: 'lookup',
          description: 'Displays information about a token or accessor. If a TOKEN is not provided, the locally authenticated token is use',
          options: []
        ),
        Subcommand(
          name: 'renew',
          description: 'Renews a token\'s lease, extending the amount of time it can be used. If a TOKEN is not provided, the locally authenticated token is used. A token accessor can be used as well. Lease renewal will fail if the token is not renewable, the token has already been revoked, or if the token has already reached its maximum TTL',
          options: []
        ),
        Subcommand(
          name: 'revoke',
          description: 'Revokes authentication tokens and their children. If a TOKEN is not provided, the locally authenticated token is used. The \'-mode\' flag can be used to control the behavior of the revocation. See the \'-mode\' flag documentation for more information',
          options: []
        )
      ]
    ),
    Subcommand(
      name: 'version-history',
      description: 'Prints the version history of the target Vault server',
      options: []
    )
  ],
  options: [
    Option(
      name: ['--help', '-h'],
      description: 'Show help for vault',
      args: [
        Arg(
        isOptional: true
      )
      ],
      priority: 30
    )
  ]
);
