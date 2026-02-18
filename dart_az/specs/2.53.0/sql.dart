// Auto-generated from TypeScript source: sql.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sql` CLI
final FigSpec sqlSpec = FigSpec(
  name: 'sql',
  description: 'Manage Azure SQL Databases and Data Warehouses',
  subcommands: [

    Subcommand(
      name: 'db',
      description: 'Manage databases',
      subcommands: [

        Subcommand(
          name: 'copy',
          description: 'Create a copy of a database',
          options: [

            Option(
              name: '--dest-name',
              description: 'Name of the database that will be created as the copy destination',
              args: [
                Arg(
                name: 'dest-nam'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Assign identity for database',
              args: [
                Arg(
                name: 'assign-identity',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-pause-delay',
              description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
              args: [
                Arg(
                name: 'auto-pause-dela'
              )
              ]
            ),
            Option(
              name: '--availability-zone',
              description: 'Availability zone',
              args: [
                Arg(
                name: 'availability-zon'
              )
              ]
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--compute-model',
              description: 'The compute model of the database',
              args: [
                Arg(
                name: 'compute-model',
                suggestions: [

                  FigSuggestion(name: 'Provisioned'),
                  FigSuggestion(name: 'Serverless')
                ]
              )
              ]
            ),
            Option(
              name: '--dest-resource-group',
              description: 'Name of the resource group to create the copy in. If unspecified, defaults to the origin resource group',
              args: [
                Arg(
                name: 'dest-resource-grou'
              )
              ]
            ),
            Option(
              name: '--dest-server',
              description: 'Name of the server to create the copy in. If unspecified, defaults to the origin server',
              args: [
                Arg(
                name: 'dest-serve'
              )
              ]
            ),
            Option(
              name: '--elastic-pool',
              description: 'The name or resource id of the elastic pool to create the database in',
              args: [
                Arg(
                name: 'elastic-poo'
              )
              ]
            ),
            Option(
              name: '--encryption-protector',
              description: 'Specifies the Azure key vault key to be used as database encryption protector key',
              args: [
                Arg(
                name: 'encryption-protecto'
              )
              ]
            ),
            Option(
              name: ['--encryption-protector-auto-rotation', '--epauto'],
              description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
              args: [
                Arg(
                name: 'encryption-protector-auto-rotation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--federated-client-id',
              description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
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
              name: '--keys',
              description: 'The list of AKV keys for the SQL Database',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: '--min-capacity',
              description: 'Minimal capacity that database will always have allocated, if not paused',
              args: [
                Arg(
                name: 'min-capacit'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Database',
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
              name: '--preferred-enclave-type',
              description: 'Specifies type of enclave for this resource',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
                ]
              )
              ]
            ),
            Option(
              name: '--read-scale',
              description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
              args: [
                Arg(
                name: 'read-scale',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: ['--service-level-objective', '--service-objective'],
              description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
              args: [
                Arg(
                name: 'service-level-objectiv'
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
              name: ['--user-assigned-identity-id', '--umi'],
              description: 'The list of user assigned identity for the SQL Database',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'create',
          description: 'Create a database',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Assign identity for database',
              args: [
                Arg(
                name: 'assign-identity',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-pause-delay',
              description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
              args: [
                Arg(
                name: 'auto-pause-dela'
              )
              ]
            ),
            Option(
              name: '--availability-zone',
              description: 'Availability zone',
              args: [
                Arg(
                name: 'availability-zon'
              )
              ]
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--catalog-collation',
              description: 'Collation of the metadata catalog',
              args: [
                Arg(
                name: 'catalog-collation',
                suggestions: [

                  FigSuggestion(name: 'DATABASE_DEFAULT'),
                  FigSuggestion(name: 'SQL_Latin1_General_CP1_CI_AS')
                ]
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
              name: '--compute-model',
              description: 'The compute model of the database',
              args: [
                Arg(
                name: 'compute-model',
                suggestions: [

                  FigSuggestion(name: 'Provisioned'),
                  FigSuggestion(name: 'Serverless')
                ]
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: '--elastic-pool',
              description: 'The name or resource id of the elastic pool to create the database in',
              args: [
                Arg(
                name: 'elastic-poo'
              )
              ]
            ),
            Option(
              name: '--encryption-protector',
              description: 'Specifies the Azure key vault key to be used as database encryption protector key',
              args: [
                Arg(
                name: 'encryption-protecto'
              )
              ]
            ),
            Option(
              name: ['--encryption-protector-auto-rotation', '--epauto'],
              description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
              args: [
                Arg(
                name: 'encryption-protector-auto-rotation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--federated-client-id',
              description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
              )
              ]
            ),
            Option(
              name: '--keys',
              description: 'The list of AKV keys for the SQL Database',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--ledger-on',
              description: 'Create a ledger database, in which the integrity of all data is protected by the ledger feature. All tables in the ledger database must be ledger tables. Note: the value of this property cannot be changed after the database has been created',
              args: [
                Arg(
                name: 'ledger-on',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: ['--maint-config-id', '-m'],
              description: 'Specified maintenance configuration id or name for this resource',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: '--max-size',
              description: 'The max storage size. If no unit is specified, defaults to bytes (B)',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: '--min-capacity',
              description: 'Minimal capacity that database will always have allocated, if not paused',
              args: [
                Arg(
                name: 'min-capacit'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--preferred-enclave-type',
              description: 'Specifies type of enclave for this resource',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
                ]
              )
              ]
            ),
            Option(
              name: '--read-scale',
              description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
              args: [
                Arg(
                name: 'read-scale',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--sample-name',
              description: 'The name of the sample schema to apply when creating thisdatabase',
              args: [
                Arg(
                name: 'sample-name',
                suggestions: [

                  FigSuggestion(name: 'AdventureWorksLT')
                ]
              )
              ]
            ),
            Option(
              name: ['--service-level-objective', '--service-objective'],
              description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
              args: [
                Arg(
                name: 'service-level-objectiv'
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
              name: ['--user-assigned-identity-id', '--umi'],
              description: 'The list of user assigned identity for the SQL Database',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          description: 'Delete a database',
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
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'export',
          description: 'Export a database to a bacpac',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'Required. Administrator login password',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Required. Administrator login name',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: '--storage-key',
              description: 'Required. Storage key',
              args: [
                Arg(
                name: 'storage-ke'
              )
              ]
            ),
            Option(
              name: '--storage-key-type',
              description: 'Required. Storage key type',
              args: [
                Arg(
                name: 'storage-key-type',
                suggestions: [

                  FigSuggestion(name: 'SharedAccessKey'),
                  FigSuggestion(name: 'StorageAccessKey')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-uri',
              description: 'Required. Storage Uri',
              args: [
                Arg(
                name: 'storage-ur'
              )
              ]
            ),
            Option(
              name: ['--auth-type', '-a'],
              description: 'Authentication type',
              args: [
                Arg(
                name: 'auth-type',
                suggestions: [

                  FigSuggestion(name: 'ADPassword'),
                  FigSuggestion(name: 'SQL')
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
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'import',
          description: 'Imports a bacpac into an existing database',
          options: [

            Option(
              name: ['--admin-password', '-p'],
              description: 'Required. Administrator login password',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Required. Administrator login name',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: '--storage-key',
              description: 'Required. Storage key',
              args: [
                Arg(
                name: 'storage-ke'
              )
              ]
            ),
            Option(
              name: '--storage-key-type',
              description: 'Required. Storage key type',
              args: [
                Arg(
                name: 'storage-key-type',
                suggestions: [

                  FigSuggestion(name: 'SharedAccessKey'),
                  FigSuggestion(name: 'StorageAccessKey')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-uri',
              description: 'Required. Storage Uri',
              args: [
                Arg(
                name: 'storage-ur'
              )
              ]
            ),
            Option(
              name: ['--auth-type', '-a'],
              description: 'Authentication type',
              args: [
                Arg(
                name: 'auth-type',
                suggestions: [

                  FigSuggestion(name: 'ADPassword'),
                  FigSuggestion(name: 'SQL')
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
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'List databases on a server or elastic pool',
          options: [

            Option(
              name: '--elastic-pool',
              description: 'If specified, lists only the databases in this elastic pool',
              args: [
                Arg(
                name: 'elastic-poo'
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'list-deleted',
          description: 'Gets a list of restorable dropped databases',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'list-editions',
          description: 'Show database editions available for the currently active subscription',
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
              name: ['--available', '-a'],
              description: 'If specified, show only results that are available in the specified region'
            ),
            Option(
              name: '--dtu',
              description: 'Number of DTUs to search for. If unspecified, all DTU sizes are shown',
              args: [
                Arg(
                name: 'dt'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'Edition to search for. If unspecified, all editions are shown',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: '--service-objective',
              description: 'Service objective to search for. If unspecified, all service objectives are shown',
              args: [
                Arg(
                name: 'service-objectiv'
              )
              ]
            ),
            Option(
              name: ['--show-details', '-d'],
              description: 'List of additional details to include in output',
              args: [
                Arg(
                name: 'show-details',
                suggestions: [

                  FigSuggestion(name: 'max-size')
                ]
              )
              ]
            ),
            Option(
              name: '--vcores',
              description: 'Number of vcores to search for. If unspecified, all vcore sizes are shown',
              args: [
                Arg(
                name: 'vcore'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-usages',
          description: 'Gets database usages',
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
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'rename',
          description: 'Rename a database',
          options: [

            Option(
              name: '--new-name',
              description: 'The new name that the database will be renamed to',
              args: [
                Arg(
                name: 'new-nam'
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
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Create a new database by restoring from a backup',
          options: [

            Option(
              name: '--dest-name',
              description: 'Name of the database that will be created as the restore destination',
              args: [
                Arg(
                name: 'dest-nam'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Assign identity for database',
              args: [
                Arg(
                name: 'assign-identity',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--auto-pause-delay',
              description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
              args: [
                Arg(
                name: 'auto-pause-dela'
              )
              ]
            ),
            Option(
              name: '--availability-zone',
              description: 'Availability zone',
              args: [
                Arg(
                name: 'availability-zon'
              )
              ]
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--compute-model',
              description: 'The compute model of the database',
              args: [
                Arg(
                name: 'compute-model',
                suggestions: [

                  FigSuggestion(name: 'Provisioned'),
                  FigSuggestion(name: 'Serverless')
                ]
              )
              ]
            ),
            Option(
              name: '--deleted-time',
              description: 'If specified, restore from a deleted database instead of from an existing database. Must match the deleted time of a deleted database in the same server. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS"',
              args: [
                Arg(
                name: 'deleted-tim'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: '--elastic-pool',
              description: 'The name or resource id of the elastic pool to create the database in',
              args: [
                Arg(
                name: 'elastic-poo'
              )
              ]
            ),
            Option(
              name: '--encryption-protector',
              description: 'Specifies the Azure key vault key to be used as database encryption protector key',
              args: [
                Arg(
                name: 'encryption-protecto'
              )
              ]
            ),
            Option(
              name: ['--encryption-protector-auto-rotation', '--epauto'],
              description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
              args: [
                Arg(
                name: 'encryption-protector-auto-rotation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--federated-client-id',
              description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
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
              name: '--keys',
              description: 'The list of AKV keys for the SQL Database',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: '--min-capacity',
              description: 'Minimal capacity that database will always have allocated, if not paused',
              args: [
                Arg(
                name: 'min-capacit'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Database',
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
              name: '--preferred-enclave-type',
              description: 'Specifies type of enclave for this resource',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
                ]
              )
              ]
            ),
            Option(
              name: '--read-scale',
              description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
              args: [
                Arg(
                name: 'read-scale',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: ['--service-level-objective', '--service-objective'],
              description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
              args: [
                Arg(
                name: 'service-level-objectiv'
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
              name: ['--time', '-t'],
              description: 'The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database\'s earliestRestoreDate value. Either --time or --deleted-time (or both) must be specified. Time should be in following format: "YYYY-MM-DDTHH:MM:SS"',
              args: [
                Arg(
                name: 'tim'
              )
              ]
            ),
            Option(
              name: ['--user-assigned-identity-id', '--umi'],
              description: 'The list of user assigned identity for the SQL Database',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'show',
          description: 'Get the details for a database',
          options: [

            Option(
              name: '--expand-keys',
              description: 'Expand the AKV keys for the database'
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
              name: '--keys-filter',
              description: 'Expand the AKV keys for the database',
              args: [
                Arg(
                name: 'keys-filte'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Database',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Generates a connection string to a database',
          options: [

            Option(
              name: ['--client', '-c'],
              description: 'Type of client connection provider',
              args: [
                Arg(
                name: 'client',
                suggestions: [

                  FigSuggestion(name: 'ado.net'),
                  FigSuggestion(name: 'jdbc'),
                  FigSuggestion(name: 'odbc'),
                  FigSuggestion(name: 'php'),
                  FigSuggestion(name: 'php_pdo'),
                  FigSuggestion(name: 'sqlcmd')
                ]
              )
              ]
            ),
            Option(
              name: ['--auth-type', '-a'],
              description: 'Type of authentication',
              args: [
                Arg(
                name: 'auth-type',
                suggestions: [

                  FigSuggestion(name: 'ADIntegrated'),
                  FigSuggestion(name: 'ADPassword'),
                  FigSuggestion(name: 'SqlPassword')
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
              description: 'Name of the Azure SQL Database',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'show-deleted',
          description: 'Get the details for a deleted database',
          options: [

            Option(
              name: ['--restorable-dropped-database-id', '-r'],
              description: 'Restorable dropped database id',
              args: [
                Arg(
                name: 'restorable-dropped-database-i'
              )
              ]
            ),
            Option(
              name: '--expand-keys',
              description: 'Expand the AKV keys for the database'
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
              name: '--keys-filter',
              description: 'Expand the AKV keys for the database',
              args: [
                Arg(
                name: 'keys-filte'
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Update a database',
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
              name: ['--assign-identity', '-i'],
              description: 'Assign identity for database'
            ),
            Option(
              name: '--auto-pause-delay',
              description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
              args: [
                Arg(
                name: 'auto-pause-dela'
              )
              ]
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--compute-model',
              description: 'The compute model of the database',
              args: [
                Arg(
                name: 'compute-model',
                suggestions: [

                  FigSuggestion(name: 'Provisioned'),
                  FigSuggestion(name: 'Serverless')
                ]
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: '--elastic-pool',
              description: 'The name or resource id of the elastic pool to move the database into',
              args: [
                Arg(
                name: 'elastic-poo'
              )
              ]
            ),
            Option(
              name: '--encryption-protector',
              description: 'Specifies the Azure key vault key to be used as database encryption protector key',
              args: [
                Arg(
                name: 'encryption-protecto'
              )
              ]
            ),
            Option(
              name: ['--encryption-protector-auto-rotation', '--epauto'],
              description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
              args: [
                Arg(
                name: 'encryption-protector-auto-rotation',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--federated-client-id',
              description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: '--filter',
              description: 'An OData filter expression that filters elements in the collection. Default value is None',
              args: [
                Arg(
                name: 'filte'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
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
              name: '--keys',
              description: 'The list of AKV keys for the SQL Database',
              args: [
                Arg(
                name: 'key'
              )
              ]
            ),
            Option(
              name: '--keys-to-remove',
              description: 'The list of AKV keys to remove from the SQL Database',
              args: [
                Arg(
                name: 'keys-to-remov'
              )
              ]
            ),
            Option(
              name: ['--maint-config-id', '-m'],
              description: 'Specified maintenance configuration id or name for this resource',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: '--max-size',
              description: 'The new maximum size of the database expressed in bytes',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: '--min-capacity',
              description: 'Minimal capacity that database will always have allocated, if not paused',
              args: [
                Arg(
                name: 'min-capacit'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Database',
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
              name: '--preferred-enclave-type',
              description: 'Specifies type of enclave for this resource',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
                ]
              )
              ]
            ),
            Option(
              name: '--read-scale',
              description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
              args: [
                Arg(
                name: 'read-scale',
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
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--service-objective',
              description: 'The name of the new service objective. If this is a standalone db service objective and the db is currently in an elastic pool, then the db is removed from the pool',
              args: [
                Arg(
                name: 'service-objectiv'
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
              name: ['--user-assigned-identity-id', '--umi'],
              description: 'The list of user assigned identity for the SQL Database',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'advanced-threat-protection-setting',
          description: 'Manage a database\'s advanced threat protection setting',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets an advanced threat protection setting',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Update a database\'s advanced threat protection setting',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: '--state',
                  description: 'State of the advanced threat protection setting',
                  args: [
                    Arg(
                    name: 'stat'
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
          name: 'audit-policy',
          description: 'Manage a database\'s auditing policy',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show database audit policy',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Update a database\'s auditing policy',
              options: [

                Option(
                  name: '--actions',
                  description: 'List of actions and action groups to audit.These are space seperated values.Example: --actions FAILED_DATABASE_AUTHENTICATION_GROUP BATCH_COMPLETED_GROUP',
                  args: [
                    Arg(
                    name: 'action'
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
                  name: ['--blob-storage-target-state', '--bsts'],
                  description: 'Indicate whether blob storage is a destination for audit records',
                  args: [
                    Arg(
                    name: 'blob-storage-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub', '--eh'],
                  description: 'The name of the event hub. If none is specified when providing event_hub_authorization_rule_id, the default event hub will be selected',
                  args: [
                    Arg(
                    name: 'event-hu'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-authorization-rule-id', '--ehari'],
                  description: 'The resource Id for the event hub authorization rule',
                  args: [
                    Arg(
                    name: 'event-hub-authorization-rule-i'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-target-state', '--ehts'],
                  description: 'Indicate whether event hub is a destination for audit records',
                  args: [
                    Arg(
                    name: 'event-hub-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  name: ['--log-analytics-target-state', '--lats'],
                  description: 'Indicate whether log analytics is a destination for audit records',
                  args: [
                    Arg(
                    name: 'log-analytics-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--log-analytics-workspace-resource-id', '--lawri'],
                  description: 'The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Audit Logs',
                  args: [
                    Arg(
                    name: 'log-analytics-workspace-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Database',
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
                  name: '--retention-days',
                  description: 'The number of days to retain audit logs',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: '--state',
                  description: 'Auditing policy state',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'Name of the storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--storage-endpoint',
                  description: 'The storage account endpoint',
                  args: [
                    Arg(
                    name: 'storage-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--storage-key',
                  description: 'Access key for the storage account',
                  args: [
                    Arg(
                    name: 'storage-ke'
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
              description: 'Place the CLI in a waiting state until a condition of the database\'s audit policy is met',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'classification',
          description: 'Manage sensitivity classifications',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete the sensitivity classification of a given column',
              options: [

                Option(
                  name: '--column',
                  description: 'The name of the column',
                  args: [
                    Arg(
                    name: 'colum'
                  )
                  ]
                ),
                Option(
                  name: '--schema',
                  description: 'The name of the schema',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'The name of the table',
                  args: [
                    Arg(
                    name: 'tabl'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Get the sensitivity classifications of a given database',
              options: [

                Option(
                  name: '--count',
                  description: 'Default value is None',
                  args: [
                    Arg(
                    name: 'coun'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData filter expression that filters elements in the collection. Default value is None',
                  args: [
                    Arg(
                    name: 'filte'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--skip-token',
                  description: 'Default value is None',
                  args: [
                    Arg(
                    name: 'skip-toke'
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
              description: 'Get the sensitivity classification of a given column',
              options: [

                Option(
                  name: '--column',
                  description: 'The name of the column',
                  args: [
                    Arg(
                    name: 'colum'
                  )
                  ]
                ),
                Option(
                  name: '--schema',
                  description: 'The name of the schema',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'The name of the table',
                  args: [
                    Arg(
                    name: 'tabl'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Update a columns\'s sensitivity classification',
              options: [

                Option(
                  name: '--column',
                  description: 'The name of the column',
                  args: [
                    Arg(
                    name: 'colum'
                  )
                  ]
                ),
                Option(
                  name: '--schema',
                  description: 'The name of the schema',
                  args: [
                    Arg(
                    name: 'schem'
                  )
                  ]
                ),
                Option(
                  name: '--table',
                  description: 'The name of the table',
                  args: [
                    Arg(
                    name: 'tabl'
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
                  name: '--information-type',
                  description: 'The information type',
                  args: [
                    Arg(
                    name: 'information-typ'
                  )
                  ]
                ),
                Option(
                  name: '--label',
                  description: 'The label name',
                  args: [
                    Arg(
                    name: 'labe'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              name: 'recommendation',
              description: 'Manage sensitivity classification recommendations',
              subcommands: [

                Subcommand(
                  name: 'disable',
                  description: 'Disable sensitivity recommendations for a given column (recommendations are enabled by default on all columns)',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of the column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of the schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'tabl'
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
                      description: 'Name of the Azure SQL Database',
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
                      name: ['--server', '-s'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                      args: [
                        Arg(
                        name: 'serve'
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
                  name: 'enable',
                  description: 'Enable sensitivity recommendations for a given column (recommendations are enabled by default on all columns)',
                  options: [

                    Option(
                      name: '--column',
                      description: 'The name of the column',
                      args: [
                        Arg(
                        name: 'colum'
                      )
                      ]
                    ),
                    Option(
                      name: '--schema',
                      description: 'The name of the schema',
                      args: [
                        Arg(
                        name: 'schem'
                      )
                      ]
                    ),
                    Option(
                      name: '--table',
                      description: 'The name of the table',
                      args: [
                        Arg(
                        name: 'tabl'
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
                      description: 'Name of the Azure SQL Database',
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
                      name: ['--server', '-s'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                      args: [
                        Arg(
                        name: 'serve'
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
                  description: 'List the recommended sensitivity classifications of a given database',
                  options: [

                    Option(
                      name: '--filter',
                      description: 'An OData filter expression that filters elements in the collection. Default value is None',
                      args: [
                        Arg(
                        name: 'filte'
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
                      name: '--include-disabled-recommendations',
                      description: 'Specifies whether to include disabled recommendations or not. Default value is None',
                      args: [
                        Arg(
                        name: 'include-disabled-recommendation'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the Azure SQL Database',
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
                      name: ['--server', '-s'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                      args: [
                        Arg(
                        name: 'serve'
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
            )
          ]
        ),
        Subcommand(
          name: 'geo-backup',
          description: 'Manage SQL database geo redundant backups',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'Gets a list of recoverable databases',
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
                  description: 'Retrieves all requested geo-redundant backups under this resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '--server', '-s'],
                  description: 'Retrieves all requested geo-redundant backups under this server',
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
              name: 'restore',
              description: 'Restore a geo-redundant backup to a new database',
              options: [

                Option(
                  name: '--dest-database',
                  description: 'Name of the database that will be created as the restore destination',
                  args: [
                    Arg(
                    name: 'dest-databas'
                  )
                  ]
                ),
                Option(
                  name: '--dest-server',
                  description: 'Name of the server to restore database to',
                  args: [
                    Arg(
                    name: 'dest-serve'
                  )
                  ]
                ),
                Option(
                  name: '--geo-backup-id',
                  description: 'The resource id of the geo-redundant backup to be restored. Use \'az sql db geo-backup list\' or \'az sql db geo-backup show\' for backup id',
                  args: [
                    Arg(
                    name: 'geo-backup-i'
                  )
                  ]
                ),
                Option(
                  name: '--resource-group',
                  description: 'Name of the target resource group of the server to restore database to',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--assign-identity', '-i'],
                  description: 'Assign identity for database',
                  args: [
                    Arg(
                    name: 'assign-identity',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--auto-pause-delay',
                  description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
                  args: [
                    Arg(
                    name: 'auto-pause-dela'
                  )
                  ]
                ),
                Option(
                  name: '--availability-zone',
                  description: 'Availability zone',
                  args: [
                    Arg(
                    name: 'availability-zon'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-storage-redundancy', '--bsr'],
                  description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
                  args: [
                    Arg(
                    name: 'backup-storage-redundanc'
                  )
                  ]
                ),
                Option(
                  name: ['--capacity', '-c'],
                  description: 'The capacity component of the sku in integer number of DTUs or vcores',
                  args: [
                    Arg(
                    name: 'capacit'
                  )
                  ]
                ),
                Option(
                  name: '--compute-model',
                  description: 'The compute model of the database',
                  args: [
                    Arg(
                    name: 'compute-model',
                    suggestions: [

                      FigSuggestion(name: 'Provisioned'),
                      FigSuggestion(name: 'Serverless')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--edition', '--tier', '-e'],
                  description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale',
                  args: [
                    Arg(
                    name: 'editio'
                  )
                  ]
                ),
                Option(
                  name: '--elastic-pool',
                  description: 'The name or resource id of the elastic pool to create the database in',
                  args: [
                    Arg(
                    name: 'elastic-poo'
                  )
                  ]
                ),
                Option(
                  name: '--encryption-protector',
                  description: 'Specifies the Azure key vault key to be used as database encryption protector key',
                  args: [
                    Arg(
                    name: 'encryption-protecto'
                  )
                  ]
                ),
                Option(
                  name: ['--encryption-protector-auto-rotation', '--epauto'],
                  description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
                  args: [
                    Arg(
                    name: 'encryption-protector-auto-rotation',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--family', '-f'],
                  description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
                  args: [
                    Arg(
                    name: 'famil'
                  )
                  ]
                ),
                Option(
                  name: '--federated-client-id',
                  description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
                  args: [
                    Arg(
                    name: 'federated-client-i'
                  )
                  ]
                ),
                Option(
                  name: ['--read-replicas', '--ha-replicas'],
                  description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
                  args: [
                    Arg(
                    name: 'read-replica'
                  )
                  ]
                ),
                Option(
                  name: '--keys',
                  description: 'The list of AKV keys for the SQL Database',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--license-type',
                  description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
                  args: [
                    Arg(
                    name: 'license-type',
                    suggestions: [

                      FigSuggestion(name: 'BasePrice'),
                      FigSuggestion(name: 'LicenseIncluded')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--min-capacity',
                  description: 'Minimal capacity that database will always have allocated, if not paused',
                  args: [
                    Arg(
                    name: 'min-capacit'
                  )
                  ]
                ),
                Option(
                  name: '--preferred-enclave-type',
                  description: 'Specifies type of enclave for this resource',
                  args: [
                    Arg(
                    name: 'preferred-enclave-type',
                    suggestions: [

                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'VBS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--read-scale',
                  description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
                  args: [
                    Arg(
                    name: 'read-scale',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--service-level-objective', '--service-objective'],
                  description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
                  args: [
                    Arg(
                    name: 'service-level-objectiv'
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
                  name: ['--user-assigned-identity-id', '--umi'],
                  description: 'The list of user assigned identity for the SQL Database',
                  args: [
                    Arg(
                    name: 'user-assigned-identity-i'
                  )
                  ]
                ),
                Option(
                  name: ['--zone-redundant', '-z'],
                  description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
                  args: [
                    Arg(
                    name: 'zone-redundant',
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
              name: 'show',
              description: 'Gets a recoverable database, which is a resource representing a database\'s geo backup',
              options: [

                Option(
                  name: ['--database-name', '--database', '-d'],
                  description: 'Retrieves a requested geo-redundant backup under this database',
                  args: [
                    Arg(
                    name: 'database-nam'
                  )
                  ]
                ),
                Option(
                  name: '--expand-keys',
                  description: 'Expand the AKV keys for the database'
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
                  name: '--keys-filter',
                  description: 'Expand the AKV keys for the database',
                  args: [
                    Arg(
                    name: 'keys-filte'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Retrieves a requested geo-redundant backup under this resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server-name', '--server', '-s'],
                  description: 'Retrieves a requested geo-redundant backup under this server',
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
          name: 'ledger-digest-uploads',
          description: 'Manage ledger digest upload settings',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable uploading ledger digests',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              name: 'enable',
              description: 'Enable uploading ledger digests to an Azure Storage account or to Azure Confidential Ledger. If uploading ledger digests is already enabled, the cmdlet resets the digest storage endpoint to a new value',
              options: [

                Option(
                  name: '--endpoint',
                  description: 'The endpoint of a digest storage, which can be either an Azure Blob storage or a ledger in Azure Confidential Ledger',
                  args: [
                    Arg(
                    name: 'endpoin'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Show the current ledger digest settings',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'ltr-backup',
          description: 'Manage SQL database long term retention backups',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a long term retention backup',
              options: [

                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database. If specified (along with server name), retrieves all requested backups under this database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backups',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the LTR backup. Use \'az sql db ltr-backup show\' or \'az sql db ltr-backup list\' for backup name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. If specified, retrieves all requested backups under this server',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'List the long term retention backups for a location, server or database',
              options: [

                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backups',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database. If specified (along with server name), retrieves all requested backups under this database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--database-state', '--state'],
                  description: '\'All\', \'Live\', or \'Deleted\'. Will fetch backups only from databases of specified state. If no state provied, defaults to \'All\'',
                  args: [
                    Arg(
                    name: 'database-stat'
                  )
                  ]
                ),
                Option(
                  name: ['--only-latest-per-database', '--latest'],
                  description: 'If true, will only return the latest backup for each database',
                  args: [
                    Arg(
                    name: 'only-latest-per-databas'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. If specified, retrieves all requested backups under this server',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'restore',
              description: 'Restore a long term retention backup to a new database',
              options: [

                Option(
                  name: '--backup-id',
                  description: 'The resource id of the long term retention backup to be restored. Use \'az sql db ltr-backup show\' or \'az sql db ltr-backup list\' for backup id',
                  args: [
                    Arg(
                    name: 'backup-i'
                  )
                  ]
                ),
                Option(
                  name: '--dest-database',
                  description: 'Name of the database that will be created as the restore destination',
                  args: [
                    Arg(
                    name: 'dest-databas'
                  )
                  ]
                ),
                Option(
                  name: '--dest-resource-group',
                  description: 'Name of the resource group of the server to restore database to',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--dest-server',
                  description: 'Name of the server to restore database to',
                  args: [
                    Arg(
                    name: 'dest-serve'
                  )
                  ]
                ),
                Option(
                  name: ['--assign-identity', '-i'],
                  description: 'Assign identity for database',
                  args: [
                    Arg(
                    name: 'assign-identity',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--auto-pause-delay',
                  description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
                  args: [
                    Arg(
                    name: 'auto-pause-dela'
                  )
                  ]
                ),
                Option(
                  name: '--availability-zone',
                  description: 'Availability zone',
                  args: [
                    Arg(
                    name: 'availability-zon'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-storage-redundancy', '--bsr'],
                  description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
                  args: [
                    Arg(
                    name: 'backup-storage-redundanc'
                  )
                  ]
                ),
                Option(
                  name: ['--capacity', '-c'],
                  description: 'The capacity component of the sku in integer number of DTUs or vcores',
                  args: [
                    Arg(
                    name: 'capacit'
                  )
                  ]
                ),
                Option(
                  name: '--compute-model',
                  description: 'The compute model of the database',
                  args: [
                    Arg(
                    name: 'compute-model',
                    suggestions: [

                      FigSuggestion(name: 'Provisioned'),
                      FigSuggestion(name: 'Serverless')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--edition', '--tier', '-e'],
                  description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical, Hyperscale',
                  args: [
                    Arg(
                    name: 'editio'
                  )
                  ]
                ),
                Option(
                  name: '--elastic-pool',
                  description: 'The name or resource id of the elastic pool to create the database in',
                  args: [
                    Arg(
                    name: 'elastic-poo'
                  )
                  ]
                ),
                Option(
                  name: '--encryption-protector',
                  description: 'Specifies the Azure key vault key to be used as database encryption protector key',
                  args: [
                    Arg(
                    name: 'encryption-protecto'
                  )
                  ]
                ),
                Option(
                  name: ['--encryption-protector-auto-rotation', '--epauto'],
                  description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
                  args: [
                    Arg(
                    name: 'encryption-protector-auto-rotation',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--family', '-f'],
                  description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
                  args: [
                    Arg(
                    name: 'famil'
                  )
                  ]
                ),
                Option(
                  name: '--federated-client-id',
                  description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
                  args: [
                    Arg(
                    name: 'federated-client-i'
                  )
                  ]
                ),
                Option(
                  name: ['--read-replicas', '--ha-replicas'],
                  description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
                  args: [
                    Arg(
                    name: 'read-replica'
                  )
                  ]
                ),
                Option(
                  name: '--keys',
                  description: 'The list of AKV keys for the SQL Database',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--license-type',
                  description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
                  args: [
                    Arg(
                    name: 'license-type',
                    suggestions: [

                      FigSuggestion(name: 'BasePrice'),
                      FigSuggestion(name: 'LicenseIncluded')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--min-capacity',
                  description: 'Minimal capacity that database will always have allocated, if not paused',
                  args: [
                    Arg(
                    name: 'min-capacit'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--preferred-enclave-type',
                  description: 'Specifies type of enclave for this resource',
                  args: [
                    Arg(
                    name: 'preferred-enclave-type',
                    suggestions: [

                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'VBS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--read-scale',
                  description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
                  args: [
                    Arg(
                    name: 'read-scale',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--service-level-objective', '--service-objective'],
                  description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
                  args: [
                    Arg(
                    name: 'service-level-objectiv'
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
                  name: ['--user-assigned-identity-id', '--umi'],
                  description: 'The list of user assigned identity for the SQL Database',
                  args: [
                    Arg(
                    name: 'user-assigned-identity-i'
                  )
                  ]
                ),
                Option(
                  name: ['--zone-redundant', '-z'],
                  description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
                  args: [
                    Arg(
                    name: 'zone-redundant',
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
              name: 'show',
              description: 'Get a long term retention backup for a database',
              options: [

                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database. If specified (along with server name), retrieves all requested backups under this database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backups',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the LTR backup. Use \'az sql db ltr-backup show\' or \'az sql db ltr-backup list\' for backup name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. If specified, retrieves all requested backups under this server',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the database is met',
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
                  name: '--expand',
                  description: 'The child resources to include in the response. Default value is None',
                  args: [
                    Arg(
                    name: 'expan'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'An OData filter expression that filters elements in the collection. Default value is None',
                  args: [
                    Arg(
                    name: 'filte'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'ltr-policy',
          description: 'Manage SQL database long term retention policy',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update long term retention settings for a database',
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
                  name: '--monthly-retention',
                  description: 'Retention for the monthly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'monthly-retentio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: '--week-of-year',
                  description: 'The Week of Year, 1 to 52, in which to take the yearly LTR backup',
                  args: [
                    Arg(
                    name: 'week-of-yea'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-retention',
                  description: 'Retention for the weekly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'weekly-retentio'
                  )
                  ]
                ),
                Option(
                  name: '--yearly-retention',
                  description: 'Retention for the yearly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'yearly-retentio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the long term retention policy for a database',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'op',
          description: 'Manage operations on a database',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancels the asynchronous operation on the database',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The unique name of the operation to cancel',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'databas'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a list of operations performed on the database',
              options: [

                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'databas'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          description: 'Manage replication between databases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a database as a readable secondary replica of an existing database',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--partner-server',
                  description: 'Name of the server to create the new replica in',
                  args: [
                    Arg(
                    name: 'partner-serve'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: ['--assign-identity', '-i'],
                  description: 'Assign identity for database',
                  args: [
                    Arg(
                    name: 'assign-identity',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--auto-pause-delay',
                  description: 'Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled',
                  args: [
                    Arg(
                    name: 'auto-pause-dela'
                  )
                  ]
                ),
                Option(
                  name: '--availability-zone',
                  description: 'Availability zone',
                  args: [
                    Arg(
                    name: 'availability-zon'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-storage-redundancy', '--bsr'],
                  description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
                  args: [
                    Arg(
                    name: 'backup-storage-redundanc'
                  )
                  ]
                ),
                Option(
                  name: ['--capacity', '-c'],
                  description: 'The capacity component of the sku in integer number of DTUs or vcores',
                  args: [
                    Arg(
                    name: 'capacit'
                  )
                  ]
                ),
                Option(
                  name: '--compute-model',
                  description: 'The compute model of the database',
                  args: [
                    Arg(
                    name: 'compute-model',
                    suggestions: [

                      FigSuggestion(name: 'Provisioned'),
                      FigSuggestion(name: 'Serverless')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--elastic-pool',
                  description: 'The name or resource id of the elastic pool to create the database in',
                  args: [
                    Arg(
                    name: 'elastic-poo'
                  )
                  ]
                ),
                Option(
                  name: '--encryption-protector',
                  description: 'Specifies the Azure key vault key to be used as database encryption protector key',
                  args: [
                    Arg(
                    name: 'encryption-protecto'
                  )
                  ]
                ),
                Option(
                  name: ['--encryption-protector-auto-rotation', '--epauto'],
                  description: 'Specifies the database encryption protector key auto rotation flag. Can be either true, false or null',
                  args: [
                    Arg(
                    name: 'encryption-protector-auto-rotation',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--family', '-f'],
                  description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
                  args: [
                    Arg(
                    name: 'famil'
                  )
                  ]
                ),
                Option(
                  name: '--federated-client-id',
                  description: 'The federated client id for the SQL Database. It is used for cross tenant CMK scenario',
                  args: [
                    Arg(
                    name: 'federated-client-i'
                  )
                  ]
                ),
                Option(
                  name: ['--read-replicas', '--ha-replicas'],
                  description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
                  args: [
                    Arg(
                    name: 'read-replica'
                  )
                  ]
                ),
                Option(
                  name: '--keys',
                  description: 'The list of AKV keys for the SQL Database',
                  args: [
                    Arg(
                    name: 'key'
                  )
                  ]
                ),
                Option(
                  name: '--license-type',
                  description: 'The license type to apply for this database.LicenseIncluded if you need a license, or BasePriceif you have a license and are eligible for the Azure HybridBenefit',
                  args: [
                    Arg(
                    name: 'license-type',
                    suggestions: [

                      FigSuggestion(name: 'BasePrice'),
                      FigSuggestion(name: 'LicenseIncluded')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--min-capacity',
                  description: 'Minimal capacity that database will always have allocated, if not paused',
                  args: [
                    Arg(
                    name: 'min-capacit'
                  )
                  ]
                ),
                Option(
                  name: '--no-wait',
                  description: 'Do not wait for the long-running operation to finish'
                ),
                Option(
                  name: '--partner-database',
                  description: 'Name of the new replica. If unspecified, defaults to the source database name',
                  args: [
                    Arg(
                    name: 'partner-databas'
                  )
                  ]
                ),
                Option(
                  name: '--partner-resource-group',
                  description: 'Name of the resource group to create the new replica in. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'partner-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--preferred-enclave-type',
                  description: 'Specifies type of enclave for this resource',
                  args: [
                    Arg(
                    name: 'preferred-enclave-type',
                    suggestions: [

                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'VBS')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--read-scale',
                  description: 'If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases',
                  args: [
                    Arg(
                    name: 'read-scale',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--secondary-type',
                  description: 'Type of secondary to create. Allowed values include: Geo, Named',
                  args: [
                    Arg(
                    name: 'secondary-typ'
                  )
                  ]
                ),
                Option(
                  name: ['--service-level-objective', '--service-objective'],
                  description: 'The service objective for the new database. For example: Basic, S0, P1, GP_Gen4_1, GP_Gen5_S_8, BC_Gen5_2, HS_Gen5_32',
                  args: [
                    Arg(
                    name: 'service-level-objectiv'
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
                  name: ['--user-assigned-identity-id', '--umi'],
                  description: 'The list of user assigned identity for the SQL Database',
                  args: [
                    Arg(
                    name: 'user-assigned-identity-i'
                  )
                  ]
                ),
                Option(
                  name: ['--zone-redundant', '-z'],
                  description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
                  args: [
                    Arg(
                    name: 'zone-redundant',
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
              name: 'delete-link',
              description: 'Permanently stop data replication between two database replicas',
              options: [

                Option(
                  name: '--partner-server',
                  description: 'Name of the server that the other replica is in',
                  args: [
                    Arg(
                    name: 'partner-serve'
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
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--partner-resource-group',
                  description: 'Name of the resource group that the other replica is in. If unspecified, defaults to the first database\'s resource group',
                  args: [
                    Arg(
                    name: 'partner-resource-grou'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              name: 'list-links',
              description: 'List the replicas of a database and their replication status',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              name: 'set-primary',
              description: 'Set the primary replica database by failing over from the current primary replica database',
              options: [

                Option(
                  name: '--allow-data-loss',
                  description: 'If specified, the failover operation will allow data loss'
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
                  description: 'Name of the database to fail over',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group containing the secondary replica that will become the new primary',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the server containing the secondary replica that will become the new primary. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'str-policy',
          description: 'Manage SQL database short term retention policy',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update short term retention settings for a live database',
              options: [

                Option(
                  name: '--retention-days',
                  description: 'New backup short term retention policy retention in days.Valid retention days for live database of (DTU) Basic can be 1-7 days; Rest models can be 1-35 days',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: '--diffbackup-hours',
                  description: 'New backup short term retention policy differential backup interval in hours.Valid differential backup interval for live database can be 12 or 24 hours',
                  args: [
                    Arg(
                    name: 'diffbackup-hour'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Show the short term retention policy for a live database',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Place the CLI in a waiting state until the policy is set',
              options: [

                Option(
                  name: '--policy-name',
                  description: 'The policy name. Should always be "default". "default" Required',
                  args: [
                    Arg(
                    name: 'policy-nam'
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
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'tde',
          description: 'Manage a database\'s transparent data encryption',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Sets a database\'s transparent data encryption configuration',
              options: [

                Option(
                  name: '--status',
                  description: 'Status of the transparent data encryption',
                  args: [
                    Arg(
                    name: 'status',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'databas'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Shows a Transparent Data Encryption',
              options: [

                Option(
                  name: ['--database', '-d'],
                  description: 'Name of the Azure SQL Database',
                  args: [
                    Arg(
                    name: 'databas'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              name: 'key',
              description: 'Manage a database\'s encryption protector',
              subcommands: [

                Subcommand(
                  name: 'revalidate',
                  description: 'Revalidates a database\'s encryption protector key',
                  options: [

                    Option(
                      name: ['--database', '-d'],
                      description: 'Name of the Azure SQL Database',
                      args: [
                        Arg(
                        name: 'databas'
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
                      name: ['--server', '-s'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                      args: [
                        Arg(
                        name: 'serve'
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
                  description: 'Reverts a database\'s encryption protector key to server level',
                  options: [

                    Option(
                      name: ['--database', '-d'],
                      description: 'Name of the Azure SQL Database',
                      args: [
                        Arg(
                        name: 'databas'
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
                      name: ['--server', '-s'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                      args: [
                        Arg(
                        name: 'serve'
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
            )
          ]
        ),
        Subcommand(
          name: 'threat-policy',
          description: 'Manage a database\'s threat detection policies',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets a threat detection policy',
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
                  description: 'Name of the Azure SQL Database',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Update a database\'s threat detection policy',
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
                  name: '--disabled-alerts',
                  description: 'List of disabled alerts',
                  args: [
                    Arg(
                    name: 'disabled-alert'
                  )
                  ]
                ),
                Option(
                  name: '--email-account-admins',
                  description: 'Whether the alert is sent to the account administrators',
                  args: [
                    Arg(
                    name: 'email-account-admin'
                  )
                  ]
                ),
                Option(
                  name: '--email-addresses',
                  description: 'List of email addresses that alerts are sent to',
                  args: [
                    Arg(
                    name: 'email-addresse'
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
                  description: 'Name of the Azure SQL Database',
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
                  name: '--retention-days',
                  description: 'The number of days to retain threat detection logs',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: '--state',
                  description: 'Threat detection policy state',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled'),
                      FigSuggestion(name: 'New')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'Name of the storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--storage-endpoint',
                  description: 'The storage account endpoint',
                  args: [
                    Arg(
                    name: 'storage-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--storage-key',
                  description: 'Access key for the storage account',
                  args: [
                    Arg(
                    name: 'storage-ke'
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
        )
      ]
    ),
    Subcommand(
      name: 'down',
      description: 'Delete the SQL server and its cached information',
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
          name: ['--yes', '-y'],
          description: 'Do not prompt for confirmation'
        )
      ]
    ),
    Subcommand(
      name: 'list-usages',
      description: 'Gets all subscription usage metrics in a given location',
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
      name: 'show-usage',
      description: 'Gets a subscription usage metric',
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
          name: ['--usage', '-u'],
          description: 'Name of usage metric to return. Required',
          args: [
            Arg(
            name: 'usag'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'up',
      description: 'Set up an Azure Database for SQL server and configurations',
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
      name: 'dw',
      description: 'Manage data warehouses',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a data warehouse',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--availability-zone',
              description: 'Availability zone',
              args: [
                Arg(
                name: 'availability-zon'
              )
              ]
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: '--collation',
              description: 'The collation of the data warehouse',
              args: [
                Arg(
                name: 'collatio'
              )
              ]
            ),
            Option(
              name: '--max-size',
              description: 'The max storage size. If no unit is specified, defaults to bytes (B)',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--service-level-objective', '--service-objective'],
              description: 'The service objective for the new database. For example: DW100, DW1000c',
              args: [
                Arg(
                name: 'service-level-objectiv'
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
          description: 'Delete a data warehouse',
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
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'List data warehouses for a server',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'pause',
          description: 'Pauses a datawarehouse',
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
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Resumes a datawarehouse',
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
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Get the details for a data warehouse',
          options: [

            Option(
              name: '--filter',
              description: 'An OData filter expression that filters elements in the collection. Default value is None',
              args: [
                Arg(
                name: 'filte'
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
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Update a data warehouse',
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
              name: '--filter',
              description: 'An OData filter expression that filters elements in the collection. Default value is None',
              args: [
                Arg(
                name: 'filte'
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
              name: '--max-size',
              description: 'The max storage size. If no unit is specified, defaults to bytes (B)',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the data warehouse',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--service-objective',
              description: 'The service objective of the data warehouse. For example: DW100, DW1000c',
              args: [
                Arg(
                name: 'service-objectiv'
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
        )
      ]
    ),
    Subcommand(
      name: 'elastic-pool',
      description: 'Manage elastic pools',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an elastic pool',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the elastic pool',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: ['--capacity', '--dtu', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--db-max-capacity', '--db-dtu-max', '--db-max-dtu'],
              description: 'The maximum capacity (in DTUs or vcores) any one database can consume',
              args: [
                Arg(
                name: 'db-max-capacit'
              )
              ]
            ),
            Option(
              name: ['--db-min-capacity', '--db-dtu-min', '--db-min-dtu'],
              description: 'The minumum capacity (in DTUs or vcores) each database is guaranteed',
              args: [
                Arg(
                name: 'db-min-capacit'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this elastic pool',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: ['--maint-config-id', '-m'],
              description: 'Specified maintenance configuration id or name for this resource',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: ['--max-size', '--storage'],
              description: 'The max storage size. If no unit is specified, defaults to bytes (B)',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--preferred-enclave-type',
              description: 'The preferred enclave type for the Azure SQL Elastic Pool. Allowed values include: Default, VBS',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
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
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          description: 'Deletes an elastic pool',
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
              description: 'The name of the elastic pool',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Gets all elastic pools in a server',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--skip',
              description: 'The number of elements in the collection to skip. Default value is None',
              args: [
                Arg(
                name: 'ski'
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
          name: 'list-dbs',
          description: 'Gets a list of databases in an elastic pool',
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
              description: 'The name of the elastic pool',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'list-editions',
          description: 'List elastic pool editions available for the active subscription',
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
              name: ['--available', '-a'],
              description: 'If specified, show only results that are available in the specified region'
            ),
            Option(
              name: '--dtu',
              description: 'Number of DTUs to search for. If unspecified, all DTU sizes are shown',
              args: [
                Arg(
                name: 'dt'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'Edition to search for. If unspecified, all editions are shown',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: ['--show-details', '-d'],
              description: 'List of additional details to include in output',
              args: [
                Arg(
                name: 'show-details',
                suggestions: [

                  FigSuggestion(name: 'db-max-dtu'),
                  FigSuggestion(name: 'db-max-size'),
                  FigSuggestion(name: 'db-min-dtu'),
                  FigSuggestion(name: 'max-size')
                ]
              )
              ]
            ),
            Option(
              name: '--vcores',
              description: 'Number of vcores to search for. If unspecified, all vcore sizes are shown',
              args: [
                Arg(
                name: 'vcore'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets an elastic pool',
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
              description: 'The name of the elastic pool',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Update an elastic pool',
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
              name: ['--capacity', '--dtu', '-c'],
              description: 'The capacity component of the sku in integer number of DTUs or vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--db-max-capacity', '--db-dtu-max', '--db-max-dtu'],
              description: 'The maximum capacity (in DTUs or vcores) any one database can consume',
              args: [
                Arg(
                name: 'db-max-capacit'
              )
              ]
            ),
            Option(
              name: ['--db-min-capacity', '--db-dtu-min', '--db-min-dtu'],
              description: 'The minumum capacity (in DTUs or vcores) each database is guaranteed',
              args: [
                Arg(
                name: 'db-min-capacit'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: Basic, Standard, Premium, GeneralPurpose, BusinessCritical',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku (for vcore skus only). Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--read-replicas', '--ha-replicas'],
              description: 'The number of high availability replicas to provision for the database. Only settable for Hyperscale edition',
              args: [
                Arg(
                name: 'read-replica'
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
              name: ['--maint-config-id', '-m'],
              description: 'Specified maintenance configuration id or name for this resource',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: ['--max-size', '--storage'],
              description: 'The max storage size. If no unit is specified, defaults to bytes (B)',
              args: [
                Arg(
                name: 'max-siz'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the elastic pool',
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
              name: '--preferred-enclave-type',
              description: 'Type of enclave to be configured for the elastic pool',
              args: [
                Arg(
                name: 'preferred-enclave-type',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'VBS')
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'op',
          description: 'Manage operations on an elastic pool',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancels the asynchronous operation on the elastic pool',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The unique name of the operation to cancel',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--elastic-pool',
                  description: 'Name of the Azure SQL Elastic Pool',
                  args: [
                    Arg(
                    name: 'elastic-poo'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a list of operations performed on the elastic pool',
              options: [

                Option(
                  name: '--elastic-pool',
                  description: 'Name of the Azure SQL Elastic Pool',
                  args: [
                    Arg(
                    name: 'elastic-poo'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
        )
      ]
    ),
    Subcommand(
      name: 'failover-group',
      description: 'Manage SQL Failover Groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates a failover group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Failover Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--partner-server',
              description: 'The name of the partner server of a Failover Group',
              args: [
                Arg(
                name: 'partner-serve'
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
              )
              ]
            ),
            Option(
              name: '--add-db',
              description: 'List of databases to add to Failover Group',
              args: [
                Arg(
                name: 'add-d'
              )
              ]
            ),
            Option(
              name: '--failover-policy',
              description: 'The failover policy of the Failover Group',
              args: [
                Arg(
                name: 'failover-policy',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--grace-period',
              description: 'Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization',
              args: [
                Arg(
                name: 'grace-perio'
              )
              ]
            ),
            Option(
              name: '--partner-resource-group',
              description: 'The name of the resource group of the partner server',
              args: [
                Arg(
                name: 'partner-resource-grou'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a failover group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Failover Group',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Lists the failover groups in a server',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          name: 'set-primary',
          description: 'Set the primary of the failover group by failing over all databases from the current primary server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Failover Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--allow-data-loss',
              description: 'Complete the failover even if doing so may result in data loss. This will allow the failover to proceed even if a primary database is unavailable'
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
              name: ['--try-planned-before-forced-failover', '--tpbff'],
              description: 'Performs a planned failover as the first step, and if it fails for any reason, then initiates a forced failover with potential data loss. This will allow the failover to proceed even if a primary database is unavailable'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a failover group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Failover Group',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Updates the failover group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Failover Group',
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
              name: '--add-db',
              description: 'List of databases to add to Failover Group',
              args: [
                Arg(
                name: 'add-d'
              )
              ]
            ),
            Option(
              name: '--failover-policy',
              description: 'The failover policy of the Failover Group',
              args: [
                Arg(
                name: 'failover-policy',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--grace-period',
              description: 'Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization',
              args: [
                Arg(
                name: 'grace-perio'
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
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
              )
              ]
            ),
            Option(
              name: '--remove-db',
              description: 'List of databases to remove from Failover Group',
              args: [
                Arg(
                name: 'remove-d'
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
        )
      ]
    ),
    Subcommand(
      name: 'instance-failover-group',
      description: 'Manage SQL Instance Failover Groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates an instance failover group between two connected managed instances',
          options: [

            Option(
              name: ['--source-mi', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'source-m'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Instance Failover Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--partner-mi',
              description: 'The name of the partner managed instance of a Instance Failover Group',
              args: [
                Arg(
                name: 'partner-m'
              )
              ]
            ),
            Option(
              name: '--partner-resource-group',
              description: 'The name of the resource group of the partner managed instance',
              args: [
                Arg(
                name: 'partner-resource-grou'
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
              name: '--failover-policy',
              description: 'The failover policy of the Instance Failover Group',
              args: [
                Arg(
                name: 'failover-policy',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--grace-period',
              description: 'Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization',
              args: [
                Arg(
                name: 'grace-perio'
              )
              ]
            ),
            Option(
              name: '--secondary-type',
              description: 'Intended usage of the secondary instance in the Failover Group. Standby indicates that the secondary instance will be used as a passive replica for disaster recovery only',
              args: [
                Arg(
                name: 'secondary-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a failover group',
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
              name: ['--name', '-n'],
              description: 'The name of the Instance Failover Group',
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
          name: 'set-primary',
          description: 'Set the primary of the instance failover group by failing over all databases from the current primary managed instance',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location of the secondary instance in the Instance Failover Group. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Instance Failover Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group of the secondary instance in the Instance Failover Group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--allow-data-loss',
              description: 'Complete the failover even if doing so may result in data loss. This will allow the failover to proceed even if a primary database is unavailable'
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Gets a failover group',
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
              name: ['--name', '-n'],
              description: 'The name of the Instance Failover Group',
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
          name: 'update',
          description: 'Updates the instance failover group',
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
              name: ['--name', '-n'],
              description: 'The name of the Instance Failover Group',
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
              name: '--add',
              description: 'Add an object to a list of objects by specifying a path and key value pairs. Example: --add property.listProperty <key=value, string or JSON string>',
              args: [
                Arg(
                name: 'ad'
              )
              ]
            ),
            Option(
              name: '--failover-policy',
              description: 'The failover policy of the Instance Failover Group',
              args: [
                Arg(
                name: 'failover-policy',
                suggestions: [

                  FigSuggestion(name: 'Automatic'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: '--grace-period',
              description: 'Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization',
              args: [
                Arg(
                name: 'grace-perio'
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
              name: '--secondary-type',
              description: 'Intended usage of the secondary instance in the Failover Group. Standby indicates that the secondary instance will be used as a passive replica for disaster recovery only',
              args: [
                Arg(
                name: 'secondary-typ'
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
        )
      ]
    ),
    Subcommand(
      name: 'instance-failover-group-arc',
      description: 'Manage Arc-enabled SQL managed instance Failover Groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a failover group resource',
          options: [

            Option(
              name: '--mi',
              description: 'The name of the primary SQL managed instance',
              args: [
                Arg(
                name: 'm'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the failover group resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--partner-mi',
              description: 'The name of the partner SQL managed instance or remote SQL instance. When using ARM-targeted arguments, this refers to the Disaster Recovery (DR) instance name',
              args: [
                Arg(
                name: 'partner-m'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the failover group is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--partner-mirroring-cert-file', '-f'],
              description: 'The filename of mirroring endpoint public certificate for the partner SQL managed instance or availability group on remote SQL instance. Only PEM format is supported',
              args: [
                Arg(
                name: 'partner-mirroring-cert-fil'
              )
              ]
            ),
            Option(
              name: ['--partner-mirroring-url', '-u'],
              description: 'The mirroring endpoint URL of the partner SQL managed instance',
              args: [
                Arg(
                name: 'partner-mirroring-ur'
              )
              ]
            ),
            Option(
              name: '--partner-resource-group',
              description: 'The Azure resource group of the DR partner Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'partner-resource-grou'
              )
              ]
            ),
            Option(
              name: ['--partner-sync-mode', '-m'],
              description: 'The partner synchronization mode of the Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'partner-sync-mode',
                suggestions: [

                  FigSuggestion(name: 'async'),
                  FigSuggestion(name: 'sync')
                ]
              )
              ]
            ),
            Option(
              name: '--primary-mirroring-url',
              description: 'The mirroring endpoint URL of the primary SQL managed instance',
              args: [
                Arg(
                name: 'primary-mirroring-ur'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'The requested role of the failover group. The role can be changed',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'primary'),
                  FigSuggestion(name: 'secondary')
                ]
              )
              ]
            ),
            Option(
              name: '--shared-name',
              description: 'The shared name of the failover group for this SQL managed instance. Both the primary SQL managed instance and its partner must use the same shared name',
              args: [
                Arg(
                name: 'shared-nam'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Create the Arc-enabled SQL managed instance failover group using local Kubernetes APIs',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an Arc-enabled SQL Managed Instance failover group',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the failover group resource to delete',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the failover group is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--mi',
              description: 'The name of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'm'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'List all failover groups',
          options: [

            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the failover groups are deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--mi',
              description: 'The name of the Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'm'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'resource-grou'
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
          name: 'show',
          description: 'Show the details of a failover group resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the failover group resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the failover group is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--mi',
              description: 'The name of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'm'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'Update a failover group resource',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the failover group resource',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the failover group exists. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--mi',
              description: 'The name of the Arc-enabled SQL managed instance to update',
              args: [
                Arg(
                name: 'm'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--partner-sync-mode', '-m'],
              description: 'The partner synchronization mode of the SQL managed instance',
              args: [
                Arg(
                name: 'partner-sync-mode',
                suggestions: [

                  FigSuggestion(name: 'async'),
                  FigSuggestion(name: 'sync')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group of the primary Arc-enabled SQL managed instance',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--role',
              description: 'The requested role of the failover group',
              args: [
                Arg(
                name: 'role',
                suggestions: [

                  FigSuggestion(name: 'force-primary-allow-data-loss'),
                  FigSuggestion(name: 'force-secondary'),
                  FigSuggestion(name: 'secondary')
                ]
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
    ),
    Subcommand(
      name: 'instance-pool',
      description: 'Manage instance pools',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create an instance pool',
          options: [

            Option(
              name: ['--capacity', '-c'],
              description: 'Capacity of the instance pool in vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed value: GeneralPurpose',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku. Allowed value: Gen5',
              args: [
                Arg(
                name: 'famil'
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
              description: 'Instance Pool Name',
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
              name: '--subnet',
              description: 'Name or ID of the subnet that allows access to an Instance Pool. If subnet name is provided, --vnet-name must be provided',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this instance pool',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Delete an instance pool',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Instance Pool Name',
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
          description: 'List available instance pools',
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
          name: 'show',
          description: 'Get the details for an instance pool',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Instance Pool Name',
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
          name: 'update',
          description: 'Update an instance pool',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Instance Pool Name',
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
              name: '--remove',
              description: 'Remove a property or an element from a list. Example: --remove property.list OR --remove propertyToRemove',
              args: [
                Arg(
                name: 'remov'
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
          description: 'Wait for an instance pool to reach a desired state',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Instance Pool Name',
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
      name: 'mi',
      description: 'Manage SQL managed instances',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The managed instance name',
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
              name: '--subnet',
              description: 'Name or ID of the subnet that allows access to an Azure Sql Managed Instance. If subnet name is provided, --vnet-name must be provided',
              args: [
                Arg(
                name: 'subne'
              )
              ]
            ),
            Option(
              name: ['--admin-password', '-p'],
              description: 'The administrator login password (required formanaged instance creation)',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Administrator username for the managed instance. Canonly be specified when the managed instance is beingcreated (and is required for creation)',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Generate and assign an Azure Active Directory Identity for this managed instance for use with key management services like Azure KeyVault'
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity of the managed instance in integer number of vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: '--collation',
              description: 'The collation of the managed instance',
              args: [
                Arg(
                name: 'collatio'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: GeneralPurpose, BusinessCritical',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: '--enable-ad-only-auth',
              description: 'Enable Azure Active Directory Only Authentication for this server'
            ),
            Option(
              name: '--external-admin-name',
              description: 'Display name of the Azure AD administrator user, group or application',
              args: [
                Arg(
                name: 'external-admin-nam'
              )
              ]
            ),
            Option(
              name: '--external-admin-principal-type',
              description: 'User, Group or Application',
              args: [
                Arg(
                name: 'external-admin-principal-typ'
              )
              ]
            ),
            Option(
              name: '--external-admin-sid',
              description: 'The unique ID of the Azure AD administrator. Object Id for User or Group, Client Id for Applications',
              args: [
                Arg(
                name: 'external-admin-si'
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku. Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: ['--identity-type', '-t'],
              description: 'Type of Identity to be used. Possible values are SystemAsssigned,UserAssigned, SystemAssignedUserAssigned and None',
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
              name: ['--key-id', '-k'],
              description: 'The key vault URI for encryption',
              args: [
                Arg(
                name: 'key-i'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this managed instance',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
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
              name: ['--maint-config-id', '-m'],
              description: 'Assign maintenance configuration to this managed instance',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: '--minimal-tls-version',
              description: 'The minimal TLS version enforced by the managed instance for inbound connections',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--primary-user-assigned-identity-id', '--pid'],
              description: 'The ID of the primary user managed identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: '--proxy-override',
              description: 'The connection type used for connecting to the instance',
              args: [
                Arg(
                name: 'proxy-override',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'Proxy'),
                  FigSuggestion(name: 'Redirect')
                ]
              )
              ]
            ),
            Option(
              name: '--public-data-endpoint-enabled',
              description: 'Whether or not the public data endpoint is enabled for the instance',
              args: [
                Arg(
                name: 'public-data-endpoint-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--service-principal-type',
              description: 'Service Principal type to be used for this Managed Instance. Possible values are SystemAssigned and None',
              args: [
                Arg(
                name: 'service-principal-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned')
                ]
              )
              ]
            ),
            Option(
              name: '--storage',
              description: 'The storage size of the managed instance. Storage size must be specified in increments of 32 GB',
              args: [
                Arg(
                name: 'storag'
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
              name: '--timezone-id',
              description: 'The time zone id for the instance to set. A list of time zone ids is exposed through the sys.time_zone_info (Transact-SQL) view',
              args: [
                Arg(
                name: 'timezone-i'
              )
              ]
            ),
            Option(
              name: ['--user-assigned-identity-id', '-a'],
              description: 'Generate and assign an User Managed Identity(UMI) for this server',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          description: 'Delete a managed instance',
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
              description: 'The managed instance name',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'failover',
          description: 'Failover a managed instance',
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
              description: 'The managed instance name',
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
              name: '--replica-type',
              description: 'The type of replica to be failed over. Known values are: "Primary" and "ReadableSecondary". Default value is None',
              args: [
                Arg(
                name: 'replica-typ'
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
          description: 'List available managed instances',
          options: [

            Option(
              name: '--expand-ad-admin',
              description: 'Expand the Active Directory Administrator for the server'
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
          description: 'Get the details for a managed instance',
          options: [

            Option(
              name: '--expand-ad-admin',
              description: 'Expand the Active Directory Administrator for the server'
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
              description: 'The managed instance name',
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
          name: 'start',
          description: 'Start the managed instance',
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
              name: ['--managed-instance', '--mi'],
              description: 'The name of the managed instance',
              args: [
                Arg(
                name: 'managed-instanc'
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
              description: 'Name of the resource group',
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
          description: 'Stop the managed instance',
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
              name: ['--managed-instance', '--mi'],
              description: 'The name of the managed instance',
              args: [
                Arg(
                name: 'managed-instanc'
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
              description: 'Name of the resource group',
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
          description: 'Update a managed instance',
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
              description: 'The administrator login password (required formanaged instance creation)',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Generate and assign an Azure Active Directory Identity for this managed instance for use with key management services like Azure KeyVault. If identity is already assigned - do nothing'
            ),
            Option(
              name: ['--backup-storage-redundancy', '--bsr'],
              description: 'Backup storage redundancy used to store backups. Allowed values include: Local, Zone, Geo, GeoZone',
              args: [
                Arg(
                name: 'backup-storage-redundanc'
              )
              ]
            ),
            Option(
              name: ['--capacity', '-c'],
              description: 'The capacity of the managed instance in integer number of vcores',
              args: [
                Arg(
                name: 'capacit'
              )
              ]
            ),
            Option(
              name: ['--edition', '--tier', '-e'],
              description: 'The edition component of the sku. Allowed values include: GeneralPurpose, BusinessCritical',
              args: [
                Arg(
                name: 'editio'
              )
              ]
            ),
            Option(
              name: ['--family', '-f'],
              description: 'The compute generation component of the sku. Allowed values include: Gen4, Gen5',
              args: [
                Arg(
                name: 'famil'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--identity-type', '-t'],
              description: 'Type of Identity to be used. Possible values are SystemAsssigned,UserAssigned, SystemAssignedUserAssigned and None',
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
              name: ['--key-id', '-k'],
              description: 'The key vault URI for encryption',
              args: [
                Arg(
                name: 'key-i'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to apply for this managed instance',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'BasePrice'),
                  FigSuggestion(name: 'LicenseIncluded')
                ]
              )
              ]
            ),
            Option(
              name: ['--maint-config-id', '-m'],
              description: 'Change maintenance configuration for this managed instance',
              args: [
                Arg(
                name: 'maint-config-i'
              )
              ]
            ),
            Option(
              name: '--minimal-tls-version',
              description: 'The minimal TLS version enforced by the managed instance for inbound connections',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2'),
                  FigSuggestion(name: 'None')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The managed instance name',
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
              name: ['--primary-user-assigned-identity-id', '--pid'],
              description: 'The ID of the primary user managed identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: '--proxy-override',
              description: 'The connection type used for connecting to the instance',
              args: [
                Arg(
                name: 'proxy-override',
                suggestions: [

                  FigSuggestion(name: 'Default'),
                  FigSuggestion(name: 'Proxy'),
                  FigSuggestion(name: 'Redirect')
                ]
              )
              ]
            ),
            Option(
              name: '--public-data-endpoint-enabled',
              description: 'Whether or not the public data endpoint is enabled for the instance',
              args: [
                Arg(
                name: 'public-data-endpoint-enabled',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
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
              name: '--service-principal-type',
              description: 'Service Principal type to be used for this Managed Instance. Possible values are SystemAssigned and None',
              args: [
                Arg(
                name: 'service-principal-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'SystemAssigned')
                ]
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
              name: '--storage',
              description: 'The storage size of the managed instance. Storage size must be specified in increments of 32 GB',
              args: [
                Arg(
                name: 'storag'
              )
              ]
            ),
            Option(
              name: '--subnet',
              description: 'Name or ID of the subnet that allows access to an Azure Sql Managed Instance. If subnet name is provided, --vnet-name must be provided',
              args: [
                Arg(
                name: 'subne'
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
              name: ['--user-assigned-identity-id', '-a'],
              description: 'Generate and assign an User Managed Identity(UMI) for this server',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            ),
            Option(
              name: ['--zone-redundant', '-z'],
              description: 'Specifies whether to enable zone redundancy. Default is true if no value is specified',
              args: [
                Arg(
                name: 'zone-redundant',
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
          name: 'ad-admin',
          description: 'Manage a managed instance\'s Active Directory administrator',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new managed instance Active Directory administrator',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an existing managed instance Active Directory Administrator',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Returns a list of managed instance Active Directory Administrators',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Updates an existing managed instance Active Directory administrator',
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
                  name: '--ids',
                  description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
                  args: [
                    Arg(
                    name: 'id'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
          name: 'ad-only-auth',
          description: 'Manage a Managed Instance\'s Azure Active Directory only settings',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable Azure Active Directory only Authentication for this Managed Instance',
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
                  description: 'The managed instance name',
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
              name: 'enable',
              description: 'Enable Azure Active Directory only Authentication for this Managed Instance',
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
                  description: 'The managed instance name',
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
              name: 'get',
              description: 'Get a specific Azure Active Directory only Authentication property',
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
                  description: 'The managed instance name',
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
          name: 'advanced-threat-protection-setting',
          description: 'Manage a SQL Managed Instance\'s advanced threat protection setting',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets an advanced threat protection setting',
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
                  description: 'The managed instance name',
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
              description: 'Update a SQL Managed Instance\'s advanced threat protection setting',
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
                  description: 'The managed instance name',
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
                  name: '--state',
                  description: 'State of the advanced threat protection setting',
                  args: [
                    Arg(
                    name: 'stat'
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
          name: 'dtc',
          description: 'Commands related to managed instance DTC management.\n\n\t\tThe managed instance DTC object can be fetched and updated using these commands',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Get managed instance DTC settings',
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
                  name: ['--managed-instance-name', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Update managed instance DTC settings',
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
                  name: '--allow-inbound-enabled',
                  description: 'Allow Inbound traffic to managed instance DTC',
                  args: [
                    Arg(
                    name: 'allow-inbound-enabled',
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
                  name: '--allow-outbound-enabled',
                  description: 'Allow Outbound traffic of managed instance DTC',
                  args: [
                    Arg(
                    name: 'allow-outbound-enabled',
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
                  name: '--authentication',
                  description: 'Authentication type of managed instance DTC',
                  args: [
                    Arg(
                    name: 'authenticatio'
                  )
                  ]
                ),
                Option(
                  name: '--dtc-enabled',
                  description: 'Active status of managed instance DTC',
                  args: [
                    Arg(
                    name: 'dtc-enabled',
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
                  name: [
                    '--external-dns-suffix-search-list',
                    '--external-dns-suffixes',
                  ],
                  description: 'External dns suffix search list of managed instance DTC. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'external-dns-suffix-search-lis'
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
                  name: ['--managed-instance-name', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
                  description: 'Name of the resource group',
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
                  name: [
                    '--sna-lu6point2-transactions-enabled',
                    '--sna-lu-transactions',
                  ],
                  description: 'Allow SNA LU 6.2 Transactions to managed instance DTC',
                  args: [
                    Arg(
                    name: 'sna-lu6point2-transactions-enabled',
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
                  name: '--subscription',
                  description: 'Name or ID of subscription. You can configure the default subscription using az account set -s NAME_OR_ID',
                  args: [
                    Arg(
                    name: 'subscriptio'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--xa-transactions-default-timeout',
                    '--xa-default-timeout',
                  ],
                  description: 'Default timeout for XA Transactions (in seconds)',
                  args: [
                    Arg(
                    name: 'xa-transactions-default-timeou'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--xa-transactions-maximum-timeout',
                    '--xa-max-timeout',
                  ],
                  description: 'Maximum timeout for XA Transactions (in seconds)',
                  args: [
                    Arg(
                    name: 'xa-transactions-maximum-timeou'
                  )
                  ]
                ),
                Option(
                  name: ['--xa-transactions-enabled', '--xa-transactions'],
                  description: 'Allow XA Transactions to managed instance DTC',
                  args: [
                    Arg(
                    name: 'xa-transactions-enabled',
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
                  name: ['--managed-instance-name', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
          name: 'endpoint-cert',
          description: 'Endpoint certificates management commands',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List certificates used on endpoints on the target instance',
              options: [

                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
              description: 'Get a certificate used on the endpoint with the given id',
              options: [

                Option(
                  name: ['--endpoint-type', '--name', '-n'],
                  description: 'Type of the endpoint whose certificate the customer is looking for',
                  args: [
                    Arg(
                    name: 'endpoint-typ'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
          name: 'key',
          description: 'Manage a SQL Instance\'s keys',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a SQL Instance key',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Deletes a SQL Instance key',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Gets a list of managed instance keys',
              options: [

                Option(
                  name: '--filter',
                  description: 'An OData filter expression that filters elements in the collection. Default value is None',
                  args: [
                    Arg(
                    name: 'filte'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Shows a SQL Instance key',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
          name: 'link',
          description: 'Instance link management commands',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a new instance link',
              options: [

                Option(
                  name: [
                    '--distributed-availability-group-name',
                    '--link',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the instance link',
                  args: [
                    Arg(
                    name: 'distributed-availability-group-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
                  name: ['--primary-availability-group-name', '--primary-ag'],
                  description: 'Name of the primary availability group',
                  args: [
                    Arg(
                    name: 'primary-availability-group-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--secondary-availability-group-name',
                    '--secondary-ag',
                  ],
                  description: 'Name of the secondary availability group',
                  args: [
                    Arg(
                    name: 'secondary-availability-group-nam'
                  )
                  ]
                ),
                Option(
                  name: '--source-endpoint',
                  description: 'IP adress of the source endpoint',
                  args: [
                    Arg(
                    name: 'source-endpoin'
                  )
                  ]
                ),
                Option(
                  name: ['--target-database', '--target-db'],
                  description: 'Name of the target database',
                  args: [
                    Arg(
                    name: 'target-databas'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Removes an instance link',
              options: [

                Option(
                  name: [
                    '--distributed-availability-group-name',
                    '--link',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the instance link',
                  args: [
                    Arg(
                    name: 'distributed-availability-group-nam'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
                  description: 'Name of the resource group',
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
              description: 'Returns information about link feature for Azure SQL Managed Instance',
              options: [

                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Returns information about link feature for Azure SQL Managed Instance',
              options: [

                Option(
                  name: [
                    '--distributed-availability-group-name',
                    '--link',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the instance link',
                  args: [
                    Arg(
                    name: 'distributed-availability-group-nam'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Updates the properties of an instance link',
              options: [

                Option(
                  name: [
                    '--distributed-availability-group-name',
                    '--link',
                    '--name',
                    '-n',
                  ],
                  description: 'Name of the instance link',
                  args: [
                    Arg(
                    name: 'distributed-availability-group-nam'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
                  name: '--replication-mode',
                  description: 'Replication mode value. Possible values include \'Sync\' and \'Async\'',
                  args: [
                    Arg(
                    name: 'replication-mode',
                    suggestions: [

                      FigSuggestion(name: 'Async'),
                      FigSuggestion(name: 'Sync')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
          name: 'op',
          description: 'Manage operations on a managed instance',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancels the asynchronous operation on the managed instance',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The unique name of the operation to cancel',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Gets a list of operations performed on the managed instance',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Gets a management operation on a managed instance',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The unique name of the operation to show',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
          name: 'partner-cert',
          description: 'Server trust certificate management commands',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Upload a server trust certificate from box to Sql Managed Instance',
              options: [

                Option(
                  name: ['--certificate-name', '--name', '-n'],
                  description: 'Name of of the certificate to upload',
                  args: [
                    Arg(
                    name: 'certificate-nam'
                  )
                  ]
                ),
                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
                  name: '--public-blob',
                  description: 'The certificate public blob',
                  args: [
                    Arg(
                    name: 'public-blo'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete a server trust certificate that was uploaded from box to Sql Managed Instance',
              options: [

                Option(
                  name: ['--certificate-name', '--name', '-n'],
                  description: 'Name of of the certificate to delete',
                  args: [
                    Arg(
                    name: 'certificate-nam'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
              description: 'Get a list of server trust certificates that were uploaded from box to the given Sql Managed Instance',
              options: [

                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
              description: 'Get a server trust certificate that was uploaded from box to Sql Managed Instance',
              options: [

                Option(
                  name: ['--certificate-name', '--name', '-n'],
                  description: 'Name of of the certificate to get',
                  args: [
                    Arg(
                    name: 'certificate-nam'
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
          name: 'server-configuration-option',
          description: 'Server configuration option management commands',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List a list of managed instance server configuration options',
              options: [

                Option(
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
              name: 'set',
              description: 'Set managed instance server configuration option',
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--server-configuration-option-name', '--name', '-n'],
                  description: 'Name of the server configuration option',
                  args: [
                    Arg(
                    name: 'server-configuration-option-name',
                    suggestions: [

                      FigSuggestion(name: 'allowPolybaseExport')
                    ]
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
                  name: ['--server-configuration-option-value', '--value'],
                  description: 'Value of the server configuration option',
                  args: [
                    Arg(
                    name: 'server-configuration-option-valu'
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
              description: 'Get managed instance server configuration option',
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--server-configuration-option-name', '--name', '-n'],
                  description: 'Name of the server configuration option',
                  args: [
                    Arg(
                    name: 'server-configuration-option-name',
                    suggestions: [

                      FigSuggestion(name: 'allowPolybaseExport')
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
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition is met',
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
                  name: [
                    '--managed-instance-name',
                    '--managed-instance',
                    '--instance-name',
                    '--mi',
                  ],
                  description: 'Name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instance-nam'
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
                  name: ['--server-configuration-option-name', '--name', '-n'],
                  description: 'Name of the server configuration option',
                  args: [
                    Arg(
                    name: 'server-configuration-option-name',
                    suggestions: [

                      FigSuggestion(name: 'allowPolybaseExport')
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
          name: 'start-stop-schedule',
          description: 'Manage the managed instance\'s start stop schedule',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create the managed instance\'s Start/Stop schedule',
              options: [

                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--description',
                  description: 'The description of the schedule',
                  args: [
                    Arg(
                    name: 'descriptio'
                  )
                  ]
                ),
                Option(
                  name: '--schedule-list',
                  description: 'Schedule list. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'schedule-lis'
                  )
                  ]
                ),
                Option(
                  name: '--timezone-id',
                  description: 'The time zone of the schedule',
                  args: [
                    Arg(
                    name: 'timezone-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the managed instance\'s Start/Stop schedule',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'List the managed instance\'s Start/Stop schedules',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Get the managed instance\'s Start/Stop schedule',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group',
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
              description: 'Update the managed instance\'s Start/Stop schedule',
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
                  name: '--description',
                  description: 'The description of the schedule',
                  args: [
                    Arg(
                    name: 'descriptio'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'The name of the managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
                  description: 'Name of the resource group',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--schedule-list',
                  description: 'Schedule list. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
                  args: [
                    Arg(
                    name: 'schedule-lis'
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
                  name: '--timezone-id',
                  description: 'The time zone of the schedule',
                  args: [
                    Arg(
                    name: 'timezone-i'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tde-key',
          description: 'Manage a SQL Instance\'s encryption protector',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Sets the SQL Instance\'s encryption protector',
              options: [

                Option(
                  name: ['--server-key-type', '-t'],
                  description: 'The type of the server key',
                  args: [
                    Arg(
                    name: 'server-key-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureKeyVault'),
                      FigSuggestion(name: 'ServiceManaged')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--auto-rotation-enabled',
                  description: 'The key auto rotation opt in status. Can be either true or false',
                  args: [
                    Arg(
                    name: 'auto-rotation-enabled',
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
                  name: ['--kid', '-k'],
                  description: 'The Azure Key Vault key identifier of the server key. An example key identifier is "https://YourVaultName.vault.azure.net/keys/YourKeyName/01234567890123456789012345678901"',
                  args: [
                    Arg(
                    name: 'ki'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              description: 'Shows a server encryption protector',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
        )
      ]
    ),
    Subcommand(
      name: 'mi-arc',
      description: 'Manage Azure Arc-enabled SQL managed instances',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a SQL managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ad-account-name',
              description: 'The Active Directory account name for this Arc-enabled SQL Managed Instance. This account needs to be created prior to the deployment of this instance',
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
              name: '--ad-encryption-types',
              description: 'A comma-separated list of supported Active Directory encryption types. Must be a subset of the following values: RC4, AES128, AES256',
              args: [
                Arg(
                name: 'ad-encryption-type'
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
              name: '--agent-enabled',
              description: 'Enable SQL Server agent for the instance. Default is disabled. Allowed values are \'true\' or \'false\'',
              args: [
                Arg(
                name: 'agent-enable'
              )
              ]
            ),
            Option(
              name: '--annotations',
              description: 'Comma-separated list of annotations of the SQL managed instance',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--cert-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for SQL Server',
              args: [
                Arg(
                name: 'cert-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--cert-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for SQL Server',
              args: [
                Arg(
                name: 'cert-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--collation',
              description: 'The SQL Server collation for the instance',
              args: [
                Arg(
                name: 'collatio'
              )
              ]
            ),
            Option(
              name: ['--cores-limit', '-c'],
              description: 'The cores limit of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-limi'
              )
              ]
            ),
            Option(
              name: '--cores-request',
              description: 'The request for cores of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-reques'
              )
              ]
            ),
            Option(
              name: '--custom-location',
              description: 'The custom location for this instance',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--keytab-secret',
              description: 'The name of the Kubernetes secret that contains the keytab file for this Arc-enabled SQL Managed Instance',
              args: [
                Arg(
                name: 'keytab-secre'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Comma-separated list of labels of the SQL managed instance',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--language',
              description: 'The SQL Server locale to any supported language identifier (LCID) for the instance',
              args: [
                Arg(
                name: 'languag'
              )
              ]
            ),
            Option(
              name: ['--license-type', '-l'],
              description: 'The license type to apply for this managed instance Allowed values are: BasePrice, LicenseIncluded, DisasterRecovery.Default is LicenseIncluded. The license type can be changed',
              args: [
                Arg(
                name: 'license-typ'
              )
              ]
            ),
            Option(
              name: ['--memory-limit', '-m'],
              description: 'The limit of the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-limi'
              )
              ]
            ),
            Option(
              name: '--memory-request',
              description: 'The request for the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-reques'
              )
              ]
            ),
            Option(
              name: '--no-external-endpoint',
              description: 'If specified, no external service will be created. Otherwise, an external service will be created using the same service type as the data controller',
              args: [
                Arg(
                name: 'no-external-endpoin'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--orchestrator-replicas',
              description: 'The number of high availability orchestrator replicas. Value must be between 1 and 3',
              args: [
                Arg(
                name: 'orchestrator-replica'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path to the azext_arcdata file for the SQL managed instance json file',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--primary-dns-name',
              description: 'The primary service DNS name exposed to the end-users to connect to this Arc-enabled SQL Managed Instance (e.g. sqlinstancename.contoso.com)',
              args: [
                Arg(
                name: 'primary-dns-nam'
              )
              ]
            ),
            Option(
              name: '--primary-port-number',
              description: 'The port number on which the primary service is exposed to the end-users (e.g. 31433)',
              args: [
                Arg(
                name: 'primary-port-numbe'
              )
              ]
            ),
            Option(
              name: '--readable-secondaries',
              description: 'Number of replicas to be made readable. Applies only to Business Critical tier. Value must be between 0 and the number of replicas minus 1',
              args: [
                Arg(
                name: 'readable-secondarie'
              )
              ]
            ),
            Option(
              name: '--replicas',
              description: 'This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes. Default is 1 replica for General Purpose, 3 replicas for Business Critical',
              args: [
                Arg(
                name: 'replicas',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group to which the Arc-enabled SQL Managed Instance should be added',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--retention-days',
              description: 'Backup retention period, specified in days. Allowed values are 0 to 35. Default is 7. Setting the retention period to 0 will turn off automatic backups for all the databases on the SQL managed instance and any prior backups will be deleted',
              args: [
                Arg(
                name: 'retention-day'
              )
              ]
            ),
            Option(
              name: '--secondary-dns-name',
              description: 'The secondary service DNS name exposed to the end-users to connect to this Arc-enabled SQL Managed Instance (e.g. sqlinstancename2.contoso.com)',
              args: [
                Arg(
                name: 'secondary-dns-nam'
              )
              ]
            ),
            Option(
              name: '--secondary-port-number',
              description: 'The port number on which the secondary service is exposed to the end-users (e.g. 31434)',
              args: [
                Arg(
                name: 'secondary-port-numbe'
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
              description: 'Name of the Kubernetes secret to generate that hosts or will host SQL service certificate',
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
                name: 'service-type',
                suggestions: [

                  FigSuggestion(name: 'LoadBalancer'),
                  FigSuggestion(name: 'NodePort')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-annotations',
              description: 'Comma-separated list of annotations to apply to all PVCs',
              args: [
                Arg(
                name: 'storage-annotation'
              )
              ]
            ),
            Option(
              name: '--storage-class-backups',
              description: 'A ReadWriteMany (RWX) capable storage class to be used for backups (/var/opt/mssql/backups). If no value is specified, the default storage class will be used',
              args: [
                Arg(
                name: 'storage-class-backup'
              )
              ]
            ),
            Option(
              name: ['--storage-class-data', '-d'],
              description: 'The storage class to be used for data files (.mdf, .ndf). If no value is specified, then no storage class will be specified, which will result in Kubernetes using the default storage class',
              args: [
                Arg(
                name: 'storage-class-dat'
              )
              ]
            ),
            Option(
              name: '--storage-class-datalogs',
              description: 'The storage class to be used for database logs (.ldf). If no value is specified, then no storage class will be specified, which will result in Kubernetes using the default storage class',
              args: [
                Arg(
                name: 'storage-class-datalog'
              )
              ]
            ),
            Option(
              name: '--storage-class-logs',
              description: 'The storage class to be used for logs (/var/log). If no value is specified, then no storage class will be specified, which will result in Kubernetes using the default storage class',
              args: [
                Arg(
                name: 'storage-class-log'
              )
              ]
            ),
            Option(
              name: '--storage-class-orchestrator-logs',
              description: 'The storage class to be used for orchestrator logs (/var/log). If no value is specified, then no storage class will be specified, which will result in Kubernetes using the default storage class',
              args: [
                Arg(
                name: 'storage-class-orchestrator-log'
              )
              ]
            ),
            Option(
              name: '--storage-labels',
              description: 'Comma-separated list of labels to apply to all PVCs',
              args: [
                Arg(
                name: 'storage-label'
              )
              ]
            ),
            Option(
              name: '--sync-secondary-to-commit',
              description: 'Number of secondary replicas that must be synchronized to commit. Setting this value to -1 will set the number of required synchronized secondaries to \'(# of replicas - 1) / 2\', rounded down',
              args: [
                Arg(
                name: 'sync-secondary-to-commit',
                suggestions: [

                  FigSuggestion(name: '-1'),
                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2')
                ]
              )
              ]
            ),
            Option(
              name: '--tde-mode',
              description: 'The Transparent Data Encryption (TDE) mode for this Arc-enabled SQL Managed Instance. Allowed values: ServiceManaged, CustomerManaged, or Disabled. Default is Disabled',
              args: [
                Arg(
                name: 'tde-mod'
              )
              ]
            ),
            Option(
              name: '--tde-protector-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for TDE',
              args: [
                Arg(
                name: 'tde-protector-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--tde-protector-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for TDE',
              args: [
                Arg(
                name: 'tde-protector-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--tde-protector-secret',
              description: 'The name of the Kubernetes secret that contains the TDE protector certificate and private key for this Arc-enabled SQL Managed Instance. Can only be specified for CustomerManaged TDE mode',
              args: [
                Arg(
                name: 'tde-protector-secre'
              )
              ]
            ),
            Option(
              name: ['--tier', '-t'],
              description: 'The pricing tier for the instance. Allowed values: BusinessCritical (bc for short) or GeneralPurpose (gp for short). Default is GeneralPurpose',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            ),
            Option(
              name: '--time-zone',
              description: 'The SQL Server time zone for the instance',
              args: [
                Arg(
                name: 'time-zon'
              )
              ]
            ),
            Option(
              name: '--trace-flags',
              description: 'Comma separated list of traceflags. No flags by default',
              args: [
                Arg(
                name: 'trace-flag'
              )
              ]
            ),
            Option(
              name: '--use-k8s',
              description: 'Create SQL managed instance using local Kubernetes APIs',
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
              name: '--volume-size-datalogs',
              description: 'The size of the storage volume to be used for data logs as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-datalog'
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
            ),
            Option(
              name: '--volume-size-orchestrator-logs',
              description: 'The size of the storage volume to be used for orchestrator logs as a positive number followed by Ki (kilobytes), Mi (megabytes), or Gi (gigabytes)',
              args: [
                Arg(
                name: 'volume-size-orchestrator-log'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a SQL managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance to be deleted',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the Arc-enabled SQL Managed Instance exists',
              args: [
                Arg(
                name: 'resource-grou'
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
          name: 'edit',
          description: 'Deprecated, use update over edit',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance that is being edited. The name under which your instance is deployed cannot be changed',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--agent-enabled',
              description: 'Enable SQL Server agent for the instance. Default is disabled',
              args: [
                Arg(
                name: 'agent-enable'
              )
              ]
            ),
            Option(
              name: '--annotations',
              description: 'Comma-separated list of annotations of the SQL managed instance',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: ['--cores-limit', '-c'],
              description: 'The cores limit of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-limi'
              )
              ]
            ),
            Option(
              name: '--cores-request',
              description: 'The request for cores of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-reques'
              )
              ]
            ),
            Option(
              name: '--custom-location',
              description: 'The custom location for this instance',
              args: [
                Arg(
                name: 'custom-locatio'
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
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Comma-separated list of labels of the SQL managed instance',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The license type to update for this managed instance Allowed values are: BasePrice, LicenseIncluded, DisasterRecovery. Default is LicenseIncluded',
              args: [
                Arg(
                name: 'license-typ'
              )
              ]
            ),
            Option(
              name: '--location',
              description: 'The Azure location in which the sqlmi metadata will be stored (e.g. eastus)',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--memory-limit', '-m'],
              description: 'The limit of the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-limi'
              )
              ]
            ),
            Option(
              name: '--memory-request',
              description: 'The request for the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-reques'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'If given, the command will not wait for the instance to be in a ready state before returning'
            ),
            Option(
              name: '--path',
              description: 'The path to the azext_arcdata file for the SQL managed instance json file',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the Arc-enabled SQL Managed Instance exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--retention-days',
              description: 'Backup retention period, specified in days. Allowed values are 0 to 35. Default is 7. Setting the retention period to 0 will turn off automatic backups for all the databases on the SQL managed instance and any prior backups will be deleted',
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
              name: '--service-labels',
              description: 'Comma-separated list of labels to apply to all external services',
              args: [
                Arg(
                name: 'service-label'
              )
              ]
            ),
            Option(
              name: '--tag-name',
              description: 'The tag name of the SQL managed instance',
              args: [
                Arg(
                name: 'tag-nam'
              )
              ]
            ),
            Option(
              name: '--tag-value',
              description: 'The tag value of the SQL managed instance',
              args: [
                Arg(
                name: 'tag-valu'
              )
              ]
            ),
            Option(
              name: ['--tier', '-t'],
              description: 'The pricing tier for the instance. Allowed values: BusinessCritical (bc for short) or GeneralPurpose (gp for short). Default is GeneralPurpose',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            ),
            Option(
              name: '--time-zone',
              description: 'The SQL Server time zone for the instance',
              args: [
                Arg(
                name: 'time-zon'
              )
              ]
            ),
            Option(
              name: '--trace-flags',
              description: 'Comma separated list of traceflags. No flags by default',
              args: [
                Arg(
                name: 'trace-flag'
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
          name: 'get-mirroring-cert',
          description: 'Retrieve certificate of availability group mirroring endpoint from sql mi and store in a file',
          options: [

            Option(
              name: '--cert-file',
              description: 'The local filename to store the retrieved certificate in PEM format',
              args: [
                Arg(
                name: 'cert-fil'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
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
          description: 'List SQL managed instances',
          options: [

            Option(
              name: '--custom-location',
              description: 'The custom location in which the Arc-enabled SQL Managed Instances are deployed. If not specified, all instances in the resource group will be listed',
              args: [
                Arg(
                name: 'custom-locatio'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace containing the Arc-enabled SQL Managed Instances. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group containing the Arc-enabled SQL Managed Instances',
              args: [
                Arg(
                name: 'resource-grou'
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
          name: 'reprovision-replica',
          description: 'Reprovision a replica in a SQL managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance replica to be reprovisioned',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance replica is deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--use-k8s',
              description: 'Reprovision SQL managed instance replica using local Kubernetes APIs',
              args: [
                Arg(
                name: 'use-k8'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show the details of a SQL managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance to be shown',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--path', '-p'],
              description: 'A path where the full specification for the SQL managed instance should be written. If omitted, the specification will be written to standard output',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the Arc-enabled SQL Managed Instance exists',
              args: [
                Arg(
                name: 'resource-grou'
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
          description: 'Update the configuration of a SQL managed instance',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance that is being edited. The name under which your instance is deployed cannot be changed',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ad-encryption-types',
              description: 'A comma-separated list of supported Active Directory encryption types. Must be a subset of the following values: RC4, AES128, AES256',
              args: [
                Arg(
                name: 'ad-encryption-type'
              )
              ]
            ),
            Option(
              name: '--agent-enabled',
              description: 'Enable SQL Server agent for the instance. Default is disabled',
              args: [
                Arg(
                name: 'agent-enable'
              )
              ]
            ),
            Option(
              name: '--annotations',
              description: 'Comma-separated list of annotations of the SQL managed instance',
              args: [
                Arg(
                name: 'annotation'
              )
              ]
            ),
            Option(
              name: '--cert-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for SQL Server',
              args: [
                Arg(
                name: 'cert-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--cert-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for SQL Server',
              args: [
                Arg(
                name: 'cert-public-key-fil'
              )
              ]
            ),
            Option(
              name: ['--cores-limit', '-c'],
              description: 'The cores limit of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-limi'
              )
              ]
            ),
            Option(
              name: '--cores-request',
              description: 'The request for cores of the managed instance as an integer',
              args: [
                Arg(
                name: 'cores-reques'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--keytab-secret',
              description: 'The name of the Kubernetes secret that contains the keytab file for this Arc-enabled SQL Managed Instance',
              args: [
                Arg(
                name: 'keytab-secre'
              )
              ]
            ),
            Option(
              name: '--labels',
              description: 'Comma-separated list of labels of the SQL managed instance',
              args: [
                Arg(
                name: 'label'
              )
              ]
            ),
            Option(
              name: ['--license-type', '-l'],
              description: 'The license type to apply for this managed instance Allowed values are: BasePrice, LicenseIncluded, DisasterRecovery.Default is LicenseIncluded. The license type can be changed',
              args: [
                Arg(
                name: 'license-typ'
              )
              ]
            ),
            Option(
              name: ['--memory-limit', '-m'],
              description: 'The limit of the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-limi'
              )
              ]
            ),
            Option(
              name: '--memory-request',
              description: 'The request for the capacity of the managed instance as an integer number followed by Gi (gigabytes). Example: 4Gi',
              args: [
                Arg(
                name: 'memory-reques'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--orchestrator-replicas',
              description: 'The number of high availability orchestrator replicas. Value must be between 1 and 3',
              args: [
                Arg(
                name: 'orchestrator-replica'
              )
              ]
            ),
            Option(
              name: '--path',
              description: 'The path to the azext_arcdata file for the SQL managed instance json file',
              args: [
                Arg(
                name: 'pat'
              )
              ]
            ),
            Option(
              name: '--preferred-primary-replica',
              description: 'The preferred primary replica to be updated',
              args: [
                Arg(
                name: 'preferred-primary-replic'
              )
              ]
            ),
            Option(
              name: '--readable-secondaries',
              description: 'Number of replicas to be made readable. Applies only to Business Critical tier. Value must be between 0 and the number of replicas minus 1',
              args: [
                Arg(
                name: 'readable-secondarie'
              )
              ]
            ),
            Option(
              name: '--replicas',
              description: 'This option specifies the number of SQL Managed Instance replicas that will be deployed in your Kubernetes cluster for high availability purposes',
              args: [
                Arg(
                name: 'replicas',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3')
                ]
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The Azure resource group in which the Arc-enabled SQL Managed Instance exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--retention-days',
              description: 'Backup retention period, specified in days. Allowed values are 0 to 35. Default is 7. Setting the retention period to 0 will turn off automatic backups for all the databases on the SQL managed instance and any prior backups will be deleted',
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
              description: 'Name of the Kubernetes secret to generate that hosts or will host SQL service certificate',
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
              name: '--sync-secondary-to-commit',
              description: 'Number of secondary replicas that must be synchronized to commit. Setting this value to -1 will set the number of required synchronized secondaries to \'(# of replicas - 1) / 2\', rounded down',
              args: [
                Arg(
                name: 'sync-secondary-to-commit',
                suggestions: [

                  FigSuggestion(name: '-1'),
                  FigSuggestion(name: '0'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2')
                ]
              )
              ]
            ),
            Option(
              name: '--tde-mode',
              description: 'The Transparent Data Encryption (TDE) mode for this Arc-enabled SQL Managed Instance. Allowed values: ServiceManaged, CustomerManaged, or Disabled. Default is Disabled',
              args: [
                Arg(
                name: 'tde-mod'
              )
              ]
            ),
            Option(
              name: '--tde-protector-private-key-file',
              description: 'Path to the file containing a PEM formatted certificate private key to be used for TDE',
              args: [
                Arg(
                name: 'tde-protector-private-key-fil'
              )
              ]
            ),
            Option(
              name: '--tde-protector-public-key-file',
              description: 'Path to the file containing a PEM formatted certificate public key to be used for TDE',
              args: [
                Arg(
                name: 'tde-protector-public-key-fil'
              )
              ]
            ),
            Option(
              name: '--tde-protector-secret',
              description: 'The name of the Kubernetes secret that contains the TDE protector certificate and private key for this Arc-enabled SQL Managed Instance. Can only be specified for CustomerManaged TDE mode',
              args: [
                Arg(
                name: 'tde-protector-secre'
              )
              ]
            ),
            Option(
              name: ['--tier', '-t'],
              description: 'The pricing tier for the instance. Allowed values: BusinessCritical (bc for short) or GeneralPurpose (gp for short). Default is GeneralPurpose',
              args: [
                Arg(
                name: 'tie'
              )
              ]
            ),
            Option(
              name: '--time-zone',
              description: 'The SQL Server time zone for the instance',
              args: [
                Arg(
                name: 'time-zon'
              )
              ]
            ),
            Option(
              name: '--trace-flags',
              description: 'Comma separated list of traceflags. No flags by default',
              args: [
                Arg(
                name: 'trace-flag'
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
          name: 'upgrade',
          description: 'Upgrade SQL managed instance',
          options: [

            Option(
              name: ['--desired-version', '-v'],
              description: 'The latest valid version to upgrade to. Optional, if no version is specified, the data controller version will be used. Specify \'auto\' to automatically upgrade to the latest valid version. Learn more about automatic upgrades at: https://aka.ms/arc-sqlmi-auto-upgrade',
              args: [
                Arg(
                name: 'desired-versio'
              )
              ]
            ),
            Option(
              name: ['--dry-run', '-d'],
              description: 'Indicates which instance would be upgraded but does not actually upgrade the instances',
              args: [
                Arg(
                name: 'dry-ru'
              )
              ]
            ),
            Option(
              name: ['--field-filter', '-f'],
              description: 'Filter to select instances to upgrade based on resource properties',
              args: [
                Arg(
                name: 'field-filte'
              )
              ]
            ),
            Option(
              name: '--force',
              description: 'Overrides all policies that may be applied to the instance, and attempts the upgrade'
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'Namespace where the SQL managed instance is to be deployed. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: ['--label-filter', '-l'],
              description: 'Filter to select instance to upgrade based on labels',
              args: [
                Arg(
                name: 'label-filte'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the SQL managed instance',
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
              description: 'The Azure resource group in which the target Arc-enabled SQL Managed Instance exists',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--target',
              description: 'Option \'--target\' has been deprecated and will be removed in a future release. Use \'--desired-version\' instead. The latest valid version to upgrade to. Optional, if no version is specified, the data controller version will be used. Specify \'auto\' to automatically upgrade to the latest valid version. Learn more about automatic upgrades at: https://aka.ms/arc-sqlmi-auto-upgrade',
              args: [
                Arg(
                name: 'targe'
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
          name: 'config',
          description: 'Configuration commands',
          subcommands: [

            Subcommand(
              name: 'add',
              description: 'Add a value for a json path in a config file',
              options: [

                Option(
                  name: ['--json-values', '-j'],
                  description: 'A key value pair list of json paths to values: key1.subkey1=value1,key2.subkey2=value2. You may provide inline json values such as: key=\'{"kind":"cluster","name":"test-cluster"}\' or provide a file path, such as key=./values.json. The add command does NOT support conditionals. If the inline value you are providing is a key value pair itself with = and , please escape those characters. For example: key1=\\"key2\\=val2\\,key3\\=val3\\". Please see http://jsonpatch.com/ for examples of how your path should look. If you would like to access an array, you must do so by indicating the index, such as key.0=value',
                  args: [
                    Arg(
                    name: 'json-value'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Path to the custom resource specification, i.e. custom/spec.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'init',
              description: 'Initialize the CRD and specification files for a SQL managed instance',
              options: [

                Option(
                  name: ['--path', '-p'],
                  description: 'A path where the CRD and specification for the SQL managed instance should be written',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'patch',
              description: 'Patch a config file based on a json patch file',
              options: [

                Option(
                  name: '--patch-file',
                  description: 'Path to a patch json file that is based off the jsonpatch library: http://jsonpatch.com/. You must start your patch json file with a key called patch, whose value is an array of patch operations you intend to make. For the path of a patch operation, you may use dot notation, such as key1.key2 for most operations. If you would like to do a replace operation, and you are replacing a value in an array that requires a conditional, please use the jsonpath notation by beginning your path with a \$. This will allow you to do a conditional such as \$.key1.key2[?(@.key3=="someValue"].key4.See the examples below. For additional help with conditionals, see: https://jsonpath.com/',
                  args: [
                    Arg(
                    name: 'patch-fil'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Path to the custom resource specification, i.e. custom/spec.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove a value for a json path in a config file',
              options: [

                Option(
                  name: ['--json-path', '-j'],
                  description: 'A list of json paths based on the jsonpatch library that indicates which values you would like removed, such as: key1.subkey1,key2.subkey2. The remove command does NOT support conditionals. Please see http://jsonpatch.com/ for examples of how your path should look. If you would like to access an array, you must do so by indicating the index, such as key.0=value',
                  args: [
                    Arg(
                    name: 'json-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Path to the custom resource specification, i.e. custom/spec.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'replace',
              description: 'Replace a value for a json path in a config file',
              options: [

                Option(
                  name: ['--json-values', '-j'],
                  description: 'A key value pair list of json paths to values: key1.subkey1=value1,key2.subkey2=value2. You may provide inline json values such as: key={"kind":"cluster","name":"test-cluster"} or provide a file path, such as key=./values.json. The replace command supports conditionals through the jsonpath library. To use this, start your path with a \$. This will allow you to do a conditional such as -j \$.key1.key2[?(@.key3=="someValue"].key4=value. If the inline value you are providing is a key value pair itself with = and , please escape those characters. For example, key1=\\"key2\\=val2\\,key3\\=val3\\". You may see examples below. For additional help, see: https://jsonpath.com/',
                  args: [
                    Arg(
                    name: 'json-value'
                  )
                  ]
                ),
                Option(
                  name: ['--path', '-p'],
                  description: 'Path to the custom resource specification, i.e. custom/spec.json',
                  args: [
                    Arg(
                    name: 'pat'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'endpoint',
          description: 'View and manage SQL endpoints',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the SQL endpoints',
              options: [

                Option(
                  name: ['--k8s-namespace', '-k'],
                  description: 'Namespace where the SQL managed instances exist. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
                  args: [
                    Arg(
                    name: 'k8s-namespac'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the SQL instance to be shown. If omitted, all endpoints for all instances will be shown',
                  args: [
                    Arg(
                    name: 'nam'
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
      name: 'midb',
      description: 'Manage SQL Managed Instance databases',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a managed database',
          options: [

            Option(
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
              name: '--collation',
              description: 'The collation of the Azure SQL Managed Database collation to use, e.g.: SQL_Latin1_General_CP1_CI_AS or Latin1_General_100_CS_AS_SC',
              args: [
                Arg(
                name: 'collatio'
              )
              ]
            ),
            Option(
              name: '--ledger-on',
              description: 'Create a ledger database, in which the integrity of all data is protected by the ledger feature. All tables in the ledger database must be ledger tables. Note: the value of this property cannot be changed after the database has been created',
              args: [
                Arg(
                name: 'ledger-on',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
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
          description: 'Delete a managed database',
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List managed databases on a managed instance',
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
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
          name: 'list-deleted',
          description: 'List restorable deleted managed databases',
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
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
          name: 'recover',
          description: 'Recover a managed database using geo-pair instance backup',
          options: [

            Option(
              name: ['--recoverable-database-id', '-r'],
              description: 'The id of recoverable database from geo-replicated instance',
              args: [
                Arg(
                name: 'recoverable-database-i'
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
          name: 'restore',
          description: 'Restore a managed database',
          options: [

            Option(
              name: '--dest-name',
              description: 'Name of the managed database that will be created as the restore destination',
              args: [
                Arg(
                name: 'dest-nam'
              )
              ]
            ),
            Option(
              name: ['--time', '-t'],
              description: 'The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database\'s earliestRestoreDate value. Time should be in following format: "YYYY-MM-DDTHH:MM:SS"',
              args: [
                Arg(
                name: 'tim'
              )
              ]
            ),
            Option(
              name: '--deleted-time',
              description: 'If specified, restore from a deleted database instead of from an existing database. Must match the deleted time of a deleted database on the source Managed Instance',
              args: [
                Arg(
                name: 'deleted-tim'
              )
              ]
            ),
            Option(
              name: '--dest-mi',
              description: 'Name of the managed instance to restore managed database to. This can be same managed instance, or another managed instance on same subscription. When not specified it defaults to source managed instance',
              args: [
                Arg(
                name: 'dest-m'
              )
              ]
            ),
            Option(
              name: '--dest-resource-group',
              description: 'Name of the resource group of the managed instance to restore managed database to. When not specified it defaults to source resource group',
              args: [
                Arg(
                name: 'dest-resource-grou'
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
              name: ['--source-sub', '-s'],
              description: 'Subscription id of the source database, the one restored from. This parameter should be used when doing cross subscription restore',
              args: [
                Arg(
                name: 'source-su'
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
          name: 'show',
          description: 'Get the details for a managed database',
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
          description: 'Update a managed database',
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
              name: ['--managed-instance', '--mi'],
              description: 'Name of the Azure SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Azure SQL Managed Database',
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
            )
          ]
        ),
        Subcommand(
          name: 'advanced-threat-protection-setting',
          description: 'Manage a SQL Managed Instance database\'s advanced threat protection setting',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets an advanced threat protection setting',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              description: 'Update a SQL Managed Instance database\'s advanced threat protection setting',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
                  name: '--set',
                  description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                  args: [
                    Arg(
                    name: 'se'
                  )
                  ]
                ),
                Option(
                  name: '--state',
                  description: 'State of the advanced threat protection setting',
                  args: [
                    Arg(
                    name: 'stat'
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
          name: 'copy',
          description: 'Start, complete, cancel and list managed database copy operations',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel managed database copy operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to copy the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to copy the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'complete',
              description: 'Complete managed database copy operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to copy the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to copy the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'list',
              description: 'List managed database copy operations',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the target managed instance to show copy operations for',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the target resource group to show copy operations for',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--only-latest-per-database', '--latest'],
                  description: 'Flag that only shows latest copy operation per managed database'
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the source managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the source resource group',
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
              name: 'start',
              description: 'Start managed database copy operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to copy the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to copy the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
            )
          ]
        ),
        Subcommand(
          name: 'ledger-digest-uploads',
          description: 'Manage ledger digest upload settings',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable uploading ledger digests',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'enable',
              description: 'Enable uploading ledger digests to an Azure Storage account or to Azure Confidential Ledger. If uploading ledger digests is already enabled, the cmdlet resets the digest storage endpoint to a new value',
              options: [

                Option(
                  name: '--endpoint',
                  description: 'The endpoint of a digest storage, which can be either an Azure Blob storage or a ledger in Azure Confidential Ledger',
                  args: [
                    Arg(
                    name: 'endpoin'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              description: 'Show the current ledger digest settings',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
          name: 'log-replay',
          description: 'SQL Managed Instance database Log Replay service commands',
          subcommands: [

            Subcommand(
              name: 'complete',
              description: 'Complete Log Replay service on specified database',
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
                  name: ['--last-backup-name', '--last-bn'],
                  description: 'The name of the last backup to restore',
                  args: [
                    Arg(
                    name: 'last-backup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              description: 'Get status of Log Replay service',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'start',
              description: 'Start Log Replay service on specified database',
              options: [

                Option(
                  name: ['--storage-sas', '--ss'],
                  description: 'The authorization Sas token to access storage container where backups are',
                  args: [
                    Arg(
                    name: 'storage-sa'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-uri', '--su'],
                  description: 'The URI of the storage container where backups are',
                  args: [
                    Arg(
                    name: 'storage-ur'
                  )
                  ]
                ),
                Option(
                  name: ['--auto-complete', '-a'],
                  description: 'The flag that in usage with last_backup_name automatically completes log replay servise'
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
                  name: ['--last-backup-name', '--last-bn'],
                  description: 'The name of the last backup to restore',
                  args: [
                    Arg(
                    name: 'last-backup-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
                  name: ['--storage-identity', '--si'],
                  description: 'The storage container identity to use',
                  args: [
                    Arg(
                    name: 'storage-identity',
                    suggestions: [

                      FigSuggestion(name: 'ManagedIdentity'),
                      FigSuggestion(name: 'SharedAccessSignature')
                    ]
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
              description: 'Stop Log Replay service',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
                ),
                Option(
                  name: ['--yes', '-y'],
                  description: 'Do not prompt for confirmation'
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the managed database is met',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
            )
          ]
        ),
        Subcommand(
          name: 'ltr-backup',
          description: 'Manage SQL Managed Instance database long term retention backups',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete a long term retention backup',
              options: [

                Option(
                  name: ['--backup-id', '--id'],
                  description: 'The resource id of the backups. Use \'az sql midb ltr-backup show\' or \'az sql midb ltr-backup list\' for backup id. If provided, other arguments are not required',
                  args: [
                    Arg(
                    name: 'backup-i'
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'The name of the Azure SQL Managed Database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backup(s)',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the LTR backup. Use \'az sql midb ltr-backup show\' or \'az sql midb ltr-backup list\' for backup name',
                  args: [
                    Arg(
                    name: 'nam'
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
              description: 'List the long term retention backups for a location, instance or database',
              options: [

                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backup(s)',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'The name of the Azure SQL Managed Database. If specified (along with instance name), retrieves all requested backups under this database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--database-state', '--state'],
                  description: '\'All\', \'Live\', or \'Deleted\'. Will fetch backups only from databases of specified state. If no state provied, defaults to \'All\'',
                  args: [
                    Arg(
                    name: 'database-stat'
                  )
                  ]
                ),
                Option(
                  name: ['--only-latest-per-database', '--latest'],
                  description: 'If true, will only return the latest backup for each database',
                  args: [
                    Arg(
                    name: 'only-latest-per-databas'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance. If specified, retrieves all requested backups under this managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
              name: 'restore',
              description: 'Restore a long term retention backup to a new database',
              options: [

                Option(
                  name: ['--backup-id', '--id'],
                  description: 'The resource id of the long term retention backup to be restored. Use \'az sql midb ltr-backup show\' or \'az sql midb ltr-backup list\' for backup id',
                  args: [
                    Arg(
                    name: 'backup-i'
                  )
                  ]
                ),
                Option(
                  name: '--dest-database',
                  description: 'Name of the managed database that will be created as the restore destination',
                  args: [
                    Arg(
                    name: 'dest-databas'
                  )
                  ]
                ),
                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to restore managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: '--dest-resource-group',
                  description: 'Name of the resource group of the managed instance to restore managed database to',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
              name: 'show',
              description: 'Get a long term retention backup for a managed database',
              options: [

                Option(
                  name: ['--backup-id', '--id'],
                  description: 'The resource id of the backups. Use \'az sql midb ltr-backup show\' or \'az sql midb ltr-backup list\' for backup id. If provided, other arguments are not required',
                  args: [
                    Arg(
                    name: 'backup-i'
                  )
                  ]
                ),
                Option(
                  name: ['--database', '-d'],
                  description: 'The name of the Azure SQL Managed Database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'The location of the desired backup(s)',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the LTR backup. Use \'az sql midb ltr-backup show\' or \'az sql midb ltr-backup list\' for backup name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'wait',
              description: 'Place the CLI in a waiting state until a condition of the managed database is met',
              options: [

                Option(
                  name: ['--database', '-d'],
                  description: 'The name of the Azure SQL Managed Database',
                  args: [
                    Arg(
                    name: 'databas'
                  )
                  ]
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
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
          name: 'ltr-policy',
          description: 'Manage SQL Managed Instance database long term retention policy',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update long term retention settings for a managed database',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: '--monthly-retention',
                  description: 'Retention for the monthly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'monthly-retentio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
                  name: '--week-of-year',
                  description: 'The Week of Year, 1 to 52, in which to take the yearly LTR backup',
                  args: [
                    Arg(
                    name: 'week-of-yea'
                  )
                  ]
                ),
                Option(
                  name: '--weekly-retention',
                  description: 'Retention for the weekly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'weekly-retentio'
                  )
                  ]
                ),
                Option(
                  name: '--yearly-retention',
                  description: 'Retention for the yearly backup. If just a number is passed instead of an ISO 8601 string, days will be assumed as the units.There is a minimum of 7 days and a maximum of 10 years',
                  args: [
                    Arg(
                    name: 'yearly-retentio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show the long term retention policy for a managed database',
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
          name: 'move',
          description: 'Start, complete, cancel and list managed database move operations',
          subcommands: [

            Subcommand(
              name: 'cancel',
              description: 'Cancel managed database move operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to move the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to move the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'complete',
              description: 'Complete managed database move operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to move the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to move the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              name: 'list',
              description: 'List managed database move operations',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the target managed instance to show move operations for',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the target resource group to show move operations for',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--only-latest-per-database', '--latest'],
                  description: 'Flag that only shows latest move operation per managed database'
                ),
                Option(
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the source managed instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the source resource group',
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
              name: 'start',
              description: 'Start managed database move operation',
              options: [

                Option(
                  name: '--dest-mi',
                  description: 'Name of the managed instance to move the managed database to',
                  args: [
                    Arg(
                    name: 'dest-m'
                  )
                  ]
                ),
                Option(
                  name: ['--dest-resource-group', '--dest-rg'],
                  description: 'Name of the resource group to move the managed database to. If unspecified, defaults to the origin resource group',
                  args: [
                    Arg(
                    name: 'dest-resource-grou'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
            )
          ]
        ),
        Subcommand(
          name: 'short-term-retention-policy',
          description: 'Manage SQL Managed Instance database backup short term retention policy',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Update short term retention for automated backups on a single database',
              options: [

                Option(
                  name: '--retention-days',
                  description: 'New backup short term retention policy in days.Valid policy for live database is 7-35 days, valid policy for dropped databases is 0-35 days',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: '--deleted-time',
                  description: 'If specified, updates retention days for a deleted database, instead of an existing database.Must match the deleted time of a deleted database on the source Managed Instance',
                  args: [
                    Arg(
                    name: 'deleted-tim'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
              description: 'Show short term retention for automated backups on a single database',
              options: [

                Option(
                  name: '--deleted-time',
                  description: 'If specified, shows retention days for a deleted database, instead of an existing database.Must match the deleted time of a deleted database on the source Managed Instance',
                  args: [
                    Arg(
                    name: 'deleted-tim'
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
                  name: ['--managed-instance', '--mi'],
                  description: 'Name of the Azure SQL Managed Instance',
                  args: [
                    Arg(
                    name: 'managed-instanc'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the Azure SQL Managed Database',
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
        )
      ]
    ),
    Subcommand(
      name: 'midb-arc',
      description: 'Manage databases for Azure Arc-enabled SQL managed instances',
      subcommands: [

        Subcommand(
          name: 'restore',
          description: 'Restore a database to an Azure Arc enabled SQL managed instance',
          options: [

            Option(
              name: '--dest-name',
              description: 'Name of the database that will be created as the restore destination',
              args: [
                Arg(
                name: 'dest-nam'
              )
              ]
            ),
            Option(
              name: '--dry-run',
              description: 'Validates if the restore operation can be successful or not by returning earliest and latest restore time window',
              args: [
                Arg(
                name: 'dry-ru'
              )
              ]
            ),
            Option(
              name: ['--k8s-namespace', '-k'],
              description: 'The Kubernetes namespace that contains the Azure Arc enabled SQL managed instance. If no namespace is specified, then the namespace defined in the kubeconfig will be used',
              args: [
                Arg(
                name: 'k8s-namespac'
              )
              ]
            ),
            Option(
              name: '--managed-instance',
              description: 'Name of the source Azure Arc enabled SQL managed instance',
              args: [
                Arg(
                name: 'managed-instanc'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the source database from where the backups should be retrieved',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish',
              args: [
                Arg(
                name: 'no-wai'
              )
              ]
            ),
            Option(
              name: ['--time', '-t'],
              description: 'The point in time of the source database that will be restored to create the new database. Must be greater than or equal to the source database\'s earliest restore date/time value. Time should be in following format: \'YYYY-MM-DDTHH:MM:SSZ\'. If no time is provided, the most recent backup will be restored',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'recoverable-midb',
      description: 'Recoverable managed databases command group',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Get all recoverable managed databases for given instance name',
          options: [

            Option(
              name: ['--instance-name', '--mi'],
              description: 'The name of the managed instance. Required',
              args: [
                Arg(
                name: 'instance-nam'
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
          description: 'Get recoverable managed database',
          options: [

            Option(
              name: ['--database-name', '-n'],
              description: 'The id of recoverable database from geo-replicated instance',
              args: [
                Arg(
                name: 'database-nam'
              )
              ]
            ),
            Option(
              name: ['--instance-name', '--mi'],
              description: 'The name of the managed instance. Required',
              args: [
                Arg(
                name: 'instance-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'server',
      description: 'Manage SQL servers',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a server',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              name: ['--admin-password', '-p'],
              description: 'The administrator login password (required forserver creation)',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--admin-user', '-u'],
              description: 'Administrator username for the server. Oncecreated it cannot be changed',
              args: [
                Arg(
                name: 'admin-use'
              )
              ]
            ),
            Option(
              name: ['--assign-identity', '-i'],
              description: 'Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault'
            ),
            Option(
              name: '--enable-ad-only-auth',
              description: 'Enable Azure Active Directory Only Authentication for this server'
            ),
            Option(
              name: ['--enable-public-network', '-e'],
              description: 'Set whether public network access to server is allowed or not. When false,only connections made through Private Links can reach this server',
              args: [
                Arg(
                name: 'enable-public-network',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--external-admin-name',
              description: 'Display name of the Azure AD administrator user, group or application',
              args: [
                Arg(
                name: 'external-admin-nam'
              )
              ]
            ),
            Option(
              name: '--external-admin-principal-type',
              description: 'User, Group or Application',
              args: [
                Arg(
                name: 'external-admin-principal-typ'
              )
              ]
            ),
            Option(
              name: '--external-admin-sid',
              description: 'The unique ID of the Azure AD administrator. Object Id for User or Group, Client Id for Applications',
              args: [
                Arg(
                name: 'external-admin-si'
              )
              ]
            ),
            Option(
              name: ['--federated-client-id', '--fid'],
              description: 'The federated client id used in cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: ['--identity-type', '-t'],
              description: 'Type of Identity to be used. Possible values are SystemAsssigned,UserAssigned, SystemAssigned,UserAssigned and None',
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
              name: ['--key-id', '-k'],
              description: 'The key vault URI for encryption',
              args: [
                Arg(
                name: 'key-i'
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
              description: 'The minimal TLS version enforced by the sql server for inbound connections',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: ['--primary-user-assigned-identity-id', '--pid'],
              description: 'The ID of the primary user managed identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identity-i'
              )
              ]
            ),
            Option(
              name: ['--restrict-outbound-network-access', '-r'],
              description: 'Set whether outbound network access to server is restricted or not. When true,the outbound connections from the server will be restricted',
              args: [
                Arg(
                name: 'restrict-outbound-network-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--user-assigned-identity-id', '-a'],
              description: 'Generate and assign an User Managed Identity(UMI) for this server',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Deletes a server',
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
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
          description: 'List available servers',
          options: [

            Option(
              name: '--expand-ad-admin',
              description: 'Expand the Active Directory Administrator for the server'
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
          name: 'list-usages',
          description: 'Returns server usages',
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
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
          name: 'refresh-external-governance-status',
          description: 'Refreshes external governance status',
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
              name: ['--server', '-s'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
              args: [
                Arg(
                name: 'serve'
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
          description: 'Gets a server',
          options: [

            Option(
              name: '--expand-ad-admin',
              description: 'Expand the Active Directory Administrator for the server'
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
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              description: 'The administrator login password',
              args: [
                Arg(
                name: 'admin-passwor'
              )
              ]
            ),
            Option(
              name: ['--assign_identity', '-i'],
              description: 'Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault'
            ),
            Option(
              name: ['--enable-public-network', '-e'],
              description: 'Set whether public network access to server is allowed or not. When false,only connections made through Private Links can reach this server',
              args: [
                Arg(
                name: 'enable-public-network',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--federated-client-id', '--fid'],
              description: 'The federated client id used in cross tenant CMK scenario',
              args: [
                Arg(
                name: 'federated-client-i'
              )
              ]
            ),
            Option(
              name: '--force-string',
              description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
            ),
            Option(
              name: ['--identity-type', '-t'],
              description: 'Type of Identity to be used. Possible values are SystemAsssigned,UserAssigned, SystemAssigned,UserAssigned and None',
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
              name: ['--key-id', '-k'],
              description: 'The key vault URI for encryption',
              args: [
                Arg(
                name: 'key-i'
              )
              ]
            ),
            Option(
              name: '--minimal-tls-version',
              description: 'The minimal TLS version enforced by the sql server for inbound connections',
              args: [
                Arg(
                name: 'minimal-tls-version',
                suggestions: [

                  FigSuggestion(name: '1.0'),
                  FigSuggestion(name: '1.1'),
                  FigSuggestion(name: '1.2')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              name: ['--primary-user-assigned-identity-id', '--pid'],
              description: 'The ID of the primary user managed identity',
              args: [
                Arg(
                name: 'primary-user-assigned-identity-i'
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
              name: ['--restrict-outbound-network-access', '-r'],
              description: 'Set whether outbound network access to server is restricted or not. When true,the outbound connections from the server will be restricted',
              args: [
                Arg(
                name: 'restrict-outbound-network-access',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
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
              name: ['--user-assigned-identity-id', '-a'],
              description: 'Generate and assign an User Managed Identity(UMI) for this server',
              args: [
                Arg(
                name: 'user-assigned-identity-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the SQL server is met',
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
              name: '--expand',
              description: 'The child resources to include in the response. Default value is None',
              args: [
                Arg(
                name: 'expan'
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
              description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
          description: 'Manage a server\'s Active Directory administrator',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new server Active Directory administrator',
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
                  name: ['--server-name', '--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'server-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Sets a server\'s AD admin',
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
                  name: ['--server-name', '--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              description: 'Gets a list of Azure Active Directory administrators in a server',
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
                  name: ['--server-name', '--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              description: 'Update an existing server Active Directory administrator',
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
                  name: ['--server-name', '--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'ad-only-auth',
          description: 'Manage Azure Active Directory only Authentication settings for this Server',
          subcommands: [

            Subcommand(
              name: 'disable',
              description: 'Disable Azure Active Directory only Authentication for this Server',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              name: 'enable',
              description: 'Enable Azure Active Directory only Authentication for this Server',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              name: 'get',
              description: 'Get a specific Azure Active Directory only Authentication property',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
          name: 'advanced-threat-protection-setting',
          description: 'Manage a server\'s advanced threat protection setting',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets an advanced threat protection setting',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              description: 'Update a server\'s advanced threat protection setting',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                  name: '--state',
                  description: 'State of the advanced threat protection setting',
                  args: [
                    Arg(
                    name: 'stat'
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
          name: 'audit-policy',
          description: 'Manage a server\'s auditing policy',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show server audit policy',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
              description: 'Update a server\'s auditing policy',
              options: [

                Option(
                  name: '--actions',
                  description: 'List of actions and action groups to audit.These are space seperated values.Example: --actions FAILED_DATABASE_AUTHENTICATION_GROUP BATCH_COMPLETED_GROUP',
                  args: [
                    Arg(
                    name: 'action'
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
                  name: ['--blob-storage-target-state', '--bsts'],
                  description: 'Indicate whether blob storage is a destination for audit records',
                  args: [
                    Arg(
                    name: 'blob-storage-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub', '--eh'],
                  description: 'The name of the event hub. If none is specified when providing event_hub_authorization_rule_id, the default event hub will be selected',
                  args: [
                    Arg(
                    name: 'event-hu'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-authorization-rule-id', '--ehari'],
                  description: 'The resource Id for the event hub authorization rule',
                  args: [
                    Arg(
                    name: 'event-hub-authorization-rule-i'
                  )
                  ]
                ),
                Option(
                  name: ['--event-hub-target-state', '--ehts'],
                  description: 'Indicate whether event hub is a destination for audit records',
                  args: [
                    Arg(
                    name: 'event-hub-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
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
                  name: ['--log-analytics-target-state', '--lats'],
                  description: 'Indicate whether log analytics is a destination for audit records',
                  args: [
                    Arg(
                    name: 'log-analytics-target-state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--log-analytics-workspace-resource-id', '--lawri'],
                  description: 'The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Audit Logs',
                  args: [
                    Arg(
                    name: 'log-analytics-workspace-resource-i'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                  name: '--retention-days',
                  description: 'The number of days to retain audit logs',
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
                ),
                Option(
                  name: '--state',
                  description: 'Auditing policy state',
                  args: [
                    Arg(
                    name: 'state',
                    suggestions: [

                      FigSuggestion(name: 'Disabled'),
                      FigSuggestion(name: 'Enabled')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--storage-account',
                  description: 'Name of the storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--storage-endpoint',
                  description: 'The storage account endpoint',
                  args: [
                    Arg(
                    name: 'storage-endpoin'
                  )
                  ]
                ),
                Option(
                  name: '--storage-key',
                  description: 'Access key for the storage account',
                  args: [
                    Arg(
                    name: 'storage-ke'
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
              description: 'Place the CLI in a waiting state until a condition of the server\'s audit policy is met',
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
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
            )
          ]
        ),
        Subcommand(
          name: 'conn-policy',
          description: 'Manage a server\'s connection policy',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Gets a server\'s secure connection policy',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Updates a server\'s secure connection policy',
              options: [

                Option(
                  name: ['--connection-type', '-t'],
                  description: 'The required parameters for updating a secure connection policy. The value is default',
                  args: [
                    Arg(
                    name: 'connection-type',
                    suggestions: [

                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'Proxy'),
                      FigSuggestion(name: 'Redirect')
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'dns-alias',
          description: 'Manage a server\'s DNS aliases',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a server DNS alias',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the DNS alias',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes the server DNS alias with the given name',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the DNS alias',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a list of server DNS aliases for a server',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Sets a server to which DNS alias should point',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the DNS alias',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--original-server',
                  description: 'The name of the server to which alias is currently pointing',
                  args: [
                    Arg(
                    name: 'original-serve'
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
                  name: '--original-resource-group',
                  description: 'Name of the original resource group',
                  args: [
                    Arg(
                    name: 'original-resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--original-subscription-id',
                  description: 'ID of the original subscription',
                  args: [
                    Arg(
                    name: 'original-subscription-i'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a server DNS alias',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the DNS alias',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          description: 'Manage a server\'s firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a firewall rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Deletes a firewall rule',
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
                  description: 'The name of the firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'List a server\'s firewall rules',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Shows the details for a firewall rule',
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
                  description: 'The name of the firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: '--end-ip-address',
                  description: 'The end IP address of the firewall rule. Must be IPv4 format. Use value \'0.0.0.0\' to represent all Azure-internal IP addresses',
                  args: [
                    Arg(
                    name: 'end-ip-addres'
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
                  description: 'The name of the firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'ipv6-firewall-rule',
          description: 'Manage a server\'s ipv6 firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create an ipv6 firewall rule',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the IPv6 firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--end-ipv6-address',
                  description: 'The end IPv6 address of the firewall rule. Must be IPv6 format',
                  args: [
                    Arg(
                    name: 'end-ipv6-addres'
                  )
                  ]
                ),
                Option(
                  name: '--start-ipv6-address',
                  description: 'The start IPv6 address of the firewall rule. Must be IPv6 format',
                  args: [
                    Arg(
                    name: 'start-ipv6-addres'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes an IPv6 firewall rule',
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
                  description: 'The name of the IPv6 firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'List a server\'s ipv6 firewall rules',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Shows the details for an ipv6 firewall rule',
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
                  description: 'The name of the IPv6 firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Update an ipv6 firewall rule',
              options: [

                Option(
                  name: '--end-ipv6-address',
                  description: 'The end IPv6 address of the firewall rule. Must be IPv6 format',
                  args: [
                    Arg(
                    name: 'end-ipv6-addres'
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
                  description: 'The name of the IPv6 firewall rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--start-ipv6-address',
                  description: 'The start IPv6 address of the firewall rule. Must be IPv6 format',
                  args: [
                    Arg(
                    name: 'start-ipv6-addres'
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
          description: 'Manage a server\'s keys',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a server key',
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Deletes a server key',
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a list of server keys',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Shows a server key',
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
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'ms-support',
          description: 'Manage a server\'s Microsoft support operations',
          subcommands: [

            Subcommand(
              name: 'audit-policy',
              description: 'Manage a server\'s Microsoft support operations auditing policy',
              subcommands: [

                Subcommand(
                  name: 'show',
                  description: 'Show server Microsoft support operations audit policy',
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
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                  description: 'Update a server\'s Microsoft support operations auditing policy',
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
                      name: ['--blob-storage-target-state', '--bsts'],
                      description: 'Indicate whether blob storage is a destination for audit records',
                      args: [
                        Arg(
                        name: 'blob-storage-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub', '--eh'],
                      description: 'The name of the event hub. If none is specified when providing event_hub_authorization_rule_id, the default event hub will be selected',
                      args: [
                        Arg(
                        name: 'event-hu'
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub-authorization-rule-id', '--ehari'],
                      description: 'The resource Id for the event hub authorization rule',
                      args: [
                        Arg(
                        name: 'event-hub-authorization-rule-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--event-hub-target-state', '--ehts'],
                      description: 'Indicate whether event hub is a destination for audit records',
                      args: [
                        Arg(
                        name: 'event-hub-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
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
                      name: ['--log-analytics-target-state', '--lats'],
                      description: 'Indicate whether log analytics is a destination for audit records',
                      args: [
                        Arg(
                        name: 'log-analytics-target-state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: [
                        '--log-analytics-workspace-resource-id',
                        '--lawri',
                      ],
                      description: 'The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Audit Logs',
                      args: [
                        Arg(
                        name: 'log-analytics-workspace-resource-i'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                      name: '--state',
                      description: 'Auditing policy state',
                      args: [
                        Arg(
                        name: 'state',
                        suggestions: [

                          FigSuggestion(name: 'Disabled'),
                          FigSuggestion(name: 'Enabled')
                        ]
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-account',
                      description: 'Name of the storage account',
                      args: [
                        Arg(
                        name: 'storage-accoun'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-endpoint',
                      description: 'The storage account endpoint',
                      args: [
                        Arg(
                        name: 'storage-endpoin'
                      )
                      ]
                    ),
                    Option(
                      name: '--storage-key',
                      description: 'Access key for the storage account',
                      args: [
                        Arg(
                        name: 'storage-ke'
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
                  description: 'Place the CLI in a waiting state until a condition of the server\'s Microsoft support operations audit policy is met',
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
                      description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
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
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'outbound-firewall-rule',
          description: 'Manage a server\'s outbound firewall rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a new outbound firewall rule',
              options: [

                Option(
                  name: ['--outbound-rule-fqdn', '-n'],
                  description: 'The allowed FQDN for the outbound firewall rule',
                  args: [
                    Arg(
                    name: 'outbound-rule-fqd'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the outbound firewall rule',
              options: [

                Option(
                  name: ['--outbound-rule-fqdn', '-n'],
                  description: 'The allowed FQDN for the outbound firewall rule',
                  args: [
                    Arg(
                    name: 'outbound-rule-fqd'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'List a server\'s outbound firewall rules',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Show the details for an outbound firewall rule',
              options: [

                Option(
                  name: ['--outbound-rule-fqdn', '-n'],
                  description: 'The allowed FQDN for the outbound firewall rule',
                  args: [
                    Arg(
                    name: 'outbound-rule-fqd'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'tde-key',
          description: 'Manage a server\'s encryption protector',
          subcommands: [

            Subcommand(
              name: 'revalidate',
              description: 'Revalidate a server encryption protector',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Sets the server\'s encryption protector. Ensure to create the key first https://docs.microsoft.com/en-us/cli/azure/sql/server/key?view=azure-cli-latest#az-sql-server-key-create',
              options: [

                Option(
                  name: ['--server-key-type', '-t'],
                  description: 'The type of the server key',
                  args: [
                    Arg(
                    name: 'server-key-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureKeyVault'),
                      FigSuggestion(name: 'ServiceManaged')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--auto-rotation-enabled',
                  description: 'The key auto rotation opt in status. Can be either true or false',
                  args: [
                    Arg(
                    name: 'auto-rotation-enabled',
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
                  name: ['--kid', '-k'],
                  description: 'The Azure Key Vault key identifier of the server key. An example key identifier is "https://YourVaultName.vault.azure.net/keys/YourKeyName/01234567890123456789012345678901"',
                  args: [
                    Arg(
                    name: 'ki'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
              description: 'Gets a server encryption protector',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
          name: 'vnet-rule',
          description: 'Manage a server\'s virtual network rules',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a virtual network rule to allows access to an Azure SQL Server',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'The name of the virtual network rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of the subnet that allows access to an Azure Sql Server. If subnet name is provided, --vnet-name must be provided',
                  args: [
                    Arg(
                    name: 'subne'
                  )
                  ]
                ),
                Option(
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create firewall rule before the virtual network has vnet service endpoint enabled'
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
                  name: ['--name', '-n'],
                  description: 'The name of the virtual network rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: ['--name', '-n'],
                  description: 'The name of the virtual network rule',
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
                  name: ['--name', '-n'],
                  description: 'The name of the virtual network rule',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--subnet',
                  description: 'Name or ID of the subnet that allows access to an Azure Sql Server. If subnet name is provided, --vnet-name must be provided',
                  args: [
                    Arg(
                    name: 'subne'
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
                  name: ['--ignore-missing-endpoint', '-i'],
                  description: 'Create firewall rule before the virtual network has vnet service endpoint enabled'
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
                  name: ['--server', '-s'],
                  description: 'Name of the Azure SQL Server. You can configure the default using az configure --defaults sql-server=<name>',
                  args: [
                    Arg(
                    name: 'serve'
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
        )
      ]
    ),
    Subcommand(
      name: 'server-arc',
      description: 'Manage Azure Arc-enabled SQL servers',
      subcommands: [

        Subcommand(
          name: 'backups-policy',
          description: 'Manage Backups Policy',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Set your Backups Policy',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Arc enabled SQL Server',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group where the Arc enabled SQL Server is projected to',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--default-policy',
                  description: 'Set the default policy of weekly retention period, weekly full, daily differential, and 5 min transaction log backups'
                ),
                Option(
                  name: '--diff-backup-hours',
                  description: 'Interval, in hours, at which differential backups should be performed. Valid values – 12 or 24',
                  args: [
                    Arg(
                    name: 'diff-backup-hour'
                  )
                  ]
                ),
                Option(
                  name: '--full-backup-days',
                  description: 'Interval, in days, at which a new full backup should be performed. Valid values – 0-7',
                  args: [
                    Arg(
                    name: 'full-backup-day'
                  )
                  ]
                ),
                Option(
                  name: '--retention-days',
                  description: 'Number of days to keep the backups for. Valid values 0-35',
                  args: [
                    Arg(
                    name: 'retention-day'
                  )
                  ]
                ),
                Option(
                  name: '--tlog-backup-mins',
                  description: 'Interval, in minutes, at which transactional backups should be performed. Valid values – 0 to 60',
                  args: [
                    Arg(
                    name: 'tlog-backup-min'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'See your current Backups Policy',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Arc enabled SQL Server',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of the resource group where the Arc enabled SQL Server is projected to',
                  args: [
                    Arg(
                    name: 'resource-grou'
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
      name: 'stg',
      description: 'Manage Server Trust Groups',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a Server Trust Group',
          options: [

            Option(
              name: ['--group-member', '-m'],
              description: 'Managed Instance that is to be a member of the group. Specify resource group, subscription id and the name of the instance',
              args: [
                Arg(
                name: 'group-membe'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location name of the Server Trust Group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Server Trust Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--trust-scope',
              description: 'The trust scope of the Server Trust Group',
              args: [
                Arg(
                name: 'trust-scop'
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
          description: 'Delete a Server Trust Group',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location of the Server Trust Group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Server Trust Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
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
          description: 'Retrieve a list of Server Trust Groups',
          options: [

            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--instance-name',
              description: 'Managed Instance name',
              args: [
                Arg(
                name: 'instance-nam'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location of the Server Trust Group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Retrieve a Server Trust Group',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'The location of the Server Trust Group',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Server Trust Group',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'The resource group name',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'virtual-cluster',
      description: 'Manage SQL virtual clusters',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a virtual cluster',
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
              description: 'The virtual cluster name',
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
          name: 'list',
          description: 'List available virtual clusters',
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
          name: 'show',
          description: 'Get the details for a virtual cluster',
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
              description: 'The virtual cluster name',
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
      name: 'vm',
      description: 'Manage SQL virtual machines',
      subcommands: [

        Subcommand(
          name: 'add-to-group',
          description: 'Adds SQL virtual machine to a SQL virtual machine group',
          options: [

            Option(
              name: ['--sqlvm-group', '-r'],
              description: 'Name or resource ID of the SQL virtual machine group. If only name provided, SQL virtual machine group should be in the same resource group of the SQL virtual machine',
              args: [
                Arg(
                name: 'sqlvm-grou'
              )
              ]
            ),
            Option(
              name: ['--bootstrap-acc-pwd', '-b'],
              description: 'Password for the cluster bootstrap account if provided in the SQL virtual machine group',
              args: [
                Arg(
                name: 'bootstrap-acc-pw'
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
              description: 'Name of the SQL virtual machine',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--operator-acc-pwd', '-p'],
              description: 'Password for the cluster operator account provided in the SQL virtual machine group',
              args: [
                Arg(
                name: 'operator-acc-pw'
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
              name: ['--service-acc-pwd', '-s'],
              description: 'Password for the SQL service account provided in the SQL virtual machine group',
              args: [
                Arg(
                name: 'service-acc-pw'
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
          description: 'Creates a SQL virtual machine',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the SQL virtual machine. The name of the new SQL virtual machine must be equal to the underlying virtual machine created from SQL marketplace image',
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
              name: '--backup-pwd',
              description: 'Password for encryption on backup',
              args: [
                Arg(
                name: 'backup-pw'
              )
              ]
            ),
            Option(
              name: '--backup-schedule-type',
              description: 'Backup schedule type',
              args: [
                Arg(
                name: 'backup-schedule-type',
                suggestions: [

                  FigSuggestion(name: 'Automated'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-system-dbs',
              description: 'Include system databases on backup'
            ),
            Option(
              name: '--connectivity-type',
              description: 'SQL Server connectivity option',
              args: [
                Arg(
                name: 'connectivity-type',
                suggestions: [

                  FigSuggestion(name: 'LOCAL'),
                  FigSuggestion(name: 'PRIVATE'),
                  FigSuggestion(name: 'PUBLIC')
                ]
              )
              ]
            ),
            Option(
              name: '--credential-name',
              description: 'Credential name',
              args: [
                Arg(
                name: 'credential-nam'
              )
              ]
            ),
            Option(
              name: '--day-of-week',
              description: 'Day of week to apply the patch on',
              args: [
                Arg(
                name: 'day-of-week',
                suggestions: [

                  FigSuggestion(name: 'Everyday'),
                  FigSuggestion(name: 'Friday'),
                  FigSuggestion(name: 'Monday'),
                  FigSuggestion(name: 'Saturday'),
                  FigSuggestion(name: 'Sunday'),
                  FigSuggestion(name: 'Thursday'),
                  FigSuggestion(name: 'Tuesday'),
                  FigSuggestion(name: 'Wednesday')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-auto-backup',
              description: 'Enable or disable autobackup on SQL virtual machine. If any backup settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-auto-backup',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-auto-patching',
              description: 'Enable or disable autopatching on SQL virtual machine. If any autopatching settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-auto-patching',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-encryption',
              description: 'Enable encryption for backup on SQL virtual machine'
            ),
            Option(
              name: '--enable-key-vault-credential',
              description: 'Enable or disable key vault credential setting. If any key vault settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-key-vault-credential',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-r-services',
              description: 'Enable or disable R services (SQL 2016 onwards)',
              args: [
                Arg(
                name: 'enable-r-services',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--full-backup-duration',
              description: 'Duration of the time window of a given day during which full backups can take place. 1-23 hours',
              args: [
                Arg(
                name: 'full-backup-duratio'
              )
              ]
            ),
            Option(
              name: '--full-backup-frequency',
              description: 'Frequency of full backups. In both cases, full backups begin during the next scheduled time window',
              args: [
                Arg(
                name: 'full-backup-frequency',
                suggestions: [

                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--full-backup-start-hour',
              description: 'Start time of a given day during which full backups can take place. 0-23 hours',
              args: [
                Arg(
                name: 'full-backup-start-hou'
              )
              ]
            ),
            Option(
              name: '--image-offer',
              description: 'SQL image offer. Examples include SQL2008R2-WS2008, SQL2008-WS2008',
              args: [
                Arg(
                name: 'image-offe'
              )
              ]
            ),
            Option(
              name: '--image-sku',
              description: 'SQL image sku',
              args: [
                Arg(
                name: 'image-sku',
                suggestions: [

                  FigSuggestion(name: 'Developer'),
                  FigSuggestion(name: 'Enterprise'),
                  FigSuggestion(name: 'Express'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Web')
                ]
              )
              ]
            ),
            Option(
              name: '--key-vault',
              description: 'Azure Key Vault url',
              args: [
                Arg(
                name: 'key-vaul'
              )
              ]
            ),
            Option(
              name: '--least-privilege-mode',
              description: 'SQL IaaS Agent Least Privilege Mode. Updates from sysadmin to specific permissions used per feature',
              args: [
                Arg(
                name: 'least-privilege-mode',
                suggestions: [

                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: ['--license-type', '-i'],
              description: 'SQL Server license type',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'AHUB'),
                  FigSuggestion(name: 'DR'),
                  FigSuggestion(name: 'PAYG')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. If not provided, virtual machine should be in the same region of resource group.You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--log-backup-frequency',
              description: 'Frequency of log backups. 5-60 minutes',
              args: [
                Arg(
                name: 'log-backup-frequenc'
              )
              ]
            ),
            Option(
              name: '--maintenance-window-duration',
              description: 'Duration of patching. 30-180 minutes',
              args: [
                Arg(
                name: 'maintenance-window-duratio'
              )
              ]
            ),
            Option(
              name: '--maintenance-window-start-hour',
              description: 'Hour of the day when patching is initiated. Local VM time 0-23 hours',
              args: [
                Arg(
                name: 'maintenance-window-start-hou'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'SQL Server port',
              args: [
                Arg(
                name: 'por'
              )
              ]
            ),
            Option(
              name: '--retention-period',
              description: 'Retention period of backup. 1-30 days',
              args: [
                Arg(
                name: 'retention-perio'
              )
              ]
            ),
            Option(
              name: '--sa-key',
              description: 'Storage account key where backup will be taken to',
              args: [
                Arg(
                name: 'sa-ke'
              )
              ]
            ),
            Option(
              name: '--sp-name',
              description: 'Service principal name to access key vault',
              args: [
                Arg(
                name: 'sp-nam'
              )
              ]
            ),
            Option(
              name: '--sp-secret',
              description: 'Service principal name secret to access key vault',
              args: [
                Arg(
                name: 'sp-secre'
              )
              ]
            ),
            Option(
              name: '--sql-auth-update-pwd',
              description: 'SQL Server sysadmin login password',
              args: [
                Arg(
                name: 'sql-auth-update-pw'
              )
              ]
            ),
            Option(
              name: '--sql-auth-update-username',
              description: 'SQL Server sysadmin login to create',
              args: [
                Arg(
                name: 'sql-auth-update-usernam'
              )
              ]
            ),
            Option(
              name: '--sql-mgmt-type',
              description: 'Argument \'sql_management_mode\' has been deprecated and will be removed in a future release. SQL Server management type. If NoAgent selected, please provide --image-sku and --offer-type',
              args: [
                Arg(
                name: 'sql-mgmt-type',
                suggestions: [

                  FigSuggestion(name: 'Full'),
                  FigSuggestion(name: 'LightWeight'),
                  FigSuggestion(name: 'NoAgent')
                ]
              )
              ]
            ),
            Option(
              name: '--sql-workload-type',
              description: 'SQL Server workload type',
              args: [
                Arg(
                name: 'sql-workload-type',
                suggestions: [

                  FigSuggestion(name: 'DW'),
                  FigSuggestion(name: 'GENERAL'),
                  FigSuggestion(name: 'OLTP')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Storage account url where backup will be taken to',
              args: [
                Arg(
                name: 'storage-accoun'
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
          description: 'Deletes a SQL virtual machine',
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
              description: 'Name of the SQL virtual machine',
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
          name: 'enable-azure-ad-auth',
          description: 'Enable Azure AD authentication of a SQL virtual machine',
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
              name: '--msi-client-id',
              description: 'Virutal Machine Managed Identity Client ID',
              args: [
                Arg(
                name: 'msi-client-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the SQL virtual machine',
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
              name: '--skip-client-validation',
              description: 'Skip client side Azure AD authentication validation, the server side validation will still happen',
              args: [
                Arg(
                name: 'skip-client-validatio'
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
          description: 'Lists all SQL virtual machines in a resource group or subscription',
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
          name: 'remove-from-group',
          description: 'Remove SQL virtual machine from its current SQL virtual machine group',
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
              description: 'Name of the SQL virtual machine',
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
          description: 'Gets a SQL virtual machine',
          options: [

            Option(
              name: '--expand',
              description: 'Get the SQLIaaSExtension configuration settings. To view all settings, use *. To select only a few, the settings must be space-separated',
              args: [
                Arg(
                name: 'expand',
                suggestions: [

                  FigSuggestion(name: '*'),
                  FigSuggestion(name: 'AssessmentSettings'),
                  FigSuggestion(name: 'AutoBackupSettings'),
                  FigSuggestion(name: 'AutoPatchingSettings'),
                  FigSuggestion(name: 'KeyVaultCredentialSettings'),
                  FigSuggestion(name: 'ServerConfigurationsManagementSettings')
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
              description: 'Name of the SQL virtual machine',
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
          name: 'start-assessment',
          description: 'Starts SQL best practice assessment on SQL virtual machine',
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
              description: 'Name of the SQL virtual machine',
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
          description: 'Updates the properties of a SQL virtual machine',
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
              name: '--agent-rg',
              description: 'Resource group containing the AMA resources DCE and DCR',
              args: [
                Arg(
                name: 'agent-r'
              )
              ]
            ),
            Option(
              name: ['--assessment-day-of-week', '--am-day'],
              description: 'Day of the week to run assessment',
              args: [
                Arg(
                name: 'assessment-day-of-week',
                suggestions: [

                  FigSuggestion(name: 'Friday'),
                  FigSuggestion(name: 'Monday'),
                  FigSuggestion(name: 'Saturday'),
                  FigSuggestion(name: 'Sunday'),
                  FigSuggestion(name: 'Thursday'),
                  FigSuggestion(name: 'Tuesday'),
                  FigSuggestion(name: 'Wednesday')
                ]
              )
              ]
            ),
            Option(
              name: ['--assessment-monthly-occurrence', '--am-month-occ'],
              description: 'Occurrence of the DayOfWeek day within a month to schedule assessment. Supports values 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month (for example - last Tuesday of the month)',
              args: [
                Arg(
                name: 'assessment-monthly-occurrence',
                suggestions: [

                  FigSuggestion(name: '-1'),
                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3'),
                  FigSuggestion(name: '4')
                ]
              )
              ]
            ),
            Option(
              name: ['--enable-assessment-schedule', '--am-schedule'],
              description: 'Enable or disable assessment Schedule. If any assessment schedule settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-assessment-schedule',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--assessment-start-time-local', '--am-time'],
              description: 'Time of the day in HH:mm format. Examples include 17:30, 05:13',
              args: [
                Arg(
                name: 'assessment-start-time-loca'
              )
              ]
            ),
            Option(
              name: ['--assessment-weekly-interval', '--am-week-int'],
              description: 'Number of weeks to schedule between 2 assessment runs. Supports value from 1-6',
              args: [
                Arg(
                name: 'assessment-weekly-interval',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3'),
                  FigSuggestion(name: '4'),
                  FigSuggestion(name: '5'),
                  FigSuggestion(name: '6')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-pwd',
              description: 'Password for encryption on backup',
              args: [
                Arg(
                name: 'backup-pw'
              )
              ]
            ),
            Option(
              name: '--backup-schedule-type',
              description: 'Backup schedule type',
              args: [
                Arg(
                name: 'backup-schedule-type',
                suggestions: [

                  FigSuggestion(name: 'Automated'),
                  FigSuggestion(name: 'Manual')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-system-dbs',
              description: 'Include system databases on backup'
            ),
            Option(
              name: '--connectivity-type',
              description: 'SQL Server connectivity option',
              args: [
                Arg(
                name: 'connectivity-type',
                suggestions: [

                  FigSuggestion(name: 'LOCAL'),
                  FigSuggestion(name: 'PRIVATE'),
                  FigSuggestion(name: 'PUBLIC')
                ]
              )
              ]
            ),
            Option(
              name: '--credential-name',
              description: 'Credential name',
              args: [
                Arg(
                name: 'credential-nam'
              )
              ]
            ),
            Option(
              name: '--day-of-week',
              description: 'Day of week to apply the patch on',
              args: [
                Arg(
                name: 'day-of-week',
                suggestions: [

                  FigSuggestion(name: 'Everyday'),
                  FigSuggestion(name: 'Friday'),
                  FigSuggestion(name: 'Monday'),
                  FigSuggestion(name: 'Saturday'),
                  FigSuggestion(name: 'Sunday'),
                  FigSuggestion(name: 'Thursday'),
                  FigSuggestion(name: 'Tuesday'),
                  FigSuggestion(name: 'Wednesday')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-assessment',
              description: 'Enable or disable assessment feature. If any assessment settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-assessment',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-auto-backup',
              description: 'Enable or disable autobackup on SQL virtual machine. If any backup settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-auto-backup',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-auto-patching',
              description: 'Enable or disable autopatching on SQL virtual machine. If any autopatching settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-auto-patching',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-encryption',
              description: 'Enable encryption for backup on SQL virtual machine'
            ),
            Option(
              name: '--enable-key-vault-credential',
              description: 'Enable or disable key vault credential setting. If any key vault settings provided, parameter automatically sets to true',
              args: [
                Arg(
                name: 'enable-key-vault-credential',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--enable-r-services',
              description: 'Enable or disable R services (SQL 2016 onwards)',
              args: [
                Arg(
                name: 'enable-r-services',
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
              name: '--full-backup-duration',
              description: 'Duration of the time window of a given day during which full backups can take place. 1-23 hours',
              args: [
                Arg(
                name: 'full-backup-duratio'
              )
              ]
            ),
            Option(
              name: '--full-backup-frequency',
              description: 'Frequency of full backups. In both cases, full backups begin during the next scheduled time window',
              args: [
                Arg(
                name: 'full-backup-frequency',
                suggestions: [

                  FigSuggestion(name: 'Daily'),
                  FigSuggestion(name: 'Weekly')
                ]
              )
              ]
            ),
            Option(
              name: '--full-backup-start-hour',
              description: 'Start time of a given day during which full backups can take place. 0-23 hours',
              args: [
                Arg(
                name: 'full-backup-start-hou'
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
              name: '--image-sku',
              description: 'SQL image sku',
              args: [
                Arg(
                name: 'image-sku',
                suggestions: [

                  FigSuggestion(name: 'Developer'),
                  FigSuggestion(name: 'Enterprise'),
                  FigSuggestion(name: 'Express'),
                  FigSuggestion(name: 'Standard'),
                  FigSuggestion(name: 'Web')
                ]
              )
              ]
            ),
            Option(
              name: '--key-vault',
              description: 'Azure Key Vault url',
              args: [
                Arg(
                name: 'key-vaul'
              )
              ]
            ),
            Option(
              name: '--least-privilege-mode',
              description: 'SQL IaaS Agent Least Privilege Mode. Updates from sysadmin to specific permissions used per feature',
              args: [
                Arg(
                name: 'least-privilege-mode',
                suggestions: [

                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'NotSet')
                ]
              )
              ]
            ),
            Option(
              name: ['--license-type', '-i'],
              description: 'SQL Server license type',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'AHUB'),
                  FigSuggestion(name: 'DR'),
                  FigSuggestion(name: 'PAYG')
                ]
              )
              ]
            ),
            Option(
              name: '--log-backup-frequency',
              description: 'Frequency of log backups. 5-60 minutes',
              args: [
                Arg(
                name: 'log-backup-frequenc'
              )
              ]
            ),
            Option(
              name: '--maintenance-window-duration',
              description: 'Duration of patching. 30-180 minutes',
              args: [
                Arg(
                name: 'maintenance-window-duratio'
              )
              ]
            ),
            Option(
              name: '--maintenance-window-start-hour',
              description: 'Hour of the day when patching is initiated. Local VM time 0-23 hours',
              args: [
                Arg(
                name: 'maintenance-window-start-hou'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the SQL virtual machine',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--port',
              description: 'SQL Server port',
              args: [
                Arg(
                name: 'por'
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
              name: '--retention-period',
              description: 'Retention period of backup. 1-30 days',
              args: [
                Arg(
                name: 'retention-perio'
              )
              ]
            ),
            Option(
              name: '--sa-key',
              description: 'Storage account key where backup will be taken to',
              args: [
                Arg(
                name: 'sa-ke'
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
              name: '--sp-name',
              description: 'Service principal name to access key vault',
              args: [
                Arg(
                name: 'sp-nam'
              )
              ]
            ),
            Option(
              name: '--sp-secret',
              description: 'Service principal name secret to access key vault',
              args: [
                Arg(
                name: 'sp-secre'
              )
              ]
            ),
            Option(
              name: '--sql-mgmt-type',
              description: 'Argument \'sql_management_mode\' has been deprecated and will be removed in a future release. SQL Server management type. Updates from LightWeight to Full',
              args: [
                Arg(
                name: 'sql-mgmt-type',
                suggestions: [

                  FigSuggestion(name: 'Full'),
                  FigSuggestion(name: 'LightWeight'),
                  FigSuggestion(name: 'NoAgent')
                ]
              )
              ]
            ),
            Option(
              name: '--sql-workload-type',
              description: 'SQL Server workload type',
              args: [
                Arg(
                name: 'sql-workload-type',
                suggestions: [

                  FigSuggestion(name: 'DW'),
                  FigSuggestion(name: 'GENERAL'),
                  FigSuggestion(name: 'OLTP')
                ]
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Storage account url where backup will be taken to',
              args: [
                Arg(
                name: 'storage-accoun'
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
              name: '--workspace-name',
              description: 'Name of the Log Analytics workspace to associate with VM',
              args: [
                Arg(
                name: 'workspace-nam'
              )
              ]
            ),
            Option(
              name: '--workspace-rg',
              description: 'Resource group containing the Log Analytics workspace',
              args: [
                Arg(
                name: 'workspace-r'
              )
              ]
            ),
            Option(
              name: '--workspace-sub',
              description: 'Subscription containing the Log Analytics workspace',
              args: [
                Arg(
                name: 'workspace-su'
              )
              ]
            ),
            Option(
              name: ['--yes', '-y'],
              description: 'Argument \'prompt\' has been deprecated and will be removed in a future release. Do not prompt for confirmation. Requires --sql-mgmt-type'
            )
          ]
        ),
        Subcommand(
          name: 'validate-azure-ad-auth',
          description: 'Validate Azure AD authentication of a SQL virtual machine at the client side without enabling it',
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
              name: '--msi-client-id',
              description: 'Virutal Machine Managed Identity Client ID',
              args: [
                Arg(
                name: 'msi-client-i'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the SQL virtual machine',
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
          name: 'group',
          description: 'Manage SQL virtual machine groups',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Creates a SQL virtual machine group',
              options: [

                Option(
                  name: ['--domain-fqdn', '-f'],
                  description: 'Fully qualified name of the domain',
                  args: [
                    Arg(
                    name: 'domain-fqd'
                  )
                  ]
                ),
                Option(
                  name: ['--image-offer', '-i'],
                  description: 'SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016',
                  args: [
                    Arg(
                    name: 'image-offe'
                  )
                  ]
                ),
                Option(
                  name: ['--image-sku', '-s'],
                  description: 'SQL image sku',
                  args: [
                    Arg(
                    name: 'image-sku',
                    suggestions: [

                      FigSuggestion(name: 'Developer'),
                      FigSuggestion(name: 'Enterprise')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the SQL virtual machine group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--operator-acc', '-p'],
                  description: 'Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster',
                  args: [
                    Arg(
                    name: 'operator-ac'
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
                  name: ['--service-acc', '-e'],
                  description: 'Account name under which SQL service will run on all participating SQL virtual machines in the cluster',
                  args: [
                    Arg(
                    name: 'service-ac'
                  )
                  ]
                ),
                Option(
                  name: ['--storage-account', '-u'],
                  description: 'Storage account url of the witness storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
                  )
                  ]
                ),
                Option(
                  name: '--bootstrap-acc',
                  description: 'Account name used for creating cluster (at minimum needs permissions to \'Create Computer Objects\' in domain)',
                  args: [
                    Arg(
                    name: 'bootstrap-ac'
                  )
                  ]
                ),
                Option(
                  name: '--cluster-subnet-type',
                  description: 'Cluster subnet type',
                  args: [
                    Arg(
                    name: 'cluster-subnet-type',
                    suggestions: [

                      FigSuggestion(name: 'MultiSubnet'),
                      FigSuggestion(name: 'SingleSubnet')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--fsw-path',
                  description: 'Optional path for fileshare witness',
                  args: [
                    Arg(
                    name: 'fsw-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. If not provided, group will be created in the same reosurce group location.You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: '--ou-path',
                  description: 'Organizational Unit path in which the nodes and cluster will be present. Example: OU=WSCluster,DC=testdomain,DC=com',
                  args: [
                    Arg(
                    name: 'ou-pat'
                  )
                  ]
                ),
                Option(
                  name: ['--sa-key', '-k'],
                  description: 'Primary key of the witness storage account',
                  args: [
                    Arg(
                    name: 'sa-ke'
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
              description: 'Deletes a SQL virtual machine group',
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
                  description: 'Name of the SQL virtual machine group',
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
              description: 'Lists all SQL virtual machine groups in a resource group or subscription',
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
              name: 'show',
              description: 'Gets a SQL virtual machine group',
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
                  description: 'Name of the SQL virtual machine group',
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
              description: 'Updates a SQL virtual machine group if there are not SQL virtual machines attached to the group',
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
                  name: '--bootstrap-acc',
                  description: 'Account name used for creating cluster (at minimum needs permissions to \'Create Computer Objects\' in domain)',
                  args: [
                    Arg(
                    name: 'bootstrap-ac'
                  )
                  ]
                ),
                Option(
                  name: '--cluster-subnet-type',
                  description: 'Cluster subnet type',
                  args: [
                    Arg(
                    name: 'cluster-subnet-type',
                    suggestions: [

                      FigSuggestion(name: 'MultiSubnet'),
                      FigSuggestion(name: 'SingleSubnet')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--domain-fqdn', '-f'],
                  description: 'Fully qualified name of the domain',
                  args: [
                    Arg(
                    name: 'domain-fqd'
                  )
                  ]
                ),
                Option(
                  name: '--force-string',
                  description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
                ),
                Option(
                  name: '--fsw-path',
                  description: 'Optional path for fileshare witness',
                  args: [
                    Arg(
                    name: 'fsw-pat'
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
                  description: 'Name of the SQL virtual machine group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--operator-acc', '-p'],
                  description: 'Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster',
                  args: [
                    Arg(
                    name: 'operator-ac'
                  )
                  ]
                ),
                Option(
                  name: '--ou-path',
                  description: 'Organizational Unit path in which the nodes and cluster will be present. Example: OU=WSCluster,DC=testdomain,DC=com',
                  args: [
                    Arg(
                    name: 'ou-pat'
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
                  name: ['--sa-key', '-k'],
                  description: 'Primary key of the witness storage account',
                  args: [
                    Arg(
                    name: 'sa-ke'
                  )
                  ]
                ),
                Option(
                  name: ['--service-acc', '-e'],
                  description: 'Account name under which SQL service will run on all participating SQL virtual machines in the cluster',
                  args: [
                    Arg(
                    name: 'service-ac'
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
                  name: ['--storage-account', '-u'],
                  description: 'Storage account url of the witness storage account',
                  args: [
                    Arg(
                    name: 'storage-accoun'
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
              name: 'ag-listener',
              description: 'Manage SQL availability group listeners',
              subcommands: [

                Subcommand(
                  name: 'create',
                  description: 'Creates an availability group listener',
                  options: [

                    Option(
                      name: ['--ag-name', '-a'],
                      description: 'Name of the availability group. Please refer to https://docs.microsoft.com/sql/database-engine/availability-groups/windows/use-the-availability-group-wizard-sql-server-management-studio?view=sql-server-2017 to create and availability group',
                      args: [
                        Arg(
                        name: 'ag-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--group-name', '-r'],
                      description: 'Name of the SQL virtual machine group',
                      args: [
                        Arg(
                        name: 'group-nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--ip-address', '-i'],
                      description: 'Private IP address bound to the availability group listener',
                      args: [
                        Arg(
                        name: 'ip-addres'
                      )
                      ]
                    ),
                    Option(
                      name: ['--load-balancer', '-b'],
                      description: 'Name or resource ID of the load balancer',
                      args: [
                        Arg(
                        name: 'load-balance'
                      )
                      ]
                    ),
                    Option(
                      name: ['--name', '-n'],
                      description: 'Name of the availability group listener',
                      args: [
                        Arg(
                        name: 'nam'
                      )
                      ]
                    ),
                    Option(
                      name: ['--probe-port', '-e'],
                      description: 'Probe port',
                      args: [
                        Arg(
                        name: 'probe-por'
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
                      name: ['--sqlvms', '-q'],
                      description: 'Space-separated list of SQL virtual machine instance name or resource IDs that are enrolled into the availability group',
                      args: [
                        Arg(
                        name: 'sqlvm'
                      )
                      ]
                    ),
                    Option(
                      name: ['--subnet', '-u'],
                      description: 'The name or resource id of the subnet to include in the private IP',
                      args: [
                        Arg(
                        name: 'subne'
                      )
                      ]
                    ),
                    Option(
                      name: ['--port', '-p'],
                      description: 'Listener port',
                      args: [
                        Arg(
                        name: 'por'
                      )
                      ]
                    ),
                    Option(
                      name: ['--public-ip', '-c'],
                      description: 'Name or resource ID of the public IP',
                      args: [
                        Arg(
                        name: 'public-i'
                      )
                      ]
                    ),
                    Option(
                      name: '--vnet-name',
                      description: 'Name of the virtual network. Provide only if name of the subnet has been provided',
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
                  description: 'Deletes an availability group listener',
                  options: [

                    Option(
                      name: ['--group-name', '-r'],
                      description: 'Name of the SQL virtual machine group',
                      args: [
                        Arg(
                        name: 'group-nam'
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
                      description: 'Name of the availability group listener',
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
                  description: 'Lists all availability group listeners in a SQL virtual machine group',
                  options: [

                    Option(
                      name: ['--group-name', '-r'],
                      description: 'Name of the SQL virtual machine group',
                      args: [
                        Arg(
                        name: 'group-nam'
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
                  description: 'Gets an availability group listener',
                  options: [

                    Option(
                      name: ['--group-name', '-r'],
                      description: 'Name of the SQL virtual machine group',
                      args: [
                        Arg(
                        name: 'group-nam'
                      )
                      ]
                    ),
                    Option(
                      name: '--expand',
                      description: 'Get the SQLIaaSExtension configuration settings. To view all settings, use *. To select only a few, the settings must be space-separated',
                      args: [
                        Arg(
                        name: 'expand',
                        suggestions: [

                          FigSuggestion(name: '*'),
                          FigSuggestion(name: 'AssessmentSettings'),
                          FigSuggestion(name: 'AutoBackupSettings'),
                          FigSuggestion(name: 'AutoPatchingSettings'),
                          FigSuggestion(name: 'KeyVaultCredentialSettings'),
                          FigSuggestion(name: 'ServerConfigurationsManagementSettings')
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
                      description: 'Name of the availability group listener',
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
                  description: 'Updates an availability group listener',
                  options: [

                    Option(
                      name: ['--group-name', '-r'],
                      description: 'Name of the SQL virtual machine group',
                      args: [
                        Arg(
                        name: 'group-nam'
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
                      name: ['--name', '-n'],
                      description: 'Name of the availability group listener',
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
                      name: '--set',
                      description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
                      args: [
                        Arg(
                        name: 'se'
                      )
                      ]
                    ),
                    Option(
                      name: ['--sqlvms', '-q'],
                      description: 'Space-separated list of SQL virtual machine instance name or resource IDs that are enrolled into the availability group',
                      args: [
                        Arg(
                        name: 'sqlvm'
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
            )
          ]
        )
      ]
    )
  ]
);
