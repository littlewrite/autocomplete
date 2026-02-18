// Auto-generated from TypeScript source: netappfiles.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `netappfiles` CLI
final FigSpec netappfilesSpec = FigSpec(
  name: 'netappfiles',
  description: 'Manage Azure NetApp Files (ANF) Resources',
  subcommands: [

    Subcommand(
      name: 'account',
      description: 'Manage Azure NetApp Files (ANF) Account Resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Azure NetApp Files (ANF) account. Note that active directories are added using the subgroup commands',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
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
              name: '--encryption',
              description: 'Argument \'encryption\' has been deprecated and will be removed in a future release. Use \'--key-source\' instead. This argument will be deprecated, please use --key-source instead',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'The identity type',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The name of KeyVault key',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-source',
              description: 'The encryption keySource (provider)',
              args: [
                Arg(
                name: 'key-source',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.KeyVault'),
                  FigSuggestion(name: 'Microsoft.NetApp')
                ]
              )
              ]
            ),
            Option(
              name: ['--key-vault-uri', '-v'],
              description: 'The Uri of KeyVault',
              args: [
                Arg(
                name: 'key-vault-ur'
              )
              ]
            ),
            Option(
              name: '--keyvault-resource-id',
              description: 'The resource ID of KeyVault',
              args: [
                Arg(
                name: 'keyvault-resource-i'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--user-assigned-identity', '-u'],
              description: 'The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has UserAssigned. It should match key of identity.userAssignedIdentities',
              args: [
                Arg(
                name: 'user-assigned-identit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified ANF account',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List ANF accounts by subscription or by resource group name',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'renew-credentials',
          description: 'Renew identity credentials that are used to authenticate to key vault, for customer-managed key encryption. If encryption.identity.principalId does not match identity.principalId, running this operation will fix it',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified ANF account',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Set/modify the tags for a specified ANF account',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--encryption',
              description: 'Argument \'encryption\' has been deprecated and will be removed in a future release. Use \'--key-source\' instead. Encryption settings',
              args: [
                Arg(
                name: 'encryptio'
              )
              ]
            ),
            Option(
              name: '--identity-type',
              description: 'The identity type',
              args: [
                Arg(
                name: 'identity-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'SystemAssigned'),
                  FigSuggestion(name: 'UserAssigned'),
                  FigSuggestion(name: 'UserAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--key-name',
              description: 'The name of KeyVault key',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: '--key-source',
              description: 'The encryption keySource (provider)',
              args: [
                Arg(
                name: 'key-source',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.KeyVault'),
                  FigSuggestion(name: 'Microsoft.NetApp')
                ]
              )
              ]
            ),
            Option(
              name: ['--key-vault-uri', '-v'],
              description: 'The Uri of KeyVault',
              args: [
                Arg(
                name: 'key-vault-ur'
              )
              ]
            ),
            Option(
              name: '--keyvault-resource-id',
              description: 'The resource ID of KeyVault',
              args: [
                Arg(
                name: 'keyvault-resource-i'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: ['--user-assigned-identity', '-u'],
              description: 'The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has UserAssigned. It should match key of identity.userAssignedIdentities',
              args: [
                Arg(
                name: 'user-assigned-identit'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a account operation',
          options: [

            Option(
              name: ['--account-name', '--name', '-a', '-n'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          name: 'ad',
          description: 'Manage Azure NetApp Files (ANF) Account active directories',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add an active directory to the account',
              options: [

                Option(
                  name: '--dns',
                  description: 'Comma separated list of DNS server IP addresses for the Active Directory domain',
                  args: [
                    Arg(
                    name: 'dn'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Name of the Active Directory domain',
                  args: [
                    Arg(
                    name: 'domai'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Plain text password of Active Directory domain administrator',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--smb-server-name',
                  description: 'NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes. Must be 10 characters or less',
                  args: [
                    Arg(
                    name: 'smb-server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'Username of Active Directory domain administrator',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '--name', '-a', '-n'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ad-name',
                  description: 'Name of the active directory machine. This optional parameter is used only while creating kerberos volume',
                  args: [
                    Arg(
                    name: 'ad-nam'
                  )
                  ]
                ),
                Option(
                  name: '--administrators',
                  description: 'Users to be added to the Built-in Administrators active directory group. A space separated string of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'administrator'
                  )
                  ]
                ),
                Option(
                  name: '--aes-encryption',
                  description: 'If enabled, AES encryption will be enabled for SMB communication',
                  args: [
                    Arg(
                    name: 'aes-encryption',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-local-ldap-users',
                  description: 'If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes',
                  args: [
                    Arg(
                    name: 'allow-local-ldap-users',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--backup-operators',
                  description: 'Users to be added to the Built-in Backup Operator active directory group. A space separated string of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'backup-operator'
                  )
                  ]
                ),
                Option(
                  name: '--encrypt-dc-conn',
                  description: 'If enabled, Traffic between the SMB server to Domain Controller (DC) will be encrypted',
                  args: [
                    Arg(
                    name: 'encrypt-dc-conn',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--group-dn',
                  description: 'This specifies the group DN, which overrides the base DN for group lookups',
                  args: [
                    Arg(
                    name: 'group-d'
                  )
                  ]
                ),
                Option(
                  name: '--group-filter',
                  description: 'This specifies the custom LDAP search filter to be used when looking up group membership from LDAP server',
                  args: [
                    Arg(
                    name: 'group-filte'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kdc-ip',
                  description: 'Kdc server IP addresses for the active directory machine. This optional parameter is used only while creating kerberos volume',
                  args: [
                    Arg(
                    name: 'kdc-i'
                  )
                  ]
                ),
                Option(
                  name: '--ldap-over-tls',
                  description: 'Specifies whether or not the LDAP traffic needs to be secured via TLS',
                  args: [
                    Arg(
                    name: 'ldap-over-tl'
                  )
                  ]
                ),
                Option(
                  name: '--ldap-signing',
                  description: 'Specifies whether or not the LDAP traffic needs to be signed',
                  args: [
                    Arg(
                    name: 'ldap-signing',
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
                  name: '--organizational-unit',
                  description: 'The Organizational Unit (OU) within the Windows Active Directory',
                  args: [
                    Arg(
                    name: 'organizational-uni'
                  )
                  ]
                ),
                Option(
                  name: ['--preferred-servers-for-ldap-client', '-p'],
                  description: 'Comma separated list of IPv4 addresses of preferred servers for LDAP client. At most two comma separated IPv4 addresses can be passed',
                  args: [
                    Arg(
                    name: 'preferred-servers-for-ldap-clien'
                  )
                  ]
                ),
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
                  name: '--security-operators',
                  description: 'Domain Users in the Active directory to be given SeSecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A space separated list of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'security-operator'
                  )
                  ]
                ),
                Option(
                  name: '--server-root-ca-cert',
                  description: 'When LDAP over SSL/TLS is enabled, the LDAP client is required to have base64 encoded Active Directory Certificate Service\'s self-signed root CA certificate, this optional parameter is used only for dual protocol with LDAP user-mapping volumes',
                  args: [
                    Arg(
                    name: 'server-root-ca-cer'
                  )
                  ]
                ),
                Option(
                  name: '--site',
                  description: 'The Active Directory site the service will limit Domain Controller discovery to',
                  args: [
                    Arg(
                    name: 'sit'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--user-dn',
                  description: 'This specifies the user DN, which overrides the base DN for user lookups',
                  args: [
                    Arg(
                    name: 'user-d'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the active directories of an account',
              options: [

                Option(
                  name: ['--account-name', '--name', '-a', '-n'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Remove an active directory from the account',
              options: [

                Option(
                  name: '--active-directory',
                  description: 'The id of the active directory',
                  args: [
                    Arg(
                    name: 'active-director'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '--name', '-a', '-n'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Updates an active directory to the account',
              options: [

                Option(
                  name: '--active-directory-id',
                  description: 'The id of the Active Directory',
                  args: [
                    Arg(
                    name: 'active-directory-i'
                  )
                  ]
                ),
                Option(
                  name: '--dns',
                  description: 'Comma separated list of DNS server IP addresses for the Active Directory domain',
                  args: [
                    Arg(
                    name: 'dn'
                  )
                  ]
                ),
                Option(
                  name: '--domain',
                  description: 'Name of the Active Directory domain',
                  args: [
                    Arg(
                    name: 'domai'
                  )
                  ]
                ),
                Option(
                  name: '--password',
                  description: 'Plain text password of Active Directory domain administrator',
                  args: [
                    Arg(
                    name: 'passwor'
                  )
                  ]
                ),
                Option(
                  name: '--smb-server-name',
                  description: 'NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes. Must be 10 characters or less',
                  args: [
                    Arg(
                    name: 'smb-server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--username',
                  description: 'Username of Active Directory domain administrator',
                  args: [
                    Arg(
                    name: 'usernam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '--name', '-a', '-n'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ad-name',
                  description: 'Name of the active directory machine. This optional parameter is used only while creating kerberos volume',
                  args: [
                    Arg(
                    name: 'ad-nam'
                  )
                  ]
                ),
                Option(
                  name: '--administrators',
                  description: 'Users to be added to the Built-in Administrators active directory group. A space separated list of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'administrator'
                  )
                  ]
                ),
                Option(
                  name: '--aes-encryption',
                  description: 'If enabled, AES encryption will be enabled for SMB communication',
                  args: [
                    Arg(
                    name: 'aes-encryption',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--allow-local-ldap-users',
                  description: 'If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes',
                  args: [
                    Arg(
                    name: 'allow-local-ldap-users',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--backup-operators',
                  description: 'Users to be added to the Built-in Backup Operator active directory group. A space separated list of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'backup-operator'
                  )
                  ]
                ),
                Option(
                  name: '--encrypt-dc-conn',
                  description: 'If enabled, Traffic between the SMB server to Domain Controller (DC) will be encrypted',
                  args: [
                    Arg(
                    name: 'encrypt-dc-conn',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--group-dn',
                  description: 'This specifies the group DN, which overrides the base DN for group lookups',
                  args: [
                    Arg(
                    name: 'group-d'
                  )
                  ]
                ),
                Option(
                  name: '--group-filter',
                  description: 'This specifies the custom LDAP search filter to be used when looking up group membership from LDAP server',
                  args: [
                    Arg(
                    name: 'group-filte'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kdc-ip',
                  description: 'Kdc server IP addresses for the active directory machine. This optional parameter is used only while creating kerberos volume',
                  args: [
                    Arg(
                    name: 'kdc-i'
                  )
                  ]
                ),
                Option(
                  name: '--ldap-over-tls',
                  description: 'Specifies whether or not the LDAP traffic needs to be secured via TLS',
                  args: [
                    Arg(
                    name: 'ldap-over-tl'
                  )
                  ]
                ),
                Option(
                  name: '--ldap-signing',
                  description: 'Specifies whether or not the LDAP traffic needs to be signed',
                  args: [
                    Arg(
                    name: 'ldap-signing',
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
                  name: '--organizational-unit',
                  description: 'The Organizational Unit (OU) within the Windows Active Directory',
                  args: [
                    Arg(
                    name: 'organizational-uni'
                  )
                  ]
                ),
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
                  name: '--security-operators',
                  description: 'Domain Users in the Active directory to be given SeSecurityPrivilege privilege (Needed for SMB Continuously available shares for SQL). A space separated list of unique usernames without domain specifier',
                  args: [
                    Arg(
                    name: 'security-operator'
                  )
                  ]
                ),
                Option(
                  name: '--server-root-ca-cert',
                  description: 'When LDAP over SSL/TLS is enabled, the LDAP client is required to have base64 encoded Active Directory Certificate Service\'s self-signed root CA certificate, this optional parameter is used only for dual protocol with LDAP user-mapping volumes',
                  args: [
                    Arg(
                    name: 'server-root-ca-cer'
                  )
                  ]
                ),
                Option(
                  name: '--site',
                  description: 'The Active Directory site the service will limit Domain Controller discovery to',
                  args: [
                    Arg(
                    name: 'sit'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--user-dn',
                  description: 'This specifies the user DN, which overrides the base DN for user lookups',
                  args: [
                    Arg(
                    name: 'user-d'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a account ad operation',
              options: [

                Option(
                  name: ['--account-name', '--name', '-a', '-n'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'backup',
          description: 'Manage Azure NetApp Files (ANF) Account Backup Resources',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete Backup for a Netapp Files (ANF) Account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--backup-name',
                  description: 'The name of the backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get list of all Azure NetApp Files (ANF) Account Backups',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get Backup for a Netapp Files (ANF) Account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--backup-name',
                  description: 'The name of the backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Wait for a account backup operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--backup-name',
                  description: 'The name of the backup. Required',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
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
          name: 'backup-policy',
          description: 'Manage Azure NetApp Files (ANF) Backup Policy Resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new Azure NetApp Files (ANF) backup policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-policy-name', '-b'],
                  description: 'The name of the ANF backup policy',
                  args: [
                    Arg(
                    name: 'backup-policy-nam'
                  )
                  ]
                ),
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
                  name: ['--daily-backups', '-d'],
                  description: 'Daily backups count to keep',
                  args: [
                    Arg(
                    name: 'daily-backup'
                  )
                  ]
                ),
                Option(
                  name: ['--enabled', '-e'],
                  description: 'The property to decide policy is enabled or not'
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the backup',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--monthly-backups', '-m'],
                  description: 'Monthly backups count to keep',
                  args: [
                    Arg(
                    name: 'monthly-backup'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags in key[=value] format',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: ['--weekly-backups', '-w'],
                  description: 'Weekly backups count to keep',
                  args: [
                    Arg(
                    name: 'weekly-backup'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the specified ANF backup policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-policy-name', '-b'],
                  description: 'The name of the ANF backup policy',
                  args: [
                    Arg(
                    name: 'backup-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the ANF backup policy for the specified account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the specified ANF backup policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-policy-name', '-b'],
                  description: 'The name of the ANF backup policy',
                  args: [
                    Arg(
                    name: 'backup-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the specified ANF backup policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: ['--backup-policy-name', '-b'],
                  description: 'The name of the ANF backup policy',
                  args: [
                    Arg(
                    name: 'backup-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--daily-backups', '-d'],
                  description: 'Daily backups count to keep',
                  args: [
                    Arg(
                    name: 'daily-backup'
                  )
                  ]
                ),
                Option(
                  name: ['--enabled', '-e'],
                  description: 'The property to decide policy is enabled or not'
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--monthly-backups', '-m'],
                  description: 'Monthly backups count to keep',
                  args: [
                    Arg(
                    name: 'monthly-backup'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: ['--weekly-backups', '-w'],
                  description: 'Weekly backups count to keep',
                  args: [
                    Arg(
                    name: 'weekly-backup'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a account backup-policy operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-policy-name', '-b'],
                  description: 'The name of the backup policy',
                  args: [
                    Arg(
                    name: 'backup-policy-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'backup-vault',
          description: 'Manage Azure NetApp Files (ANF) BackupVault Resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the specified Backup Vault in the NetApp account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-vault-name', '--name', '-n'],
                  description: 'The name of the Backup Vault',
                  args: [
                    Arg(
                    name: 'backup-vault-nam'
                  )
                  ]
                ),
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
                  name: ['--location', '-l'],
                  description: 'The geo-location where the resource lives When not specified, the location of the resource group will be used',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish',
                  args: [
                    Arg(
                    name: 'no-wait',
                    suggestions: [

                      FigSuggestion(name: '0'),
                      FigSuggestion(name: '1'),
                      FigSuggestion(name: 'f'),
                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'n'),
                      FigSuggestion(name: 'no'),
                      FigSuggestion(name: 't'),
                      FigSuggestion(name: 'true'),
                      FigSuggestion(name: 'y'),
                      FigSuggestion(name: 'yes')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
              description: 'Delete the specified Backup Vault',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-vault-name', '--name', '-n'],
                  description: 'The name of the Backup Vault',
                  args: [
                    Arg(
                    name: 'backup-vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish',
                  args: [
                    Arg(
                    name: 'no-wait',
                    suggestions: [

                      FigSuggestion(name: '0'),
                      FigSuggestion(name: '1'),
                      FigSuggestion(name: 'f'),
                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'n'),
                      FigSuggestion(name: 'no'),
                      FigSuggestion(name: 't'),
                      FigSuggestion(name: 'true'),
                      FigSuggestion(name: 'y'),
                      FigSuggestion(name: 'yes')
                    ]
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List and describe all Backup Vaults in the NetApp account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
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
                  name: '--max-items',
                  description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                  args: [
                    Arg(
                    name: 'max-item'
                  )
                  ]
                ),
                Option(
                  name: '--next-token',
                  description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                  args: [
                    Arg(
                    name: 'next-toke'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the Backup Vault',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-vault-name', '--name', '-n'],
                  description: 'The name of the Backup Vault',
                  args: [
                    Arg(
                    name: 'backup-vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the specified Backup Vault in the NetApp account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: ['--backup-vault-name', '--name', '-n'],
                  description: 'The name of the Backup Vault',
                  args: [
                    Arg(
                    name: 'backup-vault-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                  args: [
                    Arg(
                    name: 'force-string',
                    suggestions: [

                      FigSuggestion(name: '0'),
                      FigSuggestion(name: '1'),
                      FigSuggestion(name: 'f'),
                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'n'),
                      FigSuggestion(name: 'no'),
                      FigSuggestion(name: 't'),
                      FigSuggestion(name: 'true'),
                      FigSuggestion(name: 'y'),
                      FigSuggestion(name: 'yes')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish',
                  args: [
                    Arg(
                    name: 'no-wait',
                    suggestions: [

                      FigSuggestion(name: '0'),
                      FigSuggestion(name: '1'),
                      FigSuggestion(name: 'f'),
                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'n'),
                      FigSuggestion(name: 'no'),
                      FigSuggestion(name: 't'),
                      FigSuggestion(name: 'true'),
                      FigSuggestion(name: 'y'),
                      FigSuggestion(name: 'yes')
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition is met',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the NetApp account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-vault-name', '--name', '-n'],
                  description: 'The name of the Backup Vault',
                  args: [
                    Arg(
                    name: 'backup-vault-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
              name: 'backup',
              description: 'Manage Azure NetApp Files (ANF) Backup Resources',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Create a backup under the Backup Vault',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--backup-name', '--name', '-n'],
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
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
                      name: '--volume-resource-id',
                      description: 'ResourceId used to identify the Volume',
                      args: [
                        Arg(
                        name: 'volume-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Label for backup',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish',
                      args: [
                        Arg(
                        name: 'no-wait',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--snapshot-name',
                      description: 'The name of the snapshot',
                      args: [
                        Arg(
                        name: 'snapshot-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--use-existing-snapshot',
                      description: 'Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups'
                    )
                  ]
                ),
                Subcommand(
                  name: 'delete',
                  description: 'Delete a Backup under the Backup Vault',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--backup-name', '--name', '-n'],
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish',
                      args: [
                        Arg(
                        name: 'no-wait',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
                        ]
                      )
                      ]
                    ),
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: ['--yes', '-y'],
                      description: 'Do not prompt for confirmation'
                    )
                  ]
                ),
                Subcommand(
                  name: 'list',
                  description: 'List all backups Under a Backup Vault',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
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
                      name: '--filter',
                      description: 'An option to specify the VolumeResourceId. If present, then only returns the backups under the specified volume',
                      args: [
                        Arg(
                        name: 'filte'
                      )
                      ]
                    ),
                    Option(
                      name: '--max-items',
                      description: 'Total number of items to return in the command\'s output. If the total number of items available is more than the value specified, a token is provided in the command\'s output. To resume pagination, provide the token value in --next-token argument of a subsequent command',
                      args: [
                        Arg(
                        name: 'max-item'
                      )
                      ]
                    ),
                    Option(
                      name: '--next-token',
                      description: 'Token to specify where to start paginating. This is the token value from a previously truncated response',
                      args: [
                        Arg(
                        name: 'next-toke'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'restore-file',
                  description: 'Restore the specified files from the specified backup to the active filesystem',
                  options: [

                    Option(
                      name: '--destination-volume-id',
                      description: 'Resource Id of the destination volume on which the files need to be restored',
                      args: [
                        Arg(
                        name: 'destination-volume-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--file-list',
                      description: 'List of files to be restored Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                      args: [
                        Arg(
                        name: 'file-lis'
                      )
                      ]
                    ),
                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-name',
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish',
                      args: [
                        Arg(
                        name: 'no-wait',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
                        ]
                      )
                      ]
                    ),
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
                      name: '--restore-file-path',
                      description: 'Destination folder where the files will be restored. The path name should start with a forward slash. If it is omitted from request then restore is done at the root folder of the destination volume by default',
                      args: [
                        Arg(
                        name: 'restore-file-pat'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'show',
                  description: 'Get the specified Backup under Backup Vault',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--backup-name', '--name', '-n'],
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'update',
                  description: 'Update a backup under the Backup Vault',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
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
                      name: ['--backup-name', '--name', '-n'],
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--force-string',
                      description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON',
                      args: [
                        Arg(
                        name: 'force-string',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: '--label',
                      description: 'Label for backup',
                      args: [
                        Arg(
                        name: 'labe'
                      )
                      ]
                    ),
                    Option(
                      name: '--no-wait',
                      description: 'Do not wait for the long-running operation to finish',
                      args: [
                        Arg(
                        name: 'no-wait',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
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
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
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
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--use-existing-snapshot',
                      description: 'Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups',
                      args: [
                        Arg(
                        name: 'use-existing-snapshot',
                        suggestions: [

                          FigSuggestion(name: '0'),
                          FigSuggestion(name: '1'),
                          FigSuggestion(name: 'f'),
                          FigSuggestion(name: 'false'),
                          FigSuggestion(name: 'n'),
                          FigSuggestion(name: 'no'),
                          FigSuggestion(name: 't'),
                          FigSuggestion(name: 'true'),
                          FigSuggestion(name: 'y'),
                          FigSuggestion(name: 'yes')
                        ]
                      )
                      ]
                    )
                  ]
                ),
                Subcommand(
                  name: 'wait',
                  description: 'Place the CLI in a waiting state until a condition is met',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--backup-name', '--name', '-n'],
                      description: 'The name of the backup',
                      args: [
                        Arg(
                        name: 'backup-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--backup-vault-name',
                      description: 'The name of the Backup Vault',
                      args: [
                        Arg(
                        name: 'backup-vault-nam'
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
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
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
                      name: ['--resource-group', '-g'],
                      description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                      args: [
                        Arg(
                        name: 'resource-grou'
                      )
                      ]
                    ),
                    Option(
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'pool',
      description: 'Manage Azure NetApp Files (ANF) Pool Resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Azure NetApp Files (ANF) pool',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '--name', '-n', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--service-level',
              description: 'The service level for the ANF pool',
              args: [
                Arg(
                name: 'service-level',
                suggestions: [

                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Ultra')
                ]
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'The size for the ANF pool. Must be an integer number of tebibytes in multiples of 4',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--cool-access',
              description: 'If enabled (true) the pool can contain cool Access enabled volumes',
              args: [
                Arg(
                name: 'cool-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--encryption-type',
              description: 'Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool. Possible values are Single or Double. Default value is Single',
              args: [
                Arg(
                name: 'encryption-typ'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--qos-type',
              description: 'The qos type of the ANF pool',
              args: [
                Arg(
                name: 'qos-typ'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
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
          description: 'Delete the specified ANF pool',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '--name', '-n', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'L:ist the ANF pools for the specified account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified ANF pool',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '--name', '-n', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the tags of the specified ANF pool',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--cool-access',
              description: 'If enabled (true) the pool can contain cool Access enabled volumes',
              args: [
                Arg(
                name: 'cool-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '--name', '-n', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--qos-type',
              description: 'The qos type of the ANF pool',
              args: [
                Arg(
                name: 'qos-typ'
              )
              ]
            ),
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
              name: '--size',
              description: 'The size for the ANF pool. Must be an integer number of tebibytes in multiples of 4',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a pool operation',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--pool-name', '--name', '-n', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
      name: 'resource',
      description: 'Provides operations for Azure NetApp Files (ANF) Account Resources',
      subcommands: [

        Subcommand(
          name: 'query-region-info',
          description: 'Provides storage to network proximity and logical zone mapping information',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'snapshot',
      description: 'Manage Azure NetApp Files (ANF) Snapshot Resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Azure NetApp Files (ANF) snapshot',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified ANF snapshot',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the snapshots of an ANF volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore-files',
          description: 'Restore specified files from the specified snapshot to the active filesystem',
          options: [

            Option(
              name: '--file-paths',
              description: 'Required. A space separated string of filed to be restored',
              args: [
                Arg(
                name: 'file-path'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--destination-path',
              description: 'Destination folder where the files will be restored',
              args: [
                Arg(
                name: 'destination-pat'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified ANF snapshot',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a snapshot',
          options: [

            Option(
              name: '--body',
              description: 'Snapshot object supplied in the body of the operation. Required',
              args: [
                Arg(
                name: 'bod'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a snapshot operation',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--snapshot-name', '--name', '-n', '-s'],
              description: 'The name of the ANF snapshot',
              args: [
                Arg(
                name: 'snapshot-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
              name: ['--volume-name', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'policy',
          description: 'Manage Azure NetApp Files (ANF) Snapshot Policy Resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new Azure NetApp Files (ANF) snapshot policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
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
                  name: '--snapshot-policy-name',
                  description: 'The name of the ANF snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--daily-hour',
                  description: 'Which hour in UTC timezone the daily snapshot should be taken',
                  args: [
                    Arg(
                    name: 'daily-hou'
                  )
                  ]
                ),
                Option(
                  name: '--daily-minute',
                  description: 'Which minute the daily snapshot should be taken',
                  args: [
                    Arg(
                    name: 'daily-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--daily-snapshots', '-d'],
                  description: 'Daily snapshots count to keep',
                  args: [
                    Arg(
                    name: 'daily-snapshot'
                  )
                  ]
                ),
                Option(
                  name: ['--enabled', '-e'],
                  description: 'The property to decide policy is enabled or not'
                ),
                Option(
                  name: '--hourly-minute',
                  description: 'Which minute the hourly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'hourly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--hourly-snapshots', '-u'],
                  description: 'Hourly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'hourly-snapshot'
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
                  name: '--monthly-days',
                  description: 'Which days of the month the weekly snapshot should be taken, accepts a comma separated list of days',
                  args: [
                    Arg(
                    name: 'monthly-day'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-hour',
                  description: 'Which hour in UTC timezone the monthly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'monthly-hou'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-minute',
                  description: 'Which minute the monthly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'monthly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--monthly-snapshots', '-m'],
                  description: 'Monthly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'monthly-snapshot'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Space-separated tags in key[=value] format',
                  args: [
                    Arg(
                    name: 'tag'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-day',
                  description: 'Which weekday the weekly snapshot should be taken, accepts a comma separated list of week day names in english',
                  args: [
                    Arg(
                    name: 'weekly-da'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-hour',
                  description: 'Which hour in UTC timezone the weekly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'weekly-hou'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-minute',
                  description: 'Which minute the weekly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'weekly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--weekly-snapshots', '-w'],
                  description: 'Weekly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'weekly-snapshot'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the specified ANF snapshot policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
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
                  name: '--snapshot-policy-name',
                  description: 'The name of the ANF snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the ANF snapshot policies for the specified account',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the specified ANF snapshot policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
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
                  name: '--snapshot-policy-name',
                  description: 'The name of the ANF snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the specified ANF snapshot policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--daily-hour',
                  description: 'Which hour in UTC timezone the daily snapshot should be taken',
                  args: [
                    Arg(
                    name: 'daily-hou'
                  )
                  ]
                ),
                Option(
                  name: '--daily-minute',
                  description: 'Which minute the daily snapshot should be taken',
                  args: [
                    Arg(
                    name: 'daily-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--daily-snapshots', '-d'],
                  description: 'Daily snapshots count to keep',
                  args: [
                    Arg(
                    name: 'daily-snapshot'
                  )
                  ]
                ),
                Option(
                  name: ['--enabled', '-e'],
                  description: 'The property to decide policy is enabled or not'
                ),
                Option(
                  name: '--hourly-minute',
                  description: 'Which minute the hourly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'hourly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--hourly-snapshots', '-u'],
                  description: 'Hourly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'hourly-snapshot'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-days',
                  description: 'Which days of the month the weekly snapshot should be taken, accepts a comma separated list of days',
                  args: [
                    Arg(
                    name: 'monthly-day'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-hour',
                  description: 'Which hour in UTC timezone the monthly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'monthly-hou'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-minute',
                  description: 'Which minute the monthly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'monthly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--monthly-snapshots', '-m'],
                  description: 'Monthly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'monthly-snapshot'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
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
                  name: '--snapshot-policy-name',
                  description: 'The name of the ANF snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: '--weekly-day',
                  description: 'Which weekday the weekly snapshot should be taken, accepts a comma separated list of week day names in english',
                  args: [
                    Arg(
                    name: 'weekly-da'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-hour',
                  description: 'Which hour in UTC timezone the weekly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'weekly-hou'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-minute',
                  description: 'Which minute the weekly snapshot should be taken',
                  args: [
                    Arg(
                    name: 'weekly-minut'
                  )
                  ]
                ),
                Option(
                  name: ['--weekly-snapshots', '-w'],
                  description: 'Weekly snapshots count to keep',
                  args: [
                    Arg(
                    name: 'weekly-snapshot'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'volumes',
              description: 'Get the all ANF volumes associated with snapshot policy',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
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
                  name: '--snapshot-policy-name',
                  description: 'The name of the ANF snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a snapshot policy operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--snapshot-policy-name',
                  description: 'The name of the snapshot policy',
                  args: [
                    Arg(
                    name: 'snapshot-policy-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
        )
      ]
    ),
    Subcommand(
      name: 'subvolume',
      description: 'Manage Azure NetApp Files (ANF) Subvolume Resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a subvolume in the specified path or clones the subvolume specified in the parentPath',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subvolume-name',
              description: 'The name of the ANF subvolume',
              args: [
                Arg(
                name: 'subvolume-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--parent-path',
              description: 'Path to the parent subvolume',
              args: [
                Arg(
                name: 'parent-pat'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'Path to the subvolume',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--size',
              description: 'Size of the subvolume',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a specified ANF subvolume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--subvolume-name',
              description: 'The name of the ANF subvolume',
              args: [
                Arg(
                name: 'subvolume-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List all ANF subvolumes in the specified NetApp volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the path associated with a subvolumeName',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--subvolume-name',
              description: 'The name of the ANF subvolume',
              args: [
                Arg(
                name: 'subvolume-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update a specified ANF subvolume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--path',
              description: 'Path to the subvolume',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
            ),
            Option(
              name: '--size',
              description: 'Size of the subvolume',
              args: [
                Arg(
                name: 'siz'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--subvolume-name',
              description: 'The name of the ANF subvolume',
              args: [
                Arg(
                name: 'subvolume-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a subvolume operation',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--subvolume-name',
              description: 'The name of the subvolume. Required',
              args: [
                Arg(
                name: 'subvolume-nam'
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
              name: ['--volume-name', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'metadata',
          description: 'Manage Azure NetApp Files (ANF) Subvolume Metadata Resources',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get the specified ANF metadata of a subvolume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--subvolume-name',
                  description: 'The name of the ANF subvolume',
                  args: [
                    Arg(
                    name: 'subvolume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
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
      name: 'volume',
      description: 'Manage Azure NetApp Files (ANF) Volume Resources',
      subcommands: [

        Subcommand(
          name: 'break-file-locks',
          description: 'Break file locks',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--client-ip', '-i'],
              description: 'To clear file locks on a volume for a particular client',
              args: [
                Arg(
                name: 'client-i'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new Azure NetApp Files (ANF) volume. Export policies are applied with the subgroup commands but note that volumes are always created with a default export policy',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--file-path',
              description: 'A 1-80 character long alphanumeric string value that identifies a unique file share or mount point in the target delegate subnet',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--usage-threshold',
              description: 'The maximum storage quota allowed for a file system as integer number of GiB. Min 100 GiB, max 100TiB"',
              args: [
                Arg(
                name: 'usage-threshol'
              )
              ]
            ),
            Option(
              name: '--vnet',
              description: 'Name or Resource ID of the vnet. If you want to use a vnet in other resource group or subscription, please provide the Resource ID instead of the name of the vnet',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: '--allowed-clients',
              description: 'Client ingress specification as comma separated string with IPv4 CIDRs, IPv4 host addresses and host names',
              args: [
                Arg(
                name: 'allowed-client'
              )
              ]
            ),
            Option(
              name: '--avs-data-store',
              description: 'Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose. Possible values are Enabled and Disabled. Default value is Disabled',
              args: [
                Arg(
                name: 'avs-data-stor'
              )
              ]
            ),
            Option(
              name: '--backup-enabled',
              description: 'Backup Enabled',
              args: [
                Arg(
                name: 'backup-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-id',
              description: 'Backup ID. UUID v4 or resource identifier used to identify the Backup',
              args: [
                Arg(
                name: 'backup-i'
              )
              ]
            ),
            Option(
              name: '--backup-policy-id',
              description: 'Backup Policy Resource ID',
              args: [
                Arg(
                name: 'backup-policy-i'
              )
              ]
            ),
            Option(
              name: '--chown-mode',
              description: 'This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own. Possible values include- Restricted, Unrestricted. Default value- Restricted',
              args: [
                Arg(
                name: 'chown-mod'
              )
              ]
            ),
            Option(
              name: '--cifs',
              description: 'Allows CIFS protocol. Enable only for CIFS type volumes',
              args: [
                Arg(
                name: 'cifs',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--cool-access',
              description: 'Specifies whether Cool Access(tiering) is enabled for the volume',
              args: [
                Arg(
                name: 'cool-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--coolness-period',
              description: 'Specifies the number of days after which data that is not accessed by clients will be tiered',
              args: [
                Arg(
                name: 'coolness-perio'
              )
              ]
            ),
            Option(
              name: '--default-group-quota',
              description: 'Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies',
              args: [
                Arg(
                name: 'default-group-quot'
              )
              ]
            ),
            Option(
              name: '--default-user-quota',
              description: 'Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies',
              args: [
                Arg(
                name: 'default-user-quot'
              )
              ]
            ),
            Option(
              name: '--delete-base-snapshot',
              description: 'If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished. Defaults to false',
              args: [
                Arg(
                name: 'delete-base-snapshot',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-subvolumes',
              description: 'Flag indicating whether subvolume operations are enabled on the volume. Possible values are Enabled and Disabled. Default value is Disabled',
              args: [
                Arg(
                name: 'enable-subvolume'
              )
              ]
            ),
            Option(
              name: '--encryption-key-source',
              description: 'Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = \'Microsoft.KeyVault\'',
              args: [
                Arg(
                name: 'encryption-key-source',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.KeyVault'),
                  FigSuggestion(name: 'Microsoft.NetApp')
                ]
              )
              ]
            ),
            Option(
              name: '--endpoint-type',
              description: 'Whether the volume is source ("src") or destination ("dst")',
              args: [
                Arg(
                name: 'endpoint-typ'
              )
              ]
            ),
            Option(
              name: '--has-root-access',
              description: 'Has root access to volume. Possible values are True or False',
              args: [
                Arg(
                name: 'has-root-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--is-def-quota-enabled',
              description: 'Specifies if default quota is enabled for the volume',
              args: [
                Arg(
                name: 'is-def-quota-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--is-large-volume',
              description: 'Specifies whether volume is a Large Volume or Regular Volume'
            ),
            Option(
              name: '--kerberos-enabled',
              description: 'Describe if a volume is KerberosEnabled',
              args: [
                Arg(
                name: 'kerberos-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--kerberos5-r',
              description: 'Kerberos5 Read only access',
              args: [
                Arg(
                name: 'kerberos5-'
              )
              ]
            ),
            Option(
              name: '--kerberos5-rw',
              description: 'Kerberos5 Read and write access',
              args: [
                Arg(
                name: 'kerberos5-r'
              )
              ]
            ),
            Option(
              name: '--kerberos5i-r',
              description: 'Kerberos5i Read only access',
              args: [
                Arg(
                name: 'kerberos5i-'
              )
              ]
            ),
            Option(
              name: '--kerberos5i-rw',
              description: 'Kerberos5i Read and write access',
              args: [
                Arg(
                name: 'kerberos5i-r'
              )
              ]
            ),
            Option(
              name: '--kerberos5p-r',
              description: 'Kerberos5p Read only access',
              args: [
                Arg(
                name: 'kerberos5p-'
              )
              ]
            ),
            Option(
              name: '--kerberos5p-rw',
              description: 'Kerberos5p Read and write access',
              args: [
                Arg(
                name: 'kerberos5p-r'
              )
              ]
            ),
            Option(
              name: '--kv-private-endpoint-id',
              description: 'The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = \'Microsoft.KeyVault\'',
              args: [
                Arg(
                name: 'kv-private-endpoint-i'
              )
              ]
            ),
            Option(
              name: '--ldap-enabled',
              description: 'Specifies whether LDAP is enabled or not for a given NFS volume',
              args: [
                Arg(
                name: 'ldap-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: '--network-features',
              description: 'Basic network, or Standard features available to the volume. Possible values are Basic and Standard. Default value is Basic',
              args: [
                Arg(
                name: 'network-feature'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--policy-enforced',
              description: 'Policy Enforced',
              args: [
                Arg(
                name: 'policy-enforced',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--protocol-types',
              description: 'Space separated list of protocols that the volume can use, available protocols are "NFSv4.1", "NFSv3", "CIFS"',
              args: [
                Arg(
                name: 'protocol-type'
              )
              ]
            ),
            Option(
              name: '--remote-volume-resource-id',
              description: 'The volume id of the remote volume of the replication (the destination for "src" volume endpoints and the source for "dst" endpoints)',
              args: [
                Arg(
                name: 'remote-volume-resource-i'
              )
              ]
            ),
            Option(
              name: '--replication-schedule',
              description: 'The replication schedule, e.g. "_10minutely, hourly, daily, weekly, monthly"',
              args: [
                Arg(
                name: 'replication-schedul'
              )
              ]
            ),
            Option(
              name: '--rule-index',
              description: 'Order index',
              args: [
                Arg(
                name: 'rule-inde'
              )
              ]
            ),
            Option(
              name: '--security-style',
              description: 'The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol',
              args: [
                Arg(
                name: 'security-style',
                suggestions: [

                  FigSuggestion(name: 'ntfs'),
                  FigSuggestion(name: 'unix')
                ]
              )
              ]
            ),
            Option(
              name: '--service-level',
              description: 'The service level',
              args: [
                Arg(
                name: 'service-level',
                suggestions: [

                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Ultra')
                ]
              )
              ]
            ),
            Option(
              name: '--smb-access',
              description: 'Enables access based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume',
              args: [
                Arg(
                name: 'smb-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--smb-browsable',
              description: 'Enables non browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume',
              args: [
                Arg(
                name: 'smb-browsable',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--smb-continuously-avl',
              description: 'Enables continuously available share property for smb volume. Only applicable for SMB volume. Default value is False',
              args: [
                Arg(
                name: 'smb-continuously-avl',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--smb-encryption',
              description: 'Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later. Default value is False',
              args: [
                Arg(
                name: 'smb-encryption',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--snapshot-dir-visible',
              description: 'If enabled (true) the volume will contain a read-only .snapshot directory which provides access to each of the volume\'s snapshots (default to true)',
              args: [
                Arg(
                name: 'snapshot-dir-visible',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--snapshot-id',
              description: 'Create a volume created from this snapshot. UUID v4 or resource identifier used to identify the Snapshot. example snapshot-id "9760acf5-4638-11e7-9bdb-020073ca3333"',
              args: [
                Arg(
                name: 'snapshot-i'
              )
              ]
            ),
            Option(
              name: '--snapshot-policy-id',
              description: 'Snapshot Policy ResourceId',
              args: [
                Arg(
                name: 'snapshot-policy-i'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'The name of the subnet for the volume',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--throughput-mibps',
              description: 'Maximum throughput in Mibps that can be achieved by this volume',
              args: [
                Arg(
                name: 'throughput-mibp'
              )
              ]
            ),
            Option(
              name: '--unix-permissions',
              description: 'UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file- read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users',
              args: [
                Arg(
                name: 'unix-permission'
              )
              ]
            ),
            Option(
              name: '--unix-read-only',
              description: 'Read only access',
              args: [
                Arg(
                name: 'unix-read-only',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--unix-read-write',
              description: 'Read and write access',
              args: [
                Arg(
                name: 'unix-read-write',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--volume-type',
              description: 'Whether the volume should be a data protection volume ("DataProtection"), empty if this is not a data protection volume',
              args: [
                Arg(
                name: 'volume-typ'
              )
              ]
            ),
            Option(
              name: '--zones',
              description: 'Availability Zone',
              args: [
                Arg(
                name: 'zone'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete the specified ANF volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--force-delete',
              description: 'An option to force delete the volume. Will cleanup resources connected to the particular volume',
              args: [
                Arg(
                name: 'force-delete',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'finalize-relocation',
          description: 'Finalizes the relocation of the Azure NetApp Files (ANF) volume and cleans up the old volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-groupid-list-for-ldapuser',
          description: 'Returns the list of group Ids for a specific LDAP User',
          options: [

            Option(
              name: ['--username', '-u'],
              description: 'Username is required to fetch the group to which user is part of',
              args: [
                Arg(
                name: 'usernam'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the ANF Pools for the specified account',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'migrate-backup',
          description: 'Migrate the backups under volume to backup vault',
          options: [

            Option(
              name: '--backup-vault-id',
              description: 'The ResourceId of the Backup Vault',
              args: [
                Arg(
                name: 'backup-vault-i'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the NetApp account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wait',
                suggestions: [

                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: 'f'),
                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'n'),
                  FigSuggestion(name: 'no'),
                  FigSuggestion(name: 't'),
                  FigSuggestion(name: 'true'),
                  FigSuggestion(name: 'y'),
                  FigSuggestion(name: 'yes')
                ]
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the capacity pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--volume-name',
              description: 'The name of the volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'pool-change',
          description: 'Change pool for an Azure NetApp Files (ANF) volume',
          options: [

            Option(
              name: ['--new-pool-resource-id', '-d'],
              description: 'The resource id of the new ANF pool',
              args: [
                Arg(
                name: 'new-pool-resource-i'
              )
              ]
            ),
            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'relocate',
          description: 'Relocates an Azure NetApp Files (ANF) volume to a new stamp',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--body',
              description: 'Relocate volume request. Is either a RelocateVolumeRequest type or a IO type. Default value is None',
              args: [
                Arg(
                name: 'bod'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'reset-cifs-pw',
          description: 'Reset CIFS password from an Azure NetApp Files (ANF) volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'revert',
          description: 'Revert a volume to one of its snapshots',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: ['--snapshot-id', '-s'],
              description: 'SnapshotId of the snapshot. UUID v4 used to identify the Snapshot, example "9760acf5-4638-11e7-9bdb-020073ca3333"',
              args: [
                Arg(
                name: 'snapshot-i'
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
          name: 'revert-relocation',
          description: 'Reverts the Azure NetApp Files (ANF) volume relocation process, cleans up the new volume and starts using the former-existing volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified ANF volume',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the specified ANF volume with the values provided. Unspecified values will remain unchanged. Export policies are amended/created with the subgroup commands',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'The name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: '--backup-enabled',
              description: 'Backup Enabled',
              args: [
                Arg(
                name: 'backup-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-policy-id',
              description: 'Backup Policy Resource ID',
              args: [
                Arg(
                name: 'backup-policy-i'
              )
              ]
            ),
            Option(
              name: '--cool-access',
              description: 'If enabled (true) the pool can contain cool Access enabled volumes',
              args: [
                Arg(
                name: 'cool-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--coolness-period',
              description: 'Specifies the number of days after which data that is not accessed by clients will be tiered',
              args: [
                Arg(
                name: 'coolness-perio'
              )
              ]
            ),
            Option(
              name: '--default-group-quota',
              description: 'Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies',
              args: [
                Arg(
                name: 'default-group-quot'
              )
              ]
            ),
            Option(
              name: '--default-user-quota',
              description: 'Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies',
              args: [
                Arg(
                name: 'default-user-quot'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--is-def-quota-enabled',
              description: 'Specifies if default quota is enabled for the volume',
              args: [
                Arg(
                name: 'is-def-quota-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'The name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--policy-enforced',
              description: 'Backup Policy Enforced',
              args: [
                Arg(
                name: 'policy-enforced',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'The name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--service-level',
              description: 'The service level',
              args: [
                Arg(
                name: 'service-level',
                suggestions: [

                  FigSuggestion(name: 'Premium'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Ultra')
                ]
              )
              ]
            ),
            Option(
              name: '--snapshot-dir-visible',
              description: 'If enabled (true) the volume will contain a read-only .snapshot directory which provides access to each of the volume\'s snapshots (default to true)',
              args: [
                Arg(
                name: 'snapshot-dir-visible',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--snapshot-policy-id',
              description: 'Snapshot Policy ResourceId',
              args: [
                Arg(
                name: 'snapshot-policy-i'
              )
              ]
            ),
            Option(
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key[=value] format',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--throughput-mibps',
              description: 'Maximum throughput in Mibps that can be achieved by this volume and this will be accepted as input only for manual qosType volume',
              args: [
                Arg(
                name: 'throughput-mibp'
              )
              ]
            ),
            Option(
              name: '--unix-permissions',
              description: 'UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file- read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users',
              args: [
                Arg(
                name: 'unix-permission'
              )
              ]
            ),
            Option(
              name: '--usage-threshold',
              description: 'The maximum storage quota allowed for a file system as integer number of GiB. Min 100 GiB, max 100TiB',
              args: [
                Arg(
                name: 'usage-threshol'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for a volume operation',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
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
              name: ['--volume-name', '--name', '-n', '-v'],
              description: 'Name of the ANF volume',
              args: [
                Arg(
                name: 'volume-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
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
              name: '--subscription',
              description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
              args: [
                Arg(
                name: 'subscriptio'
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
          name: 'backup',
          description: 'Manage Azure NetApp Files (ANF) Volume Backup Resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create specified ANF volume backup',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the ANF backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--use-existing-snapshot',
                  description: 'Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups',
                  args: [
                    Arg(
                    name: 'use-existing-snapshot',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete backup',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the ANF Backups for the specified volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore-files',
              description: 'Restore the specified files from the specified backup to the active filesystem',
              options: [

                Option(
                  name: '--destination-path',
                  description: 'Destination folder where the files will be restored',
                  args: [
                    Arg(
                    name: 'destination-pat'
                  )
                  ]
                ),
                Option(
                  name: '--destination-volume-id',
                  description: 'Resource Id of the destination volume on which the files need to be restored',
                  args: [
                    Arg(
                    name: 'destination-volume-i'
                  )
                  ]
                ),
                Option(
                  name: '--file-paths',
                  description: 'Required. A space separated string of filed to be restored',
                  args: [
                    Arg(
                    name: 'file-path'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the ANF backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore-status',
              description: 'Get backup restore status of the specified ANF Volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the specified ANF Backup',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the ANF backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Get backup status of the specified ANF Volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update the specified ANF backup with the values provided',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: ['--backup-name', '-b'],
                  description: 'The name of the ANF backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'Label for backup',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: '--use-existing-snapshot',
                  description: 'Manual backup an already existing snapshot. This will always be false for scheduled backups and true or false for manual backups',
                  args: [
                    Arg(
                    name: 'use-existing-snapshot',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a volume backup operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'export-policy',
          description: 'Manage Azure NetApp Files (ANF) Volume export policies',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a new rule to the export policy for a volume',
              options: [

                Option(
                  name: '--allowed-clients',
                  description: 'Client ingress specification as comma separated string with IPv4 CIDRs, IPv4 host addresses and host names)',
                  args: [
                    Arg(
                    name: 'allowed-client'
                  )
                  ]
                ),
                Option(
                  name: '--cifs',
                  description: 'Indication that CIFS protocol is allowed',
                  args: [
                    Arg(
                    name: 'cifs',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--nfsv3',
                  description: 'Indication that NFSv3 protocol is allowed',
                  args: [
                    Arg(
                    name: 'nfsv3',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--nfsv41',
                  description: 'Indication that NFSv4.1 protocol is allowed',
                  args: [
                    Arg(
                    name: 'nfsv41',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unix-read-only',
                  description: 'Indication of read only access',
                  args: [
                    Arg(
                    name: 'unix-read-only',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--unix-read-write',
                  description: 'Indication of read and write access',
                  args: [
                    Arg(
                    name: 'unix-read-write',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--chown-mode',
                  description: 'This parameter specifies who is authorized to change the ownership of a file. restricted - Only root user can change the ownership of the file. unrestricted - Non-root users can change ownership of files that they own. Possible values include- Restricted, Unrestricted. Default value- Restricted',
                  args: [
                    Arg(
                    name: 'chown-mod'
                  )
                  ]
                ),
                Option(
                  name: '--has-root-access',
                  description: 'Vol Has root access to volume',
                  args: [
                    Arg(
                    name: 'has-root-access',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5-r',
                  description: 'Kerberos5 Read only access',
                  args: [
                    Arg(
                    name: 'kerberos5-'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5-rw',
                  description: 'Kerberos5 Read and write access',
                  args: [
                    Arg(
                    name: 'kerberos5-r'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5i-r',
                  description: 'Kerberos5i Read only access',
                  args: [
                    Arg(
                    name: 'kerberos5i-'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5i-rw',
                  description: 'Kerberos5i Read and write access',
                  args: [
                    Arg(
                    name: 'kerberos5i-r'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5p-r',
                  description: 'Kerberos5p Read only access',
                  args: [
                    Arg(
                    name: 'kerberos5p-'
                  )
                  ]
                ),
                Option(
                  name: '--kerberos5p-rw',
                  description: 'Kerberos5p Read and write access',
                  args: [
                    Arg(
                    name: 'kerberos5p-r'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--rule-index',
                  description: 'Order index. No number can be repeated. Max 6 rules',
                  args: [
                    Arg(
                    name: 'rule-inde'
                  )
                  ]
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List the export policy rules for a volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
              description: 'Remove a rule from the export policy for a volume by rule index. The current rules can be obtained by performing the subgroup list command',
              options: [

                Option(
                  name: '--rule-index',
                  description: 'Order index. Range 1 to 6',
                  args: [
                    Arg(
                    name: 'rule-inde'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a volume export-policy operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
          name: 'latest-backup-status',
          description: 'Get the latest backup status of a volume',
          subcommands: [

            Subcommand(
              name: 'current',
              description: 'Get the latest backup status of the current volume',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Get the latest status of the backup for a volume',
                  options: [

                    Option(
                      name: ['--account-name', '-a'],
                      description: 'The name of the NetApp account',
                      args: [
                        Arg(
                        name: 'account-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--ids',
                      description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                      args: [
                        Arg(
                        name: 'id'
                      )
                      ]
                    ),
                    Option(
                      name: ['--pool-name', '-p'],
                      description: 'The name of the capacity pool',
                      args: [
                        Arg(
                        name: 'pool-nam'
                      )
                      ]
                    ),
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
                      name: '--subscription',
                      description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                      args: [
                        Arg(
                        name: 'subscriptio'
                      )
                      ]
                    ),
                    Option(
                      name: '--volume-name',
                      description: 'The name of the volume',
                      args: [
                        Arg(
                        name: 'volume-nam'
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
          name: 'quota-rule',
          description: 'Manage Azure NetApp Files (ANF) Volume Quota Rules Resources',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a ANF Volume Quota Rule',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--quota-rule-name',
                  description: 'Name of Quota rule',
                  args: [
                    Arg(
                    name: 'quota-rule-nam'
                  )
                  ]
                ),
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
                  name: ['--volume-name', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--quota-size',
                  description: 'Size of quota',
                  args: [
                    Arg(
                    name: 'quota-siz'
                  )
                  ]
                ),
                Option(
                  name: '--quota-target',
                  description: 'UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running :code:<wmic useraccount where name=\'user-name\' get sid>',
                  args: [
                    Arg(
                    name: 'quota-targe'
                  )
                  ]
                ),
                Option(
                  name: '--quota-type',
                  description: 'Type of quota. Known values are "DefaultUserQuota", "DefaultGroupQuota", "IndividualUserQuota", and "IndividualGroupQuota"',
                  args: [
                    Arg(
                    name: 'quota-typ'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'Resource tags',
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
              description: 'Delete a specified ANF Volume Quota Rule for Volume',
              options: [

                Option(
                  name: '--quota-rule-name',
                  description: 'The name of the quota rule',
                  args: [
                    Arg(
                    name: 'quota-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'Get all ANF Volume Quota Rule for specified Volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get ANF Volume Quota Rule for Volume',
              options: [

                Option(
                  name: '--quota-rule-name',
                  description: 'The name of the quota rule',
                  args: [
                    Arg(
                    name: 'quota-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'update',
              description: 'Update a specified ANF Volume Quota Rule',
              options: [

                Option(
                  name: '--quota-rule-name',
                  description: 'The name of the quota rule',
                  args: [
                    Arg(
                    name: 'quota-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: '--quota-size',
                  description: 'Size of quota',
                  args: [
                    Arg(
                    name: 'quota-siz'
                  )
                  ]
                ),
                Option(
                  name: '--quota-target',
                  description: 'UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running :code:<wmic useraccount where name=\'user-name\' get sid>',
                  args: [
                    Arg(
                    name: 'quota-targe'
                  )
                  ]
                ),
                Option(
                  name: '--quota-type',
                  description: 'Type of quota. Known values are "DefaultUserQuota", "DefaultGroupQuota", "IndividualUserQuota", and "IndividualGroupQuota"',
                  args: [
                    Arg(
                    name: 'quota-typ'
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
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                ),
                Option(
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: ['--volume-name', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a volume quota-rule operation',
              options: [

                Option(
                  name: '--quota-rule-name',
                  description: 'The name of the quota rule',
                  args: [
                    Arg(
                    name: 'quota-rule-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
                  name: ['--volume-name', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'replication',
          description: 'Manage Azure NetApp Files (ANF) Volume replication operations',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Authorize a volume as a replication destination for a specified source',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication source volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--remote-volume-resource-id', '-d'],
                  description: 'The resource id of the destination replication volume',
                  args: [
                    Arg(
                    name: 'remote-volume-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List replication for ANF volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 're-initialize',
              description: 'Re-initialise a volume replication for the specified destination volume. The replication process is resumed from source to destination',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication destination volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Delete a volume replication for the specified destination volume. The data replication objects of source and destination volumes will be removed',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication destination volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'resume',
              description: 'Resync a volume replication for the specified destination volume. The replication process is resumed from source to destination. If any quota rules exists on destination volume  they will be overwritten with source volume\'s quota rules',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication destination volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'status',
              description: 'Get the replication status for the specified replication volume',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication destination volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'suspend',
              description: 'Suspend/break a volume replication for the specified destination volume. The replication process is suspended until resumed or deleted',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'The name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--force-break-replication', '--force', '-f'],
                  description: 'Force break the replication',
                  args: [
                    Arg(
                    name: 'force-break-replication',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'The name of the replication destination volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'The name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for a volume replication operation',
              options: [

                Option(
                  name: ['--account-name', '-a'],
                  description: 'Name of the ANF account',
                  args: [
                    Arg(
                    name: 'account-nam'
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
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
                  name: ['--volume-name', '--name', '-n', '-v'],
                  description: 'Name of the ANF volume',
                  args: [
                    Arg(
                    name: 'volume-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--pool-name', '-p'],
                  description: 'Name of the ANF pool',
                  args: [
                    Arg(
                    name: 'pool-nam'
                  )
                  ]
                ),
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
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
        )
      ]
    ),
    Subcommand(
      name: 'volume-group',
      description: 'Manage Azure NetApp Files (ANF) Volume Group Resources',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create ANF Volume Groups',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-group-name', '--group-name'],
              description: 'The name of the ANF volume group',
              args: [
                Arg(
                name: 'volume-group-nam'
              )
              ]
            ),
            Option(
              name: ['--pool-name', '-p'],
              description: 'Name of the ANF pool',
              args: [
                Arg(
                name: 'pool-nam'
              )
              ]
            ),
            Option(
              name: '--ppg',
              description: 'The resource id of the Proximity Placement Group for volume placement',
              args: [
                Arg(
                name: 'pp'
              )
              ]
            ),
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
              name: '--vnet',
              description: 'The ARM Id or name of the vnet for the volumes',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: '--add-snapshot-capacity',
              description: 'Additional memory to store snapshots, must be specified as % of RAM (range 0-200). This is used to auto compute storage size',
              args: [
                Arg(
                name: 'add-snapshot-capacit'
              )
              ]
            ),
            Option(
              name: '--backup-nfsv3',
              description: 'Indicates if NFS Protocol version 3 is preferred for data backup and log backup volumes. Default is false'
            ),
            Option(
              name: '--data-backup-repl-skd',
              description: 'Replication Schedule for data backup volume',
              args: [
                Arg(
                name: 'data-backup-repl-sk'
              )
              ]
            ),
            Option(
              name: '--data-backup-size',
              description: 'Capacity (in GiB) for data backup volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'data-backup-siz'
              )
              ]
            ),
            Option(
              name: '--data-backup-src-id',
              description: 'ResourceId of the data backup source volume',
              args: [
                Arg(
                name: 'data-backup-src-i'
              )
              ]
            ),
            Option(
              name: '--data-backup-throughput',
              description: 'Throughput in MiB/s for data backup volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'data-backup-throughpu'
              )
              ]
            ),
            Option(
              name: '--data-repl-skd',
              description: 'Replication Schedule for data volume',
              args: [
                Arg(
                name: 'data-repl-sk'
              )
              ]
            ),
            Option(
              name: '--data-size',
              description: 'Capacity (in GiB) for data volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'data-siz'
              )
              ]
            ),
            Option(
              name: '--data-src-id',
              description: 'ResourceId of the data source volume',
              args: [
                Arg(
                name: 'data-src-i'
              )
              ]
            ),
            Option(
              name: '--data-throughput',
              description: 'Throughput in MiB/s for data volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'data-throughpu'
              )
              ]
            ),
            Option(
              name: ['--global-placement-rules', '--gp-rules'],
              description: 'Application specific identifier of deployment rules for the volume group. Space-separated string in key=value format',
              args: [
                Arg(
                name: 'global-placement-rule'
              )
              ]
            ),
            Option(
              name: '--kv-private-endpoint-id',
              description: 'The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = \'Microsoft.KeyVault\'',
              args: [
                Arg(
                name: 'kv-private-endpoint-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'ANF Location. If the resource group location is different than ANF location, ANF location needs to be specified',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--log-backup-repl-skd',
              description: 'Replication Schedule for log backup volume',
              args: [
                Arg(
                name: 'log-backup-repl-sk'
              )
              ]
            ),
            Option(
              name: '--log-backup-size',
              description: 'Capacity (in GiB) for log backup volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'log-backup-siz'
              )
              ]
            ),
            Option(
              name: '--log-backup-src-id',
              description: 'ResourceId of the log backup source volume',
              args: [
                Arg(
                name: 'log-backup-src-i'
              )
              ]
            ),
            Option(
              name: '--log-backup-throughput',
              description: 'Throughput in MiB/s for log backup volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'log-backup-throughpu'
              )
              ]
            ),
            Option(
              name: '--log-size',
              description: 'Capacity (in GiB) for log volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'log-siz'
              )
              ]
            ),
            Option(
              name: '--log-throughput',
              description: 'Throughput in MiB/s for log volumes. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'log-throughpu'
              )
              ]
            ),
            Option(
              name: '--memory',
              description: 'SAP HANA memory in GiB (max 12000 GiB), used to auto compute storage size and throughput',
              args: [
                Arg(
                name: 'memor'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--number-of-hots',
              description: 'Total Number of SAP HANA host in this deployment (currently max 3 nodes can be configured)',
              args: [
                Arg(
                name: 'number-of-hot'
              )
              ]
            ),
            Option(
              name: '--prefix',
              description: 'All volume names will be prefixed with the given text. The default values for prefix text depends on system role. For PRIMARY it will be "" and HA it will be "HA-"',
              args: [
                Arg(
                name: 'prefi'
              )
              ]
            ),
            Option(
              name: '--sap-sid',
              description: 'The SAP system ID. Three characters long alpha-numeric string',
              args: [
                Arg(
                name: 'sap-si'
              )
              ]
            ),
            Option(
              name: '--shared-repl-skd',
              description: 'Replication Schedule for shared volume',
              args: [
                Arg(
                name: 'shared-repl-sk'
              )
              ]
            ),
            Option(
              name: '--shared-size',
              description: 'Capacity (in GiB) for shared volume. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'shared-siz'
              )
              ]
            ),
            Option(
              name: '--shared-src-id',
              description: 'ResourceId of the shared source volume',
              args: [
                Arg(
                name: 'shared-src-i'
              )
              ]
            ),
            Option(
              name: '--shared-throughput',
              description: 'Throughput in MiB/s for shared volume. If not provided size will automatically be calculated',
              args: [
                Arg(
                name: 'shared-throughpu'
              )
              ]
            ),
            Option(
              name: '--smb-access',
              description: 'Enables access based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume',
              args: [
                Arg(
                name: 'smb-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--smb-browsable',
              description: 'Enables non browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume',
              args: [
                Arg(
                name: 'smb-browsable',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--start-host-id',
              description: 'Starting SAP HANA Host ID. Host ID 1 indicates Master Host. Shared, Data Backup and Log Backup volumes are only provisioned for Master Host i.e. HostID == 1',
              args: [
                Arg(
                name: 'start-host-i'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'The delegated Subnet name',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--system-role',
              description: 'Type of role for the storage account. Primary indicates first of a SAP HANA Replication (HSR) setup or No HSR. High Availability (HA) specifies local scenario. Default is PRIMARY',
              args: [
                Arg(
                name: 'system-role',
                suggestions: [

                  FigSuggestion(name: 'DR'),
                  FigSuggestion(name: 'HA'),
                  FigSuggestion(name: 'PRIMARY')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags in key=value format',
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
          description: 'Delete a volume group',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-group-name', '--group-name'],
              description: 'The name of the ANF volume group',
              args: [
                Arg(
                name: 'volume-group-nam'
              )
              ]
            ),
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
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Get a list of ANF Volume Groups',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the specified ANF Volume Group',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-group-name', '--group-name'],
              description: 'The name of the ANF volume group',
              args: [
                Arg(
                name: 'volume-group-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
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
          description: 'Wait for a volume group to be created',
          options: [

            Option(
              name: ['--account-name', '-a'],
              description: 'Name of the ANF account',
              args: [
                Arg(
                name: 'account-nam'
              )
              ]
            ),
            Option(
              name: ['--volume-group-name', '--group-name'],
              description: 'The name of the ANF volume group',
              args: [
                Arg(
                name: 'volume-group-nam'
              )
              ]
            ),
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
    )
  ]
);
