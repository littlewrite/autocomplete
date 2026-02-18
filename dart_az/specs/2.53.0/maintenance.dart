// Auto-generated from TypeScript source: maintenance.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `maintenance` CLI
final FigSpec maintenanceSpec = FigSpec(
  name: 'maintenance',
  description: 'Manage Maintenance',
  subcommands: [

    Subcommand(
      name: 'applyupdate',
      description: 'Manage apply update with maintenance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Apply maintenance updates to resource',
          options: [

            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-or-update-parent',
          description: 'Apply maintenance updates to resource with parent',
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          description: 'Get Configuration records within a subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Track maintenance updates to resource',
          options: [

            Option(
              name: ['--apply-update-name', '--name', '-n'],
              description: 'ApplyUpdate Id',
              args: [
                Arg(
                name: 'apply-update-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'show-parent',
          description: 'Track maintenance updates to resource with parent',
          options: [

            Option(
              name: ['--apply-update-name', '--name', '-n'],
              description: 'ApplyUpdate Id',
              args: [
                Arg(
                name: 'apply-update-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
      name: 'assignment',
      description: 'Manage configuration assignment with maintenance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Apply maintenance updates to resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'create-or-update-parent',
          description: 'Apply maintenance updates to resource with parent',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
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
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'create-or-update-resource-group',
          description: 'Create configuration for resource',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
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
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
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
          name: 'create-or-update-subscription',
          description: 'Create configuration for resource',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
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
          description: 'Delete configuration for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Unique configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
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
          name: 'delete-parent',
          description: 'Delete configuration for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Unique configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
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
          name: 'delete-resource-group',
          description: 'Delete configuration for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Unique configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
              name: ['--yes', '-y'],
              description: 'Do not prompt for confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'delete-subscription',
          description: 'Delete configuration for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Unique configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
          description: 'List configurationAssignments for resource',
          options: [

            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-parent',
          description: 'List configurationAssignments for resource',
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'list-subscription',
          description: 'List configuration assignment within a subscription'
        ),
        Subcommand(
          name: 'show',
          description: 'Get configuration assignment for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'show-parent',
          description: 'Get configuration assignment for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'show-resource-group',
          description: 'Get configuration assignment for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
          name: 'show-subscription',
          description: 'Get configuration assignment for resource',
          options: [

            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
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
          description: 'Update configuration for resource',
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
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              name: ['--location', '-l'],
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
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
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
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
          name: 'update-parent',
          description: 'Update configuration for resource',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
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
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
          name: 'update-resource-group',
          description: 'Update configuration for resource',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
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
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
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
          name: 'update-subscription',
          description: 'Update configuration for resource',
          options: [

            Option(
              name: ['--maintenance-configuration-id', '--config-id'],
              description: 'The maintenance configuration Id',
              args: [
                Arg(
                name: 'maintenance-configuration-i'
              )
              ]
            ),
            Option(
              name: ['--configuration-assignment-name', '--name', '-n'],
              description: 'Configuration assignment name',
              args: [
                Arg(
                name: 'configuration-assignment-nam'
              )
              ]
            ),
            Option(
              name: '--filter-locations',
              description: 'List of locations to scope the query to. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-location'
              )
              ]
            ),
            Option(
              name: '--filter-os-types',
              description: 'List of allowed operating systems. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-os-type'
              )
              ]
            ),
            Option(
              name: '--filter-resource-groups',
              description: 'List of allowed resource groups. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-group'
              )
              ]
            ),
            Option(
              name: '--filter-resource-types',
              description: 'List of allowed resources. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-resource-type'
              )
              ]
            ),
            Option(
              name: '--filter-tags',
              description: 'Dictionary of tags with its list of values. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'filter-tag'
              )
              ]
            ),
            Option(
              name: '--filter-tags-operator',
              description: 'Filter VMs by Any or All specified tags',
              args: [
                Arg(
                name: 'filter-tags-operator',
                suggestions: [

                  FigSuggestion(name: 'All'),
                  FigSuggestion(name: 'Any')
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
              description: 'Location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--resource-id',
              description: 'The unique resourceId',
              args: [
                Arg(
                name: 'resource-i'
              )
              ]
            ),
            Option(
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
      name: 'configuration',
      description: 'Manage maintenance configuration with maintenance',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create configuration record',
          options: [

            Option(
              name: ['--resource-name', '--name', '-n'],
              description: 'Maintenance Configuration Name',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--maintenance-window-duration', '--duration'],
              description: 'Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00',
              args: [
                Arg(
                name: 'maintenance-window-duratio'
              )
              ]
            ),
            Option(
              name: [
                '--maintenance-window-expiration-date-time',
                '--expiration-date-time',
              ],
              description: 'Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59',
              args: [
                Arg(
                name: 'maintenance-window-expiration-date-tim'
              )
              ]
            ),
            Option(
              name: '--extension-properties',
              description: 'Gets or sets extensionProperties of the maintenanceConfiguration Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'extension-propertie'
              )
              ]
            ),
            Option(
              name: [
                '--install-patches-linux-parameters',
                '--linux-parameters',
              ],
              description: 'Input parameters specific to patching Linux machine. For Windows machines, do not pass this property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'install-patches-linux-parameter'
              )
              ]
            ),
            Option(
              name: [
                '--install-patches-windows-parameters',
                '--windows-parameters',
              ],
              description: 'Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'install-patches-windows-parameter'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Gets or sets location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--maintenance-scope',
              description: 'Gets or sets maintenanceScope of the configuration',
              args: [
                Arg(
                name: 'maintenance-scope',
                suggestions: [

                  FigSuggestion(name: 'Extension'),
                  FigSuggestion(name: 'Host'),
                  FigSuggestion(name: 'InGuestPatch'),
                  FigSuggestion(name: 'OSImage'),
                  FigSuggestion(name: 'Resource'),
                  FigSuggestion(name: 'SQLDB'),
                  FigSuggestion(name: 'SQLManagedInstance')
                ]
              )
              ]
            ),
            Option(
              name: ['--maintenance-window-recur-every', '--recur-every'],
              description: 'Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer][\'Day(s)\']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days. Weekly schedule are formatted as recurEvery: [Frequency as integer][\'Week(s)\'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer][\'Month(s)\'] [Comma separated list of month days] or [Frequency as integer][\'Month(s)\'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6',
              args: [
                Arg(
                name: 'maintenance-window-recur-ever'
              )
              ]
            ),
            Option(
              name: [
                '--maintenance-window-start-date-time',
                '--start-date-time',
              ],
              description: 'Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone',
              args: [
                Arg(
                name: 'maintenance-window-start-date-tim'
              )
              ]
            ),
            Option(
              name: ['--maintenance-window-time-zone', '--time-zone'],
              description: 'Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time',
              args: [
                Arg(
                name: 'maintenance-window-time-zon'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Gets or sets namespace of the resource',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--reboot-setting',
              description: 'Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed',
              args: [
                Arg(
                name: 'reboot-setting',
                suggestions: [

                  FigSuggestion(name: 'Always'),
                  FigSuggestion(name: 'IfRequired'),
                  FigSuggestion(name: 'Never')
                ]
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'Gets or sets tags of the resource Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--visibility',
              description: 'Gets or sets the visibility of the configuration. The default value is \'Custom\'',
              args: [
                Arg(
                name: 'visibility',
                suggestions: [

                  FigSuggestion(name: 'Custom'),
                  FigSuggestion(name: 'Public')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete Configuration record',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'Maintenance Configuration Name',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
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
          description: 'List Configuration records within a subscription and resource group',
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
          description: 'Get Configuration record',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'Maintenance Configuration Name',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update configuration record',
          options: [

            Option(
              name: ['--maintenance-window-duration', '--duration'],
              description: 'Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00',
              args: [
                Arg(
                name: 'maintenance-window-duratio'
              )
              ]
            ),
            Option(
              name: [
                '--maintenance-window-expiration-date-time',
                '--expiration-date-time',
              ],
              description: 'Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59',
              args: [
                Arg(
                name: 'maintenance-window-expiration-date-tim'
              )
              ]
            ),
            Option(
              name: '--extension-properties',
              description: 'Gets or sets extensionProperties of the maintenanceConfiguration Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'extension-propertie'
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
                '--install-patches-linux-parameters',
                '--linux-parameters',
              ],
              description: 'Input parameters specific to patching Linux machine. For Windows machines, do not pass this property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'install-patches-linux-parameter'
              )
              ]
            ),
            Option(
              name: [
                '--install-patches-windows-parameters',
                '--windows-parameters',
              ],
              description: 'Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'install-patches-windows-parameter'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Gets or sets location of the resource',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--maintenance-scope',
              description: 'Gets or sets maintenanceScope of the configuration',
              args: [
                Arg(
                name: 'maintenance-scope',
                suggestions: [

                  FigSuggestion(name: 'Extension'),
                  FigSuggestion(name: 'Host'),
                  FigSuggestion(name: 'InGuestPatch'),
                  FigSuggestion(name: 'OSImage'),
                  FigSuggestion(name: 'Resource'),
                  FigSuggestion(name: 'SQLDB'),
                  FigSuggestion(name: 'SQLManagedInstance')
                ]
              )
              ]
            ),
            Option(
              name: ['--maintenance-window-recur-every', '--recur-every'],
              description: 'Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer][\'Day(s)\']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days. Weekly schedule are formatted as recurEvery: [Frequency as integer][\'Week(s)\'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer][\'Month(s)\'] [Comma separated list of month days] or [Frequency as integer][\'Month(s)\'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6',
              args: [
                Arg(
                name: 'maintenance-window-recur-ever'
              )
              ]
            ),
            Option(
              name: [
                '--maintenance-window-start-date-time',
                '--start-date-time',
              ],
              description: 'Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone',
              args: [
                Arg(
                name: 'maintenance-window-start-date-tim'
              )
              ]
            ),
            Option(
              name: ['--maintenance-window-time-zone', '--time-zone'],
              description: 'Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time',
              args: [
                Arg(
                name: 'maintenance-window-time-zon'
              )
              ]
            ),
            Option(
              name: ['--resource-name', '--name', '-n'],
              description: 'Maintenance Configuration Name',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--namespace',
              description: 'Gets or sets namespace of the resource',
              args: [
                Arg(
                name: 'namespac'
              )
              ]
            ),
            Option(
              name: '--reboot-setting',
              description: 'Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed',
              args: [
                Arg(
                name: 'reboot-setting',
                suggestions: [

                  FigSuggestion(name: 'Always'),
                  FigSuggestion(name: 'IfRequired'),
                  FigSuggestion(name: 'Never')
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
              name: '--tags',
              description: 'Gets or sets tags of the resource Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--visibility',
              description: 'Gets or sets the visibility of the configuration. The default value is \'Custom\'',
              args: [
                Arg(
                name: 'visibility',
                suggestions: [

                  FigSuggestion(name: 'Custom'),
                  FigSuggestion(name: 'Public')
                ]
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'public-configuration',
      description: 'Manage public maintenance configuration with maintenance',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List Public Maintenance Configuration records'
        ),
        Subcommand(
          name: 'show',
          description: 'Get Public Maintenance Configuration record',
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
              name: ['--resource-name', '--name', '-n'],
              description: 'Maintenance Configuration Name',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
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
      name: 'update',
      description: 'Manage update with maintenance',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List updates to resources',
          options: [

            Option(
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-parent',
          description: 'List updates to resources',
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
              name: '--provider-name',
              description: 'Resource provider name',
              args: [
                Arg(
                name: 'provider-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--resource-name',
              description: 'Resource identifier',
              args: [
                Arg(
                name: 'resource-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-name',
              description: 'Resource parent identifier',
              args: [
                Arg(
                name: 'resource-parent-nam'
              )
              ]
            ),
            Option(
              name: '--resource-parent-type',
              description: 'Resource parent type',
              args: [
                Arg(
                name: 'resource-parent-typ'
              )
              ]
            ),
            Option(
              name: '--resource-type',
              description: 'Resource type',
              args: [
                Arg(
                name: 'resource-typ'
              )
              ]
            ),
            Option(
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
);
