// Auto-generated from TypeScript source: disk.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `disk` CLI
final FigSpec diskSpec = FigSpec(
  name: 'disk',
  description: 'Manage Azure Managed Disks.\n\n\t\tAzure Virtual Machines use disks as a place to store an operating system, applications, and data. All Azure virtual machines have at least two disks: An operating system disk, and a temporary disk. The operating system disk is created from an image, and both the operating system disk and the image are actually virtual hard disks (VHDs) stored in an Azure storage account. Virtual machines also can have one or more data disks, that are also stored as VHDs.\nAzure Unmanaged Data Disks have a maximum size of 4095 GB. To use disks larger than 4095 GB use Azure Managed Disks',
  subcommands: [

    Subcommand(
      name: 'create',
      description: 'Create a managed disk',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'The name of the managed disk',
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
          name: '--accelerated-network',
          description: 'Customers can set on Managed Disks or Snapshots to enable the accelerated networking if the OS disk image support',
          args: [
            Arg(
            name: 'accelerated-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--architecture',
          description: 'CPU architecture',
          args: [
            Arg(
            name: 'architecture',
            suggestions: [

              FigSuggestion(name: 'Arm64'),
              FigSuggestion(name: 'x64')
            ]
          )
          ]
        ),
        Option(
          name: '--data-access-auth-mode',
          description: 'Specify the auth mode when exporting or uploading to a disk or snapshot',
          args: [
            Arg(
            name: 'data-access-auth-mode',
            suggestions: [

              FigSuggestion(name: 'AzureActiveDirectory'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--disk-access',
          description: 'Name or ID of the disk access resource for using private endpoints on disks',
          args: [
            Arg(
            name: 'disk-acces'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'Name or ID of disk encryption set that is used to encrypt the disk',
          args: [
            Arg(
            name: 'disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--disk-iops-read-only',
          description: 'The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes',
          args: [
            Arg(
            name: 'disk-iops-read-onl'
          )
          ]
        ),
        Option(
          name: '--disk-iops-read-write',
          description: 'The number of IOPS allowed for this disk. Only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes',
          args: [
            Arg(
            name: 'disk-iops-read-writ'
          )
          ]
        ),
        Option(
          name: '--disk-mbps-read-only',
          description: 'The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10',
          args: [
            Arg(
            name: 'disk-mbps-read-onl'
          )
          ]
        ),
        Option(
          name: '--disk-mbps-read-write',
          description: 'The bandwidth allowed for this disk. Only settable for UltraSSD disks. MBps means millions of bytes per second with ISO notation of powers of 10',
          args: [
            Arg(
            name: 'disk-mbps-read-writ'
          )
          ]
        ),
        Option(
          name: '--edge-zone',
          description: 'The name of edge zone',
          args: [
            Arg(
            name: 'edge-zon'
          )
          ]
        ),
        Option(
          name: '--enable-bursting',
          description: 'Enable on-demand bursting beyond the provisioned performance target of the disk. On-demand bursting is disabled by default, and it does not apply to Ultra disks',
          args: [
            Arg(
            name: 'enable-bursting',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-type',
          description: 'Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest',
          args: [
            Arg(
            name: 'encryption-type',
            suggestions: [

              FigSuggestion(name: 'EncryptionAtRestWithCustomerKey'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformAndCustomerKeys'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformKey')
            ]
          )
          ]
        ),
        Option(
          name: '--gallery-image-reference',
          description: 'ID of the Compute, Shared or Community Gallery image version from which to create a disk. For details about valid format, please refer to the help sample',
          args: [
            Arg(
            name: 'gallery-image-referenc'
          )
          ]
        ),
        Option(
          name: '--gallery-image-reference-lun',
          description: 'If the disk is created from an image\'s data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null',
          args: [
            Arg(
            name: 'gallery-image-reference-lu'
          )
          ]
        ),
        Option(
          name: '--hyper-v-generation',
          description: 'The hypervisor generation of the Virtual Machine. Applicable to OS disks only',
          args: [
            Arg(
            name: 'hyper-v-generation',
            suggestions: [

              FigSuggestion(name: 'V1'),
              FigSuggestion(name: 'V2')
            ]
          )
          ]
        ),
        Option(
          name: '--image-reference',
          description: 'ID or URN (publisher:offer:sku:version) of the image from which to create a disk',
          args: [
            Arg(
            name: 'image-referenc'
          )
          ]
        ),
        Option(
          name: '--image-reference-lun',
          description: 'If the disk is created from an image\'s data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null',
          args: [
            Arg(
            name: 'image-reference-lu'
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. If location is not specified and no default location specified, location will be automatically set as same as the resource group',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--logical-sector-size',
          description: 'Logical sector size in bytes for Ultra disks. Supported values are 512 ad 4096. 4096 is the default',
          args: [
            Arg(
            name: 'logical-sector-siz'
          )
          ]
        ),
        Option(
          name: '--max-shares',
          description: 'The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time',
          args: [
            Arg(
            name: 'max-share'
          )
          ]
        ),
        Option(
          name: '--network-access-policy',
          description: 'Policy for accessing the disk via network',
          args: [
            Arg(
            name: 'network-access-policy',
            suggestions: [

              FigSuggestion(name: 'AllowAll'),
              FigSuggestion(name: 'AllowPrivate'),
              FigSuggestion(name: 'DenyAll')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--os-type',
          description: 'The Operating System type of the Disk',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'Linux'),
              FigSuggestion(name: 'Windows')
            ]
          )
          ]
        ),
        Option(
          name: '--performance-plus',
          description: 'Set this flag to true to get a boost on the performance target of the disk deployed. This flag can only be set on disk creation time and cannot be disabled after enabled',
          args: [
            Arg(
            name: 'performance-plus',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--public-network-access',
          description: 'Customers can set on Managed Disks or Snapshots to control the export policy on the disk',
          args: [
            Arg(
            name: 'public-network-access',
            suggestions: [

              FigSuggestion(name: 'Disabled'),
              FigSuggestion(name: 'Enabled')
            ]
          )
          ]
        ),
        Option(
          name: '--secure-vm-disk-encryption-set',
          description: 'Name or ID of disk encryption set created with ConfidentialVmEncryptedWithCustomerKey encryption type',
          args: [
            Arg(
            name: 'secure-vm-disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--security-data-uri',
          description: 'Please specify the blob URI of VHD to be imported into VM guest state',
          args: [
            Arg(
            name: 'security-data-ur'
          )
          ]
        ),
        Option(
          name: '--security-type',
          description: 'The security type of the VM. Applicable for OS disks only',
          args: [
            Arg(
            name: 'security-type',
            suggestions: [

              FigSuggestion(name: 'ConfidentialVM_DiskEncryptedWithCustomerKey'),
              FigSuggestion(name: 'ConfidentialVM_DiskEncryptedWithPlatformKey'),
              FigSuggestion(name: 'ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey'),
              FigSuggestion(name: 'Standard'),
              FigSuggestion(name: 'TrustedLaunch')
            ]
          )
          ]
        ),
        Option(
          name: ['--size-gb', '-z'],
          description: 'Size in GB. Max size: 4095 GB (certain preview disks can be larger)',
          args: [
            Arg(
            name: 'size-g'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'Underlying storage SKU',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'PremiumV2_LRS'),
              FigSuggestion(name: 'Premium_LRS'),
              FigSuggestion(name: 'Premium_ZRS'),
              FigSuggestion(name: 'StandardSSD_LRS'),
              FigSuggestion(name: 'StandardSSD_ZRS'),
              FigSuggestion(name: 'Standard_LRS'),
              FigSuggestion(name: 'UltraSSD_LRS')
            ]
          )
          ]
        ),
        Option(
          name: '--source',
          description: 'Source to create the disk/snapshot from, including unmanaged blob uri, managed disk id or name, or snapshot id or name',
          args: [
            Arg(
            name: 'sourc'
          )
          ]
        ),
        Option(
          name: '--source-storage-account-id',
          description: 'Used when source blob is in a different subscription',
          args: [
            Arg(
            name: 'source-storage-account-i'
          )
          ]
        ),
        Option(
          name: '--support-hibernation',
          description: 'Indicate the OS on a disk supports hibernation',
          args: [
            Arg(
            name: 'support-hibernation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
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
          name: '--tier',
          description: 'Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/pricing/details/managed-disks/. Does not apply to Ultra disks',
          args: [
            Arg(
            name: 'tie'
          )
          ]
        ),
        Option(
          name: '--upload-size-bytes',
          description: 'The size (in bytes) of the contents of the upload including the VHD footer. Min value: 20972032. Max value: 35183298347520. This parameter is required if --upload-type is specified',
          args: [
            Arg(
            name: 'upload-size-byte'
          )
          ]
        ),
        Option(
          name: '--upload-type',
          description: 'Create the disk for upload scenario. \'Upload\' is for Standard disk only upload. \'UploadWithSecurityData\' is for OS Disk upload along with VM Guest State. Please note the \'UploadWithSecurityData\' is not valid for data disk upload, it only to be used for OS Disk upload at present',
          args: [
            Arg(
            name: 'upload-type',
            suggestions: [

              FigSuggestion(name: 'Upload'),
              FigSuggestion(name: 'UploadWithSecurityData')
            ]
          )
          ]
        ),
        Option(
          name: '--zone',
          description: 'Availability zone into which to provision the resource',
          args: [
            Arg(
            name: 'zone',
            suggestions: [

              FigSuggestion(name: '1'),
              FigSuggestion(name: '2'),
              FigSuggestion(name: '3')
            ]
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'delete',
      description: 'Delete a managed disk',
      options: [

        Option(
          name: ['--disk-name', '--name', '-n'],
          description: 'The name of the managed disk that is being created. The name can\'t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters',
          args: [
            Arg(
            name: 'disk-nam'
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
      name: 'grant-access',
      description: 'Grant a resource access to a managed disk',
      options: [

        Option(
          name: '--duration-in-seconds',
          description: 'Time duration in seconds until the SAS access expires',
          args: [
            Arg(
            name: 'duration-in-second'
          )
          ]
        ),
        Option(
          name: '--access-level',
          description: 'Access level',
          args: [
            Arg(
            name: 'access-level',
            suggestions: [

              FigSuggestion(name: 'Read'),
              FigSuggestion(name: 'Write')
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
          description: 'The name of the managed disk',
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
          name: ['--secure-vm-guest-state-sas', '-s'],
          description: 'Get SAS on managed disk with VM guest state. It will be used by default when the create option of disk is \'secureOSUpload\'',
          args: [
            Arg(
            name: 'secure-vm-guest-state-sa'
          )
          ]
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
      description: 'List managed disks',
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
      name: 'revoke-access',
      description: 'Revoke a resource\'s read access to a managed disk',
      options: [

        Option(
          name: ['--disk-name', '--name', '-n'],
          description: 'The name of the managed disk that is being created. The name can\'t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters',
          args: [
            Arg(
            name: 'disk-nam'
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
        )
      ]
    ),
    Subcommand(
      name: 'show',
      description: 'Get information about a disk',
      options: [

        Option(
          name: ['--disk-name', '--name', '-n'],
          description: 'The name of the managed disk that is being created. The name can\'t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters',
          args: [
            Arg(
            name: 'disk-nam'
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
      description: 'Update a managed disk',
      options: [

        Option(
          name: '--accelerated-network',
          description: 'Customers can set on Managed Disks or Snapshots to enable the accelerated networking if the OS disk image support',
          args: [
            Arg(
            name: 'accelerated-network',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
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
          name: '--architecture',
          description: 'CPU architecture',
          args: [
            Arg(
            name: 'architecture',
            suggestions: [

              FigSuggestion(name: 'Arm64'),
              FigSuggestion(name: 'x64')
            ]
          )
          ]
        ),
        Option(
          name: '--data-access-auth-mode',
          description: 'Specify the auth mode when exporting or uploading to a disk or snapshot',
          args: [
            Arg(
            name: 'data-access-auth-mode',
            suggestions: [

              FigSuggestion(name: 'AzureActiveDirectory'),
              FigSuggestion(name: 'None')
            ]
          )
          ]
        ),
        Option(
          name: '--disk-access',
          description: 'Name or ID of the disk access resource for using private endpoints on disks',
          args: [
            Arg(
            name: 'disk-acces'
          )
          ]
        ),
        Option(
          name: '--disk-encryption-set',
          description: 'Name or ID of disk encryption set that is used to encrypt the disk',
          args: [
            Arg(
            name: 'disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--disk-iops-read-only',
          description: 'The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes',
          args: [
            Arg(
            name: 'disk-iops-read-onl'
          )
          ]
        ),
        Option(
          name: '--disk-iops-read-write',
          description: 'The number of IOPS allowed for this disk. Only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes',
          args: [
            Arg(
            name: 'disk-iops-read-writ'
          )
          ]
        ),
        Option(
          name: '--disk-mbps-read-only',
          description: 'The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10',
          args: [
            Arg(
            name: 'disk-mbps-read-onl'
          )
          ]
        ),
        Option(
          name: '--disk-mbps-read-write',
          description: 'The bandwidth allowed for this disk. Only settable for UltraSSD disks. MBps means millions of bytes per second with ISO notation of powers of 10',
          args: [
            Arg(
            name: 'disk-mbps-read-writ'
          )
          ]
        ),
        Option(
          name: '--enable-bursting',
          description: 'Enable on-demand bursting beyond the provisioned performance target of the disk. On-demand bursting is disabled by default, and it does not apply to Ultra disks',
          args: [
            Arg(
            name: 'enable-bursting',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-type',
          description: 'Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest',
          args: [
            Arg(
            name: 'encryption-type',
            suggestions: [

              FigSuggestion(name: 'EncryptionAtRestWithCustomerKey'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformAndCustomerKeys'),
              FigSuggestion(name: 'EncryptionAtRestWithPlatformKey')
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
          name: '--max-shares',
          description: 'The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time',
          args: [
            Arg(
            name: 'max-share'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the managed disk',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--network-access-policy',
          description: 'Policy for accessing the disk via network',
          args: [
            Arg(
            name: 'network-access-policy',
            suggestions: [

              FigSuggestion(name: 'AllowAll'),
              FigSuggestion(name: 'AllowPrivate'),
              FigSuggestion(name: 'DenyAll')
            ]
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--public-network-access',
          description: 'Customers can set on Managed Disks or Snapshots to control the export policy on the disk',
          args: [
            Arg(
            name: 'public-network-access',
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
          name: '--set',
          description: 'Update an object by specifying a property path and value to set. Example: --set property1.property2=',
          args: [
            Arg(
            name: 'se'
          )
          ]
        ),
        Option(
          name: ['--size-gb', '-z'],
          description: 'Size in GB. Max size: 4095 GB (certain preview disks can be larger)',
          args: [
            Arg(
            name: 'size-g'
          )
          ]
        ),
        Option(
          name: '--sku',
          description: 'Underlying storage SKU',
          args: [
            Arg(
            name: 'sku',
            suggestions: [

              FigSuggestion(name: 'PremiumV2_LRS'),
              FigSuggestion(name: 'Premium_LRS'),
              FigSuggestion(name: 'Premium_ZRS'),
              FigSuggestion(name: 'StandardSSD_LRS'),
              FigSuggestion(name: 'StandardSSD_ZRS'),
              FigSuggestion(name: 'Standard_LRS'),
              FigSuggestion(name: 'UltraSSD_LRS')
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
          name: ['--disk-name', '--name', '-n'],
          description: 'The name of the managed disk that is being created. The name can\'t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters',
          args: [
            Arg(
            name: 'disk-nam'
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
