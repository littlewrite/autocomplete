// Auto-generated from TypeScript source: amlfs.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `amlfs` CLI
final FigSpec amlfsSpec = FigSpec(
  name: 'amlfs',
  description: 'Manage lustre file system',
  subcommands: [

    Subcommand(
      name: 'archive',
      description: 'Archive data from the AML file system',
      options: [

        Option(
          name: '--amlfs-name',
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'amlfs-nam'
          )
          ]
        ),
        Option(
          name: '--filesystem-path',
          description: 'Lustre file system path to archive relative to the file system root. Specify \'/\' to archive all modified data',
          args: [
            Arg(
            name: 'filesystem-pat'
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
      name: 'cancel-archive',
      description: 'Cancel archiving data from the AML file system',
      options: [

        Option(
          name: '--amlfs-name',
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'amlfs-nam'
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
      name: 'check-amlfs-subnet',
      description: 'Check that subnets will be valid for AML file system create calls',
      options: [

        Option(
          name: '--filesystem-subnet',
          description: 'Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET\'s address space',
          args: [
            Arg(
            name: 'filesystem-subne'
          )
          ]
        ),
        Option(
          name: '--location',
          description: 'Region that the AML file system will be created in',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'SKU name for this resource',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--storage-capacity',
          description: 'The size of the AML file system, in TiB',
          args: [
            Arg(
            name: 'storage-capacit'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Create an AML file system',
      options: [

        Option(
          name: ['--aml-filesystem-name', '--name', '-n'],
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'aml-filesystem-nam'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--encryption-setting',
          description: 'Specifies the location of the encryption key in Key Vault. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'encryption-settin'
          )
          ]
        ),
        Option(
          name: '--filesystem-subnet',
          description: 'Subnet used for managing the AML file system and for client-facing operations. This subnet should have at least a /24 subnet mask within the VNET\'s address space',
          args: [
            Arg(
            name: 'filesystem-subne'
          )
          ]
        ),
        Option(
          name: '--hsm-settings',
          description: 'Specifies HSM settings of the AML file system. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'hsm-setting'
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
          name: '--maintenance-window',
          description: 'Start time of a 30-minute weekly maintenance window. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'maintenance-windo'
          )
          ]
        ),
        Option(
          name: '--mi-user-assigned',
          description: 'Space separated resource IDs to add user-assigned identities. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'mi-user-assigne'
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
          name: '--sku',
          description: 'SKU name for this resource',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--storage-capacity',
          description: 'The size of the AML file system, in TiB. This might be rounded up',
          args: [
            Arg(
            name: 'storage-capacit'
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
          name: '--zones',
          description: 'Availability zones for resources. This field should only contain a single element in the array. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
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
      description: 'Delete an AML file system for deletion',
      options: [

        Option(
          name: ['--aml-filesystem-name', '--name', '-n'],
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'aml-filesystem-nam'
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
      name: 'get-subnets-size',
      description: 'Get the number of available IP addresses needed for the AML file system information provided',
      options: [

        Option(
          name: '--sku',
          description: 'SKU name for this resource',
          args: [
            Arg(
            name: 'sk'
          )
          ]
        ),
        Option(
          name: '--storage-capacity',
          description: 'The size of the AML file system, in TiB',
          args: [
            Arg(
            name: 'storage-capacit'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list',
      description: 'List all AML file systems the user has access to under a resource group',
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
      description: 'Get an AML file system',
      options: [

        Option(
          name: ['--aml-filesystem-name', '--name', '-n'],
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'aml-filesystem-nam'
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
      description: 'Update an AML file system',
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
          name: ['--aml-filesystem-name', '--name', '-n'],
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'aml-filesystem-nam'
          )
          ]
        ),
        Option(
          name: '--encryption-setting',
          description: 'Specifies the location of the encryption key in Key Vault. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'encryption-settin'
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
          name: '--maintenance-window',
          description: 'Start time of a 30-minute weekly maintenance window. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
          args: [
            Arg(
            name: 'maintenance-windo'
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
          name: ['--aml-filesystem-name', '--name', '-n'],
          description: 'Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric',
          args: [
            Arg(
            name: 'aml-filesystem-nam'
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
);
