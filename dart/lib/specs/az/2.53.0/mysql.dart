// Auto-generated from TypeScript source: mysql.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `mysql` CLI
final FigSpec mysqlSpec = FigSpec(
  name: 'mysql',
  description: 'Manage Azure Database for MySQL servers',
  subcommands: [

    Subcommand(
      name: 'db',
      description: 'Manage MySQL databases on a server',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a MySQL database',
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
      description: 'Delete the MySQL server and its cached information',
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
      description: 'Show the connection strings for a MySQL server database',
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
      description: 'Set up an Azure Database for MySQL server and configurations',
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
      description: 'Manage Azure Database for MySQL Flexible Servers',
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
          description: 'Create a MySQL flexible server',
          options: [

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
              name: '--auto-scale-iops',
              description: 'Enable or disable the auto scale iops. Default value is Disabled',
              args: [
                Arg(
                name: 'auto-scale-iops',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
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
              description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
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
              name: '--iops',
              description: 'Number of IOPS to be allocated for this server. You will get certain amount of free IOPS based on compute and storage provisioned. The default value for IOPS is free IOPS. To learn more about IOPS based on compute and storage, refer to IOPS in Azure Database for MySQL Flexible Server',
              args: [
                Arg(
                name: 'iop'
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
              name: '--private-dns-zone',
              description: 'This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
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
              description: 'Name or resource ID of a new or existing subnet. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
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
              description: 'Name or ID of a new or existing virtual network. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
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
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
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
              name: '--private-dns-zone',
              description: 'This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
              )
              ]
            ),
            Option(
              name: '--public-access',
              description: 'Determines the public access',
              args: [
                Arg(
                name: 'public-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--sku-name',
              description: 'The name of the compute SKU. Follows the convention Standard_{VM name}. Examples: Standard_B1ms',
              args: [
                Arg(
                name: 'sku-nam'
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
              description: 'Name or resource ID of a new or existing subnet. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
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
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
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
              description: 'Forced failover for server restart operation. Allowed values: Forced',
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
              name: '--backup-retention',
              description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
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
              name: '--private-dns-zone',
              description: 'This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
              args: [
                Arg(
                name: 'private-dns-zon'
              )
              ]
            ),
            Option(
              name: '--public-access',
              description: 'Determines the public access',
              args: [
                Arg(
                name: 'public-access',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
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
              name: '--restore-time',
              description: 'The point in time in UTC to restore from (ISO8601 format), e.g., 2017-04-26T02:10:00+00:00The default value is set to current time',
              args: [
                Arg(
                name: 'restore-tim'
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
              description: 'Name or resource ID of a new or existing subnet. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
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
              name: '--vnet',
              description: 'Name or ID of a new or existing virtual network. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
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
          description: 'Show the connection strings for a MySQL flexible-server database',
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
              name: '--auto-scale-iops',
              description: 'Enable or disable the auto scale iops. Default value is Disabled',
              args: [
                Arg(
                name: 'auto-scale-iops',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
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
              description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
              args: [
                Arg(
                name: 'backup-retentio'
              )
              ]
            ),
            Option(
              name: '--disable-data-encryption',
              description: 'Disable data encryption by removing key(s)'
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
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
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: '--iops',
              description: 'Number of IOPS to be allocated for this server. You will get certain amount of free IOPS based on compute and storage provisioned. The default value for IOPS is free IOPS. To learn more about IOPS based on compute and storage, refer to IOPS in Azure Database for MySQL Flexible Server',
              args: [
                Arg(
                name: 'iop'
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
              name: '--public-access',
              description: 'Enable or disable the public access on a server',
              args: [
                Arg(
                name: 'public-access',
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
              name: '--replication-role',
              description: 'The replication role of the server',
              args: [
                Arg(
                name: 'replication-rol'
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

                  FigSuggestion(name: '8')
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
          description: 'Manage server Active Directory administrator',
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
                  name: '--identity',
                  description: 'Name or ID of identity used for AAD Authentication',
                  args: [
                    Arg(
                    name: 'identit'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete an Active Directory administrator',
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
              description: 'Wait for the Active Directory administrator to satisfy certain conditions',
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
              name: 'create',
              description: 'Create a backup for a given server with specified backup name',
              options: [

                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the new backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
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
                )
              ]
            ),
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
          description: 'Manage MySQL databases on a flexible server',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a MySQL database on a flexible server',
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
          description: 'Enable and run GitHub Actions workflow for MySQL server',
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
              description: 'Create GitHub Actions workflow file for MySQL server',
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
          name: 'export',
          description: 'Manage export backup on a server',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an export backup for a given server with specified backup name',
              options: [

                Option(
                  name: ['--backup-name', '-b'],
                  description: 'The name of the new export backup',
                  args: [
                    Arg(
                    name: 'backup-nam'
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
                  name: ['--sas-uri', '-u'],
                  description: 'SAS URI for destination container',
                  args: [
                    Arg(
                    name: 'sas-ur'
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
          name: 'gtid',
          description: 'Manage GTID on a server',
          subcommands: [

            Subcommand(
              name: 'reset',
              description: 'Resets GTID on a server',
              options: [

                Option(
                  name: '--gtid-set',
                  description: 'A GTID set is a set comprising one or more single GTIDs or ranges of GTIDs. A GTID is represented as a pair of coordinates, separated by a colon character (:), as shown: source_id:transaction_id',
                  args: [
                    Arg(
                    name: 'gtid-se'
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
          name: 'import',
          description: 'Manage import workflows for MySQL Flexible Servers',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new import workflow for flexible server',
              options: [

                Option(
                  name: '--data-source',
                  description: 'Data source for importing to Flexible Server. Based on the data source type provide the data source as mentioned below. e.g., mysql_single: The name or resource ID of the Azure MySQL single server',
                  args: [
                    Arg(
                    name: 'data-sourc'
                  )
                  ]
                ),
                Option(
                  name: '--data-source-type',
                  description: 'Data source type. e.g., mysql_single: Azure Database for MySQL Servers',
                  args: [
                    Arg(
                    name: 'data-source-type',
                    suggestions: [

                      FigSuggestion(name: 'mysql_single')
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                  name: '--auto-scale-iops',
                  description: 'Enable or disable the auto scale iops. Default value is Disabled',
                  args: [
                    Arg(
                    name: 'auto-scale-iops',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
                  args: [
                    Arg(
                    name: 'backup-retentio'
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
                  name: '--iops',
                  description: 'Number of IOPS to be allocated for this server. You will get certain amount of free IOPS based on compute and storage provisioned. The default value for IOPS is free IOPS. To learn more about IOPS based on compute and storage, refer to IOPS in Azure Database for MySQL Flexible Server',
                  args: [
                    Arg(
                    name: 'iop'
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
                  name: '--mode',
                  description: 'Mode of import. Enum values: [Offline]. Default is Offline',
                  args: [
                    Arg(
                    name: 'mode',
                    suggestions: [

                      FigSuggestion(name: 'Offline')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--private-dns-zone',
                  description: 'This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
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
                  description: 'Name or resource ID of a new or existing subnet. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
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
                  description: 'Name or ID of a new or existing virtual network. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
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
                ),
                Option(
                  name: '--keyword',
                  description: 'The keyword of the server configuration. Default value is None',
                  args: [
                    Arg(
                    name: 'keywor'
                  )
                  ]
                ),
                Option(
                  name: '--page',
                  description: 'The page of the server configuration. Default value is None',
                  args: [
                    Arg(
                    name: 'pag'
                  )
                  ]
                ),
                Option(
                  name: '--page-size',
                  description: 'The pageSize of the server configuration. Default value is None',
                  args: [
                    Arg(
                    name: 'page-siz'
                  )
                  ]
                ),
                Option(
                  name: '--tags',
                  description: 'The tags of the server configuration. Default value is None',
                  args: [
                    Arg(
                    name: 'tag'
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
              name: 'set-batch',
              description: 'Batch update parameters of a flexible server',
              options: [

                Option(
                  name: '--args',
                  description: 'List of the configuration key-value pair',
                  args: [
                    Arg(
                    name: 'arg'
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
                  name: '--backup-retention',
                  description: 'The number of days a backup is retained. Range of 1 to 35 days. Default is 7 days',
                  args: [
                    Arg(
                    name: 'backup-retentio'
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
                  name: '--iops',
                  description: 'Number of IOPS to be allocated for this server. You will get certain amount of free IOPS based on compute and storage provisioned. The default value for IOPS is free IOPS. To learn more about IOPS based on compute and storage, refer to IOPS in Azure Database for MySQL Flexible Server',
                  args: [
                    Arg(
                    name: 'iop'
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
                  description: 'This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. The name or id of new or existing private dns zone. You can use the private dns zone from same resource group, different resource group, or different subscription. If you want to use a zone from different resource group or subscription, please provide resource Id. CLI creates a new private dns zone within the same resource group as virtual network if not provided by users',
                  args: [
                    Arg(
                    name: 'private-dns-zon'
                  )
                  ]
                ),
                Option(
                  name: '--public-access',
                  description: 'Determines the public access',
                  args: [
                    Arg(
                    name: 'public-access',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  description: 'Name or resource ID of a new or existing subnet. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a subnet from different resource group or subscription, please provide resource ID instead of name. Please note that the subnet will be delegated to flexibleServers. After delegation, this subnet cannot be used for any other type of Azure resources',
                  args: [
                    Arg(
                    name: 'subne'
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
                  name: '--vnet',
                  description: 'Name or ID of a new or existing virtual network. This parameter only applies if you are creating cross region replica server with private access. For in-region read replica with private access, source server settings are carried over and this parameter is ignored. If you want to use a vnet from different resource group or subscription, please provide a resource ID. The name must be between 2 to 64 characters. The name must begin with a letter or number, end with a letter, number or underscore, and may contain only letters, numbers, underscores, periods, or hyphens',
                  args: [
                    Arg(
                    name: 'vne'
                  )
                  ]
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
                  description: 'Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                ),
                Option(
                  name: '--file-last-written',
                  description: 'Integer in hours to indicate file last modify time',
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
    ),
    Subcommand(
      name: 'server',
      description: 'Manage MySQL servers',
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
              description: 'Server major version',
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
          description: 'Show the connection strings for a MySQL server database',
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
          name: 'start',
          description: 'Start a stopped server',
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
          name: 'stop',
          description: 'Stop a running server',
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
          name: 'upgrade',
          description: 'Upgrade mysql server to a higher version, like 5.6 to 5.7',
          options: [

            Option(
              name: ['--target-server-version', '-t'],
              description: 'The server version you want to upgrade your mysql server to, currently only support 5.7',
              args: [
                Arg(
                name: 'target-server-versio'
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
          description: 'Manage a MySQL server\'s Active Directory administrator',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an Active Directory administrator for MySQL server',
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
              description: 'Delete an Active Directory Administrator for MySQL server',
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
              description: 'List all Active Directory Administrators for MySQL server',
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
              description: 'Get Active Directory Administrator information for a MySQL server',
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
              description: 'Place the CLI in a waiting state until a condition of the MySQL server Active Directory Administrator is met',
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
          description: 'Manage MySQL server keys',
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
          description: 'Manage MySQL server private endpoint connections',
          subcommands: [

            Subcommand(
              name: 'approve',
              description: 'Approve the specified private endpoint connection associated with a MySQL server',
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
              description: 'Delete the specified private endpoint connection associated with a MySQL server',
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
              description: 'Reject the specified private endpoint connection associated with a MySQL server',
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
              description: 'Show details of a private endpoint connection associated with a MySQL server',
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
          description: 'Manage MySQL server private link resources',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the private link resources supported for a MySQL server',
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
              description: 'Create a virtual network rule to allows access to a MySQL server',
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
