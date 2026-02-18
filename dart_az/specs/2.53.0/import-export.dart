// Auto-generated from TypeScript source: import-export.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `import-export` CLI
final FigSpec importExportSpec = FigSpec(
  name: 'import-export',
  description: 'Manage Import Export',
  subcommands: [

    Subcommand(
      name: 'bit-locker-key',
      description: 'Import-export bit-locker-key',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Returns the BitLocker Keys for all drives in the specified job',
          options: [

            Option(
              name: '--job-name',
              description: 'The name of the import/export job',
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'create',
      description: 'Creates a new job or updates an existing job in the specified subscription',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the import/export job',
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
          name: '--backup-drive-manifest',
          description: 'Default value is false. Indicates whether the manifest files on the drives should be copied to block blobs',
          args: [
            Arg(
            name: 'backup-drive-manifest',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--cancel-requested',
          description: 'Indicates whether a request has been submitted to cancel the job',
          args: [
            Arg(
            name: 'cancel-requested',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--client-tenant-id',
          description: 'The tenant ID of the client making the request',
          args: [
            Arg(
            name: 'client-tenant-i'
          )
          ]
        ),
        Option(
          name: '--delivery-package',
          description: 'Contains information about the package being shipped by the customer to the Microsoft data center',
          args: [
            Arg(
            name: 'delivery-packag'
          )
          ]
        ),
        Option(
          name: '--diagnostics-path',
          description: 'The virtual blob directory to which the copy logs and backups of drive manifest files (if enabled) will be stored',
          args: [
            Arg(
            name: 'diagnostics-pat'
          )
          ]
        ),
        Option(
          name: '--drive-list',
          description: 'List of up to ten drives that comprise the job. The drive list is a required element for an import job; it is not specified for export jobs',
          args: [
            Arg(
            name: 'drive-lis'
          )
          ]
        ),
        Option(
          name: '--export',
          description: 'A property containing information about the blobs to be exported for an export job. This property is required for export jobs, but must not be specified for import jobs',
          args: [
            Arg(
            name: 'expor'
          )
          ]
        ),
        Option(
          name: '--incomplete-blob-list-uri',
          description: 'A blob path that points to a block blob containing a list of blob names that were not exported due to insufficient drive space. If all blobs were exported successfully, then this element is not included in the response',
          args: [
            Arg(
            name: 'incomplete-blob-list-ur'
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
          name: '--log-level',
          description: 'Default value is Error. Indicates whether error logging or verbose logging will be enabled',
          args: [
            Arg(
            name: 'log-leve'
          )
          ]
        ),
        Option(
          name: '--percent-complete',
          description: 'Overall percentage completed for the job',
          args: [
            Arg(
            name: 'percent-complet'
          )
          ]
        ),
        Option(
          name: '--return-address',
          description: 'Specifies the return address information for the job',
          args: [
            Arg(
            name: 'return-addres'
          )
          ]
        ),
        Option(
          name: '--return-package',
          description: 'Contains information about the package being shipped by the customer to the Microsoft data center',
          args: [
            Arg(
            name: 'return-packag'
          )
          ]
        ),
        Option(
          name: '--return-shipping',
          description: 'Specifies the return carrier and customer\'s account with the carrier',
          args: [
            Arg(
            name: 'return-shippin'
          )
          ]
        ),
        Option(
          name: '--shipping-information',
          description: 'Contains information about the Microsoft datacenter to which the drives should be shipped',
          args: [
            Arg(
            name: 'shipping-informatio'
          )
          ]
        ),
        Option(
          name: '--state',
          description: 'Current state of the job',
          args: [
            Arg(
            name: 'stat'
          )
          ]
        ),
        Option(
          name: '--storage-account',
          description: 'Name or ID of the storage account where data will be imported to or exported from',
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
        ),
        Option(
          name: '--type',
          description: 'The type of job',
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
      description: 'Deletes an existing job. Only jobs in the Creating or Completed states can be deleted',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the import/export job',
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
      description: 'Returns all active and completed jobs in a subscription',
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
      description: 'Gets information about an existing job',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the import/export job',
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
      description: 'Updates specific properties of a job. You can call this operation to notify the Import/Export service that the hard drives comprising the import or export job have been shipped to the Microsoft data center. It can also be used to cancel an existing job',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the import/export job',
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
          name: '--backup-drive-manifest',
          description: 'Indicates whether the manifest files on the drives should be copied to block blobs',
          args: [
            Arg(
            name: 'backup-drive-manifest',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--cancel-requested',
          description: 'If specified, the value must be true. The service will attempt to cancel the job',
          args: [
            Arg(
            name: 'cancel-requested',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--delivery-package',
          description: 'Contains information about the package being shipped by the customer to the Microsoft data center',
          args: [
            Arg(
            name: 'delivery-packag'
          )
          ]
        ),
        Option(
          name: '--drive-list',
          description: 'List of drives that comprise the job',
          args: [
            Arg(
            name: 'drive-lis'
          )
          ]
        ),
        Option(
          name: '--log-level',
          description: 'Indicates whether error logging or verbose logging is enabled',
          args: [
            Arg(
            name: 'log-leve'
          )
          ]
        ),
        Option(
          name: '--return-address',
          description: 'Specifies the return address information for the job',
          args: [
            Arg(
            name: 'return-addres'
          )
          ]
        ),
        Option(
          name: '--return-shipping',
          description: 'Specifies the return carrier and customer\'s account with the carrier',
          args: [
            Arg(
            name: 'return-shippin'
          )
          ]
        ),
        Option(
          name: '--state',
          description: 'If specified, the value must be Shipping, which tells the Import/Export service that the package for the job has been shipped. The ReturnAddress and DeliveryPackage properties must have been set either in this request or in a previous request, otherwise the request will fail',
          args: [
            Arg(
            name: 'stat'
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
      name: 'location',
      description: 'Import-export location',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'Returns a list of locations to which you can ship the disks associated with an import or export job. A location is a Microsoft data center region'
        ),
        Subcommand(
          name: 'show',
          description: 'Returns the details about a location to which you can ship the disks associated with an import or export job. A location is an Azure region',
          options: [

            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az import-export location list',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            )
          ]
        )
      ]
    )
  ]
);
