// Auto-generated from TypeScript source: keyvault.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `keyvault` CLI
final FigSpec keyvaultSpec = FigSpec(
  name: 'keyvault',
  description: 'Manage KeyVault keys, secrets, and certificates',
  subcommands: [

    Subcommand(
      name: 'backup',
      description: 'Manage full HSM backup',
      subcommands: [

        Subcommand(
          name: 'start',
          description: 'Begin a full backup of the HSM',
          options: [

            Option(
              name: ['--storage-container-SAS-token', '-t'],
              description: 'The SAS token pointing to an Azure Blob storage container',
              args: [
                Arg(
                name: 'storage-container-SAS-toke'
              )
              ]
            ),
            Option(
              name: '--blob-container-name',
              description: 'Name of Blob Container',
              args: [
                Arg(
                name: 'blob-container-nam'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--storage-account-name',
              description: 'Name of Azure Storage Account',
              args: [
                Arg(
                name: 'storage-account-nam'
              )
              ]
            ),
            Option(
              name: '--storage-resource-uri',
              description: 'Azure Blob storage container Uri. If specified all other \'Storage Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'storage-resource-ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'certificate',
      description: 'Manage certificates',
      subcommands: [

        Subcommand(
          name: 'backup',
          description: 'Backs up the specified certificate',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Local file path in which to store certificate backup',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a Key Vault certificate',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--policy', '-p'],
              description: 'JSON encoded policy definition. Use @{file} to load from a file(e.g. @my_policy.json)',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Create certificate in disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--validity',
              description: 'Number of months the certificate is valid for. Overrides the value specified with --policy/-p',
              args: [
                Arg(
                name: 'validit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a certificate from a specified key vault',
          options: [

            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download the public portion of a Key Vault certificate',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'File to receive the binary certificate contents',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--encoding', '-e'],
              description: 'Encoding of the certificate. DER will create a binary DER formatted x509 certificate, and PEM will create a base64 PEM x509 certificate',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'DER'),
                  FigSuggestion(name: 'PEM')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The certificate version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-default-policy',
          description: 'Get the default policy for self-signed certificates',
          options: [

            Option(
              name: '--scaffold',
              description: 'Create a fully formed policy structure with default values'
            )
          ]
        ),
        Subcommand(
          name: 'import',
          description: 'Import a certificate into KeyVault',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'PKCS12 file or PEM file containing the certificate and private key',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Import the certificate in disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--password',
              description: 'If the private key in certificate is encrypted, the password used for encryption',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--policy', '-p'],
              description: 'JSON encoded policy definition. Use @{file} to load from a file(e.g. @my_policy.json)',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List certificates in a specified key vault',
          options: [

            Option(
              name: '--id',
              description: 'Full URI of the Vault. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--include-pending',
              description: 'Specifies whether to include certificates which are not completely provisioned',
              args: [
                Arg(
                name: 'include-pending',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'Lists the currently-recoverable deleted certificates',
          options: [

            Option(
              name: '--id',
              description: 'Full URI of the Vault. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--include-pending',
              description: 'Specifies whether to include certificates which are not completely provisioned',
              args: [
                Arg(
                name: 'include-pending',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-versions',
          description: 'List the versions of a certificate',
          options: [

            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'purge',
          description: 'Permanently deletes the specified deleted certificate',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recover',
          description: 'Recover a deleted certificate to its latest version',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restores a backed up certificate to a vault',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Local certificate backup from which to restore certificate',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-attributes',
          description: 'Updates the specified attributes associated with the given certificate',
          options: [

            Option(
              name: '--enabled',
              description: 'Enable the certificate',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--policy', '-p'],
              description: 'JSON encoded policy definition. Use @{file} to load from a file(e.g. @my_policy.json)',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The certificate version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about a certificate',
          options: [

            Option(
              name: '--id',
              description: 'Id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The certificate version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deleted',
          description: 'Get a deleted certificate',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the certificate. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the certificate. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'contact',
          description: 'Manage contacts for certificate management',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a contact to the specified vault to receive notifications of certificate operations',
              options: [

                Option(
                  name: '--email',
                  description: 'Contact e-mail address. Must be unique',
                  args: [
                    Arg(
                    name: 'emai'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Full contact name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--phone',
                  description: 'Contact phone number',
                  args: [
                    Arg(
                    name: 'phon'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Remove a certificate contact from the specified vault',
              options: [

                Option(
                  name: '--email',
                  description: 'Contact e-mail address. Must be unique',
                  args: [
                    Arg(
                    name: 'emai'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists the certificate contacts for a specified key vault',
              options: [

                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'issuer',
          description: 'Manage certificate issuer information',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a certificate issuer record',
              options: [

                Option(
                  name: '--issuer-name',
                  description: 'Certificate issuer name',
                  args: [
                    Arg(
                    name: 'issuer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--provider-name',
                  description: 'The certificate provider name. Must be registered with your tenant ID and in your region',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--account-id',
                  description: 'The issuer account id/username/etc',
                  args: [
                    Arg(
                    name: 'account-i'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Set issuer to disabled state',
                  args: [
                    Arg(
                    name: 'disabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--organization-id',
                  description: 'The organization id',
                  args: [
                    Arg(
                    name: 'organization-i'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The issuer account password/secret/etc',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the specified certificate issuer',
              options: [

                Option(
                  name: '--issuer-name',
                  description: 'Certificate issuer name',
                  args: [
                    Arg(
                    name: 'issuer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Lists properties of the certificate issuers for the key vault',
              options: [

                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the specified certificate issuer',
              options: [

                Option(
                  name: '--issuer-name',
                  description: 'Certificate issuer name',
                  args: [
                    Arg(
                    name: 'issuer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a certificate issuer record',
              options: [

                Option(
                  name: '--issuer-name',
                  description: 'Certificate issuer name',
                  args: [
                    Arg(
                    name: 'issuer-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--account-id',
                  description: 'The issuer account id/username/etc',
                  args: [
                    Arg(
                    name: 'account-i'
                  )
                  ]
                ),
                Option(
                  name: '--enabled',
                  description: 'Set issuer enabled state',
                  args: [
                    Arg(
                    name: 'enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--organization-id',
                  description: 'The organization id',
                  args: [
                    Arg(
                    name: 'organization-i'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'The issuer account password/secret/etc',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--provider-name',
                  description: 'The certificate provider name. Must be registered with your tenant ID and in your region',
                  args: [
                    Arg(
                    name: 'provider-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'admin',
              description: 'Manage admin information for certificate issuers',
              subcommands: [

                Subcommand(
                  name: 'add',
                  description: 'Add admin details for a specified certificate issuer',
                  options: [

                    Option(
                      name: '--email',
                      description: 'Admin e-mail address. Must be unique within the vault',
                      args: [
                        Arg(
                        name: 'emai'
                      )
                      ]
                    ),
                    Option(
                      name: '--issuer-name',
                      description: 'Certificate issuer name',
                      args: [
                        Arg(
                        name: 'issuer-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vault-name',
                      description: 'Name of the Vault',
                      args: [
                        Arg(
                        name: 'vault-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--first-name',
                      description: 'Admin first name',
                      args: [
                        Arg(
                        name: 'first-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--last-name',
                      description: 'Admin last name',
                      args: [
                        Arg(
                        name: 'last-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--phone',
                      description: 'Admin phone number',
                      args: [
                        Arg(
                        name: 'phon'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Remove admin details for the specified certificate issuer',
                  options: [

                    Option(
                      name: '--email',
                      description: 'Admin e-mail address. Must be unique within the vault',
                      args: [
                        Arg(
                        name: 'emai'
                      )
                      ]
                    ),
                    Option(
                      name: '--issuer-name',
                      description: 'Certificate issuer name',
                      args: [
                        Arg(
                        name: 'issuer-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vault-name',
                      description: 'Name of the Vault',
                      args: [
                        Arg(
                        name: 'vault-nam'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List admins for a specified certificate issuer',
                  options: [

                    Option(
                      name: '--issuer-name',
                      description: 'Certificate issuer name',
                      args: [
                        Arg(
                        name: 'issuer-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--vault-name',
                      description: 'Name of the Vault',
                      args: [
                        Arg(
                        name: 'vault-nam'
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
          name: 'pending',
          description: 'Manage pending certificate creation operations',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Deletes the creation operation for a specific certificate',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the pending certificate',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'merge',
              description: 'Merges a certificate or a certificate chain with a key pair existing on the server',
              options: [

                Option(
                  name: ['--file', '-f'],
                  description: 'File containing the certificate or certificate chain to merge',
                  args: [
                    Arg(
                    name: 'fil'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the pending certificate',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Create certificate in disabled state',
                  args: [
                    Arg(
                    name: 'disabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets the creation operation of a certificate',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the pending certificate',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
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
      name: 'check-name',
      description: 'Checks that the managed hsm name is valid and is not already in use',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the HSM within the specified resource group',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'Type of resource',
          args: [
            Arg(
            name: 'resource-type',
            suggestions: [

              FigSuggestion(name: 'hsm')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create a Vault or HSM',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--administrators',
          description: '[HSM Only] Administrator role for data plane operations for Managed HSM. It accepts a space separated list of OIDs that will be assigned',
          args: [
            Arg(
            name: 'administrator'
          )
          ]
        ),
        Option(
          name: '--bypass',
          description: 'Bypass traffic for space-separated uses',
          args: [
            Arg(
            name: 'bypass',
            suggestions: [

              FigSuggestion(name: 'AzureServices'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches',
          args: [
            Arg(
            name: 'default-action',
            suggestions: [

              FigSuggestion(name: 'Allow'),
              FigSuggestion(name: 'Deny')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-purge-protection',
          description: 'Property specifying whether protection against purge is enabled for this vault/managed HSM pool. Setting this property to true activates protection against purge for this vault/managed HSM pool and its content - only the Key Vault/Managed HSM service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible',
          args: [
            Arg(
            name: 'enable-purge-protection',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-rbac-authorization',
          description: 'Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC',
          args: [
            Arg(
            name: 'enable-rbac-authorization',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-deployment',
          description: '[Vault Only] Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault',
          args: [
            Arg(
            name: 'enabled-for-deployment',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-disk-encryption',
          description: '[Vault Only] Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys',
          args: [
            Arg(
            name: 'enabled-for-disk-encryption',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-template-deployment',
          description: '[Vault Only] Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault',
          args: [
            Arg(
            name: 'enabled-for-template-deployment',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--hsm-name',
          description: 'Name of the HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--network-acls',
          description: 'Network ACLs. It accepts a JSON filename or a JSON string. JSON format: {\\"ip\\":[<ip1>, <ip2>...],\\"vnet\\":[<vnet_name_1>/<subnet_name_1>,<subnet_id2>...]}',
          args: [
            Arg(
            name: 'network-acl'
          )
          ]
        ),
        Option(
          name: '--network-acls-ips',
          description: 'Network ACLs IP rules. Space-separated list of IP addresses',
          args: [
            Arg(
            name: 'network-acls-ip'
          )
          ]
        ),
        Option(
          name: '--network-acls-vnets',
          description: 'Network ACLS VNet rules. Space-separated list of Vnet/subnet pairs or subnet resource ids',
          args: [
            Arg(
            name: 'network-acls-vnet'
          )
          ]
        ),
        Option(
          name: '--no-self-perms',
          description: '[Vault Only] Don\'t add permissions for the current user/service principal in the new vault',
          args: [
            Arg(
            name: 'no-self-perms',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--retention-days',
          description: 'Soft delete data retention days. It accepts >=7 and <=90. Defaults to 90 for keyvault creation. Required for MHSM creation',
          args: [
            Arg(
            name: 'retention-day'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'Required. SKU details. Allowed values for Vault: premium, standard. Default: standard. Allowed values for HSM: Standard_B1, Custom_B32. Default: Standard_B1',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--tags',
          description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
          args: [
            Arg(
            name: 'tag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a Vault or HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete-policy',
      description: 'Delete security policy settings for a Key Vault',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--application-id',
          description: 'Application ID of the client making request on behalf of a principal. Exposed for compound identity using on-behalf-of authentication flow',
          args: [
            Arg(
            name: 'application-i'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--object-id',
          description: 'A GUID that identifies the principal that will receive permissions',
          args: [
            Arg(
            name: 'object-i'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--spn',
          description: 'Name of a service principal that will receive permissions',
          args: [
            Arg(
            name: 'sp'
          )
          ]
        ),
        Option(
          name: '--upn',
          description: 'Name of a user principal that will receive permissions',
          args: [
            Arg(
            name: 'up'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List Vaults and/or HSMs',
      options: [

        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--resource-type',
          description: 'When --resource-type is not present the command will list all Vaults and HSMs. Possible values for --resource-type are vault and hsm',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-deleted',
      description: 'Get information about the deleted Vaults or HSMs in a subscription',
      options: [

        Option(
          name: '--resource-type',
          description: 'When --resource-type is not present the command will list all deleted Vaults and HSMs. Possible values for --resource-type are vault and hsm',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'purge',
      description: 'Permanently delete the specified Vault or HSM. Aka Purges the deleted Vault or HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the deleted HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted Vault or HSM',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the deleted Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        )
      ]
    ),
    Subcommand(
      name: 'recover',
      description: 'Recover a Vault or HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the deleted HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted Vault or HSM',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the deleted Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Resource group of the deleted Vault or HSM',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'set-policy',
      description: 'Update security policy settings for a Key Vault',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--application-id',
          description: 'Application ID of the client making request on behalf of a principal. Exposed for compound identity using on-behalf-of authentication flow',
          args: [
            Arg(
            name: 'application-i'
          )
          ]
        ),
        Option(
          name: '--certificate-permissions',
          description: 'Space-separated list of certificate permissions to assign',
          args: [
            Arg(
            name: 'certificate-permissions',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'backup'),
              FigSuggestion(name: 'create'),
              FigSuggestion(name: 'delete'),
              FigSuggestion(name: 'deleteissuers'),
              FigSuggestion(name: 'get'),
              FigSuggestion(name: 'getissuers'),
              FigSuggestion(name: 'import'),
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'listissuers'),
              FigSuggestion(name: 'managecontacts'),
              FigSuggestion(name: 'manageissuers'),
              FigSuggestion(name: 'purge'),
              FigSuggestion(name: 'recover'),
              FigSuggestion(name: 'restore'),
              FigSuggestion(name: 'setissuers'),
              FigSuggestion(name: 'update')
            ]
          )
          ]
        ),
        Option(
          name: '--key-permissions',
          description: 'Space-separated list of key permissions to assign',
          args: [
            Arg(
            name: 'key-permissions',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'backup'),
              FigSuggestion(name: 'create'),
              FigSuggestion(name: 'decrypt'),
              FigSuggestion(name: 'delete'),
              FigSuggestion(name: 'encrypt'),
              FigSuggestion(name: 'get'),
              FigSuggestion(name: 'getrotationpolicy'),
              FigSuggestion(name: 'import'),
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'purge'),
              FigSuggestion(name: 'recover'),
              FigSuggestion(name: 'release'),
              FigSuggestion(name: 'restore'),
              FigSuggestion(name: 'rotate'),
              FigSuggestion(name: 'setrotationpolicy'),
              FigSuggestion(name: 'sign'),
              FigSuggestion(name: 'unwrapKey'),
              FigSuggestion(name: 'update'),
              FigSuggestion(name: 'verify'),
              FigSuggestion(name: 'wrapKey')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--object-id',
          description: 'A GUID that identifies the principal that will receive permissions',
          args: [
            Arg(
            name: 'object-i'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--secret-permissions',
          description: 'Space-separated list of secret permissions to assign',
          args: [
            Arg(
            name: 'secret-permissions',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'backup'),
              FigSuggestion(name: 'delete'),
              FigSuggestion(name: 'get'),
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'purge'),
              FigSuggestion(name: 'recover'),
              FigSuggestion(name: 'restore'),
              FigSuggestion(name: 'set')
            ]
          )
          ]
        ),
        Option(
          name: '--spn',
          description: 'Name of a service principal that will receive permissions',
          args: [
            Arg(
            name: 'sp'
          )
          ]
        ),
        Option(
          name: '--storage-permissions',
          description: 'Space-separated list of storage permissions to assign',
          args: [
            Arg(
            name: 'storage-permissions',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'backup'),
              FigSuggestion(name: 'delete'),
              FigSuggestion(name: 'deletesas'),
              FigSuggestion(name: 'get'),
              FigSuggestion(name: 'getsas'),
              FigSuggestion(name: 'list'),
              FigSuggestion(name: 'listsas'),
              FigSuggestion(name: 'purge'),
              FigSuggestion(name: 'recover'),
              FigSuggestion(name: 'regeneratekey'),
              FigSuggestion(name: 'restore'),
              FigSuggestion(name: 'set'),
              FigSuggestion(name: 'setsas'),
              FigSuggestion(name: 'update')
            ]
          )
          ]
        ),
        Option(
          name: '--upn',
          description: 'Name of a user principal that will receive permissions',
          args: [
            Arg(
            name: 'up'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Show details of a Vault or HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'show-deleted',
      description: 'Show details of a deleted Vault or HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the deleted HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location of the deleted Vault or HSM',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'Name of the deleted Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update',
      description: 'Update the properties of a Vault',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--bypass',
          description: 'Bypass traffic for space-separated uses',
          args: [
            Arg(
            name: 'bypass',
            suggestions: [

              FigSuggestion(name: 'AzureServices'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches',
          args: [
            Arg(
            name: 'default-action',
            suggestions: [

              FigSuggestion(name: 'Allow'),
              FigSuggestion(name: 'Deny')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-purge-protection',
          description: 'Property specifying whether protection against purge is enabled for this vault/managed HSM pool. Setting this property to true activates protection against purge for this vault/managed HSM pool and its content - only the Key Vault/Managed HSM service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible',
          args: [
            Arg(
            name: 'enable-purge-protection',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-rbac-authorization',
          description: 'Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC',
          args: [
            Arg(
            name: 'enable-rbac-authorization',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-deployment',
          description: '[Vault Only] Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault',
          args: [
            Arg(
            name: 'enabled-for-deployment',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-disk-encryption',
          description: '[Vault Only] Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys',
          args: [
            Arg(
            name: 'enabled-for-disk-encryption',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enabled-for-template-deployment',
          description: '[Vault Only] Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault',
          args: [
            Arg(
            name: 'enabled-for-template-deployment',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--retention-days',
          description: 'Soft delete data retention days. It accepts >=7 and <=90',
          args: [
            Arg(
            name: 'retention-day'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'update-hsm',
      description: 'Update the properties of a HSM',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the HSM',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: '--add',
          description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
          args: [
            Arg(
            name: 'ad'
          )
          ]
        ),
        Option(
          name: '--bypass',
          description: 'Bypass traffic for space-separated uses',
          args: [
            Arg(
            name: 'bypass',
            suggestions: [

              FigSuggestion(name: 'AzureServices'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--default-action',
          description: 'Default action to apply when no rule matches',
          args: [
            Arg(
            name: 'default-action',
            suggestions: [

              FigSuggestion(name: 'Allow'),
              FigSuggestion(name: 'Deny')
            ]
          )
          ]
        ),
        Option(
          name: ['--enable-purge-protection', '-e'],
          description: 'Property specifying whether protection against purge is enabled for this vault/managed HSM pool. Setting this property to true activates protection against purge for this vault/managed HSM pool and its content - only the Key Vault/Managed HSM service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible',
          args: [
            Arg(
            name: 'enable-purge-protection',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Control permission for data plane traffic coming from public networks while private endpoint is enabled',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--remove',
          description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
          args: [
            Arg(
            name: 'remov'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--secondary-locations',
          description: '--secondary-locations extends/contracts an HSM pool to listed regions. The primary location where the resource was originally created CANNOT be removed',
          args: [
            Arg(
            name: 'secondary-location'
          )
          ]
        ),
        Option(
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of the Vault is met',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the Vault',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--created',
          description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
        ),
        Option(
          name: '--custom',
          description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
          args: [
            Arg(
            name: 'custo'
          )
          ]
        ),
        Option(
          name: '--deleted',
          description: 'Wait until deleted'
        ),
        Option(
          name: '--exists',
          description: 'Wait until the resource exists'
        ),
        Option(
          name: '--interval',
          description: 'Polling interval in seconds',
          args: [
            Arg(
            name: 'interva'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if Key Vault belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Maximum wait in seconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--updated',
          description: 'Wait until updated with provisioningState at \'Succeeded\''
        )
      ]
    ),
    Subcommand(
      name: 'wait-hsm',
      description: 'Place the CLI in a waiting state until a condition of the HSM is met',
      options: [

        Option(
          name: '--hsm-name',
          description: 'Name of the HSM',
          args: [
            Arg(
            name: 'hsm-nam'
          )
          ]
        ),
        Option(
          name: '--created',
          description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
        ),
        Option(
          name: '--custom',
          description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
          args: [
            Arg(
            name: 'custo'
          )
          ]
        ),
        Option(
          name: '--deleted',
          description: 'Wait until deleted'
        ),
        Option(
          name: '--exists',
          description: 'Wait until the resource exists'
        ),
        Option(
          name: '--interval',
          description: 'Polling interval in seconds',
          args: [
            Arg(
            name: 'interva'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Proceed only if HSM belongs to the specified resource group',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--timeout',
          description: 'Maximum wait in seconds',
          args: [
            Arg(
            name: 'timeou'
          )
          ]
        ),
        Option(
          name: '--updated',
          description: 'Wait until updated with provisioningState at \'Succeeded\''
        )
      ]
    ),
    Subcommand(
      name: 'key',
      description: 'Manage keys',
      subcommands: [

        Subcommand(
          name: 'backup',
          description: 'Request that a backup of the specified key be downloaded to the client',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Local file path in which to store key backup',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new key, stores it, then returns key parameters and attributes to the client',
          options: [

            Option(
              name: '--curve',
              description: 'Elliptic curve name. For valid values, see: https://docs.microsoft.com/rest/api/keyvault/keys/create-key/create-key#jsonwebkeycurvename',
              args: [
                Arg(
                name: 'curve',
                suggestions: [

                  FigSuggestion(name: 'Ed25519'),
                  FigSuggestion(name: 'P-256'),
                  FigSuggestion(name: 'P-256K'),
                  FigSuggestion(name: 'P-384'),
                  FigSuggestion(name: 'P-521')
                ]
              )
              ]
            ),
            Option(
              name: '--default-cvm-policy',
              description: 'Use default policy under which the key can be exported for CVM disk encryption'
            ),
            Option(
              name: '--disabled',
              description: 'Create key in disabled state'
            ),
            Option(
              name: '--expires',
              description: 'Expiration UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'expire'
              )
              ]
            ),
            Option(
              name: '--exportable',
              description: 'Whether the private key can be exported. To create key with release policy, "exportable" must be true and caller must have "export" permission',
              args: [
                Arg(
                name: 'exportable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--immutable',
              description: 'Mark a release policy as immutable. An immutable release policy cannot be changed or updated after being marked immutable. Release policies are mutable by default',
              args: [
                Arg(
                name: 'immutable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--kty',
              description: 'The type of key to create. For valid values, see: https://docs.microsoft.com/rest/api/keyvault/keys/create-key/create-key#jsonwebkeytype',
              args: [
                Arg(
                name: 'kty',
                suggestions: [

                  FigSuggestion(name: 'EC'),
                  FigSuggestion(name: 'EC-HSM'),
                  FigSuggestion(name: 'OKP'),
                  FigSuggestion(name: 'OKP-HSM'),
                  FigSuggestion(name: 'RSA'),
                  FigSuggestion(name: 'RSA-HSM'),
                  FigSuggestion(name: 'oct'),
                  FigSuggestion(name: 'oct-HSM')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-before',
              description: 'Key not usable before the provided UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'not-befor'
              )
              ]
            ),
            Option(
              name: '--ops',
              description: 'Space-separated list of permitted JSON web key operations',
              args: [
                Arg(
                name: 'ops',
                suggestions: [

                  FigSuggestion(name: 'decrypt'),
                  FigSuggestion(name: 'encrypt'),
                  FigSuggestion(name: 'export'),
                  FigSuggestion(name: 'import'),
                  FigSuggestion(name: 'sign'),
                  FigSuggestion(name: 'unwrapKey'),
                  FigSuggestion(name: 'verify'),
                  FigSuggestion(name: 'wrapKey')
                ]
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'The policy rules under which the key can be exported. Policy definition as JSON, or a path to a file containing JSON policy definition',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: ['--protection', '-p'],
              description: 'Specifies the type of key protection',
              args: [
                Arg(
                name: 'protection',
                suggestions: [

                  FigSuggestion(name: 'hsm'),
                  FigSuggestion(name: 'software')
                ]
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'The key size in bits. For example: 2048, 3072, or 4096 for RSA. 128, 192, or 256 for oct',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'decrypt',
          description: 'Decrypt a single block of encrypted data',
          options: [

            Option(
              name: ['--algorithm', '-a'],
              description: 'Algorithm identifier',
              args: [
                Arg(
                name: 'algorithm',
                suggestions: [

                  FigSuggestion(name: 'A128CBC'),
                  FigSuggestion(name: 'A128CBCPAD'),
                  FigSuggestion(name: 'A128GCM'),
                  FigSuggestion(name: 'A192CBC'),
                  FigSuggestion(name: 'A192CBCPAD'),
                  FigSuggestion(name: 'A192GCM'),
                  FigSuggestion(name: 'A256CBC'),
                  FigSuggestion(name: 'A256CBCPAD'),
                  FigSuggestion(name: 'A256GCM'),
                  FigSuggestion(name: 'RSA-OAEP'),
                  FigSuggestion(name: 'RSA-OAEP-256'),
                  FigSuggestion(name: 'RSA1_5')
                ]
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'The value to be decrypted, which should be the result of "az keyvault encrypt"',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--aad',
              description: 'Optional data that is authenticated but not encrypted. For use with AES-GCM decryption',
              args: [
                Arg(
                name: 'aa'
              )
              ]
            ),
            Option(
              name: '--data-type',
              description: 'The type of the original data',
              args: [
                Arg(
                name: 'data-type',
                suggestions: [

                  FigSuggestion(name: 'base64'),
                  FigSuggestion(name: 'plaintext')
                ]
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--iv',
              description: 'The initialization vector used during encryption. Required for AES decryption',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--tag',
              description: 'The authentication tag generated during encryption. Required for only AES-GCM decryption',
              args: [
                Arg(
                name: 'ta'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a key of any type from storage in Vault or HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download the public part of a stored key',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'File to receive the key contents',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--encoding', '-e'],
              description: 'Encoding of the key, default: PEM',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'DER'),
                  FigSuggestion(name: 'PEM')
                ]
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'encrypt',
          description: 'Encrypt an arbitrary sequence of bytes using an encryption key that is stored in a Vault or HSM',
          options: [

            Option(
              name: ['--algorithm', '-a'],
              description: 'Algorithm identifier',
              args: [
                Arg(
                name: 'algorithm',
                suggestions: [

                  FigSuggestion(name: 'A128CBC'),
                  FigSuggestion(name: 'A128CBCPAD'),
                  FigSuggestion(name: 'A128GCM'),
                  FigSuggestion(name: 'A192CBC'),
                  FigSuggestion(name: 'A192CBCPAD'),
                  FigSuggestion(name: 'A192GCM'),
                  FigSuggestion(name: 'A256CBC'),
                  FigSuggestion(name: 'A256CBCPAD'),
                  FigSuggestion(name: 'A256GCM'),
                  FigSuggestion(name: 'RSA-OAEP'),
                  FigSuggestion(name: 'RSA-OAEP-256'),
                  FigSuggestion(name: 'RSA1_5')
                ]
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'The value to be encrypted. Default data type is Base64 encoded string',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--aad',
              description: 'Optional data that is authenticated but not encrypted. For use with AES-GCM encryption',
              args: [
                Arg(
                name: 'aa'
              )
              ]
            ),
            Option(
              name: '--data-type',
              description: 'The type of the original data',
              args: [
                Arg(
                name: 'data-type',
                suggestions: [

                  FigSuggestion(name: 'base64'),
                  FigSuggestion(name: 'plaintext')
                ]
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--iv',
              description: 'Initialization vector. Required for only AES-CBC(PAD) encryption',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-policy-template',
          description: 'Return policy template as JSON encoded policy definition'
        ),
        Subcommand(
          name: 'import',
          description: 'Import a private key',
          options: [

            Option(
              name: '--byok-file',
              description: 'BYOK file containing the key to be imported. Must not be password protected',
              args: [
                Arg(
                name: 'byok-fil'
              )
              ]
            ),
            Option(
              name: '--byok-string',
              description: 'BYOK string containing the key to be imported. Must not be password protected',
              args: [
                Arg(
                name: 'byok-strin'
              )
              ]
            ),
            Option(
              name: '--curve',
              description: 'The curve name of the key to import (only for BYOK)',
              args: [
                Arg(
                name: 'curve',
                suggestions: [

                  FigSuggestion(name: 'Ed25519'),
                  FigSuggestion(name: 'P-256'),
                  FigSuggestion(name: 'P-256K'),
                  FigSuggestion(name: 'P-384'),
                  FigSuggestion(name: 'P-521')
                ]
              )
              ]
            ),
            Option(
              name: '--default-cvm-policy',
              description: 'Use default policy under which the key can be exported for CVM disk encryption'
            ),
            Option(
              name: '--disabled',
              description: 'Create key in disabled state'
            ),
            Option(
              name: '--expires',
              description: 'Expiration UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'expire'
              )
              ]
            ),
            Option(
              name: '--exportable',
              description: 'Whether the private key can be exported. To create key with release policy, "exportable" must be true and caller must have "export" permission',
              args: [
                Arg(
                name: 'exportable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--immutable',
              description: 'Mark a release policy as immutable. An immutable release policy cannot be changed or updated after being marked immutable. Release policies are mutable by default',
              args: [
                Arg(
                name: 'immutable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--kty',
              description: 'The type of key to import (only for BYOK)',
              args: [
                Arg(
                name: 'kty',
                suggestions: [

                  FigSuggestion(name: 'EC'),
                  FigSuggestion(name: 'RSA'),
                  FigSuggestion(name: 'oct')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-before',
              description: 'Key not usable before the provided UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'not-befor'
              )
              ]
            ),
            Option(
              name: '--ops',
              description: 'Space-separated list of permitted JSON web key operations',
              args: [
                Arg(
                name: 'ops',
                suggestions: [

                  FigSuggestion(name: 'decrypt'),
                  FigSuggestion(name: 'encrypt'),
                  FigSuggestion(name: 'export'),
                  FigSuggestion(name: 'import'),
                  FigSuggestion(name: 'sign'),
                  FigSuggestion(name: 'unwrapKey'),
                  FigSuggestion(name: 'verify'),
                  FigSuggestion(name: 'wrapKey')
                ]
              )
              ]
            ),
            Option(
              name: '--pem-file',
              description: 'PEM file containing the key to be imported',
              args: [
                Arg(
                name: 'pem-fil'
              )
              ]
            ),
            Option(
              name: '--pem-password',
              description: 'Password of PEM file',
              args: [
                Arg(
                name: 'pem-passwor'
              )
              ]
            ),
            Option(
              name: '--pem-string',
              description: 'PEM string containing the key to be imported',
              args: [
                Arg(
                name: 'pem-strin'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'The policy rules under which the key can be exported. Policy definition as JSON, or a path to a file containing JSON policy definition',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: ['--protection', '-p'],
              description: 'Specifies the type of key protection',
              args: [
                Arg(
                name: 'protection',
                suggestions: [

                  FigSuggestion(name: 'hsm'),
                  FigSuggestion(name: 'software')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List keys in the specified Vault or HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the Vault or HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--include-managed',
              description: 'Include managed keys. Default: false'
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'List the deleted keys in the specified Vault or HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the Vault or HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-versions',
          description: 'Retrieves a list of individual key versions with the same key name',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'purge',
          description: 'Permanently delete the specified key',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The recovery id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'random',
          description: 'Get the requested number of random bytes from a managed HSM',
          options: [

            Option(
              name: '--count',
              description: 'The requested number of random bytes',
              args: [
                Arg(
                name: 'coun'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recover',
          description: 'Recover the deleted key to its latest version',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The recovery id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restore a backed up key to a Vault or HSM',
          options: [

            Option(
              name: '--backup-folder',
              description: 'Name of the blob container which contains the backup',
              args: [
                Arg(
                name: 'backup-folde'
              )
              ]
            ),
            Option(
              name: '--blob-container-name',
              description: 'Name of Blob Container',
              args: [
                Arg(
                name: 'blob-container-nam'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Local key backup from which to restore key',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the Vault or HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. (Only for restoring from storage account)',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--storage-account-name',
              description: 'Name of Azure Storage Account',
              args: [
                Arg(
                name: 'storage-account-nam'
              )
              ]
            ),
            Option(
              name: ['--storage-container-SAS-token', '-t'],
              description: 'The SAS token pointing to an Azure Blob storage container',
              args: [
                Arg(
                name: 'storage-container-SAS-toke'
              )
              ]
            ),
            Option(
              name: ['--storage-resource-uri', '-u'],
              description: 'Azure Blob storage container Uri. If specified, all other \'Storage Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'storage-resource-ur'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rotate',
          description: 'Rotate the key based on the key policy by generating a new version of the key',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-attributes',
          description: 'The update key operation changes specified attributes of a stored key and can be applied to any key type and key version stored in Vault or HSM',
          options: [

            Option(
              name: '--enabled',
              description: 'Enable the key',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--expires',
              description: 'Expiration UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'expire'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--immutable',
              description: 'Mark a release policy as immutable. An immutable release policy cannot be changed or updated after being marked immutable. Release policies are mutable by default',
              args: [
                Arg(
                name: 'immutable',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-before',
              description: 'Key not usable before the provided UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'not-befor'
              )
              ]
            ),
            Option(
              name: '--ops',
              description: 'Space-separated list of permitted JSON web key operations',
              args: [
                Arg(
                name: 'ops',
                suggestions: [

                  FigSuggestion(name: 'decrypt'),
                  FigSuggestion(name: 'encrypt'),
                  FigSuggestion(name: 'export'),
                  FigSuggestion(name: 'import'),
                  FigSuggestion(name: 'sign'),
                  FigSuggestion(name: 'unwrapKey'),
                  FigSuggestion(name: 'verify'),
                  FigSuggestion(name: 'wrapKey')
                ]
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'The policy rules under which the key can be exported. Policy definition as JSON, or a path to a file containing JSON policy definition',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a key\'s attributes and, if it\'s an asymmetric key, its public material',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deleted',
          description: 'Get the public part of a deleted key',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The recovery id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sign',
          description: 'Create a signature from a digest using a key that is stored in a Vault or HSM',
          options: [

            Option(
              name: ['--algorithm', '-a'],
              description: 'Algorithm identifier',
              args: [
                Arg(
                name: 'algorithm',
                suggestions: [

                  FigSuggestion(name: 'ES256'),
                  FigSuggestion(name: 'ES256K'),
                  FigSuggestion(name: 'ES384'),
                  FigSuggestion(name: 'ES512'),
                  FigSuggestion(name: 'EdDSA'),
                  FigSuggestion(name: 'PS256'),
                  FigSuggestion(name: 'PS384'),
                  FigSuggestion(name: 'PS512'),
                  FigSuggestion(name: 'RS256'),
                  FigSuggestion(name: 'RS384'),
                  FigSuggestion(name: 'RS512')
                ]
              )
              ]
            ),
            Option(
              name: '--digest',
              description: 'The value to sign',
              args: [
                Arg(
                name: 'diges'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'verify',
          description: 'Verify a signature using the key that is stored in a Vault or HSM',
          options: [

            Option(
              name: ['--algorithm', '-a'],
              description: 'Algorithm identifier',
              args: [
                Arg(
                name: 'algorithm',
                suggestions: [

                  FigSuggestion(name: 'ES256'),
                  FigSuggestion(name: 'ES256K'),
                  FigSuggestion(name: 'ES384'),
                  FigSuggestion(name: 'ES512'),
                  FigSuggestion(name: 'EdDSA'),
                  FigSuggestion(name: 'PS256'),
                  FigSuggestion(name: 'PS384'),
                  FigSuggestion(name: 'PS512'),
                  FigSuggestion(name: 'RS256'),
                  FigSuggestion(name: 'RS384'),
                  FigSuggestion(name: 'RS512')
                ]
              )
              ]
            ),
            Option(
              name: '--digest',
              description: 'The value to sign',
              args: [
                Arg(
                name: 'diges'
              )
              ]
            ),
            Option(
              name: '--signature',
              description: 'Signature to verify',
              args: [
                Arg(
                name: 'signatur'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the key. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The key version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'rotation-policy',
          description: 'Manage key\'s rotation policy',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get the rotation policy of a Key Vault key',
              options: [

                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the key. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the rotation policy of a Key Vault key',
              options: [

                Option(
                  name: '--value',
                  description: 'The rotation policy file definition as JSON, or a path to a file containing JSON policy definition',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                ),
                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM. (--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Id of the key. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the key. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
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
      name: 'network-rule',
      description: 'Manage vault network ACLs',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a network rule to the network ACLs for a Key Vault',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ip-address',
              description: 'IPv4 address or CIDR range. Can supply a list: --ip-address ip1 [ip2]',
              args: [
                Arg(
                name: 'ip-addres'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or ID of subnet. If name is supplied, --vnet-name must be supplied',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of a virtual network',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the network rules from the network ACLs for a Key Vault',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a network rule from the network ACLs for a Key Vault',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ip-address',
              description: 'IPv4 address or CIDR range. Can supply a list: --ip-address ip1 [ip2]',
              args: [
                Arg(
                name: 'ip-addres'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or ID of subnet. If name is supplied, --vnet-name must be supplied',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--vnet-name',
              description: 'Name of a virtual network',
              args: [
                Arg(
                name: 'vnet-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the vault is met',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'private-endpoint-connection',
      description: 'Manage vault/HSM private endpoint connections',
      subcommands: [

        Subcommand(
          name: 'approve',
          description: 'Approve a private endpoint connection request for a Key Vault/HSM',
          options: [

            Option(
              name: '--description',
              description: 'Comments for the approve operation',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Required if --id is not specified.(--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with the Key Vault/HSM. If specified --vault-name/--hsm-name and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Key Vault/HSM. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified private endpoint connection associated with a Key Vault/HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Required if --id is not specified.(--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with the Key Vault/HSM. If specified --vault-name/--hsm-name and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Key Vault/HSM. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all private endpoint connections associated with a HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reject',
          description: 'Reject a private endpoint connection request for a Key Vault/HSM',
          options: [

            Option(
              name: '--description',
              description: 'Comments for the reject operation',
              args: [
                Arg(
                name: 'descriptio'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Required if --id is not specified.(--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with the Key Vault/HSM. If specified --vault-name/--hsm-name and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Key Vault/HSM. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a private endpoint connection associated with a Key Vault/HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Required if --id is not specified.(--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with the Key Vault/HSM. If specified --vault-name/--hsm-name and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Key Vault/HSM. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the private endpoint connection is met',
          options: [

            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Required if --id is not specified.(--hsm-name and --vault-name are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'The ID of the private endpoint connection associated with the Key Vault/HSM. If specified --vault-name/--hsm-name and --name/-n, this should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the private endpoint connection associated with the Key Vault/HSM. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'private-link-resource',
      description: 'Manage vault/HSM private link resources',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List the private link resources supported for a Key Vault/HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. (--hsm-name and --name/-n are mutually exclusive, please specify just one of them)',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'region',
      description: 'Manage MHSM multi-regions',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add regions for the managed HSM Pool',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: ['--region-name', '--region', '-r'],
              description: 'The region name',
              args: [
                Arg(
                name: 'region-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get regions information associated with the managed HSM Pool',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove regions for the managed HSM Pool',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: ['--region-name', '--region', '-r'],
              description: 'The region name',
              args: [
                Arg(
                name: 'region-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the HSM is met',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--created',
              description: 'Wait until created with \'provisioningState\' at \'Succeeded\''
            ),
            Option(
              name: '--custom',
              description: 'Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!=\'InProgress\', instanceView.statuses[?code==\'PowerState/running\']',
              args: [
                Arg(
                name: 'custo'
              )
              ]
            ),
            Option(
              name: '--deleted',
              description: 'Wait until deleted'
            ),
            Option(
              name: '--exists',
              description: 'Wait until the resource exists'
            ),
            Option(
              name: '--interval',
              description: 'Polling interval in seconds',
              args: [
                Arg(
                name: 'interva'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Proceed only if Key Vault belongs to the specified resource group',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--timeout',
              description: 'Maximum wait in seconds',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--updated',
              description: 'Wait until updated with provisioningState at \'Succeeded\''
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Manage full HSM restore',
      subcommands: [

        Subcommand(
          name: 'start',
          description: 'Restore a full backup of a HSM',
          options: [

            Option(
              name: '--backup-folder',
              description: 'Name of the blob container which contains the backup',
              args: [
                Arg(
                name: 'backup-folde'
              )
              ]
            ),
            Option(
              name: ['--storage-container-SAS-token', '-t'],
              description: 'The SAS token pointing to an Azure Blob storage container',
              args: [
                Arg(
                name: 'storage-container-SAS-toke'
              )
              ]
            ),
            Option(
              name: '--blob-container-name',
              description: 'Name of Blob Container',
              args: [
                Arg(
                name: 'blob-container-nam'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--key-name', '--key'],
              description: 'Name of a single key in the backup. When set, only this key will be restored',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--storage-account-name',
              description: 'Name of Azure Storage Account',
              args: [
                Arg(
                name: 'storage-account-nam'
              )
              ]
            ),
            Option(
              name: '--storage-resource-uri',
              description: 'Azure Blob storage container Uri. If specified all other \'Storage Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'storage-resource-ur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'role',
      description: 'Manage user roles for access control',
      subcommands: [

        Subcommand(
          name: 'assignment',
          description: 'Manage role assignments',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new role assignment for a user, group, or service principal',
              options: [

                Option(
                  name: '--role',
                  description: 'Role name or id',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which the role assignment or definition applies to, e.g., "/" or "/keys" or "/keys/{keyname}"',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                ),
                Option(
                  name: '--assignee',
                  description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass graph permission issues. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: ['--assignee-principal-type', '-t'],
                  description: 'The principal type of assignee',
                  args: [
                    Arg(
                    name: 'assignee-principal-type',
                    suggestions: [

                      FigSuggestion(name: 'Application'),
                      FigSuggestion(name: 'DirectoryObjectOrGroup'),
                      FigSuggestion(name: 'DirectoryRoleTemplate'),
                      FigSuggestion(name: 'Everyone'),
                      FigSuggestion(name: 'ForeignGroup'),
                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'MSI'),
                      FigSuggestion(name: 'ServicePrincipal'),
                      FigSuggestion(name: 'Unknown'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the role assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a role assignment',
              options: [

                Option(
                  name: '--assignee',
                  description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass graph permission issues. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'Space-separated role assignment ids',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the role assignment',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Role name or id',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which the role assignment or definition applies to, e.g., "/" or "/keys" or "/keys/{keyname}"',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List role assignments',
              options: [

                Option(
                  name: '--assignee',
                  description: 'Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name',
                  args: [
                    Arg(
                    name: 'assigne'
                  )
                  ]
                ),
                Option(
                  name: '--assignee-object-id',
                  description: 'Use this parameter instead of \'--assignee\' to bypass graph permission issues. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id',
                  args: [
                    Arg(
                    name: 'assignee-object-i'
                  )
                  ]
                ),
                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: '--role',
                  description: 'Role name or id',
                  args: [
                    Arg(
                    name: 'rol'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which the role assignment or definition applies to, e.g., "/" or "/keys" or "/keys/{keyname}"',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'definition',
          description: 'Manage role definitions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a custom role definition',
              options: [

                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--role-definition',
                  description: 'Description of a role as JSON, or a path to a file containing a JSON description',
                  args: [
                    Arg(
                    name: 'role-definitio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a role definition',
              options: [

                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The role definition name. This is a GUID in the "name" property of a role definition',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--role-id',
                  description: 'The role definition ID',
                  args: [
                    Arg(
                    name: 'role-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List role definitions',
              options: [

                Option(
                  name: '--custom-role-only',
                  description: 'Only show custom role definitions'
                ),
                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--scope',
                  description: 'Scope at which the role assignment or definition applies to, e.g., "/" or "/keys" or "/keys/{keyname}"',
                  args: [
                    Arg(
                    name: 'scop'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a role definition',
              options: [

                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The role definition name. This is a GUID in the "name" property of a role definition',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--role-id',
                  description: 'The role definition ID',
                  args: [
                    Arg(
                    name: 'role-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a role definition',
              options: [

                Option(
                  name: '--hsm-name',
                  description: 'Name of the HSM',
                  args: [
                    Arg(
                    name: 'hsm-nam'
                  )
                  ]
                ),
                Option(
                  name: '--role-definition',
                  description: 'Description of a role as JSON, or a path to a file containing a JSON description',
                  args: [
                    Arg(
                    name: 'role-definitio'
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
      name: 'secret',
      description: 'Manage secrets',
      subcommands: [

        Subcommand(
          name: 'backup',
          description: 'Backs up the specified secret',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'File to receive the secret contents',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete all versions of a secret',
          options: [

            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'download',
          description: 'Download a secret from a KeyVault',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'File to receive the secret contents',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: ['--encoding', '-e'],
              description: 'Encoding of the secret. By default, will look for the \'file-encoding\' tag on the secret. Otherwise will assume \'utf-8\'',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'ascii'),
                  FigSuggestion(name: 'base64'),
                  FigSuggestion(name: 'hex'),
                  FigSuggestion(name: 'utf-16be'),
                  FigSuggestion(name: 'utf-16le'),
                  FigSuggestion(name: 'utf-8')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The secret version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List secrets in a specified key vault',
          options: [

            Option(
              name: '--id',
              description: 'Full URI of the Vault. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--include-managed',
              description: 'Include managed secrets. Default: false'
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'Lists deleted secrets for the specified vault',
          options: [

            Option(
              name: '--id',
              description: 'Full URI of the Vault. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-versions',
          description: 'List all versions of the specified secret',
          options: [

            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified, the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'purge',
          description: 'Permanently deletes the specified secret',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recover',
          description: 'Recovers the deleted secret to the latest version',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restores a backed up secret to a vault',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'File to receive the secret contents',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Create a secret (if one doesn\'t exist) or update a secret in a KeyVault',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--content-type', '--description'],
              description: 'Description of the secret contents (e.g. password, connection string, etc)',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Create secret in disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--encoding', '-e'],
              description: 'Source file encoding. The value is saved as a tag (file-encoding=<val>) and used during download to automatically encode the resulting file',
              args: [
                Arg(
                name: 'encoding',
                suggestions: [

                  FigSuggestion(name: 'ascii'),
                  FigSuggestion(name: 'base64'),
                  FigSuggestion(name: 'hex'),
                  FigSuggestion(name: 'utf-16be'),
                  FigSuggestion(name: 'utf-16le'),
                  FigSuggestion(name: 'utf-8')
                ]
              )
              ]
            ),
            Option(
              name: '--expires',
              description: 'Expiration UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'expire'
              )
              ]
            ),
            Option(
              name: ['--file', '-f'],
              description: 'Source file for secret. Use in conjunction with \'--encoding\'',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--not-before',
              description: 'Secret not usable before the provided UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'not-befor'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Plain text secret value. Cannot be used with \'--file\' or \'--encoding\'',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-attributes',
          description: 'Updates the attributes associated with a specified secret in a given key vault',
          options: [

            Option(
              name: '--content-type',
              description: 'Type of the secret value such as a password',
              args: [
                Arg(
                name: 'content-typ'
              )
              ]
            ),
            Option(
              name: '--enabled',
              description: 'Enable the secret',
              args: [
                Arg(
                name: 'enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--expires',
              description: 'Expiration UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'expire'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--not-before',
              description: 'Secret not usable before the provided UTC datetime (Y-m-d\'T\'H:M:S\'Z\')',
              args: [
                Arg(
                name: 'not-befor'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The secret version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a specified secret from a given key vault',
          options: [

            Option(
              name: '--id',
              description: 'Id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: ['--version', '-v'],
              description: 'The secret version. If omitted, uses the latest version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deleted',
          description: 'Gets the specified deleted secret',
          options: [

            Option(
              name: '--id',
              description: 'The recovery id of the secret. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the secret. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'security-domain',
      description: 'Manage security domain operations',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download the security domain file from the HSM',
          options: [

            Option(
              name: '--sd-quorum',
              description: 'The minimum number of shares required to decrypt the security domain for recovery',
              args: [
                Arg(
                name: 'sd-quoru'
              )
              ]
            ),
            Option(
              name: '--sd-wrapping-keys',
              description: 'Space-separated file paths to PEM files containing public keys',
              args: [
                Arg(
                name: 'sd-wrapping-key'
              )
              ]
            ),
            Option(
              name: '--security-domain-file',
              description: 'Path to a file where the JSON blob returned by this command is stored',
              args: [
                Arg(
                name: 'security-domain-fil'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'init-recovery',
          description: 'Retrieve the exchange key of the HSM',
          options: [

            Option(
              name: '--sd-exchange-key',
              description: 'Local file path to store the exported key',
              args: [
                Arg(
                name: 'sd-exchange-ke'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore-blob',
          description: 'Enable to decrypt and encrypt security domain file as blob. Can be run in offline environment, before file is uploaded to HSM using security-domain upload',
          options: [

            Option(
              name: '--sd-exchange-key',
              description: 'The exchange key for security domain',
              args: [
                Arg(
                name: 'sd-exchange-ke'
              )
              ]
            ),
            Option(
              name: '--sd-file',
              description: 'This file contains security domain encrypted using SD Exchange file downloaded in security-domain init-recovery command',
              args: [
                Arg(
                name: 'sd-fil'
              )
              ]
            ),
            Option(
              name: '--sd-file-restore-blob',
              description: 'Local file path to store the security domain encrypted with the exchange key',
              args: [
                Arg(
                name: 'sd-file-restore-blo'
              )
              ]
            ),
            Option(
              name: '--sd-wrapping-keys',
              description: 'Space-separated file paths to PEM files containing private keys',
              args: [
                Arg(
                name: 'sd-wrapping-key'
              )
              ]
            ),
            Option(
              name: '--passwords',
              description: 'Space-separated password list for --sd-wrapping-keys. CLI will match them in order. Can be omitted if your keys are without password protection',
              args: [
                Arg(
                name: 'password'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'upload',
          description: 'Start to restore the HSM',
          options: [

            Option(
              name: '--sd-file',
              description: 'This file contains security domain encrypted using SD Exchange file downloaded in security-domain init-recovery command',
              args: [
                Arg(
                name: 'sd-fil'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--passwords',
              description: 'Space-separated password list for --sd-wrapping-keys. CLI will match them in order. Can be omitted if your keys are without password protection',
              args: [
                Arg(
                name: 'password'
              )
              ]
            ),
            Option(
              name: '--restore-blob',
              description: 'Indicator if blob is already restored'
            ),
            Option(
              name: '--sd-exchange-key',
              description: 'The exchange key for security domain',
              args: [
                Arg(
                name: 'sd-exchange-ke'
              )
              ]
            ),
            Option(
              name: '--sd-wrapping-keys',
              description: 'Space-separated file paths to PEM files containing private keys',
              args: [
                Arg(
                name: 'sd-wrapping-key'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until HSM security domain operation is finished',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM. Can be omitted if --id is specified',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: '--target-operation',
              description: 'Target operation that needs waiting',
              args: [
                Arg(
                name: 'target-operation',
                suggestions: [

                  FigSuggestion(name: 'download'),
                  FigSuggestion(name: 'restore_blob'),
                  FigSuggestion(name: 'upload')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'setting',
      description: 'Manage MHSM settings',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get all settings associated with the managed HSM',
          options: [

            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get specific setting associated with the managed HSM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the setting',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update specific setting associated with the managed HSM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the setting',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--value',
              description: 'Value of the setting',
              args: [
                Arg(
                name: 'valu'
              )
              ]
            ),
            Option(
              name: '--hsm-name',
              description: 'Name of the HSM',
              args: [
                Arg(
                name: 'hsm-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Full URI of the HSM. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--setting-type', '--type'],
              description: 'Type of the setting value',
              args: [
                Arg(
                name: 'setting-type',
                suggestions: [

                  FigSuggestion(name: 'boolean'),
                  FigSuggestion(name: 'string')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'storage',
      description: 'Manage storage accounts',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Creates or updates a new storage account',
          options: [

            Option(
              name: '--active-key-name',
              description: 'Current active storage account key name',
              args: [
                Arg(
                name: 'active-key-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--resource-id',
              description: 'Storage account resource id',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--auto-regenerate-key',
              description: 'Whether keyvault should manage the storage account for the user',
              args: [
                Arg(
                name: 'auto-regenerate-key',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Add the storage account in a disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--regeneration-period',
              description: 'The key regeneration time duration specified in ISO-8601 format, such as "P30D" for rotation every 30 days',
              args: [
                Arg(
                name: 'regeneration-perio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'backup',
          description: 'Backs up the specified storage account',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Local file path in which to store storage account backup',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the storage account. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List storage accounts managed by the specified key vault',
          options: [

            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-deleted',
          description: 'Lists deleted storage accounts for the specified vault',
          options: [

            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--maxresults',
              description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
              args: [
                Arg(
                name: 'maxresult'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'purge',
          description: 'Permanently deletes the specified storage account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'recover',
          description: 'Recovers the deleted storage account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'regenerate-key',
          description: 'Regenerates the specified key value for the given storage account',
          options: [

            Option(
              name: '--key-name',
              description: 'The storage account key name',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the storage account. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove a Key Vault managed Azure Storage Account and all associated SAS definitions. This operation requires the storage/delete permission',
          options: [

            Option(
              name: '--id',
              description: 'Id of the storage account. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restores a backed up storage account to a vault',
          options: [

            Option(
              name: ['--file', '-f'],
              description: 'Local key backup from which to restore storage account',
              args: [
                Arg(
                name: 'fil'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets information about a specified storage account',
          options: [

            Option(
              name: '--id',
              description: 'Id of the storage account. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-deleted',
          description: 'Gets the specified deleted storage account',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Updates the specified attributes associated with the given storage account',
          options: [

            Option(
              name: '--active-key-name',
              description: 'The current active storage account key name',
              args: [
                Arg(
                name: 'active-key-nam'
              )
              ]
            ),
            Option(
              name: '--auto-regenerate-key',
              description: 'Whether keyvault should manage the storage account for the user',
              args: [
                Arg(
                name: 'auto-regenerate-key',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--disabled',
              description: 'Add the storage account in a disabled state',
              args: [
                Arg(
                name: 'disabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--id',
              description: 'Id of the storage account. If specified all other \'Id\' arguments should be omitted',
              args: [
                Arg(
                name: 'i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name to identify the storage account in the vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--regeneration-period',
              description: 'The key regeneration time duration specified in ISO-8601 format, such as "P30D" for rotation every 30 days',
              args: [
                Arg(
                name: 'regeneration-perio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the Key Vault. Required if --id is not specified',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'sas-definition',
          description: 'Manage storage account SAS definitions',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates or updates a new SAS definition for the specified storage account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--sas-type',
                  description: 'The type of SAS token the SAS definition will create. Possible values include: \'account\', \'service\'',
                  args: [
                    Arg(
                    name: 'sas-type',
                    suggestions: [

                      FigSuggestion(name: 'account'),
                      FigSuggestion(name: 'service')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--template-uri',
                  description: 'The SAS definition token template signed with the key 00000000. In the case of an account token this is only the sas token itself, for service tokens, the full service endpoint url along with the sas token. Tokens created according to the SAS definition will have the same properties as the template',
                  args: [
                    Arg(
                    name: 'template-ur'
                  )
                  ]
                ),
                Option(
                  name: '--validity-period',
                  description: 'The validity period of SAS tokens created according to the SAS definition in ISO-8601, such as "PT12H" for 12 hour tokens',
                  args: [
                    Arg(
                    name: 'validity-perio'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Add the storage account in a disabled state',
                  args: [
                    Arg(
                    name: 'disabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a SAS definition from a specified storage account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Id of the SAS definition. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Key Vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List storage SAS definitions for the given storage account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--maxresults',
                  description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
                  args: [
                    Arg(
                    name: 'maxresult'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-deleted',
              description: 'Lists deleted SAS definitions for the specified vault and storage account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--maxresults',
                  description: 'Maximum number of results to return in a page. If not specified the service will return up to 25 results',
                  args: [
                    Arg(
                    name: 'maxresult'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'recover',
              description: 'Recovers the deleted SAS definition',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets information about a SAS definition for the specified storage account',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Id of the SAS definition. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Key Vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show-deleted',
              description: 'Gets the specified deleted sas definition',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates the specified attributes associated with the given SAS definition',
              options: [

                Option(
                  name: '--account-name',
                  description: 'Name to identify the storage account in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--disabled',
                  description: 'Add the storage account in a disabled state',
                  args: [
                    Arg(
                    name: 'disabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'Id of the SAS definition. If specified all other \'Id\' arguments should be omitted',
                  args: [
                    Arg(
                    name: 'i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name to identify the SAS definition in the vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--sas-type',
                  description: 'The type of SAS token the SAS definition will create. Possible values include: \'account\', \'service\'',
                  args: [
                    Arg(
                    name: 'sas-type',
                    suggestions: [

                      FigSuggestion(name: 'account'),
                      FigSuggestion(name: 'service')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--template-uri',
                  description: 'The SAS definition token template signed with the key 00000000. In the case of an account token this is only the sas token itself, for service tokens, the full service endpoint url along with the sas token. Tokens created according to the SAS definition will have the same properties as the template',
                  args: [
                    Arg(
                    name: 'template-ur'
                  )
                  ]
                ),
                Option(
                  name: '--validity-period',
                  description: 'The validity period of SAS tokens created according to the SAS definition in ISO-8601, such as "PT12H" for 12 hour tokens',
                  args: [
                    Arg(
                    name: 'validity-perio'
                  )
                  ]
                ),
                Option(
                  name: '--vault-name',
                  description: 'Name of the Key Vault. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            )
          ]
        )
      ]
    )
  ]
);
