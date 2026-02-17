// Auto-generated from TypeScript source: postgres.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `postgres` CLI
final FigSpec postgresSpec = FigSpec(
  name: 'postgres',
  description: 'Manage Azure Database for PostgreSQL servers',
  subcommands: [

    Subcommand(
      name: 'db',
      description: 'Manage PostgreSQL databases on a server',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a PostgreSQL database',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the database',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--server-name', '-s'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: '--charset',
              description: 'The charset of the database',
              args: [
                Arg(
                name: 'charse'
              )
              ]
            ),
            Option(
              name: '--collation',
              description: 'The collation of the database',
              args: [
                Arg(
                name: 'collatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a database',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the database',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--server-name', '-s'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'server-nam'
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
          description: 'List the databases for a server',
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
              name: ['--server-name', '-s'],
              description: 'Name of the Server',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a database',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the database',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--server-name', '-s'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'server-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'down',
      description: 'Delete the PostgreSQL server and its cached information',
      options: [

        Option(
          name: '--delete-group',
          description: 'Delete the resource group',
          args: [
            Arg(
            name: 'delete-grou'
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
          name: ['--server-name', '-s'],
          description: 'Name of the server',
          args: [
            Arg(
            name: 'server-nam'
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
      name: 'show-connection-string',
      description: 'Show the connection strings for a PostgreSQL server database',
      options: [

        Option(
          name: ['--admin-password', '-p'],
          description: 'The login password of the administrator',
          args: [
            Arg(
            name: 'admin-passwor'
          )
          ]
        ),
        Option(
          name: ['--admin-user', '-u'],
          description: 'The login username of the administrator',
          args: [
            Arg(
            name: 'admin-use'
          )
          ]
        ),
        Option(
          name: ['--database-name', '-d'],
          description: 'The name of a database',
          args: [
            Arg(
            name: 'database-nam'
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
          name: ['--server-name', '-s'],
          description: 'Name of the server',
          args: [
            Arg(
            name: 'server-nam'
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
      name: 'up',
      description: 'Set up an Azure Database for PostgreSQL server and configurations',
      options: [

        Option(
          name: ['--admin-password', '-p'],
          description: 'The login password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters.Your password cannot contain all or part of the login name. Part of a login name is defined as three or more consecutive alphanumeric characters',
          args: [
            Arg(
            name: 'admin-passwor'
          )
          ]
        ),
        Option(
          name: ['--admin-user', '-u'],
          description: 'The login username of the administrator',
          args: [
            Arg(
            name: 'admin-use'
          )
          ]
        ),
        Option(
          name: '--backup-retention',
          description: 'The number of days a backup is retained',
          args: [
            Arg(
            name: 'backup-retentio'
          )
          ]
        ),
        Option(
          name: ['--database-name', '-d'],
          description: 'The name of a database to initialize',
          args: [
            Arg(
            name: 'database-nam'
          )
          ]
        ),
        Option(
          name: '--generate-password',
          description: 'Generate a password',
          args: [
            Arg(
            name: 'generate-passwor'
          )
          ]
        ),
        Option(
          name: '--geo-redundant-backup',
          description: 'Enable Geo-redundant or not for server backup',
          args: [
            Arg(
            name: 'geo-redundant-backup',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
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
          name: ['--server-name', '-s'],
          description: 'Name of the server',
          args: [
            Arg(
            name: 'server-nam'
          )
          ]
        ),
        Option(
          name: '--sku-name',
          description: 'The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8',
          args: [
            Arg(
            name: 'sku-nam'
          )
          ]
        ),
        Option(
          name: '--ssl-enforcement',
          description: 'Enable ssl enforcement or not when connect to server',
          args: [
            Arg(
            name: 'ssl-enforcement',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--storage-size',
          description: 'The max storage size of the server. Unit is megabytes',
          args: [
            Arg(
            name: 'storage-siz'
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
          name: '--version',
          description: 'Server version',
          args: [
            Arg(
            name: 'versio'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'flexible-server',
      description: 'Manage Azure Database for PostgreSQL Flexible Servers',
      subcommands: [

        Subcommand(
          name: 'connect',
          description: 'Connect to a flexible server',
          options: [

            Option(
              name: ['--admin-user', '-u'],
              description: 'The login username of the administrator',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--admin-password', '-p'],
              description: 'The login password of the administrator',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'The name of a database',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--interactive',
              description: 'Pass this parameter to connect to database in interactive mode',
              args: [
                Arg(
                name: 'interactiv'
              )
              ]
            ),
            Option(
              name: ['--querytext', '-q'],
              description: 'Argument \'querytext\' has been deprecated and will be removed in a future release. Use \'execute\' instead. A query to run against the flexible server',
              args: [
                Arg(
                name: 'querytex'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a PostgreSQL flexible server',
          options: [

            Option(
              name: '--active-directory-auth',
              description: 'Whether Azure Active Directory authentication is enabled',
              args: [
                Arg(
                name: 'active-directory-auth',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--address-prefixes',
              description: 'The IP address prefix to use when creating a new virtual network in CIDR format. Default value is 10.0.0.0/16',
              args: [
                Arg(
                name: 'address-prefixe'
              )
              ]
            ),
            Option(
              name: ['--admin-password', '-p'],
              description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Administrator username for the server. Once set, it cannot be changed',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: '--backup-identity',
              description: 'The name or resource ID of the geo backup user identity for data encryption. The identity needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-identit'
              )
              ]
            ),
            Option(
              name: '--backup-key',
              description: 'The resource ID of the geo backup keyvault key for data encryption. The key needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-ke'
              )
              ]
            ),
            Option(
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'The name of the database to be created when provisioning the database server',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Whether or not geo redundant backup is enabled',
              args: [
                Arg(
                name: 'geo-redundant-backup',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--high-availability',
              description: 'Enable (ZoneRedundant or SameZone) or disable high availability feature',
              args: [
                Arg(
                name: 'high-availability',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'SameZone'),
                  FigSuggestion(name: 'ZoneRedundant')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The name or resource ID of the user assigned identity for data encryption',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--key',
              description: 'The resource ID of the primary keyvault key for data encryption',
              args: [
                Arg(
                name: 'ke'
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
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password-auth',
              description: 'Whether password authentication is enabled',
              args: [
                Arg(
                name: 'password-auth',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--private-dns-zone',
              description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
              )
              ]
            ),
            Option(
              name: '--public-access',
              description: 'Determines the public access. Enter single or range of IP addresses to be included in the allowed list of IPs. IP address ranges must be dash-separated and not contain any spaces. Specifying 0.0.0.0 allows public access from any resources deployed within Azure to access your server. Setting it to "None" sets the server in public access mode but does not create a firewall rule',
              args: [
                Arg(
                name: 'public-acces'
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
              name: '--sku-name',
              description: 'The name of the compute SKU. Follows the convention Standard_{VM name}. Examples: Standard_B1ms',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--standby-zone',
              description: 'The availability zone information of the standby server when high availability is enabled',
              args: [
                Arg(
                name: 'standby-zon'
              )
              ]
            ),
            Option(
              name: '--storage-auto-grow',
              description: 'Enable or disable autogrow of the storage. Default value is Enabled',
              args: [
                Arg(
                name: 'storage-auto-grow',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-size',
              description: 'The storage capacity of the server. Minimum is 32 GiB and max is 16 TiB',
              args: [
                Arg(
                name: 'storage-siz'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or resource ID of a new or existing subnet. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--subnet-prefixes',
              description: 'The subnet IP address prefix to use when creating a new subnet in CIDR format. Default value is 10.0.0.0/24',
              args: [
                Arg(
                name: 'subnet-prefixe'
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
              name: '--tier',
              description: 'Compute tier of the server. Accepted values: Burstable, GeneralPurpose, MemoryOptimized',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Server major version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone', '-z'],
              description: 'Availability zone into which to provision the resource',
              args: [
                Arg(
                name: 'zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a flexible server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'execute',
          description: 'Connect to a flexible server',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'The login password of the administrator',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'The login username of the administrator',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'The name of a database',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--file-path', '-f'],
              description: 'The path of the sql file to execute',
              args: [
                Arg(
                name: 'file-pat'
              )
              ]
            ),
            Option(
              name: ['--querytext', '-q'],
              description: 'A query to run against the flexible server',
              args: [
                Arg(
                name: 'querytex'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'geo-restore',
          description: 'Geo-restore a flexible server from backup',
          options: [

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
              name: '--source-server',
              description: 'The name or resource ID of the source server to restore from',
              args: [
                Arg(
                name: 'source-serve'
              )
              ]
            ),
            Option(
              name: '--address-prefixes',
              description: 'The IP address prefix to use when creating a new virtual network in CIDR format. Default value is 10.0.0.0/16',
              args: [
                Arg(
                name: 'address-prefixe'
              )
              ]
            ),
            Option(
              name: '--backup-identity',
              description: 'The name or resource ID of the geo backup user identity for data encryption. The identity needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-identit'
              )
              ]
            ),
            Option(
              name: '--backup-key',
              description: 'The resource ID of the geo backup keyvault key for data encryption. The key needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-ke'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Whether or not geo redundant backup is enabled',
              args: [
                Arg(
                name: 'geo-redundant-backup',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The name or resource ID of the user assigned identity for data encryption',
              args: [
                Arg(
                name: 'identit'
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
              name: '--key',
              description: 'The resource ID of the primary keyvault key for data encryption',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
              name: '--private-dns-zone',
              description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
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
              name: '--subnet',
              description: 'Name or resource ID of a new or existing subnet. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--subnet-prefixes',
              description: 'The subnet IP address prefix to use when creating a new subnet in CIDR format. Default value is 10.0.0.0/24',
              args: [
                Arg(
                name: 'subnet-prefixe'
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
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone', '-z'],
              description: 'Availability zone into which to provision the resource',
              args: [
                Arg(
                name: 'zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List available flexible servers',
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
          name: 'list-skus',
          description: 'Lists available sku\'s in the given region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart a flexible server',
          options: [

            Option(
              name: '--failover',
              description: 'Forced or planned failover for server restart operation. Allowed values: Forced, Planned',
              args: [
                Arg(
                name: 'failove'
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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'restore',
          description: 'Restore a flexible server from backup',
          options: [

            Option(
              name: '--source-server',
              description: 'The name or resource ID of the source server to restore from',
              args: [
                Arg(
                name: 'source-serve'
              )
              ]
            ),
            Option(
              name: '--address-prefixes',
              description: 'The IP address prefix to use when creating a new virtual network in CIDR format. Default value is 10.0.0.0/16',
              args: [
                Arg(
                name: 'address-prefixe'
              )
              ]
            ),
            Option(
              name: '--backup-identity',
              description: 'The name or resource ID of the geo backup user identity for data encryption. The identity needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-identit'
              )
              ]
            ),
            Option(
              name: '--backup-key',
              description: 'The resource ID of the geo backup keyvault key for data encryption. The key needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-ke'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Whether or not geo redundant backup is enabled',
              args: [
                Arg(
                name: 'geo-redundant-backup',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The name or resource ID of the user assigned identity for data encryption',
              args: [
                Arg(
                name: 'identit'
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
              name: '--key',
              description: 'The resource ID of the primary keyvault key for data encryption',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
              name: '--private-dns-zone',
              description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
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
              name: '--restore-time',
              description: 'The point in time in UTC to restore from (ISO8601 format), e.g., 2017-04-26T02:10:00+00:00The default value is set to current time',
              args: [
                Arg(
                name: 'restore-tim'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or resource ID of a new or existing subnet. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--subnet-prefixes',
              description: 'The subnet IP address prefix to use when creating a new subnet in CIDR format. Default value is 10.0.0.0/24',
              args: [
                Arg(
                name: 'subnet-prefixe'
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
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone', '-z'],
              description: 'Availability zone into which to provision the resource',
              args: [
                Arg(
                name: 'zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'revive-dropped',
          description: 'Revive a dropped flexible server from backup',
          options: [

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
              name: '--source-server',
              description: 'The name or resource ID of the source server to restore from',
              args: [
                Arg(
                name: 'source-serve'
              )
              ]
            ),
            Option(
              name: '--address-prefixes',
              description: 'The IP address prefix to use when creating a new virtual network in CIDR format. Default value is 10.0.0.0/16',
              args: [
                Arg(
                name: 'address-prefixe'
              )
              ]
            ),
            Option(
              name: '--backup-identity',
              description: 'The name or resource ID of the geo backup user identity for data encryption. The identity needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-identit'
              )
              ]
            ),
            Option(
              name: '--backup-key',
              description: 'The resource ID of the geo backup keyvault key for data encryption. The key needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-ke'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Whether or not geo redundant backup is enabled',
              args: [
                Arg(
                name: 'geo-redundant-backup',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The name or resource ID of the user assigned identity for data encryption',
              args: [
                Arg(
                name: 'identit'
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
              name: '--key',
              description: 'The resource ID of the primary keyvault key for data encryption',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
              name: '--private-dns-zone',
              description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
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
              name: '--subnet',
              description: 'Name or resource ID of a new or existing subnet. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--subnet-prefixes',
              description: 'The subnet IP address prefix to use when creating a new subnet in CIDR format. Default value is 10.0.0.0/24',
              args: [
                Arg(
                name: 'subnet-prefixe'
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
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
              args: [
                Arg(
                name: 'vne'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone', '-z'],
              description: 'Availability zone into which to provision the resource',
              args: [
                Arg(
                name: 'zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details of a flexible server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'show-connection-string',
          description: 'Show the connection strings for a PostgreSQL flexible-server database',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Administrator username for the server. Once set, it cannot be changed',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'The name of the database to be created when provisioning the database server',
              args: [
                Arg(
                name: 'database-nam'
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
              name: '--pg-bouncer',
              description: 'Show connection strings for PgBouncer'
            ),
            Option(
              name: ['--server-name', '-s'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'server-nam'
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
          name: 'start',
          description: 'Start a flexible server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
          name: 'stop',
          description: 'Stop a flexible server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
          description: 'Update a flexible server',
          options: [

            Option(
              name: '--active-directory-auth',
              description: 'Whether Azure Active Directory authentication is enabled',
              args: [
                Arg(
                name: 'active-directory-auth',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
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
              name: ['--admin-password', '-p'],
              description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: '--backup-identity',
              description: 'The name or resource ID of the geo backup user identity for data encryption. The identity needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-identit'
              )
              ]
            ),
            Option(
              name: '--backup-key',
              description: 'The resource ID of the geo backup keyvault key for data encryption. The key needs to be in the same region as the backup region',
              args: [
                Arg(
                name: 'backup-ke'
              )
              ]
            ),
            Option(
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--high-availability',
              description: 'Enable (ZoneRedundant or SameZone) or disable high availability feature',
              args: [
                Arg(
                name: 'high-availability',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'SameZone'),
                  FigSuggestion(name: 'ZoneRedundant')
                ]
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'The name or resource ID of the user assigned identity for data encryption',
              args: [
                Arg(
                name: 'identit'
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
              name: '--key',
              description: 'The resource ID of the primary keyvault key for data encryption',
              args: [
                Arg(
                name: 'ke'
              )
              ]
            ),
            Option(
              name: '--maintenance-window',
              description: 'Period of time (UTC) designated for maintenance. Examples: "Sun:23:30" to schedule on Sunday, 11:30pm UTC. To set back to default pass in "Disabled"',
              args: [
                Arg(
                name: 'maintenance-windo'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--password-auth',
              description: 'Whether password authentication is enabled',
              args: [
                Arg(
                name: 'password-auth',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--private-dns-zone',
              description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
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
              name: '--sku-name',
              description: 'The name of the compute SKU. Follows the convention Standard_{VM name}. Examples: Standard_B1ms',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--standby-zone',
              description: 'The availability zone information of the standby server when high availability is enabled',
              args: [
                Arg(
                name: 'standby-zon'
              )
              ]
            ),
            Option(
              name: '--storage-auto-grow',
              description: 'Enable or disable autogrow of the storage. Default value is Enabled',
              args: [
                Arg(
                name: 'storage-auto-grow',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-size',
              description: 'The storage capacity of the server. Minimum is 32 GiB and max is 16 TiB',
              args: [
                Arg(
                name: 'storage-siz'
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
              name: '--tier',
              description: 'Compute tier of the server. Accepted values: Burstable, GeneralPurpose, MemoryOptimized',
              args: [
                Arg(
                name: 'tie'
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
          name: 'upgrade',
          description: 'Upgrade the major version of a flexible server',
          options: [

            Option(
              name: ['--version', '-v'],
              description: 'Server major version',
              args: [
                Arg(
                name: 'version',
                suggestions: [

                  FigSuggestion(name: '12'),
                  FigSuggestion(name: '13'),
                  FigSuggestion(name: '14')
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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'wait',
          description: 'Wait for the flexible server to satisfy certain conditions',
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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'ad-admin',
          description: 'Manage server Active Directory administrators',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Active Directory administrator',
              options: [

                Option(
                  name: ['--display-name', '-u'],
                  description: 'Display name of the Azure AD administrator user or group',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--type', '-t'],
                  description: 'Type of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'type',
                    suggestions: [

                      FigSuggestion(name: 'Group'),
                      FigSuggestion(name: 'ServicePrincipal'),
                      FigSuggestion(name: 'Unknown'),
                      FigSuggestion(name: 'User')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Active Directory administrator',
              options: [

                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'List all Active Directory administrators',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get an Active Directory administrator',
              options: [

                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Wait for an Active Directory administrator to satisfy certain conditions',
              options: [

                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
          name: 'backup',
          description: 'Manage flexible server backups',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List all the backups for a given server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'Show the details of a specific backup for a given server',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'db',
          description: 'Manage PostgreSQL databases on a flexible server',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a PostgreSQL database on a flexible server',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--charset',
                  description: 'The charset of the database. The default value is UTF8',
                  args: [
                    Arg(
                    name: 'charse'
                  )
                  ]
                ),
                Option(
                  name: '--collation',
                  description: 'The collation of the database',
                  args: [
                    Arg(
                    name: 'collatio'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'The name of the database to be created when provisioning the database server',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a database on a flexible server',
              options: [

                Option(
                  name: ['--database-name', '-d'],
                  description: 'The name of the database to be created when provisioning the database server',
                  args: [
                    Arg(
                    name: 'database-nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'List the databases for a flexible server',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the details of a database',
              options: [

                Option(
                  name: ['--database-name', '-d'],
                  description: 'The name of the database to be created when provisioning the database server',
                  args: [
                    Arg(
                    name: 'database-nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'deploy',
          description: 'Enable and run GitHub Actions workflow for PostgreSQL server',
          subcommands: [

            Subcommand(
              name: 'run',
              description: 'Run an existing workflow in your github repository',
              options: [

                Option(
                  name: '--action-name',
                  description: 'The name of the github action',
                  args: [
                    Arg(
                    name: 'action-nam'
                  )
                  ]
                ),
                Option(
                  name: '--branch',
                  description: 'The name of the branch you want upload github action file. The default will be your current branch',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'setup',
              description: 'Create GitHub Actions workflow file for PostgreSQL server',
              options: [

                Option(
                  name: ['--admin-password', '-p'],
                  description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
                  args: [
                    Arg(
                    name: 'admin-passwor'
                  )
                  ]
                ),
                Option(
                  name: ['--admin-user', '-u'],
                  description: 'Administrator username for the server. Once set, it cannot be changed',
                  args: [
                    Arg(
                    name: 'admin-use'
                  )
                  ]
                ),
                Option(
                  name: '--repo',
                  description: 'The name of your github username and repository e.g., Azure/azure-cli',
                  args: [
                    Arg(
                    name: 'rep'
                  )
                  ]
                ),
                Option(
                  name: '--sql-file',
                  description: 'The path of the sql file. The sql file should be already in the repository',
                  args: [
                    Arg(
                    name: 'sql-fil'
                  )
                  ]
                ),
                Option(
                  name: '--action-name',
                  description: 'The name of the github action',
                  args: [
                    Arg(
                    name: 'action-nam'
                  )
                  ]
                ),
                Option(
                  name: '--allow-push',
                  description: 'Push the action yml file to the remote repository. The changes will be pushed to origin repository, speicified branch or current branch if not specified'
                ),
                Option(
                  name: '--branch',
                  description: 'The name of the branch you want upload github action file. The default will be your current branch',
                  args: [
                    Arg(
                    name: 'branc'
                  )
                  ]
                ),
                Option(
                  name: ['--database-name', '-d'],
                  description: 'The name of the database to be created when provisioning the database server',
                  args: [
                    Arg(
                    name: 'database-nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'firewall-rule',
          description: 'Manage firewall rules for a server',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new firewall rule for a flexible server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--rule-name', '-r'],
                  description: 'The name of the firewall rule. If name is omitted, default name will be chosen for firewall name. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'rule-nam'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a firewall rule',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--rule-name', '-r'],
                  description: 'The name of the firewall rule. If name is omitted, default name will be chosen for firewall name. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'rule-nam'
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
              description: 'List all firewall rules for a flexible server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'Get the details of a firewall rule',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--rule-name', '-r'],
                  description: 'The name of the firewall rule. If name is omitted, default name will be chosen for firewall name. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'rule-nam'
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
              description: 'Update a firewall rule',
              options: [

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
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--rule-name', '-r'],
                  description: 'The name of the firewall rule. If name is omitted, default name will be chosen for firewall name. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'rule-nam'
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
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
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
            )
          ]
        ),
        Subcommand(
          name: 'identity',
          description: 'Manage server user assigned identities',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Add user asigned managed identities to the server',
              options: [

                Option(
                  name: ['--identity', '-n'],
                  description: 'Space-separated names or ID\'s of identities',
                  args: [
                    Arg(
                    name: 'identit'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'list',
              description: 'List all user assigned managed identities from the server',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove user asigned managed identites from the server',
              options: [

                Option(
                  name: ['--identity', '-n'],
                  description: 'Space-separated names or ID\'s of identities',
                  args: [
                    Arg(
                    name: 'identit'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'show',
              description: 'Get an user assigned managed identity from the server',
              options: [

                Option(
                  name: ['--identity', '-n'],
                  description: 'Name or ID of identity to show',
                  args: [
                    Arg(
                    name: 'identit'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'migration',
          description: 'Manage migration workflows for PostgreSQL Flexible Servers',
          subcommands: [

            Subcommand(
              name: 'check-name-availability',
              description: 'Checks if the provided migration-name can be used',
              options: [

                Option(
                  name: '--migration-name',
                  description: 'Name of the migration',
                  args: [
                    Arg(
                    name: 'migration-nam'
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
                  name: ['--name', '-n'],
                  description: 'Migration target server name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource Group Name of the migration target server',
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
              name: 'create',
              description: 'Create a new migration workflow for a flexible server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Migration target server name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--properties', '-b'],
                  description: 'Request properties. Use double or no quotes to pass in json filepath as argument',
                  args: [
                    Arg(
                    name: 'propertie'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource Group Name of the migration target server',
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
                  name: '--migration-mode',
                  description: 'Either offline or online(with CDC) migration',
                  args: [
                    Arg(
                    name: 'migration-mode',
                    suggestions: [

                      FigSuggestion(name: 'offline'),
                      FigSuggestion(name: 'online')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--migration-name',
                  description: 'Name of the migration',
                  args: [
                    Arg(
                    name: 'migration-nam'
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
              description: 'List the migrations of a flexible server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource Group Name of the migration target server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'Indicate whether all the migrations or just the Active migrations are returned. Valid values are: Active and All',
                  args: [
                    Arg(
                    name: 'filter',
                    suggestions: [

                      FigSuggestion(name: 'Active'),
                      FigSuggestion(name: 'All')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of a specific migration',
              options: [

                Option(
                  name: '--migration-name',
                  description: 'Name of the migration',
                  args: [
                    Arg(
                    name: 'migration-nam'
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
                  name: ['--name', '-n'],
                  description: 'Migration target server name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource Group Name of the migration target server',
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
              description: 'Update a specific migration',
              options: [

                Option(
                  name: '--migration-name',
                  description: 'Name of the migration',
                  args: [
                    Arg(
                    name: 'migration-nam'
                  )
                  ]
                ),
                Option(
                  name: '--cancel',
                  description: 'Cancel the data migration for all the databases',
                  args: [
                    Arg(
                    name: 'cance'
                  )
                  ]
                ),
                Option(
                  name: '--cutover',
                  description: 'Cut-over the data migration for all the databases in the migration. After this is complete, subsequent updates to all databases will not be migrated to the target',
                  args: [
                    Arg(
                    name: 'cutove'
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
                  name: ['--name', '-n'],
                  description: 'Migration target server name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Resource Group Name of the migration target server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--setup-replication',
                  description: 'Allow the migration workflow to setup logical replication on the source. Note that this command will restart the source server',
                  args: [
                    Arg(
                    name: 'setup-replicatio'
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
            )
          ]
        ),
        Subcommand(
          name: 'parameter',
          description: 'Commands for managing server parameter values for flexible server',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the parameter values for a flexible server',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Update the parameter of a flexible server',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the server configuration',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--source',
                  description: 'Source of the configuration',
                  args: [
                    Arg(
                    name: 'sourc'
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
                  name: ['--value', '-v'],
                  description: 'Value of the configuration',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the parameter for a flexible server."',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the server configuration',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'replica',
          description: 'Manage read replicas',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a read replica for a server',
              options: [

                Option(
                  name: '--replica-name',
                  description: 'The name of the server to restore to',
                  args: [
                    Arg(
                    name: 'replica-nam'
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
                  name: '--source-server',
                  description: 'The name or resource ID of the source server to restore from',
                  args: [
                    Arg(
                    name: 'source-serve'
                  )
                  ]
                ),
                Option(
                  name: '--address-prefixes',
                  description: 'The IP address prefix to use when creating a new virtual network in CIDR format. Default value is 10.0.0.0/16',
                  args: [
                    Arg(
                    name: 'address-prefixe'
                  )
                  ]
                ),
                Option(
                  name: '--identity',
                  description: 'The name or resource ID of the user assigned identity for data encryption',
                  args: [
                    Arg(
                    name: 'identit'
                  )
                  ]
                ),
                Option(
                  name: '--key',
                  description: 'The resource ID of the primary keyvault key for data encryption',
                  args: [
                    Arg(
                    name: 'ke'
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
                  name: '--private-dns-zone',
                  description: 'This parameter only applies for a server with private access. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
                  args: [
                    Arg(
                    name: 'private-dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or resource ID of a new or existing subnet. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: '--subnet-prefixes',
                  description: 'The subnet IP address prefix to use when creating a new subnet in CIDR format. Default value is 10.0.0.0/24',
                  args: [
                    Arg(
                    name: 'subnet-prefixe'
                  )
                  ]
                ),
                Option(
                  name: '--vnet',
                  description: 'Name or ID of a new or existing virtual network. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
                  args: [
                    Arg(
                    name: 'vne'
                  )
                  ]
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                ),
                Option(
                  name: ['--zone', '-z'],
                  description: 'Availability zone into which to provision the resource',
                  args: [
                    Arg(
                    name: 'zon'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all read replicas for a given server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the source server',
                  args: [
                    Arg(
                    name: 'nam'
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
              name: 'stop-replication',
              description: 'Stop replication to a read replica and make it a read/write server',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'server',
      description: 'Manage PostgreSQL servers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a server',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Administrator username for the server. Once set, it cannot be changed',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: '--assign-identity',
              description: 'Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault'
            ),
            Option(
              name: '--auto-grow',
              description: 'Enable or disable autogrow of the storage. Default value is Enabled',
              args: [
                Arg(
                name: 'auto-grow',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Enable or disable geo-redundant backups. Default value is Disabled. Not supported in Basic pricing tier',
              args: [
                Arg(
                name: 'geo-redundant-backup',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--infrastructure-encryption', '-i'],
              description: 'Add an optional second layer of encryption for data using new encryption algorithm. Default value is Disabled',
              args: [
                Arg(
                name: 'infrastructure-encryption',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--minimal-tls-version',
              description: 'Set the minimal TLS version for connections to server when SSL is enabled. Default is TLSEnforcementDisabled',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: 'TLS1_0'),
                  FigSuggestion(name: 'TLS1_1'),
                  FigSuggestion(name: 'TLS1_2'),
                  FigSuggestion(name: 'TLSEnforcementDisabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public'],
              description: 'Enable or disable public network access to server. When disabled, only connections made through Private Links can reach this server. Allowed values are : Enabled, Disabled, all, 0.0.0.0, , . Default is Enabled',
              args: [
                Arg(
                name: 'public-network-acces'
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
              name: '--sku-name',
              description: 'The name of the sku. Follows the convention {pricing tier}{compute generation}{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--ssl-enforcement',
              description: 'Enable or disable ssl enforcement for connections to server. Default is Enabled',
              args: [
                Arg(
                name: 'ssl-enforcement',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-size',
              description: 'The storage capacity of the server (unit is megabytes). Minimum 5120 and increases in 1024 increments. Default is 5120',
              args: [
                Arg(
                name: 'storage-siz'
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
              name: '--version',
              description: 'Server major version. https://docs.microsoft.com/en-us/azure/postgresql/single-server/concepts-supported-versions',
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
          description: 'Delete a server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'georestore',
          description: 'Geo-restore a server from backup',
          options: [

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
              name: ['--source-server', '-s'],
              description: 'The name or ID of the source server to restore from',
              args: [
                Arg(
                name: 'source-serve'
              )
              ]
            ),
            Option(
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
              )
              ]
            ),
            Option(
              name: '--geo-redundant-backup',
              description: 'Enable or disable geo-redundant backups. Default value is Disabled. Not supported in Basic pricing tier',
              args: [
                Arg(
                name: 'geo-redundant-backu'
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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sku-name',
              description: 'The name of the sku. Defaults to sku of the source server. Follows the convention {pricing tier}{compute generation}{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16',
              args: [
                Arg(
                name: 'sku-nam'
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
          description: 'List available servers',
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
          name: 'list-skus',
          description: 'List available sku\'s in the given region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The name of the location. Required',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restart',
          description: 'Restart a server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'restore',
          description: 'Restore a server from backup',
          options: [

            Option(
              name: ['--restore-point-in-time', '--pitr-time'],
              description: 'The point in time in UTC to restore from (ISO8601 format), e.g., 2017-04-26T02:10:00+08:00',
              args: [
                Arg(
                name: 'restore-point-in-tim'
              )
              ]
            ),
            Option(
              name: ['--source-server', '-s'],
              description: 'The name or resource ID of the source server to restore from',
              args: [
                Arg(
                name: 'source-serve'
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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
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
          description: 'Get the details of a server',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
          name: 'show-connection-string',
          description: 'Show the connection strings for a PostgreSQL server database',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'The login password of the administrator',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'The login username of the administrator',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--database-name', '-d'],
              description: 'The name of a database',
              args: [
                Arg(
                name: 'database-nam'
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
              name: ['--server-name', '-s'],
              description: 'Name of the server',
              args: [
                Arg(
                name: 'server-nam'
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
          description: 'Update a server',
          options: [

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
              name: ['--admin-password', '-p'],
              description: 'The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: '--assign-identity',
              description: 'Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault'
            ),
            Option(
              name: '--auto-grow',
              description: 'Enable or disable autogrow of the storage. Default value is Enabled',
              args: [
                Arg(
                name: 'auto-grow',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
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
              name: '--minimal-tls-version',
              description: 'Set the minimal TLS version for connections to server when SSL is enabled. Default is TLSEnforcementDisabled',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: 'TLS1_0'),
                  FigSuggestion(name: 'TLS1_1'),
                  FigSuggestion(name: 'TLS1_2'),
                  FigSuggestion(name: 'TLSEnforcementDisabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--public-network-access', '--public'],
              description: 'Enable or disable public network access to server. When disabled, only connections made through Private Links can reach this server. Allowed values are : Enabled, Disabled, all, 0.0.0.0, , . Default is Enabled',
              args: [
                Arg(
                name: 'public-network-acces'
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
              name: '--sku-name',
              description: 'The name of the sku. Follows the convention {pricing tier}{compute generation}{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16',
              args: [
                Arg(
                name: 'sku-nam'
              )
              ]
            ),
            Option(
              name: '--ssl-enforcement',
              description: 'Enable or disable ssl enforcement for connections to server. Default is Enabled',
              args: [
                Arg(
                name: 'ssl-enforcement',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-size',
              description: 'The storage capacity of the server (unit is megabytes). Minimum 5120 and increases in 1024 increments. Default is 5120',
              args: [
                Arg(
                name: 'storage-siz'
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
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Wait for server to satisfy certain conditions',
          options: [

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
              name: ['--name', '-n'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'ad-admin',
          description: 'Manage a postgres server\'s Active Directory administrator',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Active Directory Administrator for PostgreSQL server',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--display-name', '-u'],
                  description: 'Display name of the Azure AD administrator user or group',
                  args: [
                    Arg(
                    name: 'display-nam'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: ['--object-id', '-i'],
                  description: 'The unique ID of the Azure AD administrator',
                  args: [
                    Arg(
                    name: 'object-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Active Directory Administrator for PostgreSQL server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'List all Active Directory Administrators for PostgreSQL server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Get Active Directory Administrator information for a PostgreSQL server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Place the CLI in a waiting state until a condition of the PostgreSQL server Active Directory Administrator is met',
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
          name: 'configuration',
          description: 'Manage configuration values for a server',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the configuration values for a server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'set',
              description: 'Update the configuration of a server',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the configuration',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
                  name: '--value',
                  description: 'Value of the configuration. If not provided, configuration value will be set to default',
                  args: [
                    Arg(
                    name: 'valu'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the configuration for a server."',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the server configuration. Required',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'firewall-rule',
          description: 'Manage firewall rules for a server',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new firewall rule for a server',
              options: [

                Option(
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the firewall rule. The firewall rule name cannot be empty. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a firewall rule',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the firewall rule. The firewall rule name cannot be empty. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'List all firewall rules for a server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Get the details of a firewall rule',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the firewall rule. The firewall rule name cannot be empty. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Update a firewall rule',
              options: [

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
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
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
                  name: ['--name', '-n'],
                  description: 'The name of the firewall rule. The firewall rule name cannot be empty. The firewall rule name can only contain 0-9, a-z, A-Z, \'-\' and \'_\'. Additionally, the name of the firewall rule must be at least 3 characters and no more than 128 characters in length',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
                  name: '--start-ip-address',
                  description: 'The start IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'start-ip-addres'
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
            )
          ]
        ),
        Subcommand(
          name: 'key',
          description: 'Manage PostgreSQL server keys',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create server key',
              options: [

                Option(
                  name: ['--kid', '-k'],
                  description: 'The Azure Key Vault key identifier of the server key. An example key identifier is "https://YourVaultName.vault.azure.net/keys/YourKeyName/01234567890123456789012345678901"',
                  args: [
                    Arg(
                    name: 'ki'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
              name: 'delete',
              description: 'Delete server key',
              options: [

                Option(
                  name: ['--kid', '-k'],
                  description: 'The Azure Key Vault key identifier of the server key. An example key identifier is "https://YourVaultName.vault.azure.net/keys/YourKeyName/01234567890123456789012345678901"',
                  args: [
                    Arg(
                    name: 'ki'
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
                  name: ['--name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'Gets a list of  Server keys',
              options: [

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
                  name: ['--name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'Show server key',
              options: [

                Option(
                  name: ['--kid', '-k'],
                  description: 'The Azure Key Vault key identifier of the server key. An example key identifier is "https://YourVaultName.vault.azure.net/keys/YourKeyName/01234567890123456789012345678901"',
                  args: [
                    Arg(
                    name: 'ki'
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
                  name: ['--name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'private-endpoint-connection',
          description: 'Manage PostgreSQL server private endpoint connections',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve the specified private endpoint connection associated with a PostgreSQL server',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for approve operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Server. If specified --server-name/-s and --name/-n, this should be omitted',
                  args: [
                    Arg(
                    name: 'i'
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
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '-s'],
                  description: 'Name of the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'delete',
              description: 'Delete the specified private endpoint connection associated with a PostgreSQL server',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Server. If specified --server-name/-s and --name/-n, this should be omitted',
                  args: [
                    Arg(
                    name: 'i'
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
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '-s'],
                  description: 'Name of the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'reject',
              description: 'Reject the specified private endpoint connection associated with a PostgreSQL server',
              options: [

                Option(
                  name: '--description',
                  description: 'Comments for reject operation',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Server. If specified --server-name/-s and --name/-n, this should be omitted',
                  args: [
                    Arg(
                    name: 'i'
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
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '-s'],
                  description: 'Name of the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Show details of a private endpoint connection associated with a PostgreSQL server',
              options: [

                Option(
                  name: '--id',
                  description: 'The ID of the private endpoint connection associated with the Server. If specified --server-name/-s and --name/-n, this should be omitted',
                  args: [
                    Arg(
                    name: 'i'
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
                  name: ['--name', '-n'],
                  description: 'The name of the private endpoint connection associated with the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'The resource group name of specified server',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '-s'],
                  description: 'Name of the Server. Required if --id is not specified',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'private-link-resource',
          description: 'Manage PostgreSQL server private link resources',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the private link resources supported for a PostgreSQL server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the Server',
                  args: [
                    Arg(
                    name: 'server-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'replica',
          description: 'Manage read replicas',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a read replica for a server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--source-server', '-s'],
                  description: 'The name or resource ID of the master server to the create replica for',
                  args: [
                    Arg(
                    name: 'source-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. If not provided, the create replica will be in the same location as the master server',
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
                  name: '--sku-name',
                  description: 'The name of the sku. Follows the convention {pricing tier}{compute generation}{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16',
                  args: [
                    Arg(
                    name: 'sku-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list',
              description: 'List all read replicas for a given server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the master server',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              name: 'stop',
              description: 'Stop replication to a read replica and make it a read/write server',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'vnet-rule',
          description: 'Manage a server\'s virtual network rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a virtual network rule to allows access to a PostgreSQL server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the vnet rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of the subnet that allows access to an Azure Postgres Server. If subnet name is provided, --vnet-name must be provided',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create vnet rule before virtual network has vnet service endpoint enabled',
                  args: [
                    Arg(
                    name: 'ignore-missing-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--vnet-name',
                  description: 'The virtual network name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the virtual network rule with the given name',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the vnet rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Gets a list of virtual network rules in a server',
              options: [

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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Gets a virtual network rule',
              options: [

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
                  name: ['--name', '-n'],
                  description: 'The name of the vnet rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
              description: 'Update a virtual network rule',
              options: [

                Option(
                  name: '--subnet',
                  description: 'Name or ID of the subnet that allows access to an Azure Postgres Server. If subnet name is provided, --vnet-name must be provided',
                  args: [
                    Arg(
                    name: 'subne'
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
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create vnet rule before virtual network has vnet service endpoint enabled',
                  args: [
                    Arg(
                    name: 'ignore-missing-endpoint',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the vnet rule',
                  args: [
                    Arg(
                    name: 'nam'
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
                  name: ['--server-name', '-s'],
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
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
                  name: '--vnet-name',
                  description: 'The virtual network name',
                  args: [
                    Arg(
                    name: 'vnet-nam'
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
      name: 'server-arc',
      description: 'Manage Azure Arc enabled PostgreSQL servers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an Azure Arc enabled PostgreSQL server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ad-account-name',
              description: 'The Active Directory account name for this Azure Arc enabled PostgreSQL server. This account needs to be created prior to the deployment of this instance',
              args: [
                Arg(
                name: 'ad-account-nam'
              )
              ]
            ),
            Option(
              name: '--ad-connector-name',
              description: 'The name of the Active Directory Connector. This parameter indicates an intent to deploy with AD support',
              args: [
                Arg(
                name: 'ad-connector-nam'
              )
              ]
            ),
            Option(
              name: '--admin-login-secret',
              description: 'Name of the Kubernetes secret to generate that hosts or will host user admin login account credential',
              args: [
                Arg(
                name: 'admin-login-secre'
              )
              ]
            ),
            Option(
              name: '--cert-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for client SSL connections',
              args: [
                Arg(
                name: 'cert-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--cert-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for client SSL connections',
              args: [
                Arg(
                name: 'cert-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--cores-limit',
              description: 'The maximum number of CPU cores that can be used for Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'cores-limi'
              )
              ]
            ),
            Option(
              name: '--cores-request',
              description: 'The minimum number of CPU cores that must be available per node to schedule the service',
              args: [
                Arg(
                name: 'cores-reques'
              )
              ]
            ),
            Option(
              name: '--dev',
              description: 'If this is specified, then it is considered a dev instance and will not be billed for',
              args: [
                Arg(
                name: 'de'
              )
              ]
            ),
            Option(
              name: '--dns-name',
              description: 'The service DNS name exposed to the end-users to connect to this Azure Arc enabled PostgreSQL server (e.g. pginstancename.contoso.com)',
              args: [
                Arg(
                name: 'dns-nam'
              )
              ]
            ),
            Option(
              name: '--extensions',
              description: 'Comma seperated list of extensions to be enabled. Once enabled, extension can be installed via \'CREATE EXTENSION\' command',
              args: [
                Arg(
                name: 'extension'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL server is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--keytab-secret',
              description: 'The name of the Kubernetes secret that contains the keytab file for this Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'keytab-secre'
              )
              ]
            ),
            Option(
              name: '--log-level',
              description: 'Sets the log_min_messages setting for the PostgreSQL engine. Valid values are: DEBUG5, DEBUG4, DEBUG3, DEBUG2, DEBUG1, INFO, NOTICE, WARNING, ERROR, LOG, FATAL, PANIC',
              args: [
                Arg(
                name: 'log-leve'
              )
              ]
            ),
            Option(
              name: '--memory-limit',
              description: 'The memory limit of the Azure Arc enabled PostgreSQL server as a number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'memory-limi'
              )
              ]
            ),
            Option(
              name: '--memory-request',
              description: 'The memory request of the Azure Arc enabled PostgreSQL server as a number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'memory-reques'
              )
              ]
            ),
            Option(
              name: '--no-external-endpoint',
              description: 'If specified, no external service will be created. Otherwise, an external service will be created using either the type given with the --service-type argument or the same service type as the data controller',
              args: [
                Arg(
                name: 'no-external-endpoin'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for deployment to be ready before returning'
            ),
            Option(
              name: '--path',
              description: 'The path to the source json file for the Azure Arc enabled PostgreSQL server. This is optional',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port number on which the primary service is exposed to the end-users',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--retention-days',
              description: 'Backup retention period, specified in days. Allowed values are 0 to 35. Default is 7. Setting the retention period to 0 will turn off automatic backups for Azure Arc enabled PostgreSql',
              args: [
                Arg(
                name: 'retention-day'
              )
              ]
            ),
            Option(
              name: '--service-annotations',
              description: 'Comma-separated list of annotations to apply to all external services',
              args: [
                Arg(
                name: 'service-annotation'
              )
              ]
            ),
            Option(
              name: '--service-cert-secret',
              description: 'Name of the Kubernetes secret to generate that hosts the SSL certificate',
              args: [
                Arg(
                name: 'service-cert-secre'
              )
              ]
            ),
            Option(
              name: '--service-labels',
              description: 'Comma-separated list of labels to apply to all external services',
              args: [
                Arg(
                name: 'service-label'
              )
              ]
            ),
            Option(
              name: '--service-type',
              description: 'The type for the primary service',
              args: [
                Arg(
                name: 'service-typ'
              )
              ]
            ),
            Option(
              name: '--storage-class-backups',
              description: 'The storage class to be used for backup persistent volumes',
              args: [
                Arg(
                name: 'storage-class-backup'
              )
              ]
            ),
            Option(
              name: '--storage-class-data',
              description: 'The storage class to be used for data persistent volumes',
              args: [
                Arg(
                name: 'storage-class-dat'
              )
              ]
            ),
            Option(
              name: '--storage-class-logs',
              description: 'The storage class to be used for logs persistent volumes',
              args: [
                Arg(
                name: 'storage-class-log'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            ),
            Option(
              name: '--volume-size-backups',
              description: 'The size of the storage volume to be used for backups as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-backup'
              )
              ]
            ),
            Option(
              name: '--volume-size-data',
              description: 'The size of the storage volume to be used for data as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-dat'
              )
              ]
            ),
            Option(
              name: '--volume-size-logs',
              description: 'The size of the storage volume to be used for logs as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-log'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Azure Arc enabled PostgreSQL server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--force', '-f'],
              description: 'Delete the Azure Arc enabled PostgreSQL server without confirmation'
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL server is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List Azure Arc enabled PostgreSQL server',
          options: [

            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL servers are deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Restore an Azure Arc enabled PostgreSQL server from backup from another server',
          options: [

            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace that contains the Azure Arc enabled PostgreSql. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Arc enabled PostgreSQL server to be created',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--source-server',
              description: 'The name of the Azure Arc enabled PostgreSQL server to restore from',
              args: [
                Arg(
                name: 'source-serve'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'If set, validates the source and destination resources and the time, without performing the restore. The earliest and latest possible restore times are returned in the status of the restore task'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for deployment to be ready before returning'
            ),
            Option(
              name: '--storage-class-backups',
              description: 'The storage class to be used for backup persistent volumes',
              args: [
                Arg(
                name: 'storage-class-backup'
              )
              ]
            ),
            Option(
              name: '--storage-class-data',
              description: 'The storage class to be used for data persistent volumes',
              args: [
                Arg(
                name: 'storage-class-dat'
              )
              ]
            ),
            Option(
              name: '--storage-class-logs',
              description: 'The storage class to be used for logs persistent volumes',
              args: [
                Arg(
                name: 'storage-class-log'
              )
              ]
            ),
            Option(
              name: ['--time', '-t'],
              description: 'The point in time of the source server that will be restored to create the new Azure Arc enabled PostgreSQL server. Must be greater than or equal to the source database\'s earliest restore date/time value. Time should be in following format: \'YYYY-MM-DDTHH:MM:SSZ\'. If no time is provided, the most recent backup will be restored',
              args: [
                Arg(
                name: 'tim'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            ),
            Option(
              name: '--volume-size-backups',
              description: 'The size of the storage volume to be used for backups as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-backup'
              )
              ]
            ),
            Option(
              name: '--volume-size-data',
              description: 'The size of the storage volume to be used for data as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-dat'
              )
              ]
            ),
            Option(
              name: '--volume-size-logs',
              description: 'The size of the storage volume to be used for logs as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-log'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of an Azure Arc enabled PostgreSQL server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL server is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'A path where the full specification for the Azure Arc enabled PostgreSQL server should be written. If omitted, the specification will be written to standard output',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'Update the configuration of an Azure Arc enabled PostgreSQL server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure Arc enabled PostgreSQL server that is being updated. The name under which your instance is deployed cannot be changed',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--cert-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for client SSL connections',
              args: [
                Arg(
                name: 'cert-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--cert-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for client SSL connections',
              args: [
                Arg(
                name: 'cert-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--cores-limit',
              description: 'The maximum number of CPU cores for Azure Arc enabled PostgreSQL server that can be used per node. To remove the cores_limit, specify its value as empty string',
              args: [
                Arg(
                name: 'cores-limi'
              )
              ]
            ),
            Option(
              name: '--cores-request',
              description: 'The minimum number of CPU cores that must be available per node to schedule the service. To remove the cores_request, specify its value as empty string',
              args: [
                Arg(
                name: 'cores-reques'
              )
              ]
            ),
            Option(
              name: '--dev',
              description: 'If this is specified, then it is considered a dev instance and will not be billed for',
              args: [
                Arg(
                name: 'de'
              )
              ]
            ),
            Option(
              name: '--extensions',
              description: 'Comma seperated list of extensions to be enabled. To Add or remove a new extension update the existing list of extensions. Once enabled, extension can be installed via \'CREATE EXTENSION\' command',
              args: [
                Arg(
                name: 'extension'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL server is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--keytab-secret',
              description: 'The name of the Kubernetes secret that contains the keytab file for this Azure Arc enabled PostgreSQL server',
              args: [
                Arg(
                name: 'keytab-secre'
              )
              ]
            ),
            Option(
              name: '--log-level',
              description: 'Sets the log_min_messages setting for the PostgreSQL engine. Valid values are: DEBUG5, DEBUG4, DEBUG3, DEBUG2, DEBUG1, INFO, NOTICE, WARNING, ERROR, LOG, FATAL, PANIC',
              args: [
                Arg(
                name: 'log-leve'
              )
              ]
            ),
            Option(
              name: '--memory-limit',
              description: 'The memory limit for Azure Arc enabled PostgreSQL server as a number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes). To remove the memory_limit, specify its value as empty string',
              args: [
                Arg(
                name: 'memory-limi'
              )
              ]
            ),
            Option(
              name: '--memory-request',
              description: 'The memory request for Azure Arc enabled PostgreSQL server as a number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes). To remove the memory_request, specify its value as empty string',
              args: [
                Arg(
                name: 'memory-reques'
              )
              ]
            ),
            Option(
              name: '--no-external-endpoint',
              description: 'If specified, no external service will be created. Otherwise, an external service will be created using either the type given with the --service-type argument or the same service type as the data controller',
              args: [
                Arg(
                name: 'no-external-endpoin'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for deployment to be ready before returning'
            ),
            Option(
              name: '--path',
              description: 'The path to the source json file for the Azure Arc enabled PostgreSQL server. This is optional',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'The port number on which the primary service is exposed to the end-users',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--retention-days',
              description: 'Backup retention period, specified in days. Allowed values are 0 to 35. Default is 7. Setting the retention period to 0 will turn off automatic backups for Azure Arc enabled PostgreSql',
              args: [
                Arg(
                name: 'retention-day'
              )
              ]
            ),
            Option(
              name: '--service-annotations',
              description: 'Comma-separated list of annotations to apply to all external services',
              args: [
                Arg(
                name: 'service-annotation'
              )
              ]
            ),
            Option(
              name: '--service-cert-secret',
              description: 'Name of the Kubernetes secret to generate that hosts the SSL certificate',
              args: [
                Arg(
                name: 'service-cert-secre'
              )
              ]
            ),
            Option(
              name: '--service-labels',
              description: 'Comma-separated list of labels to apply to all external services',
              args: [
                Arg(
                name: 'service-label'
              )
              ]
            ),
            Option(
              name: '--service-type',
              description: 'The type for the primary service',
              args: [
                Arg(
                name: 'service-typ'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Use local Kubernetes APIs to perform this action',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'endpoint',
          description: 'Manage Azure Arc enabled PostgreSQL server endpoints',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List Azure Arc enabled PostgreSQL server endpoints',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure Arc enabled PostgreSQL server',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'The Kubernetes namespace where the Azure Arc enabled PostgreSQL server is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: '--use-k8s',
                  description: 'Use local Kubernetes APIs to perform this action',
                  args: [
                    Arg(
                    name: 'use-k8'
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
      name: 'server-logs',
      description: 'Manage server logs',
      subcommands: [

        Subcommand(
          name: 'download',
          description: 'Download log files',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Space-separated list of log filenames on the server to download',
              args: [
                Arg(
                name: 'nam'
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
              name: ['--server-name', '-s'],
              description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
              args: [
                Arg(
                name: 'server-nam'
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
          description: 'List log files for a server',
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
              name: ['--server-name', '-s'],
              description: 'Name of the Server',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: '--file-last-written',
              description: 'Integer in hours to indicate file last modify time, default value is 72',
              args: [
                Arg(
                name: 'file-last-writte'
              )
              ]
            ),
            Option(
              name: '--filename-contains',
              description: 'The pattern that file name should match',
              args: [
                Arg(
                name: 'filename-contain'
              )
              ]
            ),
            Option(
              name: '--max-file-size',
              description: 'The file size limitation to filter files',
              args: [
                Arg(
                name: 'max-file-siz'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
