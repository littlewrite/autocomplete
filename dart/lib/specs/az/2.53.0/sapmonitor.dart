// Auto-generated from TypeScript source: sapmonitor.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `sapmonitor` CLI
final FigSpec sapmonitorSpec = FigSpec(
  name: 'sapmonitor',
  description: '(PREVIEW) Manage Azure SAP Monitor',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a SAP Monitor',
      options: [

        Option(
          name: ['--hana-subnet', '--hdbsn'],
          description: 'ARM ID of an Azure Subnet with access to the HANA instance',
          args: [
            Arg(
            name: 'hana-subne'
          )
          ]
        ),
        Option(
          name: ['--monitor-name', '-n'],
          description: 'The name of the SAP monitor',
          args: [
            Arg(
            name: 'monitor-nam'
          )
          ]
        ),
        Option(
          name: '--region',
          description: 'The region to create this SAP monitor on',
          args: [
            Arg(
            name: 'regio'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: ['--disable_customer_analytics', '--dca'],
          description: 'Disable sending analytics to Microsoft'
        ),
        Option(
          name: ['--log-analytics-workspace-arm-id', '--lawsid'],
          description: 'Existing log analytics workspace id to use for log monitoring',
          args: [
            Arg(
            name: 'log-analytics-workspace-arm-i'
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
      description: 'Delete a SAP Monitor',
      options: [

        Option(
          name: ['--monitor-name', '-n'],
          description: 'The name of the SAP monitor',
          args: [
            Arg(
            name: 'monitor-nam'
          )
          ]
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
      description: 'List SAP Monitors'
    ),
    Subcommand(
      name: 'show',
      description: 'Get the details of a SAP Monitor',
      options: [

        Option(
          name: ['--monitor-name', '-n'],
          description: 'The name of the SAP monitor',
          args: [
            Arg(
            name: 'monitor-nam'
          )
          ]
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
      description: 'Updates the tags field of a SAP Monitor',
      options: [

        Option(
          name: ['--monitor-name', '-n'],
          description: 'The name of the SAP monitor',
          args: [
            Arg(
            name: 'monitor-nam'
          )
          ]
        ),
        Option(
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
      name: 'provider-instance',
      description: 'Manage the provider instance for the SAP Monitor',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new provider instance for the SAP Monitor',
          options: [

            Option(
              name: ['--monitor-name', '-n'],
              description: 'The name of the SAP monitor',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--provider-instance-name',
              description: 'The name of the provider instance',
              args: [
                Arg(
                name: 'provider-instance-nam'
              )
              ]
            ),
            Option(
              name: '--provider-instance-properties',
              description: 'The properties of the provider instance (Should be of JSON format)',
              args: [
                Arg(
                name: 'provider-instance-propertie'
              )
              ]
            ),
            Option(
              name: '--provider-instance-type',
              description: 'The type of the provider instance',
              args: [
                Arg(
                name: 'provider-instance-typ'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--provider-instance-metadata',
              description: 'The metadata of the provider instance (Should be of JSON format)',
              args: [
                Arg(
                name: 'provider-instance-metadat'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a provider instance from the SAP Monitor',
          options: [

            Option(
              name: ['--monitor-name', '-n'],
              description: 'The name of the SAP monitor',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--provider-instance-name',
              description: 'The name of the provider instance',
              args: [
                Arg(
                name: 'provider-instance-nam'
              )
              ]
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
          description: 'List provider instances for the SAP Monitor',
          options: [

            Option(
              name: ['--monitor-name', '-n'],
              description: 'The name of the SAP monitor',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
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
          description: 'Get the details of a provider instance for the SAP Monitor',
          options: [

            Option(
              name: ['--monitor-name', '-n'],
              description: 'The name of the SAP monitor',
              args: [
                Arg(
                name: 'monitor-nam'
              )
              ]
            ),
            Option(
              name: '--provider-instance-name',
              description: 'The name of the provider instance',
              args: [
                Arg(
                name: 'provider-instance-nam'
              )
              ]
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
    )
  ]
);
