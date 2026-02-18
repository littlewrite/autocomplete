// Auto-generated from TypeScript source: dataprotection.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `dataprotection` CLI
final FigSpec dataprotectionSpec = FigSpec(
  name: 'dataprotection',
  description: 'Manage dataprotection',
  subcommands: [

    Subcommand(
      name: 'backup-instance',
      description: 'Manage backup instance with dataprotection',
      subcommands: [

        Subcommand(
          name: 'adhoc-backup',
          description: 'Trigger adhoc backup',
          options: [

            Option(
              name: '--rule-name',
              description: 'Specify backup policy rule name',
              args: [
                Arg(
                name: 'rule-nam'
              )
              ]
            ),
            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--retention-tag-override',
              description: 'Specify retention override tag',
              args: [
                Arg(
                name: 'retention-tag-overrid'
              )
              ]
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Configure backup for a resource in a backup vault',
          options: [

            Option(
              name: '--backup-instance',
              description: 'Request backup instance object for operation. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'backup-instanc'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
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
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a backup instance in a backup vault',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          name: 'initialize',
          description: 'Initialize JSON request body for configuring backup of a resource',
          options: [

            Option(
              name: '--datasource-id',
              description: 'ARM Id of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-i'
              )
              ]
            ),
            Option(
              name: ['--datasource-location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'datasource-locatio'
              )
              ]
            ),
            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: '--policy-id',
              description: 'Id of the backup policy the datasource will be associated',
              args: [
                Arg(
                name: 'policy-i'
              )
              ]
            ),
            Option(
              name: '--backup-configuration',
              description: 'Backup configuration for backup. Use this parameter to configure protection for AzureKubernetesService',
              args: [
                Arg(
                name: 'backup-configuratio'
              )
              ]
            ),
            Option(
              name: '--friendly-name',
              description: 'User-defined friendly name for the backup instance',
              args: [
                Arg(
                name: 'friendly-nam'
              )
              ]
            ),
            Option(
              name: '--secret-store-type',
              description: 'Specify the secret store type to use for authentication',
              args: [
                Arg(
                name: 'secret-store-type',
                suggestions: [

                  FigSuggestion(name: 'AzureKeyVault')
                ]
              )
              ]
            ),
            Option(
              name: '--secret-store-uri',
              description: 'Specify the secret store uri to use for authentication',
              args: [
                Arg(
                name: 'secret-store-ur'
              )
              ]
            ),
            Option(
              name: ['--snapshot-resource-group-name', '--snapshot-rg'],
              description: 'Name of the resource group in which the backup snapshots should be stored',
              args: [
                Arg(
                name: 'snapshot-resource-group-nam'
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
          name: 'initialize-backupconfig',
          description: 'Initialize JSON request body for initializing and configuring backup of an AzureKubernetesService resource',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: ['--backup-hook-references', '--backup-hook-refs'],
              description: 'Property sets the hook reference to be executed during backup',
              args: [
                Arg(
                name: 'backup-hook-reference'
              )
              ]
            ),
            Option(
              name: '--excluded-namespaces',
              description: 'List of namespaces to be excluded for backup',
              args: [
                Arg(
                name: 'excluded-namespace'
              )
              ]
            ),
            Option(
              name: ['--excluded-resource-types', '--excluded-resource-type'],
              description: 'List of resource types to be excluded for backup',
              args: [
                Arg(
                name: 'excluded-resource-type'
              )
              ]
            ),
            Option(
              name: [
                '--include-cluster-scope-resources',
                '--include-cluster-scope',
              ],
              description: 'Boolean parameter to decide whether cluster scope resources are included for restore. By default this is taken as true',
              args: [
                Arg(
                name: 'include-cluster-scope-resources',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--included-namespaces',
              description: 'List of namespaces to be included for backup',
              args: [
                Arg(
                name: 'included-namespace'
              )
              ]
            ),
            Option(
              name: ['--included-resource-types', '--included-resource-type'],
              description: 'List of resource types to be included for backup',
              args: [
                Arg(
                name: 'included-resource-type'
              )
              ]
            ),
            Option(
              name: '--label-selectors',
              description: 'List of labels for internal filtering for backup',
              args: [
                Arg(
                name: 'label-selector'
              )
              ]
            ),
            Option(
              name: '--snapshot-volumes',
              description: 'Boolean parameter to decide whether snapshot volumes are included for backup. By default this is taken as true',
              args: [
                Arg(
                name: 'snapshot-volumes',
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
          name: 'initialize-restoreconfig',
          description: 'Initialize JSON request body for initializing and configuring restore of an AzureKubernetesService resource',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: '--conflict-policy',
              description: 'Conflict policy for restore. Allowed values are Skip, Patch. Default value is Skip',
              args: [
                Arg(
                name: 'conflict-policy',
                suggestions: [

                  FigSuggestion(name: 'Patch'),
                  FigSuggestion(name: 'Skip')
                ]
              )
              ]
            ),
            Option(
              name: '--excluded-namespaces',
              description: 'List of namespaces to be excluded for restore',
              args: [
                Arg(
                name: 'excluded-namespace'
              )
              ]
            ),
            Option(
              name: ['--excluded-resource-types', '--excluded-resource-type'],
              description: 'List of resource types to be excluded for restore',
              args: [
                Arg(
                name: 'excluded-resource-type'
              )
              ]
            ),
            Option(
              name: [
                '--include-cluster-scope-resources',
                '--include-cluster-scope',
              ],
              description: 'Boolean parameter to decide whether cluster scope resources are included for restore. By default this is taken as true',
              args: [
                Arg(
                name: 'include-cluster-scope-resources',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--included-namespaces',
              description: 'List of namespaces to be included for restore',
              args: [
                Arg(
                name: 'included-namespace'
              )
              ]
            ),
            Option(
              name: ['--included-resource-types', '--included-resource-type'],
              description: 'List of resource types to be included for restore',
              args: [
                Arg(
                name: 'included-resource-type'
              )
              ]
            ),
            Option(
              name: '--label-selectors',
              description: 'List of labels for internal filtering for restore',
              args: [
                Arg(
                name: 'label-selector'
              )
              ]
            ),
            Option(
              name: '--namespace-mappings',
              description: 'Namespaces mapping from source namespaces to target namespaces to resolve namespace naming conflicts in the target cluster',
              args: [
                Arg(
                name: 'namespace-mapping'
              )
              ]
            ),
            Option(
              name: [
                '--persistent-volume-restore-mode',
                '--persistent-restoremode',
              ],
              description: 'Restore mode for persistent volumes. Allowed values are RestoreWithVolumeData, RestoreWithoutVolumeData. Default value is RestoreWithVolumeData',
              args: [
                Arg(
                name: 'persistent-volume-restore-mode',
                suggestions: [

                  FigSuggestion(name: 'RestoreWithVolumeData'),
                  FigSuggestion(name: 'RestoreWithoutVolumeData')
                ]
              )
              ]
            ),
            Option(
              name: ['--restore-hook-references', '--restore-hook-refs'],
              description: 'Property sets the hook reference to be executed during restore',
              args: [
                Arg(
                name: 'restore-hook-reference'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'Gets backup instances belonging to a backup vault',
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
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
          name: 'list-from-resourcegraph',
          description: 'List backup instances across subscriptions, resource groups and vaults',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: '--datasource-id',
              description: 'Specify datasource id filter to apply',
              args: [
                Arg(
                name: 'datasource-i'
              )
              ]
            ),
            Option(
              name: '--protection-status',
              description: 'Specify protection status',
              args: [
                Arg(
                name: 'protection-status',
                suggestions: [

                  FigSuggestion(name: 'ProtectionConfigured'),
                  FigSuggestion(name: 'ProtectionError')
                ]
              )
              ]
            ),
            Option(
              name: '--resource-groups',
              description: 'List of resource groups',
              args: [
                Arg(
                name: 'resource-group'
              )
              ]
            ),
            Option(
              name: '--subscriptions',
              description: 'List of subscription Ids',
              args: [
                Arg(
                name: 'subscription'
              )
              ]
            ),
            Option(
              name: '--vaults',
              description: 'List of vault names',
              args: [
                Arg(
                name: 'vault'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resume-protection',
          description: 'This operation will resume protection for a stopped backup instance',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Get a backup instance with name in a backup vault',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'stop-protection',
          description: 'This operation will stop protection of a backup instance and data will be held forever',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'suspend-backup',
          description: 'This operation will stop backup for a backup instance and retains the backup data as per the policy (except latest Recovery point, which will be retained forever)',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Update a backup instance in a backup vault',
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
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
              )
              ]
            ),
            Option(
              name: '--data-source-info',
              description: 'Gets or sets the data source information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'data-source-inf'
              )
              ]
            ),
            Option(
              name: '--data-source-set-info',
              description: 'Gets or sets the data source set information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'data-source-set-inf'
              )
              ]
            ),
            Option(
              name: [
                '--datasource-auth-credentials',
                '--datasource-auth-creds',
              ],
              description: 'Credentials to use to authenticate with data source provider. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'datasource-auth-credential'
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
              name: '--friendly-name',
              description: 'Gets or sets the Backup Instance friendly name',
              args: [
                Arg(
                name: 'friendly-nam'
              )
              ]
            ),
            Option(
              name: '--identity-details',
              description: 'Contains information of the Identity Details for the BI. If it is null, default will be considered as System Assigned. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'identity-detail'
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
              name: '--object-type',
              description: 'Type of Backup or Restore Instance for request body',
              args: [
                Arg(
                name: 'object-typ'
              )
              ]
            ),
            Option(
              name: '--policy-info',
              description: 'Gets or sets the policy information. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'policy-inf'
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
              description: 'Proxy Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--validation-type',
              description: 'Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again',
              args: [
                Arg(
                name: 'validation-type',
                suggestions: [

                  FigSuggestion(name: 'DeepValidation'),
                  FigSuggestion(name: 'ShallowValidation')
                ]
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update-msi-permissions',
          description: 'Assign the required permissions needed to successfully enable backup for the datasource',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: '--operation',
              description: 'List of possible operations',
              args: [
                Arg(
                name: 'operation',
                suggestions: [

                  FigSuggestion(name: 'Backup'),
                  FigSuggestion(name: 'Restore')
                ]
              )
              ]
            ),
            Option(
              name: '--permissions-scope',
              description: 'Scope for assigning permissions to the backup vault',
              args: [
                Arg(
                name: 'permissions-scope',
                suggestions: [

                  FigSuggestion(name: 'Resource'),
                  FigSuggestion(name: 'ResourceGroup'),
                  FigSuggestion(name: 'Subscription')
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
              name: '--vault-name',
              description: 'Name of the vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--backup-instance',
              description: 'Request body for operation "Backup" Expected value: json-string/@json-file. Required when --operation is Backup',
              args: [
                Arg(
                name: 'backup-instanc'
              )
              ]
            ),
            Option(
              name: '--keyvault-id',
              description: 'ARM id of the key vault. Required when --datasource-type is AzureDatabaseForPostgreSQL',
              args: [
                Arg(
                name: 'keyvault-i'
              )
              ]
            ),
            Option(
              name: '--restore-request-object',
              description: 'Request body for operation "Restore" Expected value: json-string/@json-file. Required when --operation is Restore',
              args: [
                Arg(
                name: 'restore-request-objec'
              )
              ]
            ),
            Option(
              name: ['--snapshot-resource-group-id', '--snapshot-rg-id'],
              description: 'ARM id of the snapshot resource group. Required when assigning permissions over snapshot resource group and the --operation is Restore',
              args: [
                Arg(
                name: 'snapshot-resource-group-i'
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
          name: 'update-policy',
          description: 'Update backup policy associated with backup instance',
          options: [

            Option(
              name: '--backup-instance-name',
              description: 'Backup instance name',
              args: [
                Arg(
                name: 'backup-instance-nam'
              )
              ]
            ),
            Option(
              name: '--policy-id',
              description: 'Specify the ID of the new policy with which backup instance will be associated with',
              args: [
                Arg(
                name: 'policy-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'Name of the vault',
              args: [
                Arg(
                name: 'vault-nam'
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
          name: 'validate-for-backup',
          description: 'Validate whether configure backup will be successful or not',
          options: [

            Option(
              name: '--backup-instance',
              description: 'Request body for operation Expected value: json-string/@json-file',
              args: [
                Arg(
                name: 'backup-instanc'
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
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'validate-for-restore',
          description: 'Validates if Restore can be triggered for a DataSource',
          options: [

            Option(
              name: '--restore-request-object',
              description: 'Gets or sets the restore request object. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'restore-request-objec'
              )
              ]
            ),
            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Place the CLI in a waiting state until a condition is met',
          options: [

            Option(
              name: ['--backup-instance-name', '--name', '-n'],
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'deleted-backup-instance',
          description: 'Perform operations on soft-deleted backup instances',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List deleted backup instances belonging to a backup vault',
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
                  name: '--vault-name',
                  description: 'The name of the backup vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
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
              description: 'Get a deleted backup instance with name in a backup vault',
              options: [

                Option(
                  name: ['--backup-instance-name', '--name', '-n'],
                  description: 'The name of the deleted backup instance',
                  args: [
                    Arg(
                    name: 'backup-instance-nam'
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
                  name: '--vault-name',
                  description: 'The name of the backup vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'undelete',
              description: 'Undelete soft-deleted backup instances',
              options: [

                Option(
                  name: ['--backup-instance-name', '--name', '-n'],
                  description: 'The name of the deleted backup instance',
                  args: [
                    Arg(
                    name: 'backup-instance-nam'
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
                  name: '--vault-name',
                  description: 'The name of the backup vault',
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
          name: 'restore',
          description: 'Restore backed up instances from recovery points in a backup vault',
          subcommands: [

            Subcommand(
              name: 'initialize-for-data-recovery',
              description: 'Initialize restore request object to recover all backed up data in a backup vault',
              options: [

                Option(
                  name: '--datasource-type',
                  description: 'Specify the datasource type',
                  args: [
                    Arg(
                    name: 'datasource-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureBlob'),
                      FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                      FigSuggestion(name: 'AzureDisk'),
                      FigSuggestion(name: 'AzureKubernetesService')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--restore-location',
                  description: 'Specify the restore location',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--source-datastore',
                  description: 'Specify the datastore type of the given recovery point or point in time',
                  args: [
                    Arg(
                    name: 'source-datastore',
                    suggestions: [

                      FigSuggestion(name: 'ArchiveStore'),
                      FigSuggestion(name: 'OperationalStore'),
                      FigSuggestion(name: 'VaultStore')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--backup-instance-id',
                  description: 'Specify the backup instance ID',
                  args: [
                    Arg(
                    name: 'backup-instance-i'
                  )
                  ]
                ),
                Option(
                  name: '--point-in-time',
                  description: 'Specify the point in time which will be used for restoring the data in UTC (yyyy-mm-ddTHH:MM:SS)',
                  args: [
                    Arg(
                    name: 'point-in-tim'
                  )
                  ]
                ),
                Option(
                  name: '--recovery-point-id',
                  description: 'Specify the recovery point ID which will be used for restoring the data',
                  args: [
                    Arg(
                    name: 'recovery-point-i'
                  )
                  ]
                ),
                Option(
                  name: '--rehydration-duration',
                  description: 'Specify the rehydration duration for rehydrate restore',
                  args: [
                    Arg(
                    name: 'rehydration-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--rehydration-priority',
                  description: 'Specify the rehydration priority for rehydrate restore',
                  args: [
                    Arg(
                    name: 'rehydration-priority',
                    suggestions: [

                      FigSuggestion(name: 'Standard')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--restore-configuration',
                  description: 'Restore configuration for restore. Use this parameter to restore with AzureKubernetesService',
                  args: [
                    Arg(
                    name: 'restore-configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--secret-store-type',
                  description: 'Specify the secret store type to use for authentication',
                  args: [
                    Arg(
                    name: 'secret-store-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureKeyVault')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--secret-store-uri',
                  description: 'Specify the secret store uri to use for authentication',
                  args: [
                    Arg(
                    name: 'secret-store-ur'
                  )
                  ]
                ),
                Option(
                  name: '--target-resource-id',
                  description: 'Specify the resource ID to which the data will be restored',
                  args: [
                    Arg(
                    name: 'target-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'initialize-for-data-recovery-as-files',
              description: 'Initialize restore request object to recover all backed up data as files in a backup vault',
              options: [

                Option(
                  name: '--datasource-type',
                  description: 'Specify the datasource type',
                  args: [
                    Arg(
                    name: 'datasource-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureBlob'),
                      FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                      FigSuggestion(name: 'AzureDisk'),
                      FigSuggestion(name: 'AzureKubernetesService')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--restore-location',
                  description: 'Specify the restore location',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--source-datastore',
                  description: 'Specify the datastore type of the given recovery point or point in time',
                  args: [
                    Arg(
                    name: 'source-datastore',
                    suggestions: [

                      FigSuggestion(name: 'ArchiveStore'),
                      FigSuggestion(name: 'OperationalStore'),
                      FigSuggestion(name: 'VaultStore')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--target-blob-container-url',
                  description: 'Specify the blob container url to which the data will be restored',
                  args: [
                    Arg(
                    name: 'target-blob-container-ur'
                  )
                  ]
                ),
                Option(
                  name: '--target-file-name',
                  description: 'Specify the file name to which the data will be restored',
                  args: [
                    Arg(
                    name: 'target-file-nam'
                  )
                  ]
                ),
                Option(
                  name: '--point-in-time',
                  description: 'Specify the point in time which will be used for restoring the data in UTC (yyyy-mm-ddTHH:MM:SS)',
                  args: [
                    Arg(
                    name: 'point-in-tim'
                  )
                  ]
                ),
                Option(
                  name: '--recovery-point-id',
                  description: 'Specify the recovery point ID which will be used for restoring the data',
                  args: [
                    Arg(
                    name: 'recovery-point-i'
                  )
                  ]
                ),
                Option(
                  name: '--rehydration-duration',
                  description: 'Specify the rehydration duration for rehydrate restore',
                  args: [
                    Arg(
                    name: 'rehydration-duratio'
                  )
                  ]
                ),
                Option(
                  name: '--rehydration-priority',
                  description: 'Specify the rehydration priority for rehydrate restore',
                  args: [
                    Arg(
                    name: 'rehydration-priority',
                    suggestions: [

                      FigSuggestion(name: 'Standard')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--target-resource-id',
                  description: 'Specify the target storage container ARM ID to which data will be restored, required for restoring as files to another subscription',
                  args: [
                    Arg(
                    name: 'target-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'initialize-for-item-recovery',
              description: 'Initialize restore request object to recover specified items of backed up data in a backup vault',
              options: [

                Option(
                  name: '--datasource-type',
                  description: 'Specify the datasource type',
                  args: [
                    Arg(
                    name: 'datasource-type',
                    suggestions: [

                      FigSuggestion(name: 'AzureBlob'),
                      FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                      FigSuggestion(name: 'AzureDisk'),
                      FigSuggestion(name: 'AzureKubernetesService')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--restore-location',
                  description: 'Specify the restore location',
                  args: [
                    Arg(
                    name: 'restore-locatio'
                  )
                  ]
                ),
                Option(
                  name: '--source-datastore',
                  description: 'Specify the datastore type of the given recovery point or point in time',
                  args: [
                    Arg(
                    name: 'source-datastore',
                    suggestions: [

                      FigSuggestion(name: 'ArchiveStore'),
                      FigSuggestion(name: 'OperationalStore'),
                      FigSuggestion(name: 'VaultStore')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--backup-instance-id',
                  description: 'Specify the backup instance ID',
                  args: [
                    Arg(
                    name: 'backup-instance-i'
                  )
                  ]
                ),
                Option(
                  name: '--container-list',
                  description: 'Specify the list of containers to restore',
                  args: [
                    Arg(
                    name: 'container-lis'
                  )
                  ]
                ),
                Option(
                  name: '--from-prefix-pattern',
                  description: 'Specify the prefix pattern for start range',
                  args: [
                    Arg(
                    name: 'from-prefix-patter'
                  )
                  ]
                ),
                Option(
                  name: '--point-in-time',
                  description: 'Specify the point in time which will be used for restoring the data in UTC (yyyy-mm-ddTHH:MM:SS)',
                  args: [
                    Arg(
                    name: 'point-in-tim'
                  )
                  ]
                ),
                Option(
                  name: '--recovery-point-id',
                  description: 'Specify the recovery point ID which will be used for restoring the data',
                  args: [
                    Arg(
                    name: 'recovery-point-i'
                  )
                  ]
                ),
                Option(
                  name: '--restore-configuration',
                  description: 'Restore configuration for restore. Use this parameter to restore with AzureKubernetesService',
                  args: [
                    Arg(
                    name: 'restore-configuratio'
                  )
                  ]
                ),
                Option(
                  name: '--target-resource-id',
                  description: 'Specify the resource ID to which the data will be restored',
                  args: [
                    Arg(
                    name: 'target-resource-i'
                  )
                  ]
                ),
                Option(
                  name: '--to-prefix-pattern',
                  description: 'Specify the prefix pattern for end range',
                  args: [
                    Arg(
                    name: 'to-prefix-patter'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'trigger',
              description: 'Triggers restore for a BackupInstance',
              options: [

                Option(
                  name: '--restore-request-object',
                  description: 'Gets or sets the restore request object. Expected value: json-string/@json-file. Support json-file and yaml-file',
                  args: [
                    Arg(
                    name: 'restore-request-objec'
                  )
                  ]
                ),
                Option(
                  name: ['--backup-instance-name', '--name', '-n'],
                  description: 'The name of the backup instance',
                  args: [
                    Arg(
                    name: 'backup-instance-nam'
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
                  name: '--vault-name',
                  description: 'The name of the backup vault',
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
      name: 'backup-policy',
      description: 'Manage backup policy with dataprotection',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a backup policy belonging to a backup vault',
          options: [

            Option(
              name: ['--backup-policy-name', '--name', '-n'],
              description: 'Name of the policy',
              args: [
                Arg(
                name: 'backup-policy-nam'
              )
              ]
            ),
            Option(
              name: '--policy',
              description: 'Request body for operation Expected value: json-string/@json-file. Support json-file and yaml-file',
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Deletes a backup policy belonging to a backup vault',
          options: [

            Option(
              name: ['--backup-policy-name', '--name', '-n'],
              description: 'Name of the policy',
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
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          name: 'get-default-policy-template',
          description: 'Get default policy template for a given datasource type',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type of the resource to be backed up',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List list of backup policies belonging to a backup vault',
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
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
          description: 'Get a backup policy belonging to a backup vault',
          options: [

            Option(
              name: ['--backup-policy-name', '--name', '-n'],
              description: 'Name of the policy',
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
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
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
          description: 'Update a backup policy belonging to a backup vault',
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
              name: ['--backup-policy-name', '--name', '-n'],
              description: 'Name of the policy',
              args: [
                Arg(
                name: 'backup-policy-nam'
              )
              ]
            ),
            Option(
              name: '--datasource-types',
              description: 'Type of datasource for the backup management Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'datasource-type'
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
              name: '--policy',
              description: 'Request body for operation Expected value: json- string/@json-file. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'polic'
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'retention-rule',
          description: 'Create lifecycles and add or remove retention rules in a backup policy',
          subcommands: [

            Subcommand(
              name: 'create-lifecycle',
              description: 'Create lifecycle for Azure Retention rule',
              options: [

                Option(
                  name: ['--retention-duration-count', '--count'],
                  description: 'Retention duration count',
                  args: [
                    Arg(
                    name: 'retention-duration-coun'
                  )
                  ]
                ),
                Option(
                  name: ['--retention-duration-type', '--type'],
                  description: 'Retention duration type',
                  args: [
                    Arg(
                    name: 'retention-duration-type',
                    suggestions: [

                      FigSuggestion(name: 'Days'),
                      FigSuggestion(name: 'Months'),
                      FigSuggestion(name: 'Weeks'),
                      FigSuggestion(name: 'Years')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--source-datastore',
                  description: 'Specify source datastore',
                  args: [
                    Arg(
                    name: 'source-datastore',
                    suggestions: [

                      FigSuggestion(name: 'ArchiveStore'),
                      FigSuggestion(name: 'OperationalStore'),
                      FigSuggestion(name: 'VaultStore')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--copy-option',
                  description: 'Specify copy option from source datastore to target datastore',
                  args: [
                    Arg(
                    name: 'copy-option',
                    suggestions: [

                      FigSuggestion(name: 'CopyOnExpiryOption'),
                      FigSuggestion(name: 'CustomCopyOption'),
                      FigSuggestion(name: 'ImmediateCopyOption')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--target-datastore',
                  description: 'Specify target datastore',
                  args: [
                    Arg(
                    name: 'target-datastore',
                    suggestions: [

                      FigSuggestion(name: 'ArchiveStore'),
                      FigSuggestion(name: 'OperationalStore'),
                      FigSuggestion(name: 'VaultStore')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove existing retention rule in a backup policy',
              options: [

                Option(
                  name: '--name',
                  description: 'Specify the retention rule name to be removed in policy',
                  args: [
                    Arg(
                    name: 'name',
                    suggestions: [

                      FigSuggestion(name: 'Daily'),
                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'Monthly'),
                      FigSuggestion(name: 'Weekly'),
                      FigSuggestion(name: 'Yearly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--policy',
                  description: 'Existing policy Json string or file',
                  args: [
                    Arg(
                    name: 'polic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Add new retention rule or update existing retention rule',
              options: [

                Option(
                  name: '--lifecycles',
                  description: 'Lifecycles to be associated with the retention rule. Specify space separated json file names',
                  args: [
                    Arg(
                    name: 'lifecycle'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Specify the retention rule name to be edited in policy',
                  args: [
                    Arg(
                    name: 'name',
                    suggestions: [

                      FigSuggestion(name: 'Daily'),
                      FigSuggestion(name: 'Default'),
                      FigSuggestion(name: 'Monthly'),
                      FigSuggestion(name: 'Weekly'),
                      FigSuggestion(name: 'Yearly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--policy',
                  description: 'Policy Json string or file',
                  args: [
                    Arg(
                    name: 'polic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'tag',
          description: 'Create criterias and add or remove tag in policy',
          subcommands: [

            Subcommand(
              name: 'create-absolute-criteria',
              description: 'Create absolute criteria',
              options: [

                Option(
                  name: '--absolute-criteria',
                  description: 'Specify retention criteria',
                  args: [
                    Arg(
                    name: 'absolute-criteria',
                    suggestions: [

                      FigSuggestion(name: 'AllBackup'),
                      FigSuggestion(name: 'FirstOfDay'),
                      FigSuggestion(name: 'FirstOfMonth'),
                      FigSuggestion(name: 'FirstOfWeek'),
                      FigSuggestion(name: 'FirstOfYear')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'create-generic-criteria',
              description: 'Create generic criteria',
              options: [

                Option(
                  name: '--days-of-month',
                  description: 'Specify days of month. Allowed values are 1 to 28 and Last',
                  args: [
                    Arg(
                    name: 'days-of-mont'
                  )
                  ]
                ),
                Option(
                  name: '--days-of-week',
                  description: 'Specify days of week',
                  args: [
                    Arg(
                    name: 'days-of-week',
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
                  name: '--months-of-year',
                  description: 'Specify months of year',
                  args: [
                    Arg(
                    name: 'months-of-year',
                    suggestions: [

                      FigSuggestion(name: 'April'),
                      FigSuggestion(name: 'August'),
                      FigSuggestion(name: 'December'),
                      FigSuggestion(name: 'February'),
                      FigSuggestion(name: 'January'),
                      FigSuggestion(name: 'July'),
                      FigSuggestion(name: 'June'),
                      FigSuggestion(name: 'March'),
                      FigSuggestion(name: 'May'),
                      FigSuggestion(name: 'November'),
                      FigSuggestion(name: 'October'),
                      FigSuggestion(name: 'September')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--weeks-of-month',
                  description: 'Specify weeks of month',
                  args: [
                    Arg(
                    name: 'weeks-of-month',
                    suggestions: [

                      FigSuggestion(name: 'First'),
                      FigSuggestion(name: 'Fourth'),
                      FigSuggestion(name: 'Last'),
                      FigSuggestion(name: 'Second'),
                      FigSuggestion(name: 'Third')
                    ]
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'remove',
              description: 'Remove existing tag from a backup policy',
              options: [

                Option(
                  name: '--name',
                  description: 'Specify the tag name to be removed in policy',
                  args: [
                    Arg(
                    name: 'name',
                    suggestions: [

                      FigSuggestion(name: 'Daily'),
                      FigSuggestion(name: 'Monthly'),
                      FigSuggestion(name: 'Weekly'),
                      FigSuggestion(name: 'Yearly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--policy',
                  description: 'Existing policy Json string or file',
                  args: [
                    Arg(
                    name: 'polic'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Add new tag or update existing tag of a backup policy',
              options: [

                Option(
                  name: '--criteria',
                  description: 'Crtierias to be associated with the tag. Specify space separated json file names',
                  args: [
                    Arg(
                    name: 'criteri'
                  )
                  ]
                ),
                Option(
                  name: '--name',
                  description: 'Specify the tag name to be edited in policy',
                  args: [
                    Arg(
                    name: 'name',
                    suggestions: [

                      FigSuggestion(name: 'Daily'),
                      FigSuggestion(name: 'Monthly'),
                      FigSuggestion(name: 'Weekly'),
                      FigSuggestion(name: 'Yearly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--policy',
                  description: 'Policy Json string or file',
                  args: [
                    Arg(
                    name: 'polic'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'trigger',
          description: 'Manage backup schedule of a backup policy',
          subcommands: [

            Subcommand(
              name: 'create-schedule',
              description: 'Create backup schedule of a policy',
              options: [

                Option(
                  name: '--interval-count',
                  description: 'Specify duration of backup frequency',
                  args: [
                    Arg(
                    name: 'interval-coun'
                  )
                  ]
                ),
                Option(
                  name: '--interval-type',
                  description: 'Specify Backup Frequency',
                  args: [
                    Arg(
                    name: 'interval-type',
                    suggestions: [

                      FigSuggestion(name: 'Daily'),
                      FigSuggestion(name: 'Hourly'),
                      FigSuggestion(name: 'Weekly')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--schedule-days',
                  description: 'Specify the backup schedule time in UTC (yyyy-mm-ddTHH:MM:SS)',
                  args: [
                    Arg(
                    name: 'schedule-day'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'set',
              description: 'Associate backup schedule to a backup policy',
              options: [

                Option(
                  name: '--policy',
                  description: 'Existing policy Json string or file',
                  args: [
                    Arg(
                    name: 'polic'
                  )
                  ]
                ),
                Option(
                  name: '--schedule',
                  description: 'Specify schedule time intervals for backup rule',
                  args: [
                    Arg(
                    name: 'schedul'
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
      name: 'backup-vault',
      description: 'Manage backup vault with dataprotection',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a BackupVault resource belonging to a resource group',
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
              name: ['--storage-settings', '--storage-setting'],
              description: 'Storage Settings. Usage: --storage-setting "[{type:\'LocallyRedundant\',datastore-type:\'VaultStore\'}]" Support shorthand-syntax, json-file and yaml-file. Try "??" to show more. Singular flags: --storage-settings',
              args: [
                Arg(
                name: 'storage-setting'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: [
                '--azure-monitor-alerts-for-job-failures',
                '--job-failure-alerts',
              ],
              description: 'Property that specifies whether built-in Azure Monitor alerts should be fired for all failed jobs',
              args: [
                Arg(
                name: 'azure-monitor-alerts-for-job-failures',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--cross-subscription-restore-state', '--csr-state'],
              description: 'CrossSubscriptionRestore state',
              args: [
                Arg(
                name: 'cross-subscription-restore-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'PermanentlyDisabled')
                ]
              )
              ]
            ),
            Option(
              name: '--e-tag',
              description: 'Optional ETag',
              args: [
                Arg(
                name: 'e-ta'
              )
              ]
            ),
            Option(
              name: '--immutability-state',
              description: 'Immutability state',
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. When not specified, the location of the resource group will be used',
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
              name: ['--retention-duration-in-days', '--soft-delete-retention'],
              description: 'Soft delete retention duration',
              args: [
                Arg(
                name: 'retention-duration-in-day'
              )
              ]
            ),
            Option(
              name: '--soft-delete-state',
              description: 'State of soft delete',
              args: [
                Arg(
                name: 'soft-delete-state',
                suggestions: [

                  FigSuggestion(name: 'AlwaysOn'),
                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The identityType which can be either SystemAssigned or None',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a BackupVault resource from the resource group',
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
              name: ['--vault-name', '-v'],
              description: 'The name of the backup vault',
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
          name: 'list',
          description: 'Gets list of backup vault in a subscription or in a resource group',
          options: [

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
          description: 'Get a resource belonging to a resource group',
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
              description: 'The name of the backup vault',
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
          description: 'Updates a BackupVault resource belonging to a resource group. For example, updating tags for a resource',
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
              name: [
                '--azure-monitor-alerts-for-job-failures',
                '--job-failure-alerts',
              ],
              description: 'Property that specifies whether built-in Azure Monitor alerts should be fired for all failed jobs',
              args: [
                Arg(
                name: 'azure-monitor-alerts-for-job-failures',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled')
                ]
              )
              ]
            ),
            Option(
              name: ['--cross-subscription-restore-state', '--csr-state'],
              description: 'CrossSubscriptionRestore state',
              args: [
                Arg(
                name: 'cross-subscription-restore-state',
                suggestions: [

                  FigSuggestion(name: 'Disabled'),
                  FigSuggestion(name: 'Enabled'),
                  FigSuggestion(name: 'PermanentlyDisabled')
                ]
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
              name: '--immutability-state',
              description: 'Immutability state',
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
              name: ['--retention-duration-in-days', '--soft-delete-retention'],
              description: 'Soft delete retention duration',
              args: [
                Arg(
                name: 'retention-duration-in-day'
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
              name: '--soft-delete-state',
              description: 'State of soft delete',
              args: [
                Arg(
                name: 'soft-delete-state',
                suggestions: [

                  FigSuggestion(name: 'AlwaysOn'),
                  FigSuggestion(name: 'Off'),
                  FigSuggestion(name: 'On')
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
              name: '--tags',
              description: 'Resource tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--type',
              description: 'The identityType which can be either SystemAssigned or None',
              args: [
                Arg(
                name: 'typ'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'The name of the backup vault',
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
              name: ['--vault-name', '-v'],
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'resource-guard-mapping',
          description: 'Manage ResourceGuard mappings for a backup vault',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a ResourceGuard mapping',
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
                  description: 'The name of the backup vault',
                  args: [
                    Arg(
                    name: 'vault-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-guard-mapping-name', '--name', '-n'],
                  description: 'The name of the resource guard mapping',
                  args: [
                    Arg(
                    name: 'resource-guard-mapping-nam'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-guard-resource-id', '--resource-guard-id'],
                  description: 'ARM Id of the resource guard to be mapped to',
                  args: [
                    Arg(
                    name: 'resource-guard-resource-i'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'delete',
              description: 'Delete the ResourceGuard mapping',
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
                  name: ['--resource-guard-mapping-name', '--name', '-n'],
                  description: 'The name of the resource guard mapping',
                  args: [
                    Arg(
                    name: 'resource-guard-mapping-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'The name of the backup vault',
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
              name: 'show',
              description: 'Get the ResourceGuard mapping object associated with the vault, and that matches the name in the request',
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
                  name: ['--resource-guard-mapping-name', '--name', '-n'],
                  description: 'The name of the resource guard mapping',
                  args: [
                    Arg(
                    name: 'resource-guard-mapping-nam'
                  )
                  ]
                ),
                Option(
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
                  description: 'The name of the backup vault',
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
      name: 'job',
      description: 'Manage job with dataprotection',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Returns list of jobs belonging to a backup vault',
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
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
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
          name: 'list-from-resourcegraph',
          description: 'List backup jobs across subscriptions, resource groups and vaults',
          options: [

            Option(
              name: '--datasource-type',
              description: 'Specify the datasource type',
              args: [
                Arg(
                name: 'datasource-type',
                suggestions: [

                  FigSuggestion(name: 'AzureBlob'),
                  FigSuggestion(name: 'AzureDatabaseForPostgreSQL'),
                  FigSuggestion(name: 'AzureDisk'),
                  FigSuggestion(name: 'AzureKubernetesService')
                ]
              )
              ]
            ),
            Option(
              name: '--datasource-id',
              description: 'Specify datasource id filter to apply',
              args: [
                Arg(
                name: 'datasource-i'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'Specify end time of the job in UTC (yyyy-mm-ddTHH:MM:SS)',
              args: [
                Arg(
                name: 'end-tim'
              )
              ]
            ),
            Option(
              name: '--operation',
              description: 'Specify job operation values for filter',
              args: [
                Arg(
                name: 'operation',
                suggestions: [

                  FigSuggestion(name: 'OnDemandBackup'),
                  FigSuggestion(name: 'Restore'),
                  FigSuggestion(name: 'ScheduledBackup')
                ]
              )
              ]
            ),
            Option(
              name: '--resource-groups',
              description: 'List of resource groups',
              args: [
                Arg(
                name: 'resource-group'
              )
              ]
            ),
            Option(
              name: '--start-time',
              description: 'Specify start time of the job in UTC (yyyy-mm-ddTHH:MM:SS)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            ),
            Option(
              name: '--status',
              description: 'Specify job status values for filter',
              args: [
                Arg(
                name: 'status',
                suggestions: [

                  FigSuggestion(name: 'Completed'),
                  FigSuggestion(name: 'Failed'),
                  FigSuggestion(name: 'InProgress')
                ]
              )
              ]
            ),
            Option(
              name: '--subscriptions',
              description: 'List of subscription Ids',
              args: [
                Arg(
                name: 'subscription'
              )
              ]
            ),
            Option(
              name: '--vaults',
              description: 'List of vault names',
              args: [
                Arg(
                name: 'vault'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a job with id in a backup vault',
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
              name: '--job-id',
              description: 'The Job ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)',
              args: [
                Arg(
                name: 'job-i'
              )
              ]
            ),
            Option(
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
      name: 'recovery-point',
      description: 'Manage recovery point with dataprotection',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Returns a list of Recovery Points for a DataSource in a vault',
          options: [

            Option(
              name: '--backup-instance-name',
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vault-name',
              description: 'The name of the backup vault',
              args: [
                Arg(
                name: 'vault-nam'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'Specify the end date time in UTC (yyyy-mm-ddTHH:MM:SS)',
              args: [
                Arg(
                name: 'end-tim'
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
            ),
            Option(
              name: '--start-time',
              description: 'Specify the start date time in UTC (yyyy-mm-ddTHH:MM:SS)',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get a Recovery Point using recoveryPointId for a Datasource',
          options: [

            Option(
              name: '--backup-instance-name',
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
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
              name: '--recovery-point-id',
              description: 'Id of the recovery point',
              args: [
                Arg(
                name: 'recovery-point-i'
              )
              ]
            ),
            Option(
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
      name: 'resource-guard',
      description: 'Manage resource guard with dataprotection',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Creates or updates a ResourceGuard resource belonging to a resource group',
          options: [

            Option(
              name: ['--resource-guard-name', '--name', '-n'],
              description: 'The name of Resource Guard',
              args: [
                Arg(
                name: 'resource-guard-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--e-tag',
              description: 'Optional ETag',
              args: [
                Arg(
                name: 'e-ta'
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
          description: 'Deletes a ResourceGuard resource from the resource group',
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
              name: ['--resource-guard-name', '--name', '-n'],
              description: 'The name of ResourceGuard',
              args: [
                Arg(
                name: 'resource-guard-nam'
              )
              ]
            ),
            Option(
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
          description: 'Gets list of ResourceGuards in a subscription or in a resource group',
          options: [

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
          name: 'list-protected-operations',
          description: 'Lists protected operations associated with a ResourceGuard',
          options: [

            Option(
              name: '--resource-type',
              description: 'Type of the resource associated with the protected operations',
              args: [
                Arg(
                name: 'resource-type',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.RecoveryServices/vaults')
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
              name: ['--resource-guard-name', '--name', '-n'],
              description: 'The name of ResourceGuard',
              args: [
                Arg(
                name: 'resource-guard-nam'
              )
              ]
            ),
            Option(
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
          description: 'Returns a ResourceGuard belonging to a resource group',
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
              name: ['--resource-guard-name', '--name', '-n'],
              description: 'The name of ResourceGuard',
              args: [
                Arg(
                name: 'resource-guard-nam'
              )
              ]
            ),
            Option(
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
          name: 'unlock',
          description: 'Unlocks the critical operation which is protected by the resource guard',
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
              name: ['--resource-guard-mapping-name', '--name', '-n'],
              description: 'The name of the resource guard mapping',
              args: [
                Arg(
                name: 'resource-guard-mapping-nam'
              )
              ]
            ),
            Option(
              name: [
                '--resource-guard-operation-requests',
                '--operation-requests',
              ],
              description: 'List of critical operations which are protected by the resourceGuard and need to be unlocked. Supported values are DeleteBackupInstance, DisableMUA Support shorthand-syntax, json-file and yaml-file. Try "??" to show more. Singular flags: --operation-requests',
              args: [
                Arg(
                name: 'resource-guard-operation-request'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-to-be-deleted',
              description: 'ARM Id of the resource that need to be unlocked for performing critical operation',
              args: [
                Arg(
                name: 'resource-to-be-delete'
              )
              ]
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
              description: 'Tenant ID for cross-tenant calls',
              args: [
                Arg(
                name: 'tenant-i'
              )
              ]
            ),
            Option(
              name: ['--vault-name', '-v'],
              description: 'The name of the backup vault',
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
          description: 'Updates protected operations associated with a ResourceGuard',
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
              name: '--critical-operation-exclusion-list',
              description: 'List of critical operations which are not protected by this resourceGuard. Allowed values: deleteProtection, getSecurityPIN, updatePolicy, updateProtection. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'critical-operation-exclusion-lis'
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
              name: ['--resource-guard-name', '--name', '-n'],
              description: 'The name of Resource Guard',
              args: [
                Arg(
                name: 'resource-guard-nam'
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
              name: '--resource-type',
              description: 'Type of the resource associated with the protected operations',
              args: [
                Arg(
                name: 'resource-type',
                suggestions: [

                  FigSuggestion(name: 'Microsoft.RecoveryServices/vaults')
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
              name: '--tags',
              description: 'Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'restorable-time-range',
      description: 'Manage restorable time range with dataprotection',
      subcommands: [

        Subcommand(
          name: 'find',
          description: 'Finds the valid recovery point in time ranges for the restore',
          options: [

            Option(
              name: '--source-data-store-type',
              description: 'Gets or sets the type of the source data store',
              args: [
                Arg(
                name: 'source-data-store-type',
                suggestions: [

                  FigSuggestion(name: 'ArchiveStore'),
                  FigSuggestion(name: 'OperationalStore'),
                  FigSuggestion(name: 'VaultStore')
                ]
              )
              ]
            ),
            Option(
              name: '--backup-instance-name',
              description: 'The name of the backup instance',
              args: [
                Arg(
                name: 'backup-instance-nam'
              )
              ]
            ),
            Option(
              name: '--end-time',
              description: 'End time for the List Restore Ranges request. ISO 8601 format',
              args: [
                Arg(
                name: 'end-tim'
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
              name: '--start-time',
              description: 'Start time for the List Restore Ranges request. ISO 8601 format',
              args: [
                Arg(
                name: 'start-tim'
              )
              ]
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
              name: '--vault-name',
              description: 'The name of the backup vault',
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
);
