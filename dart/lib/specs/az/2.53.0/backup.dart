// Auto-generated from TypeScript source: backup.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `backup` CLI
final FigSpec backupSpec = FigSpec(
  name: 'backup',
  description: 'Manage Azure Backups',
  subcommands: [

    Subcommand(
      name: 'container',
      description: 'Resource which houses items or applications to be protected',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List containers registered to a Recovery services vault',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to list containers in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 're-register',
          description: 'Reset the registration details for a given container',
          options: [

            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
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
          name: 'register',
          description: 'Register a Resource to the given Recovery Services Vault',
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
              name: '--resource-id',
              description: 'ID of the Azure Resource containing items to be protected by Azure Backup service. Currently, only Azure VM resource IDs are supported',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a container registered to a Recovery services vault',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
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
              description: 'Name of the container. You can use the backup container list command to get the name of a container',
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
              name: '--use-secondary-region',
              description: 'Use this flag to show container in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'unregister',
          description: 'Unregister a Backup Container to make the underlying \'resource\' be protected by another vault',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
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
      name: 'item',
      description: 'An item which is already protected or backed up to an Azure Recovery services vault with an associated policy',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all backed up items within a container',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to list items in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set-policy',
          description: 'Update the policy associated with this item. Use this to change policies of the backup item',
          options: [

            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the Backup policy. You can use the backup policy list command to get the name of a backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              description: 'Name of the backed up item. You can use the backup item list command to get the name of a backed up item',
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
              name: '--tenant-id',
              description: 'ID of the tenant if the Resource Guard protecting the vault exists in a different tenant',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a particular backed up item',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              description: 'Name of the backed up item. You can use the backup item list command to get the name of a backed up item',
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
              name: '--use-secondary-region',
              description: 'Use this flag to show item in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'job',
      description: 'Entity which contains details of the job',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all backup jobs of a Recovery Services vault',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload'),
                  FigSuggestion(name: 'MAB')
                ]
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'The end date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--operation',
              description: 'User initiated operation',
              args: [
                Arg(
                name: 'operation',
                suggestions: [

                  FigSuggestion(name: 'Backup'),
                  FigSuggestion(name: 'ConfigureBackup'),
                  FigSuggestion(name: 'DeleteBackupData'),
                  FigSuggestion(name: 'DisableBackup'),
                  FigSuggestion(name: 'Restore')
                ]
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The start date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Status of the Job',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Cancelled'),
                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'CompletedWithWarnings'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'InProgress')
                ]
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to show recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show details of a particular job',
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
              description: 'Name of the job. You can use the backup job list command to get the name of a job',
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
              name: '--use-secondary-region',
              description: 'Use this flag to show recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop',
          description: 'Suspend or terminate a currently running job',
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
              description: 'Name of the job. You can use the backup job list command to get the name of a job',
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
              name: '--use-secondary-region',
              description: 'Use this flag to show recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
          description: 'Wait until either the job completes or the specified timeout value is reached',
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
              description: 'Name of the job. You can use the backup job list command to get the name of a job',
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
              description: 'Maximum time, in seconds, to wait before aborting',
              args: [
                Arg(
                name: 'timeou'
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to show recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
      name: 'policy',
      description: 'A backup policy defines when you want to take a backup and for how long you would retain each backup copy',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new policy for the given BackupManagementType and workloadType',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Policy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'JSON encoded policy definition. Use the show command with JSON output to obtain a policy object. Modify the values using a file editor and pass the object',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a backup policy which doesn\'t have any associated backup items',
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
              description: 'Name of the backup policy. You can use the backup policy list command to get the name of a policy',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'get-default-for-vm',
          description: 'Get the default policy with default values to backup a VM',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
          description: 'List all policies for a Recovery services vault',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--move-to-archive-tier',
              description: 'Parameter that specifies whether to only list policies where archive tier move is enabled/disabled',
              args: [
                Arg(
                name: 'move-to-archive-tier',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: '--policy-sub-type',
              description: 'Sub type of policies to be retrieved. To list standard backup policies, specify ‘Standard’ as the value of this parameter. To list enhanced backup policies for Azure VMs, specify ‘Enhanced’ as the value of this parameter',
              args: [
                Arg(
                name: 'policy-sub-type',
                suggestions: [

                  FigSuggestion(name: 'Enhanced'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-associated-items',
          description: 'List all items protected by a backup policy',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
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
              description: 'Name of the backup policy. You can use the backup policy list command to get the name of a policy',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
          description: 'Update the existing policy with the provided details',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--fix-for-inconsistent-items',
              description: 'Specify whether or not to retry Policy Update for failed items',
              args: [
                Arg(
                name: 'fix-for-inconsistent-items',
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
              name: ['--name', '-n'],
              description: 'Name of the Policy',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'JSON encoded policy definition. Use the show command with JSON output to obtain a policy object. Modify the values using a file editor and pass the object',
              args: [
                Arg(
                name: 'polic'
              )
              ]
            ),
            Option(
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
              name: '--tenant-id',
              description: 'ID of the tenant if the Resource Guard protecting the vault exists in a different tenant',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
          description: 'Show details of a particular policy',
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
              description: 'Name of the backup policy. You can use the backup policy list command to get the name of a policy',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
      name: 'protectable-item',
      description: 'Manage the item which is yet to be protected or backed up to an Azure Recovery services vault with an associated policy',
      subcommands: [

        Subcommand(
          name: 'initialize',
          description: 'Trigger the discovery of any unprotected items of the given workload type in the given container',
          options: [

            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Retrieve all protectable items within a certain container or across all registered containers',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-type',
              description: 'Specify the type of items within the Resource which should be discovered and protected by Azure Backup. \'HANAInstance\' and \'SAPHanaSystem\' can be used interchangeably',
              args: [
                Arg(
                name: 'protectable-item-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
                ]
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'Parent Server name of the item',
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
          description: 'Retrieve the specified protectable item within the given container',
          options: [

            Option(
              name: '--protectable-item-type',
              description: 'Specify the type of items within the Resource which should be discovered and protected by Azure Backup. \'HANAInstance\' and \'SAPHanaSystem\' can be used interchangeably',
              args: [
                Arg(
                name: 'protectable-item-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
                ]
              )
              ]
            ),
            Option(
              name: '--server-name',
              description: 'Parent Server name of the item',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
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
              description: 'Name of the protectable item',
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
      name: 'protection',
      description: 'Manage protection of your items, enable protection or disable it, or take on-demand backups',
      subcommands: [

        Subcommand(
          name: 'auto-disable-for-azurewl',
          description: 'Disable auto-protection for the specified protectable item',
          options: [

            Option(
              name: '--protectable-item-name',
              description: 'Specify the resource name to be protected by Azure Backup service',
              args: [
                Arg(
                name: 'protectable-item-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-type',
              description: 'Specify the type of items within the Resource which should be discovered and protected by Azure Backup. \'HANAInstance\' and \'SAPHanaSystem\' can be used interchangeably',
              args: [
                Arg(
                name: 'protectable-item-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
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
              name: '--server-name',
              description: 'Parent Server name of the item',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'auto-enable-for-azurewl',
          description: 'Automatically protect all existing unprotected DBs and any DB which will be added later with the given policy',
          options: [

            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-name',
              description: 'Specify the resource name to be protected by Azure Backup service',
              args: [
                Arg(
                name: 'protectable-item-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-type',
              description: 'Specify the type of items within the Resource which should be discovered and protected by Azure Backup. \'HANAInstance\' and \'SAPHanaSystem\' can be used interchangeably',
              args: [
                Arg(
                name: 'protectable-item-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
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
              name: '--server-name',
              description: 'Parent Server name of the item',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'backup-now',
          description: 'Perform an on-demand backup of a backed up item',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-type',
              description: '\'Full, Differential, Log, CopyOnlyFull\' for backup Item type \'MSSQL\'. \'Full, Differential\' for backup item type \'SAPHANA\'',
              args: [
                Arg(
                name: 'backup-typ'
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--enable-compression',
              description: 'Option to enable compression'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--retain-until',
              description: 'The date until which this backed up copy will be available for retrieval, in UTC (d-m-Y). In case of VM and AzureFileShare a default value of 30 days is taken. For MSSQL workload, retain-until min value is 2 days and max value is 99 years for backup-type \'CopyOnlyFull\'. For MSSQL and SAPHANA, retain-until min value is 45 days and max value is 99 years for backup-type \'Full\'. For any other backup-type, retain-until value is overriden by Policy. If not specified, a default value of 30 days will be taken for backup-type \'CopyOnlyFull\', and a value of 45 days for backup-type \'Full\' and no default value for other backup types',
              args: [
                Arg(
                name: 'retain-unti'
              )
              ]
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'check-vm',
          description: 'Find out whether the virtual machine is protected or not. If protected, it returns the recovery services vault ID, otherwise it returns empty',
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
              name: '--vm',
              description: 'Name or ID of the Virtual Machine to be protected',
              args: [
                Arg(
                name: 'v'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'disable',
          description: 'Stop protecting a backed up item. Can retain the backed up data forever or choose to delete it',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--delete-backup-data',
              description: 'Option to delete existing backed up data in the Recovery services vault'
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: [
                '--retain-recovery-points-as-per-policy',
                '--retain-as-per-policy',
              ],
              description: 'Switch parameter that specifies that existing recovery points should be retained for the duration specified by the backup policy'
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
              name: '--tenant-id',
              description: 'ID of the tenant if the Resource Guard protecting the vault exists in a different tenant',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
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
          name: 'enable-for-azurefileshare',
          description: 'Start protecting a previously unprotected Azure File share within an Azure Storage account as per the specified policy to a Recovery services vault',
          options: [

            Option(
              name: '--azure-file-share',
              description: 'Name of the Azure FileShare',
              args: [
                Arg(
                name: 'azure-file-shar'
              )
              ]
            ),
            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Name of the Storage Account of the FileShare',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-for-azurewl',
          description: 'Start protecting a previously unprotected workload within an Azure VM as per the specified policy to a Recovery services vault. Provide the workload details as a protectable item',
          options: [

            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-name',
              description: 'Specify the resource name to be protected by Azure Backup service',
              args: [
                Arg(
                name: 'protectable-item-nam'
              )
              ]
            ),
            Option(
              name: '--protectable-item-type',
              description: 'Specify the type of items within the Resource which should be discovered and protected by Azure Backup. \'HANAInstance\' and \'SAPHanaSystem\' can be used interchangeably',
              args: [
                Arg(
                name: 'protectable-item-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
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
              name: '--server-name',
              description: 'Parent Server name of the item',
              args: [
                Arg(
                name: 'server-nam'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable-for-vm',
          description: 'Start protecting a previously unprotected Azure VM as per the specified policy to a Recovery services vault',
          options: [

            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--vm',
              description: 'Name or ID of the Virtual Machine to be protected',
              args: [
                Arg(
                name: 'v'
              )
              ]
            ),
            Option(
              name: '--disk-list-setting',
              description: 'Option to decide whether to include or exclude the disk or reset any previous settings to default behavior',
              args: [
                Arg(
                name: 'disk-list-setting',
                suggestions: [

                  FigSuggestion(name: 'exclude'),
                  FigSuggestion(name: 'include')
                ]
              )
              ]
            ),
            Option(
              name: '--diskslist',
              description: 'List of disks to be excluded or included',
              args: [
                Arg(
                name: 'diskslis'
              )
              ]
            ),
            Option(
              name: '--exclude-all-data-disks',
              description: 'Option to specify to backup OS disk only',
              args: [
                Arg(
                name: 'exclude-all-data-disks',
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
          name: 'resume',
          description: 'Resume backup for the associated backup item. Use this to change the policy associated with the backup item',
          options: [

            Option(
              name: ['--policy-name', '-p'],
              description: 'Name of the backup policy',
              args: [
                Arg(
                name: 'policy-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'undelete',
          description: 'Rehydrate an item from softdeleted state to stop protection with retained data state',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-for-vm',
          description: 'Update disk exclusion settings associated with a backed up VM item',
          options: [

            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--disk-list-setting',
              description: 'Option to decide whether to include or exclude the disk or reset any previous settings to default behavior',
              args: [
                Arg(
                name: 'disk-list-setting',
                suggestions: [

                  FigSuggestion(name: 'exclude'),
                  FigSuggestion(name: 'include'),
                  FigSuggestion(name: 'resetexclusionsettings')
                ]
              )
              ]
            ),
            Option(
              name: '--diskslist',
              description: 'List of disks to be excluded or included',
              args: [
                Arg(
                name: 'diskslis'
              )
              ]
            ),
            Option(
              name: '--exclude-all-data-disks',
              description: 'Option to specify to backup OS disk only',
              args: [
                Arg(
                name: 'exclude-all-data-disks',
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
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
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
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
      name: 'recoveryconfig',
      description: 'Manage recovery configuration of an Azure workload backed up item',
      subcommands: [

        Subcommand(
          name: 'show',
          description: 'Construct the recovery configuration of an Azure workload backed up item',
          options: [

            Option(
              name: '--restore-mode',
              description: 'Specify the restore mode',
              args: [
                Arg(
                name: 'restore-mode',
                suggestions: [

                  FigSuggestion(name: 'AlternateWorkloadRestore'),
                  FigSuggestion(name: 'OriginalWorkloadRestore'),
                  FigSuggestion(name: 'RestoreAsFiles')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--filepath',
              description: 'The path to which the DB should be restored as files',
              args: [
                Arg(
                name: 'filepat'
              )
              ]
            ),
            Option(
              name: '--from-full-rp-name',
              description: 'Name of the starting Recovery point',
              args: [
                Arg(
                name: 'from-full-rp-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: '--log-point-in-time',
              description: 'Specify the point-in-time (in UTC) which will be restored',
              args: [
                Arg(
                name: 'log-point-in-tim'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--rp-name', '-r'],
              description: 'Name of the recovery point',
              args: [
                Arg(
                name: 'rp-nam'
              )
              ]
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
              name: '--target-container-name',
              description: 'The target container to which the DB recovery point should be restored',
              args: [
                Arg(
                name: 'target-container-nam'
              )
              ]
            ),
            Option(
              name: '--target-instance-name',
              description: 'Specify the target instance name for the restore operation',
              args: [
                Arg(
                name: 'target-instance-nam'
              )
              ]
            ),
            Option(
              name: '--target-item-name',
              description: 'Specify the target item name for the restore operation',
              args: [
                Arg(
                name: 'target-item-nam'
              )
              ]
            ),
            Option(
              name: '--target-resource-group',
              description: 'Specify the resource group of target item for Cross Region Restore. Default value will be same as --resource-group if not specified',
              args: [
                Arg(
                name: 'target-resource-grou'
              )
              ]
            ),
            Option(
              name: '--target-server-name',
              description: 'Specify the parent server name of the target item',
              args: [
                Arg(
                name: 'target-server-nam'
              )
              ]
            ),
            Option(
              name: '--target-server-type',
              description: 'Specify the type of the server which should be discovered',
              args: [
                Arg(
                name: 'target-server-type',
                suggestions: [

                  FigSuggestion(name: 'HANAInstance'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SAPHanaSystem'),
                  FigSuggestion(name: 'SQLAG'),
                  FigSuggestion(name: 'SQLDatabase'),
                  FigSuggestion(name: 'SQLInstance')
                ]
              )
              ]
            ),
            Option(
              name: '--target-subscription-id',
              description: 'Specify the subscription of the target item for Cross Subscription Restore. Defaulted to source subscription if not specified',
              args: [
                Arg(
                name: 'target-subscription-i'
              )
              ]
            ),
            Option(
              name: '--target-vault-name',
              description: 'Specify the vault name of target item for Cross Region Restore. Default value will be same as --vault-name if not specified',
              args: [
                Arg(
                name: 'target-vault-nam'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPASE'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'recoverypoint',
      description: 'A snapshot of data at that point-of-time, stored in Recovery Services Vault, from which you can restore information',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List all recovery points of a backed up item',
          options: [

            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'The end date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--is-ready-for-move',
              description: 'Use this flag to retrieve the recoverypoints that are ready to be moved to destination-tier',
              args: [
                Arg(
                name: 'is-ready-for-move',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--recommended-for-archive',
              description: 'Use this flag to retrieve recommended archivable recoverypoints',
              args: [
                Arg(
                name: 'recommended-for-archiv'
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The start date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--target-tier',
              description: 'The destination/target tier to which a particular recovery point has to be moved',
              args: [
                Arg(
                name: 'target-tier',
                suggestions: [

                  FigSuggestion(name: 'VaultArchive')
                ]
              )
              ]
            ),
            Option(
              name: '--tier',
              description: 'Provide \'tier\' parameter to filter recovery points',
              args: [
                Arg(
                name: 'tier',
                suggestions: [

                  FigSuggestion(name: 'Snapshot'),
                  FigSuggestion(name: 'SnapshotAndVaultArchive'),
                  FigSuggestion(name: 'SnapshotAndVaultStandard'),
                  FigSuggestion(name: 'VaultArchive'),
                  FigSuggestion(name: 'VaultStandard'),
                  FigSuggestion(name: 'VaultStandardRehydrated')
                ]
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to list recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'move',
          description: 'Move a particular recovery point of a backed up item from one tier to another tier',
          options: [

            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--destination-tier',
              description: 'The destination/target tier to which a particular recovery point has to be moved',
              args: [
                Arg(
                name: 'destination-tier',
                suggestions: [

                  FigSuggestion(name: 'VaultArchive')
                ]
              )
              ]
            ),
            Option(
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the recovery point',
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
              name: '--source-tier',
              description: 'The source tier from which a particular recovery point has to be moved',
              args: [
                Arg(
                name: 'source-tier',
                suggestions: [

                  FigSuggestion(name: 'VaultStandard')
                ]
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Shows details of a particular recovery point',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the recovery point. You can use the backup recovery point list command to get the name of a backed up item',
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
              name: '--use-secondary-region',
              description: 'Use this flag to show recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show-log-chain',
          description: 'List the start and end points of the unbroken log chain(s) of the given backup item',
          options: [

            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
                ]
              )
              ]
            ),
            Option(
              name: '--end-date',
              description: 'The end date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'end-dat'
              )
              ]
            ),
            Option(
              name: '--start-date',
              description: 'The start date of the range in UTC (d-m-Y)',
              args: [
                Arg(
                name: 'start-dat'
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to list recoverypoints in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: '--workload-type',
              description: 'Specify the type of applications within the Resource which should be discovered and protected by Azure Backup. \'MSSQL\' and \'SQLDataBase\' can be used interchangeably for SQL in Azure VM, as can \'SAPHANA\' and \'SAPHanaDatabase\' for SAP HANA in Azure VM',
              args: [
                Arg(
                name: 'workload-type',
                suggestions: [

                  FigSuggestion(name: 'AzureFileShare'),
                  FigSuggestion(name: 'MSSQL'),
                  FigSuggestion(name: 'SAPHANA'),
                  FigSuggestion(name: 'SAPHanaDatabase'),
                  FigSuggestion(name: 'SQLDataBase'),
                  FigSuggestion(name: 'VM')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restore',
      description: 'Restore backed up items from recovery points in a Recovery Services vault',
      subcommands: [

        Subcommand(
          name: 'restore-azurefiles',
          description: 'Restore backed up Azure files within a file-share to the same file-share or another file-share in registered storage accounts',
          options: [

            Option(
              name: '--resolve-conflict',
              description: 'Instruction if there\'s a conflict with the restored data',
              args: [
                Arg(
                name: 'resolve-conflict',
                suggestions: [

                  FigSuggestion(name: 'Overwrite'),
                  FigSuggestion(name: 'Skip')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-mode',
              description: 'Specify the restore mode',
              args: [
                Arg(
                name: 'restore-mode',
                suggestions: [

                  FigSuggestion(name: 'AlternateLocation'),
                  FigSuggestion(name: 'OriginalLocation')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--rp-name', '-r'],
              description: 'Name of the recovery point',
              args: [
                Arg(
                name: 'rp-nam'
              )
              ]
            ),
            Option(
              name: '--source-file-path',
              description: 'The absolute path of the file, to be restored within the file share, as a string. This path is the same path used in the \'az storage file download\' or \'az storage file show\' CLI commands',
              args: [
                Arg(
                name: 'source-file-pat'
              )
              ]
            ),
            Option(
              name: '--source-file-type',
              description: 'Specify the source file type to be selected',
              args: [
                Arg(
                name: 'source-file-type',
                suggestions: [

                  FigSuggestion(name: 'Directory'),
                  FigSuggestion(name: 'File')
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
              name: '--target-file-share',
              description: 'Destination file share to which content will be restored',
              args: [
                Arg(
                name: 'target-file-shar'
              )
              ]
            ),
            Option(
              name: '--target-folder',
              description: 'Destination folder to which content will be restored. To restore content to root , leave the folder name empty',
              args: [
                Arg(
                name: 'target-folde'
              )
              ]
            ),
            Option(
              name: '--target-storage-account',
              description: 'Destination storage account to which content will be restored',
              args: [
                Arg(
                name: 'target-storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore-azurefileshare',
          description: 'Restore backed up Azure file shares to the same file-share or another file-share in registered storage accounts',
          options: [

            Option(
              name: '--resolve-conflict',
              description: 'Instruction if there\'s a conflict with the restored data',
              args: [
                Arg(
                name: 'resolve-conflict',
                suggestions: [

                  FigSuggestion(name: 'Overwrite'),
                  FigSuggestion(name: 'Skip')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-mode',
              description: 'Specify the restore mode',
              args: [
                Arg(
                name: 'restore-mode',
                suggestions: [

                  FigSuggestion(name: 'AlternateLocation'),
                  FigSuggestion(name: 'OriginalLocation')
                ]
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--rp-name', '-r'],
              description: 'Name of the recovery point',
              args: [
                Arg(
                name: 'rp-nam'
              )
              ]
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
              name: '--target-file-share',
              description: 'Destination file share to which content will be restored',
              args: [
                Arg(
                name: 'target-file-shar'
              )
              ]
            ),
            Option(
              name: '--target-folder',
              description: 'Destination folder to which content will be restored. To restore content to root , leave the folder name empty',
              args: [
                Arg(
                name: 'target-folde'
              )
              ]
            ),
            Option(
              name: ['--target-resource-group-name', '--target-rg-name'],
              description: 'Resource group of the destination storage account to which the content will be restored, needed if it is different from the vault resource group',
              args: [
                Arg(
                name: 'target-resource-group-nam'
              )
              ]
            ),
            Option(
              name: '--target-storage-account',
              description: 'Destination storage account to which content will be restored',
              args: [
                Arg(
                name: 'target-storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore-azurewl',
          description: 'Restore backed up Azure Workloads in a Recovery services vault to another registered container or to the same container',
          options: [

            Option(
              name: '--recovery-config',
              description: 'Specify the recovery configuration of a backed up item. The configuration object can be obtained from \'backup recoveryconfig show\' command',
              args: [
                Arg(
                name: 'recovery-confi'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--rehydration-duration',
              description: 'Set the maximum time, in days (between 10-30, both inclusive) for which the recovery point stays in hydrated state',
              args: [
                Arg(
                name: 'rehydration-duratio'
              )
              ]
            ),
            Option(
              name: '--rehydration-priority',
              description: 'The type of priority to be maintained while rehydrating a recovery point',
              args: [
                Arg(
                name: 'rehydration-priority',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Standard')
                ]
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to restore from a recoverypoint in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'restore-disks',
          description: 'Restore disks of the backed VM from the specified recovery point',
          options: [

            Option(
              name: '--storage-account',
              description: 'Name or ID of the staging storage account. The VM configuration will be restored to this storage account. See the help for --restore-to-staging-storage-account parameter for more info. The ID might be needed for cross-region restores where the storage account and vault are not on the same resource group. In order to get the ID, use the storage account show command as specified here (https://learn.microsoft.com/en-us/azure/storage/common/storage-account-get-info?tabs=azure-cli#get-the-resource-id-for-a-storage-account)',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: ['--container-name', '-c'],
              description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
              args: [
                Arg(
                name: 'container-nam'
              )
              ]
            ),
            Option(
              name: '--disk-encryption-set-id',
              description: 'The disk encryption set id is used for encrypting restored disks. Please ensure access to disk encryption set id that is specified here',
              args: [
                Arg(
                name: 'disk-encryption-set-i'
              )
              ]
            ),
            Option(
              name: '--diskslist',
              description: 'List of disks to be excluded or included',
              args: [
                Arg(
                name: 'diskslis'
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
              name: ['--item-name', '-i'],
              description: 'Name of the backed up item',
              args: [
                Arg(
                name: 'item-nam'
              )
              ]
            ),
            Option(
              name: '--mi-system-assigned',
              description: 'Use this flag to specify whether a system-assigned managed identity should be used for the restore operation. MI option is not applicable for restoring unmanaged disks',
              args: [
                Arg(
                name: 'mi-system-assigne'
              )
              ]
            ),
            Option(
              name: '--mi-user-assigned',
              description: 'ARM ID of the user-assigned managed identity to use for the restore operation. Specify a value for this parameter if you do not want to use a system-assigned MI for restoring the backup item',
              args: [
                Arg(
                name: 'mi-user-assigne'
              )
              ]
            ),
            Option(
              name: '--rehydration-duration',
              description: 'Set the maximum time, in days (between 10-30, both inclusive) for which the recovery point stays in hydrated state',
              args: [
                Arg(
                name: 'rehydration-duratio'
              )
              ]
            ),
            Option(
              name: '--rehydration-priority',
              description: 'The type of priority to be maintained while rehydrating a recovery point',
              args: [
                Arg(
                name: 'rehydration-priority',
                suggestions: [

                  FigSuggestion(name: 'High'),
                  FigSuggestion(name: 'Standard')
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
              name: '--restore-as-unmanaged-disks',
              description: 'Use this flag to specify to restore as unmanaged disks',
              args: [
                Arg(
                name: 'restore-as-unmanaged-disks',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-mode',
              description: 'Specify the restore mode',
              args: [
                Arg(
                name: 'restore-mode',
                suggestions: [

                  FigSuggestion(name: 'AlternateLocation'),
                  FigSuggestion(name: 'OriginalLocation')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-only-osdisk',
              description: 'Use this flag to restore only OS disks of a backed up VM',
              args: [
                Arg(
                name: 'restore-only-osdisk',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--restore-to-staging-storage-account',
              description: 'Use this flag when you want disks to be restored to the staging storage account using the --storage-account parameter. When not specified, disks will be restored to their original storage accounts. Default: false',
              args: [
                Arg(
                name: 'restore-to-staging-storage-account',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: ['--rp-name', '-r'],
              description: 'Name of the recovery point',
              args: [
                Arg(
                name: 'rp-nam'
              )
              ]
            ),
            Option(
              name: '--storage-account-resource-group',
              description: 'Name of the resource group which contains the storage account. Default value will be same as --resource-group if not specified',
              args: [
                Arg(
                name: 'storage-account-resource-grou'
              )
              ]
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
              name: ['--target-resource-group', '-t'],
              description: 'Use this to specify the target resource group in which the restored disks will be saved',
              args: [
                Arg(
                name: 'target-resource-grou'
              )
              ]
            ),
            Option(
              name: '--target-subnet-name',
              description: 'Name of the subnet in which the target VM should be created, in the case of Alternate Location restore a new VM',
              args: [
                Arg(
                name: 'target-subnet-nam'
              )
              ]
            ),
            Option(
              name: '--target-subscription-id',
              description: 'ID of the subscription to which the resource should be restored',
              args: [
                Arg(
                name: 'target-subscription-i'
              )
              ]
            ),
            Option(
              name: '--target-vm-name',
              description: 'Name of the VM to which the data should be restored, in the case of Alternate Location restore to a new VM',
              args: [
                Arg(
                name: 'target-vm-nam'
              )
              ]
            ),
            Option(
              name: '--target-vnet-name',
              description: 'Name of the VNet in which the target VM should be created, in the case of Alternate Location restore to a new VM',
              args: [
                Arg(
                name: 'target-vnet-nam'
              )
              ]
            ),
            Option(
              name: '--target-vnet-resource-group',
              description: 'Name of the resource group which contains the target VNet, in the case of Alternate Location restore to a new VM',
              args: [
                Arg(
                name: 'target-vnet-resource-grou'
              )
              ]
            ),
            Option(
              name: '--target-zone',
              description: 'A primary region currently can have three Azure availability zones. Use this argument to specify the target zone number while doing Cross Zonal Restore',
              args: [
                Arg(
                name: 'target-zone',
                suggestions: [

                  FigSuggestion(name: '1'),
                  FigSuggestion(name: '2'),
                  FigSuggestion(name: '3')
                ]
              )
              ]
            ),
            Option(
              name: '--use-secondary-region',
              description: 'Use this flag to restore from a recoverypoint in secondary region',
              args: [
                Arg(
                name: 'use-secondary-regio'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'Name of the Recovery services vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'files',
          description: 'Gives access to all files of a recovery point',
          subcommands: [

            Subcommand(
              name: 'mount-rp',
              description: 'Download a script which mounts files of a recovery point',
              options: [

                Option(
                  name: ['--container-name', '-c'],
                  description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
                  args: [
                    Arg(
                    name: 'container-nam'
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
                  name: ['--item-name', '-i'],
                  description: 'Name of the backed up item',
                  args: [
                    Arg(
                    name: 'item-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--rp-name', '-r'],
                  description: 'Name of the recovery point',
                  args: [
                    Arg(
                    name: 'rp-nam'
                  )
                  ]
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
                  name: ['--vault-name', '-v'],
                  description: 'Name of the Recovery services vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'unmount-rp',
              description: 'Close access to the recovery point',
              options: [

                Option(
                  name: ['--container-name', '-c'],
                  description: 'Name of the backup container. Accepts \'Name\' or \'FriendlyName\' from the output of az backup container list command. If \'FriendlyName\' is passed then BackupManagementType is required',
                  args: [
                    Arg(
                    name: 'container-nam'
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
                  name: ['--item-name', '-i'],
                  description: 'Name of the backed up item',
                  args: [
                    Arg(
                    name: 'item-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: ['--rp-name', '-r'],
                  description: 'Name of the recovery point',
                  args: [
                    Arg(
                    name: 'rp-nam'
                  )
                  ]
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
                  name: ['--vault-name', '-v'],
                  description: 'Name of the Recovery services vault',
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
      name: 'vault',
      description: 'Online storage entity in Azure used to hold data such as backup copies, recovery points and backup policies',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new Recovery Services vault or update an existing one',
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
              description: 'Name of the Recovery services vault',
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
              name: '--classic-alerts',
              description: 'Use this property to specify whether backup alerts from the classic solution should be received',
              args: [
                Arg(
                name: 'classic-alerts',
                suggestions: [

                  FigSuggestion(name: 'Disable'),
                  FigSuggestion(name: 'Enable')
                ]
              )
              ]
            ),
            Option(
              name: '--cross-subscription-restore-state',
              description: 'Use this parameter to configure cross subscription restore settings for the vault. By default, the property is "Enabled" for the vault',
              args: [
                Arg(
                name: 'cross-subscription-restore-state',
                suggestions: [

                  FigSuggestion(name: 'Disable'),
                  FigSuggestion(name: 'Enable'),
                  FigSuggestion(name: 'PermanentlyDisable')
                ]
              )
              ]
            ),
            Option(
              name: '--immutability-state',
              description: 'Use this parameter to configure immutability settings for the vault. By default, immutability is "Disabled" for the vault. "Unlocked" means that immutability is enabled for the vault and can be reversed. "Locked" means that immutability is enabled for the vault and cannot be reversed',
              args: [
                Arg(
                name: 'immutability-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Locked'),
                  FigSuggestion(name: 'Unlocked')
                ]
              )
              ]
            ),
            Option(
              name: '--job-failure-alerts',
              description: 'Use this property to specify whether built-in Azure Monitor alerts should be received for every job failure',
              args: [
                Arg(
                name: 'job-failure-alerts',
                suggestions: [

                  FigSuggestion(name: 'Disable'),
                  FigSuggestion(name: 'Enable')
                ]
              )
              ]
            ),
            Option(
              name: '--public-network-access',
              description: 'Use this property to specify whether public network access for the vault should be enabled or disabled. It is enabled by default. For setting up private endpoints, it has to be disabled',
              args: [
                Arg(
                name: 'public-network-access',
                suggestions: [

                  FigSuggestion(name: 'Disable'),
                  FigSuggestion(name: 'Enable')
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
          description: 'Delete an existing Recovery services vault',
          options: [

            Option(
              name: '--force',
              description: 'Force completion of the requested action'
            ),
            Option(
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
              description: 'Name of the Recovery services vault',
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
          description: 'List Recovery service vaults within a subscription',
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
          name: 'list-soft-deleted-containers',
          description: 'List soft-deleted containers within a particular Recovery Services vault',
          options: [

            Option(
              name: '--backup-management-type',
              description: 'Specify the backup management type. Define how Azure Backup manages the backup of entities within the ARM resource. For eg: AzureWorkloads refers to workloads installed within Azure VMs, AzureStorage refers to entities within Storage account. Required only if friendly name is used as Container name',
              args: [
                Arg(
                name: 'backup-management-type',
                suggestions: [

                  FigSuggestion(name: 'AzureIaasVM'),
                  FigSuggestion(name: 'AzureStorage'),
                  FigSuggestion(name: 'AzureWorkload')
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
              description: 'Name of the Recovery services vault',
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
          description: 'Show details of a particular Recovery service vault',
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
              description: 'Name of the Recovery services vault',
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
          name: 'backup-properties',
          description: 'Properties of the Recovery Services vault',
          subcommands: [

            Subcommand(
              name: 'set',
              description: 'Sets backup related properties of the Recovery Services vault',
              options: [

                Option(
                  name: '--backup-storage-redundancy',
                  description: 'Set backup storage properties for a Recovery Services vault',
                  args: [
                    Arg(
                    name: 'backup-storage-redundancy',
                    suggestions: [

                      FigSuggestion(name: 'GeoRedundant'),
                      FigSuggestion(name: 'LocallyRedundant'),
                      FigSuggestion(name: 'ZoneRedundant')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--classic-alerts',
                  description: 'Use this property to specify whether backup alerts from the classic solution should be received',
                  args: [
                    Arg(
                    name: 'classic-alerts',
                    suggestions: [

                      FigSuggestion(name: 'Disable'),
                      FigSuggestion(name: 'Enable')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--cross-region-restore-flag',
                  description: 'Set cross-region-restore feature state for a Recovery Services Vault. Default: False',
                  args: [
                    Arg(
                    name: 'cross-region-restore-flag',
                    suggestions: [

                      FigSuggestion(name: 'False'),
                      FigSuggestion(name: 'True')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--hybrid-backup-security-features',
                  description: 'Use this field to set the security features for hybrid backups in a Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'hybrid-backup-security-features',
                    suggestions: [

                      FigSuggestion(name: 'Disable'),
                      FigSuggestion(name: 'Enable')
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
                  name: '--job-failure-alerts',
                  description: 'Use this property to specify whether built-in Azure Monitor alerts should be received for every job failure',
                  args: [
                    Arg(
                    name: 'job-failure-alerts',
                    suggestions: [

                      FigSuggestion(name: 'Disable'),
                      FigSuggestion(name: 'Enable')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Recovery services vault',
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
                  name: '--soft-delete-duration',
                  description: 'Set soft-delete retention duration time in days for a Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'soft-delete-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--soft-delete-feature-state',
                  description: 'Set soft-delete feature state for a Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'soft-delete-feature-state',
                    suggestions: [

                      FigSuggestion(name: 'AlwaysOn'),
                      FigSuggestion(name: 'Disable'),
                      FigSuggestion(name: 'Enable')
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
                  name: '--tenant-id',
                  description: 'ID of the tenant if the Resource Guard protecting the vault exists in a different tenant',
                  args: [
                    Arg(
                    name: 'tenant-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Gets backup related properties of the Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
          name: 'encryption',
          description: 'Encryption details of a Recovery Services Vault',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Show details of encryption properties of a Recovery Services Vault',
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
                  description: 'Name of the Recovery services vault',
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
              description: 'Update encryption properties of a Recovery Services Vault',
              options: [

                Option(
                  name: '--encryption-key-id',
                  description: 'The encryption key id you want to use for encryption',
                  args: [
                    Arg(
                    name: 'encryption-key-i'
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
                  name: '--infrastructure-encryption',
                  description: 'Use this parameter to enable/disable infrastructure encryption. This must be set when configuring encryption of the vault for the first time. Once enabled/disabled, infrastructure encryption setting cannot be changed. Default value: Disabled. Allowed values: Enabled, Disabled',
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
                  name: '--mi-system-assigned',
                  description: 'Provide this flag to use system assigned identity for encryption',
                  args: [
                    Arg(
                    name: 'mi-system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--mi-user-assigned',
                  description: 'UserAssigned Identity Id to be used for CMK encryption, this will be applicable for encryption using userassigned identity',
                  args: [
                    Arg(
                    name: 'mi-user-assigne'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Recovery services vault',
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
          name: 'identity',
          description: 'Identity details of a Recovery Services Vault',
          subcommands: [

            Subcommand(
              name: 'assign',
              description: 'Assign Identities to Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
                  name: '--system-assigned',
                  description: 'Provide this flag to enable system assigned identity for Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated list of userassigned identities to be assigned to Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove Identities of Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
                  name: '--system-assigned',
                  description: 'Provide this flag to remove system assigned identity for Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'system-assigne'
                  )
                  ]
                ),
                Option(
                  name: '--user-assigned',
                  description: 'Space-separated list of userassigned identities to be removed from Recovery Services Vault',
                  args: [
                    Arg(
                    name: 'user-assigne'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Show Identities of Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
          name: 'resource-guard-mapping',
          description: 'Resource Guard Mapping details of the Recovery Services vault',
          subcommands: [

            Subcommand(
              name: 'delete',
              description: 'Delete resource guard mapping of the Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
                  name: '--tenant-id',
                  description: 'ID of the tenant where the Resource Guard exists in Cross-Tenant scenarios',
                  args: [
                    Arg(
                    name: 'tenant-i'
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
              description: 'Get resource guard mapping of the Recovery Services vault',
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
                  description: 'Name of the Recovery services vault',
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
              description: 'Create/Update resource guard mapping of the Recovery Services vault',
              options: [

                Option(
                  name: '--resource-guard-id',
                  description: 'ARM ID of the Resource Guard to be associated with the vault',
                  args: [
                    Arg(
                    name: 'resource-guard-i'
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
                  description: 'Name of the Recovery services vault',
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
                  name: '--tenant-id',
                  description: 'ID of the tenant where the Resource Guard exists in Cross-Tenant scenarios',
                  args: [
                    Arg(
                    name: 'tenant-i'
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
