// Auto-generated from TypeScript source: databox.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `databox` CLI
final FigSpec databoxSpec = FigSpec(
  name: 'databox',
  description: 'Manage data box',
  subcommands: [

    Subcommand(
      name: 'job',
      description: 'Manage data box job',
      subcommands: [

        Subcommand(
          name: 'cancel',
          description: 'CancelJob',
          options: [

            Option(
              name: '--reason',
              description: 'Reason for cancellation',
              args: [
                Arg(
                name: 'reaso'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          description: 'Create a new job with the specified parameters',
          options: [

            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--sku',
              description: 'The sku name',
              args: [
                Arg(
                name: 'sku',
                suggestions: [

                  FigSuggestion(name: 'DataBox'),
                  FigSuggestion(name: 'DataBoxCustomerDisk'),
                  FigSuggestion(name: 'DataBoxDisk'),
                  FigSuggestion(name: 'DataBoxHeavy')
                ]
              )
              ]
            ),
            Option(
              name: '--transfer-type',
              description: 'Type of the data transfer',
              args: [
                Arg(
                name: 'transfer-type',
                suggestions: [

                  FigSuggestion(name: 'ExportFromAzure'),
                  FigSuggestion(name: 'ImportToAzure')
                ]
              )
              ]
            ),
            Option(
              name: '--city',
              description: 'Name of the city',
              args: [
                Arg(
                name: 'cit'
              )
              ]
            ),
            Option(
              name: '--company-name',
              description: 'Name of the company',
              args: [
                Arg(
                name: 'company-nam'
              )
              ]
            ),
            Option(
              name: '--contact-name',
              description: 'Contact name of the person',
              args: [
                Arg(
                name: 'contact-nam'
              )
              ]
            ),
            Option(
              name: '--country',
              description: 'Name of the Country',
              args: [
                Arg(
                name: 'countr'
              )
              ]
            ),
            Option(
              name: '--data-box-customer-disk',
              description: 'Customer disk job details. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'data-box-customer-dis'
              )
              ]
            ),
            Option(
              name: '--email-list',
              description: 'List of Email-ids to be notified about job progress. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'email-lis'
              )
              ]
            ),
            Option(
              name: '--expected-data-size',
              description: 'The expected size of the data, which needs to be transferred in this job, in terabytes',
              args: [
                Arg(
                name: 'expected-data-siz'
              )
              ]
            ),
            Option(
              name: '--identity',
              description: 'Msi identity of the resource Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'identit'
              )
              ]
            ),
            Option(
              name: '--kek-identity',
              description: 'Managed identity properties used for key encryption. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'kek-identit'
              )
              ]
            ),
            Option(
              name: '--kek-type',
              description: 'Type of encryption key used for key encryption',
              args: [
                Arg(
                name: 'kek-type',
                suggestions: [

                  FigSuggestion(name: 'CustomerManaged'),
                  FigSuggestion(name: 'MicrosoftManaged')
                ]
              )
              ]
            ),
            Option(
              name: '--kek-url',
              description: 'Key encryption key. It is required in case of Customer managed KekType',
              args: [
                Arg(
                name: 'kek-ur'
              )
              ]
            ),
            Option(
              name: '--kek-vault-resource-id',
              description: 'Kek vault resource id. It is required in case of Customer managed KekType',
              args: [
                Arg(
                name: 'kek-vault-resource-i'
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed. When not specified, the location of the resource group will be used',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: '--mobile',
              description: 'Mobile number of the contact person',
              args: [
                Arg(
                name: 'mobil'
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
              name: '--phone',
              description: 'Phone number of the contact person',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            ),
            Option(
              name: '--postal-code',
              description: 'Postal code',
              args: [
                Arg(
                name: 'postal-cod'
              )
              ]
            ),
            Option(
              name: '--resource-group-for-managed-disk',
              description: 'Resource Group Id of the compute disks',
              args: [
                Arg(
                name: 'resource-group-for-managed-dis'
              )
              ]
            ),
            Option(
              name: '--staging-storage-account',
              description: 'Resource Id of the storage account that can be used to copy the vhd for staging',
              args: [
                Arg(
                name: 'staging-storage-accoun'
              )
              ]
            ),
            Option(
              name: '--state-or-province',
              description: 'Name of the State or Province',
              args: [
                Arg(
                name: 'state-or-provinc'
              )
              ]
            ),
            Option(
              name: '--storage-account',
              description: 'Space-separated list of the destination storage account. It can be the name or resource ID of storage account. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'storage-accoun'
              )
              ]
            ),
            Option(
              name: '--street-address1',
              description: 'Street Address line 1',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
              name: '--street-address2',
              description: 'Street Address line 2',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
              name: '--street-address3',
              description: 'Street Address line 3',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
              name: '--tags',
              description: 'The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'tag'
              )
              ]
            ),
            Option(
              name: '--transfer-all-blobs',
              description: 'To indicate if all Azure blobs have to be transferred'
            ),
            Option(
              name: '--transfer-all-files',
              description: 'To indicate if all Azure files have to be transferred'
            ),
            Option(
              name: '--transfer-configuration-type',
              description: 'Type of the configuration for transfer',
              args: [
                Arg(
                name: 'transfer-configuration-type',
                suggestions: [

                  FigSuggestion(name: 'TransferAll'),
                  FigSuggestion(name: 'TransferUsingFilter')
                ]
              )
              ]
            ),
            Option(
              name: '--transfer-filter-details',
              description: 'Path to the map of filter type and the details to filter. Support json-file and yaml-file',
              args: [
                Arg(
                name: 'transfer-filter-detail'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete a job',
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
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
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
          description: 'List all the jobs available under the subscription',
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
          name: 'list-credential',
          description: 'This method gets the unencrypted secrets related to the job',
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
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          name: 'mark-devices-shipped',
          description: 'Request to mark devices for a given job as shipped',
          options: [

            Option(
              name: '--deliver-package-details',
              description: 'Delivery package details Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'deliver-package-detail'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          description: 'Get information about the specified job',
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
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
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
          description: 'Update the properties of an existing job',
          options: [

            Option(
              name: '--city',
              description: 'Name of the city',
              args: [
                Arg(
                name: 'cit'
              )
              ]
            ),
            Option(
              name: '--company-name',
              description: 'Name of the company',
              args: [
                Arg(
                name: 'company-nam'
              )
              ]
            ),
            Option(
              name: '--contact-name',
              description: 'Contact name of the person',
              args: [
                Arg(
                name: 'contact-nam'
              )
              ]
            ),
            Option(
              name: '--country',
              description: 'Name of the Country',
              args: [
                Arg(
                name: 'countr'
              )
              ]
            ),
            Option(
              name: '--email-list',
              description: 'List of Email-ids to be notified about job progress. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'email-lis'
              )
              ]
            ),
            Option(
              name: '--ids',
              description: 'One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of \'Resource Id\' arguments. You should provide either --ids or other \'Resource Id\' arguments',
              args: [
                Arg(
                name: 'id'
              )
              ]
            ),
            Option(
              name: ['--job-name', '--name', '-n'],
              description: 'The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only',
              args: [
                Arg(
                name: 'job-nam'
              )
              ]
            ),
            Option(
              name: '--kek-identity',
              description: 'Managed identity properties used for key encryption. Support shorthand-syntax, json-file and yaml-file. Try "??" to show more',
              args: [
                Arg(
                name: 'kek-identit'
              )
              ]
            ),
            Option(
              name: '--kek-type',
              description: 'Type of encryption key used for key encryption',
              args: [
                Arg(
                name: 'kek-type',
                suggestions: [

                  FigSuggestion(name: 'CustomerManaged'),
                  FigSuggestion(name: 'MicrosoftManaged')
                ]
              )
              ]
            ),
            Option(
              name: '--kek-url',
              description: 'Key encryption key. It is required in case of Customer managed KekType',
              args: [
                Arg(
                name: 'kek-ur'
              )
              ]
            ),
            Option(
              name: '--kek-vault-resource-id',
              description: 'Kek vault resource id. It is required in case of Customer managed KekType',
              args: [
                Arg(
                name: 'kek-vault-resource-i'
              )
              ]
            ),
            Option(
              name: '--mobile',
              description: 'Mobile number of the contact person',
              args: [
                Arg(
                name: 'mobil'
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
              name: '--phone',
              description: 'Phone number of the contact person',
              args: [
                Arg(
                name: 'phon'
              )
              ]
            ),
            Option(
              name: '--postal-code',
              description: 'Postal code',
              args: [
                Arg(
                name: 'postal-cod'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--state-or-province',
              description: 'Name of the State or Province',
              args: [
                Arg(
                name: 'state-or-provinc'
              )
              ]
            ),
            Option(
              name: '--street-address1',
              description: 'Street Address line 1',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
              name: '--street-address2',
              description: 'Street Address line 2',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
              name: '--street-address3',
              description: 'Street Address line 3',
              args: [
                Arg(
                name: 'street-address'
              )
              ]
            ),
            Option(
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
