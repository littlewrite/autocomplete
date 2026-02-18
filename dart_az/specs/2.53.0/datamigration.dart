// Auto-generated from TypeScript source: datamigration.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `datamigration` CLI
final FigSpec datamigrationSpec = FigSpec(
  name: 'datamigration',
  description: 'Manage Data Migration',
  subcommands: [

    Subcommand(
      name: 'get-assessment',
      description: 'Start assessment on SQL Server instance(s)',
      options: [

        Option(
          name: '--config-file-path',
          description: 'Path of the ConfigFile',
          args: [
            Arg(
            name: 'config-file-pat'
          )
          ]
        ),
        Option(
          name: '--connection-string',
          description: 'SQL Server Connection Strings',
          args: [
            Arg(
            name: 'connection-strin'
          )
          ]
        ),
        Option(
          name: '--output-folder',
          description: 'Output folder to store assessment report',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Enable this parameter to overwrite the existing assessment report'
        )
      ]
    ),
    Subcommand(
      name: 'get-sku-recommendation',
      description: 'Give SKU recommendations for Azure SQL offerings',
      options: [

        Option(
          name: '--config-file-path',
          description: 'Path of the ConfigFile',
          args: [
            Arg(
            name: 'config-file-pat'
          )
          ]
        ),
        Option(
          name: '--database-allow-list',
          description: 'Space separated list of names of databases to be allowed for SKU recommendation consideration while excluding all others. Only set one of the following or neither: databaseAllowList, databaseDenyList. Default: null',
          args: [
            Arg(
            name: 'database-allow-lis'
          )
          ]
        ),
        Option(
          name: '--database-deny-list',
          description: 'Space separated list of names of databases to not be considered for SKU recommendation. Only set one of the following or neither: databaseAllowList, databaseDenyList. Default: null',
          args: [
            Arg(
            name: 'database-deny-lis'
          )
          ]
        ),
        Option(
          name: '--display-result',
          description: 'Whether or not to print the SKU recommendation results to the console. Enable this parameter to display result'
        ),
        Option(
          name: '--elastic-strategy',
          description: 'Whether or not to use the elastic strategy for SKU recommendations based on resource usage profiling. Enable this parameter to use elastic strategy'
        ),
        Option(
          name: '--end-time',
          description: 'UTC end time of performance data points to consider during aggregation, in YYYY-MM-DD HH:MM format. Only used for baseline (non-elastic) strategy. Default: all data points collected will be considered',
          args: [
            Arg(
            name: 'end-tim'
          )
          ]
        ),
        Option(
          name: '--output-folder',
          description: 'Output folder where performance data of the SQL Server is stored. The value here must be the same as the one used in PerfDataCollection',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Whether or not to overwrite any existing SKU recommendation reports. Enable this paramater to overwrite'
        ),
        Option(
          name: '--scaling-factor',
          description: 'Scaling (comfort) factor used during SKU recommendation. For example, if it is determined that there is a 4 vCore CPU requirement with a scaling factor of 150%, then the true CPU requirement will be 6 vCores',
          args: [
            Arg(
            name: 'scaling-facto'
          )
          ]
        ),
        Option(
          name: '--start-time',
          description: 'UTC start time of performance data points to consider during aggregation, in YYYY-MM-DD HH:MM format. Only used for baseline (non-elastic) strategy. Default: all data points collected will be considered',
          args: [
            Arg(
            name: 'start-tim'
          )
          ]
        ),
        Option(
          name: '--target-percentile',
          description: 'Percentile of data points to be used during aggregation of the performance data. Only used for baseline (non-elastic) strategy',
          args: [
            Arg(
            name: 'target-percentil'
          )
          ]
        ),
        Option(
          name: '--target-platform',
          description: 'Target platform for SKU recommendation: either AzureSqlDatabase, AzureSqlManagedInstance, AzureSqlVirtualMachine, or Any. If Any is selected, then SKU recommendations for all three target platforms will be evaluated, and the best fit will be returned',
          args: [
            Arg(
            name: 'target-platfor'
          )
          ]
        ),
        Option(
          name: '--target-sql-instance',
          description: 'Name of the SQL instance for which SKU should be recommendeded. Default: outputFolder will be scanned for files created by the PerfDataCollection action, and recommendations will be provided for every instance found',
          args: [
            Arg(
            name: 'target-sql-instanc'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'login-migration',
      description: 'Migrate logins from the source Sql Servers to the target Azure Sql Servers',
      options: [

        Option(
          name: '--aad-domain-name',
          description: 'Required if Windows logins are included in the list of logins to be migrated',
          args: [
            Arg(
            name: 'aad-domain-nam'
          )
          ]
        ),
        Option(
          name: '--config-file-path',
          description: 'Path of the ConfigFile',
          args: [
            Arg(
            name: 'config-file-pat'
          )
          ]
        ),
        Option(
          name: '--csv-file-path',
          description: 'Location of CSV file of logins. Use only one parameter between this and listOfLogin',
          args: [
            Arg(
            name: 'csv-file-pat'
          )
          ]
        ),
        Option(
          name: '--list-of-login',
          description: 'List of logins in string format. If large number of logins need to be migrated, use CSV file option',
          args: [
            Arg(
            name: 'list-of-logi'
          )
          ]
        ),
        Option(
          name: '--output-folder',
          description: 'Default: %LocalAppData%/Microsoft/SqlLoginMigrations) Folder where logs will be written',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: '--src-sql-connection-str',
          description: 'Connection string(s) for the source SQL instance(s), using the formal connection string format',
          args: [
            Arg(
            name: 'src-sql-connection-st'
          )
          ]
        ),
        Option(
          name: '--tgt-sql-connection-str',
          description: 'Connection string(s) for the target SQL instance(s), using the formal connection string format',
          args: [
            Arg(
            name: 'tgt-sql-connection-st'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'performance-data-collection',
      description: 'Collect performance data for given SQL Server instance(s)',
      options: [

        Option(
          name: '--config-file-path',
          description: 'Path of the ConfigFile',
          args: [
            Arg(
            name: 'config-file-pat'
          )
          ]
        ),
        Option(
          name: '--connection-string',
          description: 'SQL Server Connection Strings',
          args: [
            Arg(
            name: 'connection-strin'
          )
          ]
        ),
        Option(
          name: '--number-of-iteration',
          description: 'Number of iterations of performance data collection to perform before persisting to file. For example, with default values, performance data will be persisted every 30 seconds * 20 iterations = 10 minutes. Minimum: 2',
          args: [
            Arg(
            name: 'number-of-iteratio'
          )
          ]
        ),
        Option(
          name: '--output-folder',
          description: 'Output folder to store performance data',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: '--perf-query-interval',
          description: 'Interval at which to query performance data, in seconds',
          args: [
            Arg(
            name: 'perf-query-interva'
          )
          ]
        ),
        Option(
          name: '--static-query-interval',
          description: 'Interval at which to query and persist static configuration data, in seconds',
          args: [
            Arg(
            name: 'static-query-interva'
          )
          ]
        ),
        Option(
          name: '--time',
          description: 'Time after which the command execution automatically stops, in seconds. If this parameter is not specified manual intervention will be required to stop the command execution',
          args: [
            Arg(
            name: 'tim'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'register-integration-runtime',
      description: 'Register Database Migration Service on Integration Runtime',
      options: [

        Option(
          name: '--auth-key',
          description: 'AuthKey of SQL Migration Service',
          args: [
            Arg(
            name: 'auth-ke'
          )
          ]
        ),
        Option(
          name: '--installed-ir-path',
          description: 'Version folder path in the Integration Runtime installed location. This can be provided when IR is installed but the command is failing to read it. Format: "\\Microsoft Integration Runtime<Version>"',
          args: [
            Arg(
            name: 'installed-ir-pat'
          )
          ]
        ),
        Option(
          name: '--ir-path',
          description: 'Path of Integration Runtime MSI',
          args: [
            Arg(
            name: 'ir-pat'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sql-server-schema',
      description: 'Migrate schema from the source Sql Servers to the target Azure Sql Servers',
      options: [

        Option(
          name: '--action',
          description: 'Select one schema migration action. MigrateSchema is to migrate the database objects to Azure SQL Database target. GenerateScript is to generate an editable TSQL schema script that can be used to run on the target to deploy the objects. DeploySchema is to run the TSQL script generated from -GenerateScript action on the target to deploy the objects',
          args: [
            Arg(
            name: 'action',
            suggestions: [

              FigSuggestion(name: 'DeploySchema'),
              FigSuggestion(name: 'GenerateScript'),
              FigSuggestion(name: 'MigrateSchema')
            ]
          )
          ]
        ),
        Option(
          name: '--config-file-path',
          description: 'Path of the ConfigFile. Accepted parameter names in configfile.json is Action, sourceConnectionString, targetConnectionString, inputScriptFilePath and outputFolder',
          args: [
            Arg(
            name: 'config-file-pat'
          )
          ]
        ),
        Option(
          name: '--input-script-file-path',
          description: 'Location of an editable TSQL schema script. Use this parameter only with DeploySchema Action',
          args: [
            Arg(
            name: 'input-script-file-pat'
          )
          ]
        ),
        Option(
          name: '--output-folder',
          description: 'Default: %LocalAppData%/Microsoft/SqlSchemaMigration) Folder where logs will be written and the generated TSQL schema script by GenerateScript Action',
          args: [
            Arg(
            name: 'output-folde'
          )
          ]
        ),
        Option(
          name: '--src-sql-connection-str',
          description: 'Connection string for the source SQL instance, using the formal connection string format',
          args: [
            Arg(
            name: 'src-sql-connection-st'
          )
          ]
        ),
        Option(
          name: '--tgt-sql-connection-str',
          description: 'Connection string for the target SQL instance, using the formal connection string format',
          args: [
            Arg(
            name: 'tgt-sql-connection-st'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'tde-migration',
      description: 'Migrate TDE certificate from source SQL Server to the target Azure SQL Server',
      options: [

        Option(
          name: ['--database-name', '--dbname'],
          description: 'Source database name',
          args: [
            Arg(
            name: 'database-nam'
          )
          ]
        ),
        Option(
          name: ['--network-share-domain', '--networkdomain'],
          description: 'Network share domain',
          args: [
            Arg(
            name: 'network-share-domai'
          )
          ]
        ),
        Option(
          name: ['--network-share-password', '--networkpw'],
          description: 'Network share password',
          args: [
            Arg(
            name: 'network-share-passwor'
          )
          ]
        ),
        Option(
          name: ['--network-share-path', '--networkpath'],
          description: 'Network share path',
          args: [
            Arg(
            name: 'network-share-pat'
          )
          ]
        ),
        Option(
          name: ['--network-share-user-name', '--networkuser'],
          description: 'Network share user name',
          args: [
            Arg(
            name: 'network-share-user-nam'
          )
          ]
        ),
        Option(
          name: ['--source-sql-connection-string', '--srcsqlcs'],
          description: 'Connection string for the source SQL instance, using the formal connection string format',
          args: [
            Arg(
            name: 'source-sql-connection-strin'
          )
          ]
        ),
        Option(
          name: ['--target-managed-instance-name', '--tgtname'],
          description: 'Name of the Azure SQL Server',
          args: [
            Arg(
            name: 'target-managed-instance-nam'
          )
          ]
        ),
        Option(
          name: ['--target-resource-group-name', '--tgtrg'],
          description: 'Resource group name of the target Azure SQL server',
          args: [
            Arg(
            name: 'target-resource-group-nam'
          )
          ]
        ),
        Option(
          name: ['--target-subscription-id', '--tgtsubscription'],
          description: 'Subscription Id of the target Azure SQL server',
          args: [
            Arg(
            name: 'target-subscription-i'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'sql-db',
      description: 'Manage database migrations to SQL DB',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Stop in-progress database migration to SQL DB',
          options: [

            Option(
              name: '--migration-operation-id',
              description: 'ID tracking migration operation',
              args: [
                Arg(
                name: 'migration-operation-i'
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
              name: '--sqldb-instance-name',
              description: 'Name of the target SQL Database Server',
              args: [
                Arg(
                name: 'sqldb-instance-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new database migration to a given SQL DB',
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
              name: '--sqldb-instance-name',
              description: 'Name of the target SQL Database Server',
              args: [
                Arg(
                name: 'sqldb-instance-nam'
              )
              ]
            ),
            Option(
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            ),
            Option(
              name: '--migration-service',
              description: 'Resource Id of the Migration Service',
              args: [
                Arg(
                name: 'migration-servic'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--scope',
              description: 'Resource Id of the target resource (SQL VM, SQL Managed Instance or SQL DB)',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--source-database-name',
              description: 'Name of the source database',
              args: [
                Arg(
                name: 'source-database-nam'
              )
              ]
            ),
            Option(
              name: '--source-sql-connection',
              description: 'Source SQL Server connection details',
              args: [
                Arg(
                name: 'source-sql-connectio'
              )
              ]
            ),
            Option(
              name: '--table-list',
              description: 'List of tables to copy',
              args: [
                Arg(
                name: 'table-lis'
              )
              ]
            ),
            Option(
              name: '--target-db-collation',
              description: 'Database collation to be used for the target database',
              args: [
                Arg(
                name: 'target-db-collatio'
              )
              ]
            ),
            Option(
              name: '--target-sql-connection',
              description: 'Target SQL DB connection details',
              args: [
                Arg(
                name: 'target-sql-connectio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an in-progress or completed database migration to SQL DB',
          options: [

            Option(
              name: '--force',
              description: 'Optional force delete boolean. If this is provided as true, migration will be deleted even if active',
              args: [
                Arg(
                name: 'force',
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
              name: '--sqldb-instance-name',
              description: 'Name of the target SQL Database Server',
              args: [
                Arg(
                name: 'sqldb-instance-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
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
          description: 'Retrieve the specified database migration for a given SQL DB',
          options: [

            Option(
              name: '--expand',
              description: 'Complete migration details be included in the response',
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
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sqldb-instance-name',
              description: 'Name of the target SQL Database Server',
              args: [
                Arg(
                name: 'sqldb-instance-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the datamigration sql-db is met',
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
              description: 'Complete migration details be included in the response',
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
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sqldb-instance-name',
              description: 'Name of the target SQL Database Server',
              args: [
                Arg(
                name: 'sqldb-instance-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
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
      name: 'sql-managed-instance',
      description: 'Manage database migrations to SQL Managed Instance',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Stop in-progress database migration to SQL Managed Instance',
          options: [

            Option(
              name: '--migration-operation-id',
              description: 'ID tracking migration operation',
              args: [
                Arg(
                name: 'migration-operation-i'
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
              name: '--managed-instance-name',
              description: 'Name of the target SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instance-nam'
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new database migration to a given SQL Managed Instance',
          options: [

            Option(
              name: '--managed-instance-name',
              description: 'Name of the target SQL Managed Instance',
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            ),
            Option(
              name: '--migration-service',
              description: 'Resource Id of the Migration Service',
              args: [
                Arg(
                name: 'migration-servic'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--offline-configuration',
              description: 'Offline configuration',
              args: [
                Arg(
                name: 'offline-configuratio'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Resource Id of the target resource (SQL VM, SQL Managed Instance or SQL DB)',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--source-database-name',
              description: 'Name of the source database',
              args: [
                Arg(
                name: 'source-database-nam'
              )
              ]
            ),
            Option(
              name: '--source-location',
              description: 'Source location of backups. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'source-locatio'
              )
              ]
            ),
            Option(
              name: '--source-sql-connection',
              description: 'Source SQL Server connection details',
              args: [
                Arg(
                name: 'source-sql-connectio'
              )
              ]
            ),
            Option(
              name: '--target-db-collation',
              description: 'Database collation to be used for the target database',
              args: [
                Arg(
                name: 'target-db-collatio'
              )
              ]
            ),
            Option(
              name: '--target-location',
              description: 'Target location for copying backups',
              args: [
                Arg(
                name: 'target-locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cutover',
          description: 'Initiate cutover for in-progress online database migration to SQL Managed Instance',
          options: [

            Option(
              name: '--migration-operation-id',
              description: 'ID tracking migration operation',
              args: [
                Arg(
                name: 'migration-operation-i'
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
              name: '--managed-instance-name',
              description: 'Name of the target SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instance-nam'
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Retrieve the specified database migration for a given SQL Managed Instance',
          options: [

            Option(
              name: '--expand',
              description: 'Complete migration details be included in the response',
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
              name: '--managed-instance-name',
              description: 'Name of the target SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instance-nam'
              )
              ]
            ),
            Option(
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the datamigration sql-managed-instance is met',
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
              description: 'Complete migration details be included in the response',
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
              name: '--managed-instance-name',
              description: 'Name of the target SQL Managed Instance',
              args: [
                Arg(
                name: 'managed-instance-nam'
              )
              ]
            ),
            Option(
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
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
      name: 'sql-service',
      description: 'Manage Database Migration Service',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create Database Migration Service',
          options: [

            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
            ),
            Option(
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
          description: 'Delete Database Migration Service',
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
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
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
          name: 'delete-node',
          description: 'Delete the integration runtime node',
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
              name: '--ir-name',
              description: 'The name of integration runtime',
              args: [
                Arg(
                name: 'ir-nam'
              )
              ]
            ),
            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
            ),
            Option(
              name: '--node-name',
              description: 'The name of node to delete',
              args: [
                Arg(
                name: 'node-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve all Database Migration Services in the resource group. And Retrieve all Database Migration Services in the subscription',
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
          name: 'list-auth-key',
          description: 'Retrieve the List of Authentication Keys for Self Hosted Integration Runtime',
          options: [

            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
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
          name: 'list-integration-runtime-metric',
          description: 'Retrieve the registered Integration Runtine nodes and their monitoring data for a given Database Migration Service',
          options: [

            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
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
          name: 'list-migration',
          description: 'Retrieve the List of database migrations attached to the service',
          options: [

            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
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
          name: 'regenerate-auth-key',
          description: 'Regenerate a new set of Authentication Keys for Self Hosted Integration Runtime',
          options: [

            Option(
              name: '--auth-key1',
              description: 'The first authentication key',
              args: [
                Arg(
                name: 'auth-key'
              )
              ]
            ),
            Option(
              name: '--auth-key2',
              description: 'The second authentication key',
              args: [
                Arg(
                name: 'auth-key'
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
              description: 'The name of authentication key to generate',
              args: [
                Arg(
                name: 'key-nam'
              )
              ]
            ),
            Option(
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
            ),
            Option(
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
          description: 'Retrieve the Database Migration Service',
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
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update Database Migration Service',
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
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
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
          description: 'Place the CLI in a waiting state until a condition of the datamigration sql-service is met',
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
              name: ['--sql-migration-service-name', '--name', '-n'],
              description: 'Name of the SQL Migration Service',
              args: [
                Arg(
                name: 'sql-migration-service-nam'
              )
              ]
            ),
            Option(
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
      name: 'sql-vm',
      description: 'Manage database migrations to SQL VM',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'Stop in-progress database migration to SQL VM',
          options: [

            Option(
              name: '--migration-operation-id',
              description: 'ID tracking migration operation',
              args: [
                Arg(
                name: 'migration-operation-i'
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
              name: '--sql-vm-name',
              description: 'Name of the target SQL Virtual Machine',
              args: [
                Arg(
                name: 'sql-vm-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create',
          description: 'Create a new database migration to a given SQL VM',
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
              name: '--sql-vm-name',
              description: 'Name of the target SQL Virtual Machine',
              args: [
                Arg(
                name: 'sql-vm-nam'
              )
              ]
            ),
            Option(
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            ),
            Option(
              name: '--migration-service',
              description: 'Resource Id of the Migration Service',
              args: [
                Arg(
                name: 'migration-servic'
              )
              ]
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--offline-configuration',
              description: 'Offline configuration',
              args: [
                Arg(
                name: 'offline-configuratio'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Resource Id of the target resource (SQL VM, SQL Managed Instance or SQL DB)',
              args: [
                Arg(
                name: 'scop'
              )
              ]
            ),
            Option(
              name: '--source-database-name',
              description: 'Name of the source database',
              args: [
                Arg(
                name: 'source-database-nam'
              )
              ]
            ),
            Option(
              name: '--source-location',
              description: 'Source location of backups. Expected value: json-string/json-file/@json-file',
              args: [
                Arg(
                name: 'source-locatio'
              )
              ]
            ),
            Option(
              name: '--source-sql-connection',
              description: 'Source SQL Server connection details',
              args: [
                Arg(
                name: 'source-sql-connectio'
              )
              ]
            ),
            Option(
              name: '--target-db-collation',
              description: 'Database collation to be used for the target database',
              args: [
                Arg(
                name: 'target-db-collatio'
              )
              ]
            ),
            Option(
              name: '--target-location',
              description: 'Target location for copying backups',
              args: [
                Arg(
                name: 'target-locatio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'cutover',
          description: 'Initiate cutover for in-progress online database migration to SQL VM',
          options: [

            Option(
              name: '--migration-operation-id',
              description: 'ID tracking migration operation',
              args: [
                Arg(
                name: 'migration-operation-i'
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
              name: '--sql-vm-name',
              description: 'Name of the target SQL Virtual Machine',
              args: [
                Arg(
                name: 'sql-vm-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Retrieve the specified database migration for a given SQL VM',
          options: [

            Option(
              name: '--expand',
              description: 'Complete migration details be included in the response',
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
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sql-vm-name',
              description: 'Name of the target SQL Virtual Machine',
              args: [
                Arg(
                name: 'sql-vm-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the datamigration sql-vm is met',
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
              description: 'Complete migration details be included in the response',
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
              name: '--migration-operation-id',
              description: 'Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved',
              args: [
                Arg(
                name: 'migration-operation-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sql-vm-name',
              description: 'Name of the target SQL Virtual Machine',
              args: [
                Arg(
                name: 'sql-vm-nam'
              )
              ]
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
              name: '--target-db-name',
              description: 'The name of the target database',
              args: [
                Arg(
                name: 'target-db-nam'
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
