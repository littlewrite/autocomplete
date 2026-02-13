// Auto-generated from TypeScript source: vm.ts
// Generated at: 2026-02-12
// WARNING: Manual changes may be overwritten!

import 'package:autocomplete/src/spec.dart';

/// Completion spec for `vm` CLI
final FigSpec vmSpec = FigSpec(
  name: 'vm',
  description: 'Manage Linux or Windows virtual machines',
  subcommands: [

    Subcommand(
      name: 'aem',
      description: 'Manage Azure Enhanced Monitoring Extension for SAP',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Remove Azure Enhanced Monitoring Extension',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'set',
          description: 'Configure Azure Enhanced Monitoring Extension',
          options: [

            Option(
              name: '--debug-extension',
              description: 'Enable debug mode on the VM Extension for SAP'
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
              name: ['--install-new-extension', '-i'],
              description: 'Install the new VM Extension for SAP'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: ['--proxy-uri', '-p'],
              description: 'Set the proxy URI that should be used to access external resources e.g. the Azure API. Example: http://proxyhost:8080',
              args: [
                Arg(
                name: 'proxy-ur'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: ['--set-access-to-individual-resources', '-s'],
              description: 'Set the access of the VM identity to the individual resources, e.g. data disks instead of the complete resource group'
            ),
            Option(
              name: '--skip-storage-analytics',
              description: 'Skip enabling analytics on storage accounts'
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
          name: 'verify',
          description: 'Verify Azure Enhanced Monitoring Extensions configured correctly',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--skip-storage-check',
              description: 'Disables the test for table content'
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
              name: '--wait-time-in-minutes',
              description: 'Maximum minutes to wait for the storage metrics to be available',
              args: [
                Arg(
                name: 'wait-time-in-minute'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'application',
      description: 'Manage applications for VM',
      subcommands: [

        Subcommand(
          name: 'list',
          description: 'List applications for VM',
          options: [

            Option(
              name: ['--vm-name', '--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
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
          description: 'Set applications for VM',
          options: [

            Option(
              name: '--app-version-ids',
              description: 'Space-separated application version ids to set to VM',
              args: [
                Arg(
                name: 'app-version-id'
              )
              ]
            ),
            Option(
              name: '--app-config-overrides',
              description: 'Space-separated application configuration overrides for each application version ids. It should have the same number of items as the application version ids. Null is available for a application which does not have a configuration override',
              args: [
                Arg(
                name: 'app-config-override'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--order-applications',
              description: 'Whether to set order index at each gallery application. If specified, the first app version id gets specified an order = 1, then the next one 2, and so on. This parameter is meant to be used when the VMApplications specified by app version ids must be installed in a particular order; the lowest order is installed first'
            ),
            Option(
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
              name: '--treat-deployment-as-failure',
              description: 'Space-separated list of true or false corresponding to the application version ids. If set to true, failure to install or update gallery application version operation will fail this operation',
              args: [
                Arg(
                name: 'treat-deployment-as-failur'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'assess-patches',
      description: 'Assess patches on a VM',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'auto-shutdown',
      description: 'Manage auto-shutdown for VM',
      options: [

        Option(
          name: '--email',
          description: 'The email recipient to send notifications to (can be a list of semi-colon separated email addresses)',
          args: [
            Arg(
            name: 'emai'
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
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--off',
          description: 'Turn off auto-shutdown for VM. Configuration will be cleared',
          args: [
            Arg(
            name: 'of'
          )
          ]
        ),
        Option(
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
          name: '--time',
          description: 'The UTC time of day the schedule will occur every day. Format: hhmm. Example: 1730',
          args: [
            Arg(
            name: 'tim'
          )
          ]
        ),
        Option(
          name: '--webhook',
          description: 'The webhook URL to which the notification will be sent',
          args: [
            Arg(
            name: 'webhoo'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'capture',
      description: 'Capture information for a stopped VM',
      options: [

        Option(
          name: '--vhd-name-prefix',
          description: 'The VHD name prefix specify for the VM disks',
          args: [
            Arg(
            name: 'vhd-name-prefi'
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--overwrite',
          description: 'Overwrite the existing disk file',
          args: [
            Arg(
            name: 'overwrit'
          )
          ]
        ),
        Option(
          name: ['--resource-group', '-g'],
          description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
          args: [
            Arg(
            name: 'resource-grou'
          )
          ]
        ),
        Option(
          name: '--storage-container',
          description: 'The storage account container name in which to save the disks',
          args: [
            Arg(
            name: 'storage-containe'
          )
          ]
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
      name: 'convert',
      description: 'Convert a VM with unmanaged disks to use managed disks',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'create',
      description: 'Create an Azure Virtual Machine',
      options: [

        Option(
          name: ['--name', '-n'],
          description: 'Name of the virtual machine',
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
          name: '--accelerated-networking',
          description: 'Enable accelerated networking. Unless specified, CLI will enable it based on machine image and size',
          args: [
            Arg(
            name: 'accelerated-networking',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--accept-term',
          description: 'Accept the license agreement and privacy statement',
          args: [
            Arg(
            name: 'accept-ter'
          )
          ]
        ),
        Option(
          name: '--admin-password',
          description: 'Password for the VM if authentication type is \'Password\'',
          args: [
            Arg(
            name: 'admin-passwor'
          )
          ]
        ),
        Option(
          name: '--admin-username',
          description: 'Username for the VM. Default value is current username of OS. If the default value is system reserved, then default value will be set to azureuser. Please refer to https://docs.microsoft.com/rest/api/compute/virtualmachines/createorupdate#osprofile to get a full list of reserved values',
          args: [
            Arg(
            name: 'admin-usernam'
          )
          ]
        ),
        Option(
          name: '--asgs',
          description: 'Space-separated list of existing application security groups to associate with the VM',
          args: [
            Arg(
            name: 'asg'
          )
          ]
        ),
        Option(
          name: '--assign-identity',
          description: 'Accept system or user assigned identities separated by spaces. Use \'[system]\' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples',
          args: [
            Arg(
            name: 'assign-identit'
          )
          ]
        ),
        Option(
          name: '--attach-data-disks',
          description: 'Attach existing data disks to the VM. Can use the name or ID of a managed disk or the URI to an unmanaged disk VHD',
          args: [
            Arg(
            name: 'attach-data-disk'
          )
          ]
        ),
        Option(
          name: '--attach-os-disk',
          description: 'Attach an existing OS disk to the VM. Can use the name or ID of a managed disk or the URI to an unmanaged disk VHD',
          args: [
            Arg(
            name: 'attach-os-dis'
          )
          ]
        ),
        Option(
          name: '--authentication-type',
          description: 'Type of authentication to use with the VM. Defaults to password for Windows and SSH public key for Linux. "all" enables both ssh and password authentication',
          args: [
            Arg(
            name: 'authentication-type',
            suggestions: [

              FigSuggestion(name: 'all'),
              FigSuggestion(name: 'password'),
              FigSuggestion(name: 'ssh')
            ]
          )
          ]
        ),
        Option(
          name: '--availability-set',
          description: 'Name or ID of an existing availability set to add the VM to. None by default',
          args: [
            Arg(
            name: 'availability-se'
          )
          ]
        ),
        Option(
          name: '--boot-diagnostics-storage',
          description: 'Pre-existing storage account name or its blob uri to capture boot diagnostics. Its sku should be one of Standard_GRS, Standard_LRS and Standard_RAGRS',
          args: [
            Arg(
            name: 'boot-diagnostics-storag'
          )
          ]
        ),
        Option(
          name: ['--capacity-reservation-group', '--crg'],
          description: 'The ID or name of the capacity reservation group that is used to allocate. Pass in "None" to disassociate the capacity reservation group. Please note that if you want to delete a VM/VMSS that has been associated with capacity reservation group, you need to disassociate the capacity reservation group first',
          args: [
            Arg(
            name: 'capacity-reservation-grou'
          )
          ]
        ),
        Option(
          name: '--computer-name',
          description: 'The host OS name of the virtual machine. Defaults to the name of the VM',
          args: [
            Arg(
            name: 'computer-nam'
          )
          ]
        ),
        Option(
          name: '--count',
          description: 'Number of virtual machines to create. Value range is [2, 250], inclusive. Don\'t specify this parameter if you want to create a normal single VM. The VMs are created in parallel. The output of this command is an array of VMs instead of one single VM. Each VM has its own public IP, NIC. VNET and NSG are shared. It is recommended that no existing public IP, NIC, VNET and NSG are in resource group. When --count is specified, --attach-data-disks, --attach-os-disk, --boot-diagnostics-storage, --computer-name, --host, --host-group, --nics, --os-disk-name, --private-ip-address, --public-ip-address, --public-ip-address-dns-name, --storage-account, --storage-container-name, --subnet, --use-unmanaged-disk, --vnet-name are not allowed',
          args: [
            Arg(
            name: 'coun'
          )
          ]
        ),
        Option(
          name: '--custom-data',
          description: 'Custom init script file or text (cloud-init, cloud-config, etc..)',
          args: [
            Arg(
            name: 'custom-dat'
          )
          ]
        ),
        Option(
          name: '--data-disk-caching',
          description: 'Storage caching type for data disk(s), including \'None\', \'ReadOnly\', \'ReadWrite\', etc. Use a singular value to apply on all disks, or use <lun>=<vaule1> <lun>=<value2> to configure individual disk',
          args: [
            Arg(
            name: 'data-disk-cachin'
          )
          ]
        ),
        Option(
          name: '--data-disk-delete-option',
          description: 'Specify whether data disk should be deleted or detached upon VM deletion. If a single data disk is attached, the allowed values are Delete and Detach. For multiple data disks are attached, please use "<data_disk>=Delete <data_disk2>=Detach" to configure each disk',
          args: [
            Arg(
            name: 'data-disk-delete-optio'
          )
          ]
        ),
        Option(
          name: '--data-disk-encryption-sets',
          description: 'Names or IDs (space delimited) of disk encryption sets for data disks',
          args: [
            Arg(
            name: 'data-disk-encryption-set'
          )
          ]
        ),
        Option(
          name: '--data-disk-sizes-gb',
          description: 'Space-separated empty managed data disk sizes in GB to create',
          args: [
            Arg(
            name: 'data-disk-sizes-g'
          )
          ]
        ),
        Option(
          name: '--disable-integrity-monitoring',
          description: 'Disable the default behavior of installing guest attestation extension and enabling System Assigned Identity for Trusted Launch enabled VMs and VMSS'
        ),
        Option(
          name: '--disable-integrity-monitoring-autoupgrade',
          description: 'Disable auto upgrade of guest attestation extension for Trusted Launch enabled VMs and VMSS'
        ),
        Option(
          name: '--disk-controller-type',
          description: 'Specify the disk controller type configured for the VM or VMSS',
          args: [
            Arg(
            name: 'disk-controller-type',
            suggestions: [

              FigSuggestion(name: 'NVMe'),
              FigSuggestion(name: 'SCSI')
            ]
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
          name: '--enable-agent',
          description: 'Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified, default behavior is to set it to true. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later',
          args: [
            Arg(
            name: 'enable-agent',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-auto-update',
          description: 'Indicate whether Automatic Updates is enabled for the Windows virtual machine',
          args: [
            Arg(
            name: 'enable-auto-update',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-hibernation',
          description: 'The flag that enable or disable hibernation capability on the VM',
          args: [
            Arg(
            name: 'enable-hibernation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-hotpatching',
          description: 'Patch VMs without requiring a reboot. --enable-agent must be set and --patch-mode must be set to AutomaticByPlatform',
          args: [
            Arg(
            name: 'enable-hotpatching',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-secure-boot',
          description: 'Enable secure boot',
          args: [
            Arg(
            name: 'enable-secure-boot',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-vtpm',
          description: 'Enable vTPM',
          args: [
            Arg(
            name: 'enable-vtpm',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--encryption-at-host',
          description: 'Enable Host Encryption for the VM or VMSS. This will enable the encryption for all the disks including Resource/Temp disk at host itself',
          args: [
            Arg(
            name: 'encryption-at-host',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ephemeral-os-disk',
          description: 'Allows you to create an OS disk directly on the host node, providing local disk performance and faster VM/VMSS reimage time',
          args: [
            Arg(
            name: 'ephemeral-os-disk',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--ephemeral-os-disk-placement', '--ephemeral-placement'],
          description: 'Only applicable when used with --ephemeral-os-disk. Allows you to choose the Ephemeral OS disk provisioning location',
          args: [
            Arg(
            name: 'ephemeral-os-disk-placement',
            suggestions: [

              FigSuggestion(name: 'CacheDisk'),
              FigSuggestion(name: 'ResourceDisk')
            ]
          )
          ]
        ),
        Option(
          name: '--eviction-policy',
          description: 'The eviction policy for the Spot priority virtual machine. Default eviction policy is Deallocate for a Spot priority virtual machine',
          args: [
            Arg(
            name: 'eviction-policy',
            suggestions: [

              FigSuggestion(name: 'Deallocate'),
              FigSuggestion(name: 'Delete')
            ]
          )
          ]
        ),
        Option(
          name: '--generate-ssh-keys',
          description: 'Generate SSH public and private key files if missing. The keys will be stored in the ~/.ssh directory'
        ),
        Option(
          name: '--host',
          description: 'Resource ID of the dedicated host that the VM will reside in. --host and --host-group can\'t be used together',
          args: [
            Arg(
            name: 'hos'
          )
          ]
        ),
        Option(
          name: '--host-group',
          description: 'Name or resource ID of the dedicated host group that the VM will reside in. --host and --host-group can\'t be used together',
          args: [
            Arg(
            name: 'host-grou'
          )
          ]
        ),
        Option(
          name: '--image',
          description: 'The name of the operating system image as a URN alias, URN, custom image name or ID, custom image version ID, or VHD blob URI. In addition, it also supports shared gallery image. Please use the image alias including the version of the distribution you want to use. For example: please use Debian11 instead of Debian.\' This parameter is required unless using --attach-os-disk. Valid URN format: "Publisher:Offer:Sku:Version". For more information, see https://docs.microsoft.com/azure/virtual-machines/linux/cli-ps-findimage. value from: az sig image-version show-shared, az vm image list, az vm image show',
          args: [
            Arg(
            name: 'imag'
          )
          ]
        ),
        Option(
          name: '--license-type',
          description: 'Specifies that the Windows image or disk was licensed on-premises. To enable Azure Hybrid Benefit for Windows Server, use \'Windows_Server\'. To enable Multi-tenant Hosting Rights for Windows 10, use \'Windows_Client\'. For more information see the Azure Windows VM online docs',
          args: [
            Arg(
            name: 'license-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'RHEL_BASE'),
              FigSuggestion(name: 'RHEL_BASESAPAPPS'),
              FigSuggestion(name: 'RHEL_BASESAPHA'),
              FigSuggestion(name: 'RHEL_BYOS'),
              FigSuggestion(name: 'RHEL_ELS_6'),
              FigSuggestion(name: 'RHEL_EUS'),
              FigSuggestion(name: 'RHEL_SAPAPPS'),
              FigSuggestion(name: 'RHEL_SAPHA'),
              FigSuggestion(name: 'SLES'),
              FigSuggestion(name: 'SLES_BYOS'),
              FigSuggestion(name: 'SLES_HPC'),
              FigSuggestion(name: 'SLES_SAP'),
              FigSuggestion(name: 'SLES_STANDARD'),
              FigSuggestion(name: 'UBUNTU'),
              FigSuggestion(name: 'UBUNTU_PRO'),
              FigSuggestion(name: 'Windows_Client'),
              FigSuggestion(name: 'Windows_Server')
            ]
          )
          ]
        ),
        Option(
          name: ['--location', '-l'],
          description: 'Location in which to create VM and related resources. If default location is not configured, will default to the resource group\'s location',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
        ),
        Option(
          name: '--max-price',
          description: 'The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons',
          args: [
            Arg(
            name: 'max-pric'
          )
          ]
        ),
        Option(
          name: '--nic-delete-option',
          description: 'Specify what happens to the network interface when the VM is deleted. Use a singular value to apply on all resources, or use = to configure the delete behavior for individual resources. Possible options are Delete and Detach',
          args: [
            Arg(
            name: 'nic-delete-optio'
          )
          ]
        ),
        Option(
          name: '--nics',
          description: 'Names or IDs of existing NICs to attach to the VM. The first NIC will be designated as primary. If omitted, a new NIC will be created. If an existing NIC is specified, do not specify subnet, VNet, public IP or NSG',
          args: [
            Arg(
            name: 'nic'
          )
          ]
        ),
        Option(
          name: '--no-wait',
          description: 'Do not wait for the long-running operation to finish'
        ),
        Option(
          name: '--nsg',
          description: 'The name to use when creating a new Network Security Group (default) or referencing an existing one. Can also reference an existing NSG by ID or specify "" for none (\'""\' in Azure CLI using PowerShell or --% operator)',
          args: [
            Arg(
            name: 'ns'
          )
          ]
        ),
        Option(
          name: '--nsg-rule',
          description: 'NSG rule to create when creating a new NSG. Defaults to open ports for allowing RDP on Windows and allowing SSH on Linux. NONE represents no NSG rule',
          args: [
            Arg(
            name: 'nsg-rule',
            suggestions: [

              FigSuggestion(name: 'NONE'),
              FigSuggestion(name: 'RDP'),
              FigSuggestion(name: 'SSH')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-caching',
          description: 'Storage caching type for the VM OS disk. Default: ReadWrite',
          args: [
            Arg(
            name: 'os-disk-caching',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'ReadOnly'),
              FigSuggestion(name: 'ReadWrite')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-delete-option',
          description: 'Specify the behavior of the managed disk when the VM gets deleted i.e whether the managed disk is deleted or detached',
          args: [
            Arg(
            name: 'os-disk-delete-option',
            suggestions: [

              FigSuggestion(name: 'Delete'),
              FigSuggestion(name: 'Detach')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-encryption-set',
          description: 'Name or ID of disk encryption set for OS disk',
          args: [
            Arg(
            name: 'os-disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--os-disk-name',
          description: 'The name of the new VM OS disk',
          args: [
            Arg(
            name: 'os-disk-nam'
          )
          ]
        ),
        Option(
          name: '--os-disk-secure-vm-disk-encryption-set',
          description: 'Specify the customer managed disk encryption set resource ID or name for the managed disk that is used for customer managed key encrypted Confidential VM OS disk and VM guest blob',
          args: [
            Arg(
            name: 'os-disk-secure-vm-disk-encryption-se'
          )
          ]
        ),
        Option(
          name: '--os-disk-security-encryption-type',
          description: 'Specify the encryption type of the OS managed disk',
          args: [
            Arg(
            name: 'os-disk-security-encryption-type',
            suggestions: [

              FigSuggestion(name: 'DiskWithVMGuestState'),
              FigSuggestion(name: 'VMGuestStateOnly')
            ]
          )
          ]
        ),
        Option(
          name: '--os-disk-size-gb',
          description: 'OS disk size in GB to create',
          args: [
            Arg(
            name: 'os-disk-size-g'
          )
          ]
        ),
        Option(
          name: '--os-type',
          description: 'Type of OS installed on a custom VHD. Do not use when specifying an URN or URN alias',
          args: [
            Arg(
            name: 'os-type',
            suggestions: [

              FigSuggestion(name: 'linux'),
              FigSuggestion(name: 'windows')
            ]
          )
          ]
        ),
        Option(
          name: '--patch-mode',
          description: 'Mode of in-guest patching to IaaS virtual machine. Allowed values for Windows VM: AutomaticByOS, AutomaticByPlatform, Manual. Allowed values for Linux VM: AutomaticByPlatform, ImageDefault. Manual - You control the application of patches to a virtual machine. You do this by applying patches manually inside the VM. In this mode, automatic updates are disabled; the paramater --enable-auto-update must be false. AutomaticByOS - The virtual machine will automatically be updated by the OS. The parameter --enable-auto-update must be true. AutomaticByPlatform - the virtual machine will automatically updated by the OS. ImageDefault - The virtual machine\'s default patching configuration is used. The parameter --enable-agent and --enable-auto-update must be true',
          args: [
            Arg(
            name: 'patch-mode',
            suggestions: [

              FigSuggestion(name: 'AutomaticByOS'),
              FigSuggestion(name: 'AutomaticByPlatform'),
              FigSuggestion(name: 'ImageDefault'),
              FigSuggestion(name: 'Manual')
            ]
          )
          ]
        ),
        Option(
          name: '--plan-name',
          description: 'Plan name',
          args: [
            Arg(
            name: 'plan-nam'
          )
          ]
        ),
        Option(
          name: '--plan-product',
          description: 'Plan product',
          args: [
            Arg(
            name: 'plan-produc'
          )
          ]
        ),
        Option(
          name: '--plan-promotion-code',
          description: 'Plan promotion code',
          args: [
            Arg(
            name: 'plan-promotion-cod'
          )
          ]
        ),
        Option(
          name: '--plan-publisher',
          description: 'Plan publisher',
          args: [
            Arg(
            name: 'plan-publishe'
          )
          ]
        ),
        Option(
          name: '--platform-fault-domain',
          description: 'Specify the scale set logical fault domain into which the virtual machine will be created. By default, the virtual machine will be automatically assigned to a fault domain that best maintains balance across available fault domains. This is applicable only if the virtualMachineScaleSet property of this virtual machine is set. The virtual machine scale set that is referenced, must have platform fault domain count. This property cannot be updated once the virtual machine is created. Fault domain assignment can be viewed in the virtual machine instance view',
          args: [
            Arg(
            name: 'platform-fault-domai'
          )
          ]
        ),
        Option(
          name: '--ppg',
          description: 'The name or ID of the proximity placement group the VM should be associated with',
          args: [
            Arg(
            name: 'pp'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Priority. Use \'Spot\' to run short-lived workloads in a cost-effective way. \'Low\' enum will be deprecated in the future. Please use \'Spot\' to deploy Azure spot VM and/or VMSS. Default to Regular',
          args: [
            Arg(
            name: 'priority',
            suggestions: [

              FigSuggestion(name: 'Low'),
              FigSuggestion(name: 'Regular'),
              FigSuggestion(name: 'Spot')
            ]
          )
          ]
        ),
        Option(
          name: '--private-ip-address',
          description: 'Static private IP address (e.g. 10.0.0.5)',
          args: [
            Arg(
            name: 'private-ip-addres'
          )
          ]
        ),
        Option(
          name: '--public-ip-address',
          description: 'Name of the public IP address when creating one (default) or referencing an existing one. Can also reference an existing public IP by ID or specify "" for None (\'""\' in Azure CLI using PowerShell or --% operator). For Azure CLI using powershell core edition 7.3.4, specify or "" (--public-ip-address or --public-ip-address "")',
          args: [
            Arg(
            name: 'public-ip-addres'
          )
          ]
        ),
        Option(
          name: '--public-ip-address-allocation',
          description: '',
          args: [
            Arg(
            name: 'public-ip-address-allocation',
            suggestions: [

              FigSuggestion(name: 'dynamic'),
              FigSuggestion(name: 'static')
            ]
          )
          ]
        ),
        Option(
          name: '--public-ip-address-dns-name',
          description: 'Globally unique DNS name for a newly created public IP',
          args: [
            Arg(
            name: 'public-ip-address-dns-nam'
          )
          ]
        ),
        Option(
          name: '--public-ip-sku',
          description: 'Public IP SKU. It is set to Basic by default. The public IP is supported to be created on edge zone only when it is \'Standard\'',
          args: [
            Arg(
            name: 'public-ip-sku',
            suggestions: [

              FigSuggestion(name: 'Basic'),
              FigSuggestion(name: 'Standard')
            ]
          )
          ]
        ),
        Option(
          name: '--role',
          description: 'Role name or id the system assigned identity will have',
          args: [
            Arg(
            name: 'rol'
          )
          ]
        ),
        Option(
          name: '--scope',
          description: 'Scope that the system assigned identity can access',
          args: [
            Arg(
            name: 'scop'
          )
          ]
        ),
        Option(
          name: '--secrets',
          description: 'One or many Key Vault secrets as JSON strings or files via @{path} containing [{ "sourceVault": { "id": "value" }, "vaultCertificates": [{ "certificateUrl": "value", "certificateStore": "cert store name (only on windows)"}] }]',
          args: [
            Arg(
            name: 'secret'
          )
          ]
        ),
        Option(
          name: '--security-type',
          description: 'Specify the security type of the virtual machine',
          args: [
            Arg(
            name: 'security-type',
            suggestions: [

              FigSuggestion(name: 'ConfidentialVM'),
              FigSuggestion(name: 'Standard'),
              FigSuggestion(name: 'TrustedLaunch')
            ]
          )
          ]
        ),
        Option(
          name: '--size',
          description: 'The VM size to be created. See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info. value from: az vm list-sizes',
          args: [
            Arg(
            name: 'siz'
          )
          ]
        ),
        Option(
          name: '--specialized',
          description: 'Indicate whether the source image is specialized',
          args: [
            Arg(
            name: 'specialized',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--ssh-dest-key-path',
          description: 'Destination file path on the VM for the SSH key. If the file already exists, the specified key(s) are appended to the file. Destination path for SSH public keys is currently limited to its default value "/home/username/.ssh/authorized_keys" due to a known issue in Linux provisioning agent',
          args: [
            Arg(
            name: 'ssh-dest-key-pat'
          )
          ]
        ),
        Option(
          name: '--ssh-key-name',
          description: 'Use it as public key in virtual machine. It should be an existing SSH key resource in Azure',
          args: [
            Arg(
            name: 'ssh-key-nam'
          )
          ]
        ),
        Option(
          name: '--ssh-key-values',
          description: 'Space-separated list of SSH public keys or public key file paths',
          args: [
            Arg(
            name: 'ssh-key-value'
          )
          ]
        ),
        Option(
          name: '--storage-account',
          description: 'Only applicable when used with --use-unmanaged-disk. The name to use when creating a new storage account or referencing an existing one. If omitted, an appropriate storage account in the same resource group and location will be used, or a new one will be created',
          args: [
            Arg(
            name: 'storage-accoun'
          )
          ]
        ),
        Option(
          name: '--storage-container-name',
          description: 'Only applicable when used with --use-unmanaged-disk. Name of the storage container for the VM OS disk. Default: vhds',
          args: [
            Arg(
            name: 'storage-container-nam'
          )
          ]
        ),
        Option(
          name: '--storage-sku',
          description: 'The SKU of the storage account with which to persist VM. Use a singular sku that would be applied across all disks, or specify individual disks. Usage: [--storage-sku SKU | --storage-sku ID=SKU ID=SKU ID=SKU...], where each ID is "os" or a 0-indexed lun. Allowed values: Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, PremiumV2_LRS',
          args: [
            Arg(
            name: 'storage-sk'
          )
          ]
        ),
        Option(
          name: '--subnet',
          description: 'The name of the subnet when creating a new VNet or referencing an existing one. Can also reference an existing subnet by ID. If both vnet-name and subnet are omitted, an appropriate VNet and subnet will be selected automatically, or a new one will be created',
          args: [
            Arg(
            name: 'subne'
          )
          ]
        ),
        Option(
          name: '--subnet-address-prefix',
          description: 'The subnet IP address prefix to use when creating a new VNet in CIDR format',
          args: [
            Arg(
            name: 'subnet-address-prefi'
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
          name: '--ultra-ssd-enabled',
          description: 'Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account',
          args: [
            Arg(
            name: 'ultra-ssd-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--use-unmanaged-disk',
          description: 'Do not use managed disk to persist VM'
        ),
        Option(
          name: '--user-data',
          description: 'UserData for the VM. It can be passed in as file or string',
          args: [
            Arg(
            name: 'user-dat'
          )
          ]
        ),
        Option(
          name: '--v-cpus-available',
          description: 'Specify the number of vCPUs available',
          args: [
            Arg(
            name: 'v-cpus-availabl'
          )
          ]
        ),
        Option(
          name: '--v-cpus-per-core',
          description: 'Specify the ratio of vCPU to physical core. Setting this property to 1 also means that hyper-threading is disabled',
          args: [
            Arg(
            name: 'v-cpus-per-cor'
          )
          ]
        ),
        Option(
          name: '--validate',
          description: 'Generate and validate the ARM template without creating any resources'
        ),
        Option(
          name: '--vmss',
          description: 'Name or ID of an existing virtual machine scale set that the virtual machine should be assigned to. None by default',
          args: [
            Arg(
            name: 'vms'
          )
          ]
        ),
        Option(
          name: '--vnet-address-prefix',
          description: 'The IP address prefix to use when creating a new VNet in CIDR format',
          args: [
            Arg(
            name: 'vnet-address-prefi'
          )
          ]
        ),
        Option(
          name: '--vnet-name',
          description: 'Name of the virtual network when creating a new one or referencing an existing one',
          args: [
            Arg(
            name: 'vnet-nam'
          )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Name or ID of Log Analytics Workspace. If you specify the workspace through its name, the workspace should be in the same resource group with the vm, otherwise a new workspace will be created',
          args: [
            Arg(
            name: 'workspac'
          )
          ]
        ),
        Option(
          name: ['--zone', '-z'],
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
      name: 'deallocate',
      description: 'Deallocate a VM so that computing resources are no longer allocated (charges no longer apply). The status will change from \'Stopped\' to \'Stopped (Deallocated)\'',
      options: [

        Option(
          name: '--hibernate',
          description: 'Optional parameter to hibernate a virtual machine. (Feature in Preview)',
          args: [
            Arg(
            name: 'hibernate',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'delete',
      description: 'Delete a VM',
      options: [

        Option(
          name: '--force-deletion',
          description: 'Optional parameter to force delete virtual machines. Default value is None',
          args: [
            Arg(
            name: 'force-deletio'
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'generalize',
      description: 'Mark a VM as generalized, allowing it to be imaged for multiple deployments',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
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
      name: 'get-instance-view',
      description: 'Get instance information about a VM',
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'install-patches',
      description: 'Install patches on a VM',
      options: [

        Option(
          name: '--maximum-duration',
          description: 'Specify the maximum amount of time that the operation will run. It must be an ISO 8601-compliant duration string such as PT4H (4 hours)',
          args: [
            Arg(
            name: 'maximum-duratio'
          )
          ]
        ),
        Option(
          name: '--reboot-setting',
          description: 'Define when it is acceptable to reboot a VM during a software update operation',
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
          name: '--classifications-to-include-linux',
          description: 'Space-separated list of classifications to include for Linux VM',
          args: [
            Arg(
            name: 'classifications-to-include-linux',
            suggestions: [

              FigSuggestion(name: 'Critical'),
              FigSuggestion(name: 'Other'),
              FigSuggestion(name: 'Security')
            ]
          )
          ]
        ),
        Option(
          name: '--classifications-to-include-win',
          description: 'Space-separated list of classifications to include for Windows VM',
          args: [
            Arg(
            name: 'classifications-to-include-win',
            suggestions: [

              FigSuggestion(name: 'Critical'),
              FigSuggestion(name: 'Definition'),
              FigSuggestion(name: 'FeaturePack'),
              FigSuggestion(name: 'Security'),
              FigSuggestion(name: 'ServicePack'),
              FigSuggestion(name: 'Tools'),
              FigSuggestion(name: 'UpdateRollUp'),
              FigSuggestion(name: 'Updates')
            ]
          )
          ]
        ),
        Option(
          name: '--exclude-kbs-requiring-reboot',
          description: 'Filter out KBs that don\'t have a reboot behavior of \'NeverReboots\' when this is set. Applicable to Windows VM only',
          args: [
            Arg(
            name: 'exclude-kbs-requiring-reboot',
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
          name: '--kb-numbers-to-exclude',
          description: 'Space-separated list of KBs to exclude in the patch operation. Applicable to Windows VM only',
          args: [
            Arg(
            name: 'kb-numbers-to-exclud'
          )
          ]
        ),
        Option(
          name: '--kb-numbers-to-include',
          description: 'Space-separated list of KBs to include in the patch operation. Applicable to Windows VM only',
          args: [
            Arg(
            name: 'kb-numbers-to-includ'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: '--package-name-masks-to-exclude',
          description: 'Space-separated list of packages to exclude in the patch operation. Format: packageName_packageVersion. Applicable to Linux VM only',
          args: [
            Arg(
            name: 'package-name-masks-to-exclud'
          )
          ]
        ),
        Option(
          name: '--package-name-masks-to-include',
          description: 'Space-separated list of packages to include in the patch operation. Format: packageName_packageVersion. Applicable to Linux VM only',
          args: [
            Arg(
            name: 'package-name-masks-to-includ'
          )
          ]
        ),
        Option(
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
      description: 'List details of Virtual Machines',
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
          name: ['--show-details', '-d'],
          description: 'Show public ip address, FQDN, and power states. command will run slow'
        ),
        Option(
          name: '--vmss',
          description: 'List VM instances in a specific VMSS. Please specify the VMSS id or VMSS name',
          args: [
            Arg(
            name: 'vms'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'list-ip-addresses',
      description: 'List IP addresses associated with a VM',
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'list-sizes',
      description: 'List available sizes for VMs',
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
          name: ['--location', '-l'],
          description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
          args: [
            Arg(
            name: 'locatio'
          )
          ]
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
      name: 'list-skus',
      description: 'Get details for compute-related resource SKUs',
      options: [

        Option(
          name: '--all',
          description: 'Show all information including vm sizes not available under the current subscription',
          args: [
            Arg(
            name: 'all',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
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
          name: ['--resource-type', '-r'],
          description: 'Resource types e.g. "availabilitySets", "snapshots", "disks", etc',
          args: [
            Arg(
            name: 'resource-typ'
          )
          ]
        ),
        Option(
          name: ['--size', '-s'],
          description: 'Size name, partial name is accepted',
          args: [
            Arg(
            name: 'siz'
          )
          ]
        ),
        Option(
          name: ['--zone', '-z'],
          description: 'Show skus supporting availability zones',
          args: [
            Arg(
            name: 'zone',
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
      name: 'list-usage',
      description: 'List available usage resources for VMs',
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
      name: 'list-vm-resize-options',
      description: 'List available resizing options for VMs',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
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
      name: 'open-port',
      description: 'Opens a VM to inbound traffic on specified ports',
      options: [

        Option(
          name: '--port',
          description: 'The port or port range (ex: 80-100) to open inbound traffic to. Use \'*\' to allow traffic to all ports. Use comma separated values to specify more than one port or port range',
          args: [
            Arg(
            name: 'por'
          )
          ]
        ),
        Option(
          name: '--apply-to-subnet',
          description: 'Allow inbound traffic on the subnet instead of the NIC'
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
          description: 'The name of the virtual machine to open inbound traffic on',
          args: [
            Arg(
            name: 'nam'
          )
          ]
        ),
        Option(
          name: '--nsg-name',
          description: 'The name of the network security group to create if one does not exist. Ignored if an NSG already exists',
          args: [
            Arg(
            name: 'nsg-nam'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Rule priority, between 100 (highest priority) and 4096 (lowest priority). Must be unique for each rule in the collection',
          args: [
            Arg(
            name: 'priorit'
          )
          ]
        ),
        Option(
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
      name: 'perform-maintenance',
      description: 'The operation to perform maintenance on a virtual machine',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'reapply',
      description: 'Reapply VMs',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'redeploy',
      description: 'Redeploy an existing VM',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'reimage',
      description: 'Reimage (upgrade the operating system) a virtual machine',
      options: [

        Option(
          name: '--admin-password',
          description: 'Specifies the password of the administrator account',
          args: [
            Arg(
            name: 'admin-passwor'
          )
          ]
        ),
        Option(
          name: '--custom-data',
          description: 'Specifies a base-64 encoded string of custom data',
          args: [
            Arg(
            name: 'custom-dat'
          )
          ]
        ),
        Option(
          name: '--exact-version',
          description: 'Specifies in decimal number, the version the OS disk should be reimaged to. If exact version is not provided, the OS disk is reimaged to the existing version of OS Disk',
          args: [
            Arg(
            name: 'exact-versio'
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
          name: '--temp-disk',
          description: 'Specifies whether to reimage temp disk. Default value: false. Note: This temp disk reimage parameter is only supported for VM/VMSS with Ephemeral OS disk'
        )
      ]
    ),
    Subcommand(
      name: 'resize',
      description: 'Update a VM\'s size',
      options: [

        Option(
          name: '--size',
          description: 'The VM size. value from: az vm list-vm-resize-options',
          args: [
            Arg(
            name: 'siz'
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'restart',
      description: 'Restart VMs',
      options: [

        Option(
          name: '--force',
          description: 'Force the VM to restart by redeploying it. Use if the VM is unresponsive'
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      description: 'Get the details of a VM',
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
          name: ['--include-user-data', '-u'],
          description: 'Include the user data properties in the query result'
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: ['--show-details', '-d'],
          description: 'Show public ip address, FQDN, and power states. command will run slow'
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
      name: 'simulate-eviction',
      description: 'Simulate the eviction of a Spot VM',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
          )
          ]
        ),
        Option(
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
      description: 'Start a stopped VM',
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
          name: ['--vm-name', '--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
          args: [
            Arg(
            name: 'vm-nam'
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
      name: 'stop',
      description: 'Power off (stop) a running VM',
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: '--skip-shutdown',
          description: 'Skip shutdown and power-off immediately'
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
      description: 'Update the properties of a VM',
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
          name: ['--capacity-reservation-group', '--crg'],
          description: 'The ID or name of the capacity reservation group that is used to allocate. Pass in "None" to disassociate the capacity reservation group. Please note that if you want to delete a VM/VMSS that has been associated with capacity reservation group, you need to disassociate the capacity reservation group first',
          args: [
            Arg(
            name: 'capacity-reservation-grou'
          )
          ]
        ),
        Option(
          name: '--disk-caching',
          description: 'Use singular value to apply across, or specify individual disks, e.g. \'os=ReadWrite 0=None 1=ReadOnly\' should enable update os disk and 2 data disks',
          args: [
            Arg(
            name: 'disk-cachin'
          )
          ]
        ),
        Option(
          name: '--disk-controller-type',
          description: 'Specify the disk controller type configured for the VM or VMSS',
          args: [
            Arg(
            name: 'disk-controller-type',
            suggestions: [

              FigSuggestion(name: 'NVMe'),
              FigSuggestion(name: 'SCSI')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-hibernation',
          description: 'The flag that enable or disable hibernation capability on the VM',
          args: [
            Arg(
            name: 'enable-hibernation',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-secure-boot',
          description: 'Enable secure boot',
          args: [
            Arg(
            name: 'enable-secure-boot',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--enable-vtpm',
          description: 'Enable vTPM',
          args: [
            Arg(
            name: 'enable-vtpm',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: ['--ephemeral-os-disk-placement', '--ephemeral-placement'],
          description: 'Only applicable when used with --size. Allows you to choose the Ephemeral OS disk provisioning location',
          args: [
            Arg(
            name: 'ephemeral-os-disk-placement',
            suggestions: [

              FigSuggestion(name: 'CacheDisk'),
              FigSuggestion(name: 'ResourceDisk')
            ]
          )
          ]
        ),
        Option(
          name: '--force-string',
          description: 'When using \'set\' or \'add\', preserve string literals instead of attempting to convert to JSON'
        ),
        Option(
          name: '--host',
          description: 'Resource ID of the dedicated host that the VM will reside in. --host and --host-group can\'t be used together. You should deallocate the VM before update, and start the VM after update. Please check out help for more examples',
          args: [
            Arg(
            name: 'hos'
          )
          ]
        ),
        Option(
          name: '--host-group',
          description: 'Name or resource ID of the dedicated host group that the VM will reside in. --host and --host-group can\'t be used together. You should deallocate the VM before update, and start the VM after update. Please check out help for more examples',
          args: [
            Arg(
            name: 'host-grou'
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
          name: '--license-type',
          description: 'Specifies that the Windows image or disk was licensed on-premises. To enable Azure Hybrid Benefit for Windows Server, use \'Windows_Server\'. To enable Multi-tenant Hosting Rights for Windows 10, use \'Windows_Client\'. For more information see the Azure Windows VM online docs',
          args: [
            Arg(
            name: 'license-type',
            suggestions: [

              FigSuggestion(name: 'None'),
              FigSuggestion(name: 'RHEL_BASE'),
              FigSuggestion(name: 'RHEL_BASESAPAPPS'),
              FigSuggestion(name: 'RHEL_BASESAPHA'),
              FigSuggestion(name: 'RHEL_BYOS'),
              FigSuggestion(name: 'RHEL_ELS_6'),
              FigSuggestion(name: 'RHEL_EUS'),
              FigSuggestion(name: 'RHEL_SAPAPPS'),
              FigSuggestion(name: 'RHEL_SAPHA'),
              FigSuggestion(name: 'SLES'),
              FigSuggestion(name: 'SLES_BYOS'),
              FigSuggestion(name: 'SLES_HPC'),
              FigSuggestion(name: 'SLES_SAP'),
              FigSuggestion(name: 'SLES_STANDARD'),
              FigSuggestion(name: 'UBUNTU'),
              FigSuggestion(name: 'UBUNTU_PRO'),
              FigSuggestion(name: 'Windows_Client'),
              FigSuggestion(name: 'Windows_Server')
            ]
          )
          ]
        ),
        Option(
          name: '--max-price',
          description: 'The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons',
          args: [
            Arg(
            name: 'max-pric'
          )
          ]
        ),
        Option(
          name: ['--name', '-n'],
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: '--os-disk',
          description: 'Managed OS disk ID or name to swap to',
          args: [
            Arg(
            name: 'os-dis'
          )
          ]
        ),
        Option(
          name: '--ppg',
          description: 'The name or ID of the proximity placement group the VM should be associated with',
          args: [
            Arg(
            name: 'pp'
          )
          ]
        ),
        Option(
          name: '--priority',
          description: 'Priority. Use \'Spot\' to run short-lived workloads in a cost-effective way. \'Low\' enum will be deprecated in the future. Please use \'Spot\' to deploy Azure spot VM and/or VMSS. Default to Regular',
          args: [
            Arg(
            name: 'priority',
            suggestions: [

              FigSuggestion(name: 'Low'),
              FigSuggestion(name: 'Regular'),
              FigSuggestion(name: 'Spot')
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
          name: '--security-type',
          description: 'Specify the security type of the virtual machine',
          args: [
            Arg(
            name: 'security-type',
            suggestions: [

              FigSuggestion(name: 'TrustedLaunch')
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
          name: '--size',
          description: 'The new size of the virtual machine. See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info',
          args: [
            Arg(
            name: 'siz'
          )
          ]
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
          name: '--ultra-ssd-enabled',
          description: 'Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account',
          args: [
            Arg(
            name: 'ultra-ssd-enabled',
            suggestions: [

              FigSuggestion(name: 'false'),
              FigSuggestion(name: 'true')
            ]
          )
          ]
        ),
        Option(
          name: '--user-data',
          description: 'UserData for the VM. It can be passed in as file or string. If empty string is passed in, the existing value will be deleted',
          args: [
            Arg(
            name: 'user-dat'
          )
          ]
        ),
        Option(
          name: '--v-cpus-available',
          description: 'Specify the number of vCPUs available',
          args: [
            Arg(
            name: 'v-cpus-availabl'
          )
          ]
        ),
        Option(
          name: '--v-cpus-per-core',
          description: 'Specify the ratio of vCPU to physical core. Setting this property to 1 also means that hyper-threading is disabled',
          args: [
            Arg(
            name: 'v-cpus-per-cor'
          )
          ]
        ),
        Option(
          name: '--workspace',
          description: 'Name or ID of Log Analytics Workspace. If you specify the workspace through its name, the workspace should be in the same resource group with the vm, otherwise a new workspace will be created',
          args: [
            Arg(
            name: 'workspac'
          )
          ]
        ),
        Option(
          name: '--write-accelerator',
          description: 'Enable/disable disk write accelerator. Use singular value \'true/false\' to apply across, or specify individual disks, e.g.\'os=true 1=true 2=true\' for os disk and data disks with lun of 1 & 2',
          args: [
            Arg(
            name: 'write-accelerato'
          )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'wait',
      description: 'Place the CLI in a waiting state until a condition of the VM is met',
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
          description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'availability-set',
      description: 'Group resources into availability sets.\n\n\t\tTo provide redundancy to an application, it is recommended to group two or more virtual machines in an availability set. This configuration ensures that during either a planned or unplanned maintenance event, at least one virtual machine will be available',
      subcommands: [

        Subcommand(
          name: 'convert',
          description: 'Convert an Azure Availability Set to contain VMs with managed disks',
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
              description: 'Name of the availability set',
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
          name: 'create',
          description: 'Create an Azure Availability Set',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the availability set',
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
              name: '--platform-fault-domain-count',
              description: 'Fault Domain count',
              args: [
                Arg(
                name: 'platform-fault-domain-coun'
              )
              ]
            ),
            Option(
              name: '--platform-update-domain-count',
              description: 'Update Domain count. If unspecified, the server will pick the most optimal number like 5',
              args: [
                Arg(
                name: 'platform-update-domain-coun'
              )
              ]
            ),
            Option(
              name: '--ppg',
              description: 'The name or ID of the proximity placement group the availability set should be associated with',
              args: [
                Arg(
                name: 'pp'
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
              name: '--unmanaged',
              description: 'Contained VMs should use unmanaged disks'
            ),
            Option(
              name: '--validate',
              description: 'Generate and validate the ARM template without creating any resources'
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'Delete an availability set',
          options: [

            Option(
              name: ['--availability-set-name', '--name', '-n'],
              description: 'The name of the availability set',
              args: [
                Arg(
                name: 'availability-set-nam'
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
          name: 'list',
          description: 'List availability sets',
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
          name: 'list-sizes',
          description: 'List all available virtual machine sizes that can be used to create a new virtual machine in an existing availability set',
          options: [

            Option(
              name: ['--availability-set-name', '--name', '-n'],
              description: 'The name of the availability set',
              args: [
                Arg(
                name: 'availability-set-nam'
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
          name: 'show',
          description: 'Get information about an availability set',
          options: [

            Option(
              name: ['--availability-set-name', '--name', '-n'],
              description: 'The name of the availability set',
              args: [
                Arg(
                name: 'availability-set-nam'
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
          description: 'Update an Azure Availability Set',
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
              description: 'Name of the availability set',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--ppg',
              description: 'The name or ID of the proximity placement group the availability set should be associated with',
              args: [
                Arg(
                name: 'pp'
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
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'boot-diagnostics',
      description: 'Troubleshoot the startup of an Azure Virtual Machine.\n\n\t\tUse this feature to troubleshoot boot failures for custom or platform images',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable the boot diagnostics on a VM',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          description: 'Enable the boot diagnostics on a VM',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--storage',
              description: 'Name or URI of a storage account (e.g. https://your_storage_account_name.blob.core.windows.net/). If it\'s not specified, managed storage will be used',
              args: [
                Arg(
                name: 'storag'
              )
              ]
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
          name: 'get-boot-log',
          description: 'Get the boot diagnostics log from a VM',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'get-boot-log-uris',
          description: 'Get SAS URIs for a virtual machine\'s boot diagnostic logs',
          options: [

            Option(
              name: '--expire',
              description: 'Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes',
              args: [
                Arg(
                name: 'expir'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'diagnostics',
      description: 'Configure the Azure Virtual Machine diagnostics extension',
      subcommands: [

        Subcommand(
          name: 'get-default-config',
          description: 'Get the default configuration settings for a VM',
          options: [

            Option(
              name: '--is-windows-os',
              description: 'For Windows VMs'
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Configure the Azure VM diagnostics extension',
          options: [

            Option(
              name: '--settings',
              description: 'Json string or a file path, which defines data to be collected',
              args: [
                Arg(
                name: 'setting'
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
              name: '--no-auto-upgrade',
              description: 'Option \'--no-auto-upgrade\' has been deprecated and will be removed in a future release. Use \'--no-auto-upgrade-minor-version\' instead. If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-auto-upgrade-minor-version',
              description: 'If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--protected-settings',
              description: 'Json string or a file path containing private configurations such as storage account keys, etc',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
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
              name: '--version',
              description: 'Version of the diagnostics extension. Will use the latest if not specfied',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'disk',
      description: 'Manage the managed data disks attached to a VM.\n\n\t\tAzure Virtual Machines use disks as a place to store an operating system, applications, and data. All Azure virtual machines have at least two disks: An operating system disk, and a temporary disk. The operating system disk is created from an image, and both the operating system disk and the image are actually virtual hard disks (VHDs) stored in an Azure storage account. Virtual machines also can have one or more data disks, that are also stored as VHDs.\nAzure Managed and Unmanaged Data Disks have a maximum size of 4095 GB (with the exception of larger disks in preview). Azure Unmanaged Disks also have a maximum capacity of 4095 GB.\nFor more information, see:\n\nAzure Disks - https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview.\nLarger Managed Disks in Public Preview - https://azure.microsoft.com/blog/introducing-the-public-preview-of-larger-managed-disks-sizes/\nUltra SSD Managed Disks in Public Preview - https://docs.microsoft.com/azure/virtual-machines/disks-types',
      subcommands: [

        Subcommand(
          name: 'attach',
          description: 'Attach a managed persistent disk to a VM',
          options: [

            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--caching',
              description: 'Disk caching policy',
              args: [
                Arg(
                name: 'caching',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'ReadOnly'),
                  FigSuggestion(name: 'ReadWrite')
                ]
              )
              ]
            ),
            Option(
              name: '--disks',
              description: 'One or more names or IDs of the managed disk (space-delimited)',
              args: [
                Arg(
                name: 'disk'
              )
              ]
            ),
            Option(
              name: '--enable-write-accelerator',
              description: 'Enable write accelerator'
            ),
            Option(
              name: '--lun',
              description: '0-based logical unit number (LUN). Max value depends on the Virtual Machine size',
              args: [
                Arg(
                name: 'lu'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name or ID of the managed disk',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--new',
              description: 'Create a new disk'
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
          name: 'detach',
          description: 'Detach a managed disk from a VM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The data disk name',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--force-detach',
              description: 'Force detach managed data disks from a VM',
              args: [
                Arg(
                name: 'force-detac'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'encryption',
      description: 'Manage encryption of VM disks.\n\n\t\tFor more information, see:\nhttps://docs.microsoft.com/azure/security/fundamentals/azure-disk-encryption-vms-vmss',
      subcommands: [

        Subcommand(
          name: 'disable',
          description: 'Disable disk encryption on the OS disk and/or data disks. Decrypt mounted disks',
          options: [

            Option(
              name: '--force',
              description: 'Continue by ignoring client side validation errors'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--volume-type',
              description: 'Type of volume that the encryption operation is performed on',
              args: [
                Arg(
                name: 'volume-type',
                suggestions: [

                  FigSuggestion(name: 'ALL'),
                  FigSuggestion(name: 'DATA'),
                  FigSuggestion(name: 'OS')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'enable',
          description: 'Enable disk encryption on the OS disk and/or data disks. Encrypt mounted disks',
          options: [

            Option(
              name: '--disk-encryption-keyvault',
              description: 'Name or ID of the key vault where the generated encryption key will be placed',
              args: [
                Arg(
                name: 'disk-encryption-keyvaul'
              )
              ]
            ),
            Option(
              name: '--aad-client-cert-thumbprint',
              description: 'Thumbprint of the AAD app certificate with permissions to write secrets to the key vault',
              args: [
                Arg(
                name: 'aad-client-cert-thumbprin'
              )
              ]
            ),
            Option(
              name: '--aad-client-id',
              description: 'Client ID of an AAD app with permissions to write secrets to the key vault',
              args: [
                Arg(
                name: 'aad-client-i'
              )
              ]
            ),
            Option(
              name: '--aad-client-secret',
              description: 'Client secret of the AAD app with permissions to write secrets to the key vault',
              args: [
                Arg(
                name: 'aad-client-secre'
              )
              ]
            ),
            Option(
              name: '--encrypt-format-all',
              description: 'Encrypts-formats data disks instead of encrypting them. Encrypt-formatting is a lot faster than in-place encryption but wipes out the partition getting encrypt-formatted. (Only supported for Linux virtual machines.)'
            ),
            Option(
              name: '--force',
              description: 'Continue by ignoring client side validation errors'
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
              name: '--key-encryption-algorithm',
              description: '',
              args: [
                Arg(
                name: 'key-encryption-algorith'
              )
              ]
            ),
            Option(
              name: '--key-encryption-key',
              description: 'Key vault key name or URL used to encrypt the disk encryption key',
              args: [
                Arg(
                name: 'key-encryption-ke'
              )
              ]
            ),
            Option(
              name: '--key-encryption-keyvault',
              description: 'Name or ID of the key vault containing the key encryption key used to encrypt the disk encryption key. If missing, CLI will use --disk-encryption-keyvault',
              args: [
                Arg(
                name: 'key-encryption-keyvaul'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--volume-type',
              description: 'Type of volume that the encryption operation is performed on',
              args: [
                Arg(
                name: 'volume-type',
                suggestions: [

                  FigSuggestion(name: 'ALL'),
                  FigSuggestion(name: 'DATA'),
                  FigSuggestion(name: 'OS')
                ]
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Show encryption status',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'extension',
      description: 'Manage extensions on VMs.\n\n\t\tExtensions are small applications that provide post-deployment configuration and automation tasks on Azure virtual machines. For example, if a virtual machine requires software installation, anti-virus protection, or Docker configuration, a VM extension can be used to complete these tasks. Extensions can be bundled with a new virtual machine deployment or run against any existing system',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete operation to delete the extension',
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
              name: ['--vm-extension-name', '--name', '-n'],
              description: 'The name of the virtual machine extension',
              args: [
                Arg(
                name: 'vm-extension-nam'
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the extensions attached to a VM',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Set extensions for a VM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'Name of the extension. value from: az vm extension image list',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--publisher',
              description: 'The name of the extension publisher',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: '--enable-auto-upgrade',
              description: 'Indicate the extension should be automatically upgraded by the platform if there is a newer version of the extension available',
              args: [
                Arg(
                name: 'enable-auto-upgrade',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--extension-instance-name',
              description: 'Name of extension instance, which can be customized. Default: name of the extension',
              args: [
                Arg(
                name: 'extension-instance-nam'
              )
              ]
            ),
            Option(
              name: '--force-update',
              description: 'Force to update even if the extension configuration has not changed'
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
              name: '--no-auto-upgrade',
              description: 'Option \'--no-auto-upgrade\' has been deprecated and will be removed in a future release. Use \'--no-auto-upgrade-minor-version\' instead. If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-auto-upgrade-minor-version',
              description: 'If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed'
            ),
            Option(
              name: '--no-wait',
              description: 'Do not wait for the long-running operation to finish'
            ),
            Option(
              name: '--protected-settings',
              description: 'Protected settings in JSON format for sensitive information like credentials. A JSON file path is also accepted',
              args: [
                Arg(
                name: 'protected-setting'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--settings',
              description: 'Extension settings in JSON format. A JSON file path is also accepted',
              args: [
                Arg(
                name: 'setting'
              )
              ]
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
              name: '--version',
              description: 'The version of the extension. To pin extension version to this value, please specify --no-auto-upgrade-minor-version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display information about extensions attached to a VM',
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
              name: '--instance-view',
              description: 'The instance view of a virtual machine extension'
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the extension',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of a virtual machine extension is met',
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
              description: 'Name of the extension',
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
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'image',
          description: 'Find the available VM extensions for a subscription and region',
          subcommands: [

            Subcommand(
              name: 'list',
              description: 'List the information on available extensions',
              options: [

                Option(
                  name: '--latest',
                  description: 'Show the latest version only'
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Image location',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '-n'],
                  description: 'Image name',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--version',
                  description: 'Extension version',
                  args: [
                    Arg(
                    name: 'versio'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'list-names',
              description: 'List the names of available extensions',
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
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
              name: 'list-versions',
              description: 'List the versions for available extensions',
              options: [

                Option(
                  name: '--filter',
                  description: 'The filter to apply on the operation. Default value is None',
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '--type', '-n'],
                  description: 'Name of the extension',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'The \$orderby odata query option',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
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
                  name: '--top',
                  description: 'The \$top odata query option',
                  args: [
                    Arg(
                    name: 'to'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Display information for an extension',
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
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
                  args: [
                    Arg(
                    name: 'locatio'
                  )
                  ]
                ),
                Option(
                  name: ['--name', '--type', '-n'],
                  description: 'Name of the extension',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher-name', '--publisher', '-p'],
                  description: 'Image publisher name',
                  args: [
                    Arg(
                    name: 'publisher-nam'
                  )
                  ]
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
                  name: '--version',
                  description: 'Extension version',
                  args: [
                    Arg(
                    name: 'versio'
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
      name: 'host',
      description: 'Manage Dedicated Hosts for Virtual Machines',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a dedicated host',
          options: [

            Option(
              name: '--host-group',
              description: 'Name of the Dedicated Host Group',
              args: [
                Arg(
                name: 'host-grou'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'Name of the Dedicated Host',
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
              name: '--sku',
              description: 'SKU of the dedicated host. Available SKUs: https://azure.microsoft.com/pricing/details/virtual-machines/dedicated-host/',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--auto-replace',
              description: 'Replace the host automatically if a failure occurs',
              args: [
                Arg(
                name: 'auto-replace',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--license-type',
              description: 'The software license type that will be applied to the VMs deployed on the dedicated host',
              args: [
                Arg(
                name: 'license-type',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'Windows_Server_Hybrid'),
                  FigSuggestion(name: 'Windows_Server_Perpetual')
                ]
              )
              ]
            ),
            Option(
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. Otherwise, location will default to the resource group\'s location',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--platform-fault-domain', '-d'],
              description: 'Fault domain of the host within a group. Allowed values: 0, 1, 2',
              args: [
                Arg(
                name: 'platform-fault-domai'
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
          description: 'Delete a dedicated host',
          options: [

            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--host-name', '--name', '-n'],
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
          name: 'get-instance-view',
          description: 'Get instance information about a dedicated host',
          options: [

            Option(
              name: '--host-group',
              description: 'Name of the Dedicated Host Group',
              args: [
                Arg(
                name: 'host-grou'
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
              description: 'Name of the Dedicated Host',
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
          name: 'list',
          description: 'List dedicated hosts',
          options: [

            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
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
          name: 'list-resize-options',
          description: 'List all available dedicated host sizes to which the specified dedicated host can be resized. NOTE: The dedicated host sizes provided can be used to only scale up the existing dedicated host',
          options: [

            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--host-name', '--name', '-n'],
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
          name: 'resize',
          description: 'Resize a dedicated host',
          options: [

            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--host-name', '--name', '-n'],
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
              name: '--sku',
              description: 'Dedicated host size for resizing. Available dedicated host sizes for resizing could be listed by running \'az vm host list-resize-options\'',
              args: [
                Arg(
                name: 'sk'
              )
              ]
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
          name: 'restart',
          description: 'Restart the dedicated host',
          options: [

            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: '--host-name',
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
          description: 'Get the details of a dedicated host',
          options: [

            Option(
              name: '--expand',
              description: 'The expand expression to apply on the operation. \'InstanceView\' will retrieve the list of instance views of the dedicated host. \'UserData\' is not supported for dedicated host',
              args: [
                Arg(
                name: 'expand',
                suggestions: [

                  FigSuggestion(name: 'instanceView'),
                  FigSuggestion(name: 'userData')
                ]
              )
              ]
            ),
            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--host-name', '--name', '-n'],
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
          description: 'Update a dedicated host',
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
              name: '--host-group',
              description: 'Name of the Dedicated Host Group',
              args: [
                Arg(
                name: 'host-grou'
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
              description: 'Name of the Dedicated Host',
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
              name: '--expand',
              description: 'The expand expression to apply on the operation. \'InstanceView\' will retrieve the list of instance views of the dedicated host. \'UserData\' is not supported for dedicated host',
              args: [
                Arg(
                name: 'expand',
                suggestions: [

                  FigSuggestion(name: 'instanceView'),
                  FigSuggestion(name: 'userData')
                ]
              )
              ]
            ),
            Option(
              name: ['--host-group-name', '--host-group'],
              description: 'The name of the dedicated host group',
              args: [
                Arg(
                name: 'host-group-nam'
              )
              ]
            ),
            Option(
              name: ['--host-name', '--name', '-n'],
              description: 'The name of the dedicated host',
              args: [
                Arg(
                name: 'host-nam'
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
          name: 'group',
          description: 'Manage Dedicated Host Groups',
          subcommands: [

            Subcommand(
              name: 'create',
              description: 'Create a dedicated host group',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name of the Dedicated Host Group',
                  args: [
                    Arg(
                    name: 'nam'
                  )
                  ]
                ),
                Option(
                  name: ['--platform-fault-domain-count', '-c'],
                  description: 'Number of fault domains that the host group can span',
                  args: [
                    Arg(
                    name: 'platform-fault-domain-coun'
                  )
                  ]
                ),
                Option(
                  name: ['--resource-group', '-g'],
                  description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
                  args: [
                    Arg(
                    name: 'resource-grou'
                  )
                  ]
                ),
                Option(
                  name: '--automatic-placement',
                  description: 'Specify whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to false when not provided',
                  args: [
                    Arg(
                    name: 'automatic-placement',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--location', '-l'],
                  description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>. Otherwise, location will default to the resource group\'s location',
                  args: [
                    Arg(
                    name: 'locatio'
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
                  name: '--ultra-ssd-enabled',
                  description: 'Enable a capability to have UltraSSD Enabled Virtual Machines on Dedicated Hosts of the Dedicated Host Group',
                  args: [
                    Arg(
                    name: 'ultra-ssd-enabled',
                    suggestions: [

                      FigSuggestion(name: 'false'),
                      FigSuggestion(name: 'true')
                    ]
                  )
                  ]
                ),
                Option(
                  name: ['--zone', '-z'],
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
              description: 'Delete a dedicated host group',
              options: [

                Option(
                  name: ['--host-group-name', '--name', '-n'],
                  description: 'Name of the Dedicated Host Group',
                  args: [
                    Arg(
                    name: 'host-group-nam'
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
              name: 'get-instance-view',
              description: 'Get instance view of a dedicated host group',
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
                  description: 'Name of the Dedicated Host Group',
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
              name: 'list',
              description: 'List dedicated host groups',
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
              description: 'Get the details of a dedicated host group',
              options: [

                Option(
                  name: ['--host-group-name', '--name', '-n'],
                  description: 'Name of the Dedicated Host Group',
                  args: [
                    Arg(
                    name: 'host-group-nam'
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
              description: 'Update a dedicated host group',
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
                  description: 'Name of the Dedicated Host Group',
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
      name: 'identity',
      description: 'Manage service identities of a VM',
      subcommands: [

        Subcommand(
          name: 'assign',
          description: 'Enable managed service identity on a VM',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to assign. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--role',
              description: 'Role name or id the system assigned identity will have. Please note that the default value "Contributor" will be removed in the breaking change release of the fall, so please specify "--role" and "--scope" at the same time when assigning a role to the managed identity',
              args: [
                Arg(
                name: 'rol'
              )
              ]
            ),
            Option(
              name: '--scope',
              description: 'Scope that the system assigned identity can access',
              args: [
                Arg(
                name: 'scop'
              )
              ]
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
          name: 'remove',
          description: 'Remove managed service identities from a VM',
          options: [

            Option(
              name: '--identities',
              description: 'Space-separated identities to remove. Use \'[system]\' to refer to the system assigned identity. Default: \'[system]\'',
              args: [
                Arg(
                name: 'identitie'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          description: 'Display VM\'s managed identity info',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'image',
      description: 'Information on available virtual machine images',
      subcommands: [

        Subcommand(
          name: 'accept-terms',
          description: 'Accept Azure Marketplace term so that the image can be used to create VMs',
          options: [

            Option(
              name: ['--offer', '-f'],
              description: 'Image offer',
              args: [
                Arg(
                name: 'offe'
              )
              ]
            ),
            Option(
              name: '--plan',
              description: 'Image billing plan',
              args: [
                Arg(
                name: 'pla'
              )
              ]
            ),
            Option(
              name: ['--publisher', '-p'],
              description: 'Image publisher',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: '--urn',
              description: 'URN, in format of \'publisher:offer:sku:version\' or \'publisher:offer:sku:edge_zone:version\'. If specified, other argument values can be omitted',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the VM/VMSS images available in the Azure Marketplace',
          options: [

            Option(
              name: '--all',
              description: 'Retrieve image list from live Azure service rather using an offline image list'
            ),
            Option(
              name: '--architecture',
              description: 'The name of architecture',
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
              name: '--edge-zone',
              description: 'The name of edge zone',
              args: [
                Arg(
                name: 'edge-zon'
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
              name: ['--offer', '-f'],
              description: 'Image offer name, partial name is accepted',
              args: [
                Arg(
                name: 'offe'
              )
              ]
            ),
            Option(
              name: ['--publisher', '-p'],
              description: 'Image publisher name, partial name is accepted',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: ['--sku', '-s'],
              description: 'Image sku name, partial name is accepted',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-offers',
          description: 'List the VM image offers available in the Azure Marketplace',
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
              name: ['--publisher', '-p'],
              description: 'Image publisher. value from: az vm image list-publishers',
              args: [
                Arg(
                name: 'publishe'
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
            )
          ]
        ),
        Subcommand(
          name: 'list-publishers',
          description: 'List the VM image publishers available in the Azure Marketplace',
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
              name: '--edge-zone',
              description: 'The name of edge zone',
              args: [
                Arg(
                name: 'edge-zon'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list-skus',
          description: 'List the VM image SKUs available in the Azure Marketplace',
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
              name: ['--offer', '-f'],
              description: 'Image offer',
              args: [
                Arg(
                name: 'offe'
              )
              ]
            ),
            Option(
              name: ['--publisher', '-p'],
              description: 'Image publisher. value from: az vm image list-publishers',
              args: [
                Arg(
                name: 'publishe'
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
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get the details for a VM image available in the Azure Marketplace',
          options: [

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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--offer', '-f'],
              description: 'Image offer',
              args: [
                Arg(
                name: 'offe'
              )
              ]
            ),
            Option(
              name: ['--publisher', '-p'],
              description: 'Image publisher',
              args: [
                Arg(
                name: 'publishe'
              )
              ]
            ),
            Option(
              name: ['--sku', '-s'],
              description: 'Image sku',
              args: [
                Arg(
                name: 'sk'
              )
              ]
            ),
            Option(
              name: '--urn',
              description: 'URN, in format of \'publisher:offer:sku:version\' or \'publisher:offer:sku:edge_zone:version\'. If specified, other argument values can be omitted',
              args: [
                Arg(
                name: 'ur'
              )
              ]
            ),
            Option(
              name: '--version',
              description: 'Image sku\'s version',
              args: [
                Arg(
                name: 'versio'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'terms',
          description: 'Manage Azure Marketplace image terms',
          subcommands: [

            Subcommand(
              name: 'accept',
              description: 'Accept Azure Marketplace image terms so that the image can be used to create VMs',
              options: [

                Option(
                  name: ['--offer', '-f'],
                  description: 'Image offer',
                  args: [
                    Arg(
                    name: 'offe'
                  )
                  ]
                ),
                Option(
                  name: '--plan',
                  description: 'Image billing plan',
                  args: [
                    Arg(
                    name: 'pla'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'Image publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--urn',
                  description: 'URN, in the format of \'publisher:offer:sku:version\'. If specified, other argument values can be omitted',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'cancel',
              description: 'Cancel Azure Marketplace image terms',
              options: [

                Option(
                  name: ['--offer', '-f'],
                  description: 'Image offer',
                  args: [
                    Arg(
                    name: 'offe'
                  )
                  ]
                ),
                Option(
                  name: '--plan',
                  description: 'Image billing plan',
                  args: [
                    Arg(
                    name: 'pla'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'Image publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--urn',
                  description: 'URN, in the format of \'publisher:offer:sku:version\'. If specified, other argument values can be omitted',
                  args: [
                    Arg(
                    name: 'ur'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'show',
              description: 'Get the details of Azure Marketplace image terms',
              options: [

                Option(
                  name: ['--offer', '-f'],
                  description: 'Image offer',
                  args: [
                    Arg(
                    name: 'offe'
                  )
                  ]
                ),
                Option(
                  name: '--plan',
                  description: 'Image billing plan',
                  args: [
                    Arg(
                    name: 'pla'
                  )
                  ]
                ),
                Option(
                  name: ['--publisher', '-p'],
                  description: 'Image publisher',
                  args: [
                    Arg(
                    name: 'publishe'
                  )
                  ]
                ),
                Option(
                  name: '--urn',
                  description: 'URN, in the format of \'publisher:offer:sku:version\'. If specified, other argument values can be omitted',
                  args: [
                    Arg(
                    name: 'ur'
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
      name: 'monitor',
      description: 'Manage monitor aspect for a vm',
      subcommands: [

        Subcommand(
          name: 'log',
          description: 'Manage log analytics workspace for a vm',
          subcommands: [

            Subcommand(
              name: 'show',
              description: 'Execute a query against the Log Analytics workspace linked with a VM',
              options: [

                Option(
                  name: ['--analytics-query', '-q'],
                  description: 'Query to execute over Log Analytics data',
                  args: [
                    Arg(
                    name: 'analytics-quer'
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
                  description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
                  name: '--timespan',
                  description: 'Timespan over which to query. Defaults to querying all available data',
                  args: [
                    Arg(
                    name: 'timespa'
                  )
                  ]
                )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'metrics',
          description: 'Manage metrics for a vm',
          subcommands: [

            Subcommand(
              name: 'list-definitions',
              description: 'List the metric definitions for a VM',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name or ID of a virtual machine',
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
                  name: '--namespace',
                  description: 'Namespace to query metric definitions for',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                )
              ]
            ),
            Subcommand(
              name: 'tail',
              description: 'List the metric values for a VM',
              options: [

                Option(
                  name: ['--name', '-n'],
                  description: 'Name or ID of a virtual machine',
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
                  name: '--aggregation',
                  description: 'The list of aggregation types (space-separated) to retrieve. value from: az vm monitor metrics list-definitions -n MyVM -g MyRG --query "@[*].supportedAggregationTypes"',
                  args: [
                    Arg(
                    name: 'aggregation',
                    suggestions: [

                      FigSuggestion(name: 'Average'),
                      FigSuggestion(name: 'Count'),
                      FigSuggestion(name: 'Maximum'),
                      FigSuggestion(name: 'Minimum'),
                      FigSuggestion(name: 'None'),
                      FigSuggestion(name: 'Total')
                    ]
                  )
                  ]
                ),
                Option(
                  name: '--dimension',
                  description: 'The list of dimensions (space-separated) the metrics are queried into. value from: az vm monitor metrics list-definitions -n MyVM -g MyRG --query "@[*].dimensions"',
                  args: [
                    Arg(
                    name: 'dimensio'
                  )
                  ]
                ),
                Option(
                  name: '--end-time',
                  description: 'End time of the query. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'end-tim'
                  )
                  ]
                ),
                Option(
                  name: '--filter',
                  description: 'A string used to reduce the set of metric data returned. eg. "LUN eq \'*\'"',
                  args: [
                    Arg(
                    name: 'filte'
                  )
                  ]
                ),
                Option(
                  name: '--interval',
                  description: 'The interval over which to aggregate metrics, in ##h##m format',
                  args: [
                    Arg(
                    name: 'interva'
                  )
                  ]
                ),
                Option(
                  name: '--metadata',
                  description: 'Return the metadata values instead of metric data',
                  args: [
                    Arg(
                    name: 'metadat'
                  )
                  ]
                ),
                Option(
                  name: '--metrics',
                  description: 'Space-separated list of metric names to retrieve. value from: az vm monitor metrics list-definitions -n MyVM -g MyRG --query "@[*].name.value"',
                  args: [
                    Arg(
                    name: 'metric'
                  )
                  ]
                ),
                Option(
                  name: '--namespace',
                  description: 'Namespace to query metric definitions for',
                  args: [
                    Arg(
                    name: 'namespac'
                  )
                  ]
                ),
                Option(
                  name: '--offset',
                  description: 'Time offset of the query range, in ##d##h format',
                  args: [
                    Arg(
                    name: 'offse'
                  )
                  ]
                ),
                Option(
                  name: '--orderby',
                  description: 'Aggregation to use for sorting results and the direction of the sort. Only one order can be specificed. Examples: sum asc',
                  args: [
                    Arg(
                    name: 'orderb'
                  )
                  ]
                ),
                Option(
                  name: '--start-time',
                  description: 'Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm)',
                  args: [
                    Arg(
                    name: 'start-tim'
                  )
                  ]
                ),
                Option(
                  name: '--top',
                  description: 'Max number of records to retrieve. Valid only if --filter used',
                  args: [
                    Arg(
                    name: 'to'
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
      name: 'nic',
      description: 'Manage network interfaces. See also az network nic.\n\n\t\tA network interface (NIC) is the interconnection between a VM and the underlying software network. For more information, see https://docs.microsoft.com/azure/virtual-network/virtual-network-network-interface-overview',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add existing NICs to a VM',
          options: [

            Option(
              name: '--nics',
              description: 'Names or IDs of NICs',
              args: [
                Arg(
                name: 'nic'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--primary-nic',
              description: 'Name or ID of the primary NIC. If missing, the first NIC in the list will be the primary',
              args: [
                Arg(
                name: 'primary-ni'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List the NICs available on a VM',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'remove',
          description: 'Remove NICs from a VM',
          options: [

            Option(
              name: '--nics',
              description: 'Names or IDs of NICs',
              args: [
                Arg(
                name: 'nic'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--primary-nic',
              description: 'Name or ID of the primary NIC. If missing, the first NIC in the list will be the primary',
              args: [
                Arg(
                name: 'primary-ni'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'set',
          description: 'Configure settings of a NIC attached to a VM',
          options: [

            Option(
              name: '--nics',
              description: 'Names or IDs of NICs',
              args: [
                Arg(
                name: 'nic'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--primary-nic',
              description: 'Name or ID of the primary NIC. If missing, the first NIC in the list will be the primary',
              args: [
                Arg(
                name: 'primary-ni'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Display information for a NIC attached to a VM',
          options: [

            Option(
              name: '--nic',
              description: 'NIC name or ID',
              args: [
                Arg(
                name: 'ni'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'repair',
      description: 'Auto repair commands to fix VMs.\n\n\t\tVM repair command will enable Azure users to self-repair non-bootable VMs by copying the source VM\'s OS disk and attaching it to a newly created repair VM',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'Create a new repair VM and attach the source VM\'s copied OS disk as a data disk',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--associate-public-ip',
              description: 'Option to create repair vm with public ip'
            ),
            Option(
              name: '--copy-disk-name',
              description: 'Name of OS disk copy',
              args: [
                Arg(
                name: 'copy-disk-nam'
              )
              ]
            ),
            Option(
              name: '--distro',
              description: 'Option to create repair vm from a specific linux distro (rhel7|rhel8|suse12|ubuntu20|centos7|oracle7)',
              args: [
                Arg(
                name: 'distr'
              )
              ]
            ),
            Option(
              name: '--enable-nested',
              description: 'Enable nested hyperv'
            ),
            Option(
              name: '--repair-group-name',
              description: 'Name for new or existing resource group that will contain repair VM',
              args: [
                Arg(
                name: 'repair-group-nam'
              )
              ]
            ),
            Option(
              name: '--repair-password',
              description: 'Admin password for the repair VM',
              args: [
                Arg(
                name: 'repair-passwor'
              )
              ]
            ),
            Option(
              name: '--repair-username',
              description: 'Admin username for repair VM',
              args: [
                Arg(
                name: 'repair-usernam'
              )
              ]
            ),
            Option(
              name: '--repair-vm-name',
              description: 'Name of repair VM',
              args: [
                Arg(
                name: 'repair-vm-nam'
              )
              ]
            ),
            Option(
              name: '--unlock-encrypted-vm',
              description: 'Option to auto-unlock encrypted VMs using current subscription auth'
            ),
            Option(
              name: '--yes',
              description: 'Option to skip prompt for associating public ip and confirm yes to it in no Tty mode'
            )
          ]
        ),
        Subcommand(
          name: 'list-scripts',
          description: 'List available scripts. Located https://github.com/Azure/repair-script-library',
          options: [

            Option(
              name: '--preview',
              description: 'URL of forked repair script library\'s map.json https://github.com/{user}/repair-script-library/blob/master/map.json',
              args: [
                Arg(
                name: 'previe'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'repair-and-restore',
          description: 'Repair and restore the VM',
          options: [

            Option(
              name: '--copy-disk-name',
              description: 'Name of OS disk copy',
              args: [
                Arg(
                name: 'copy-disk-nam'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--repair-group-name',
              description: 'Name for new or existing resource group that will contain repair VM',
              args: [
                Arg(
                name: 'repair-group-nam'
              )
              ]
            ),
            Option(
              name: '--repair-password',
              description: 'Admin password for the repair VM',
              args: [
                Arg(
                name: 'repair-passwor'
              )
              ]
            ),
            Option(
              name: '--repair-username',
              description: 'Admin username for repair VM',
              args: [
                Arg(
                name: 'repair-usernam'
              )
              ]
            ),
            Option(
              name: '--repair-vm-name',
              description: 'Name of repair VM',
              args: [
                Arg(
                name: 'repair-vm-nam'
              )
              ]
            ),
            Option(
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
          name: 'reset-nic',
          description: 'Reset the network interface stack on the VM guest OS. https://docs.microsoft.com/en-us/troubleshoot/azure/virtual-machines/reset-network-interface',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--yes',
              description: 'Do not prompt for confirmation to start VM if it is not running'
            )
          ]
        ),
        Subcommand(
          name: 'restore',
          description: 'Replace source VM\'s OS disk with data disk from repair VM',
          options: [

            Option(
              name: '--disk-name',
              description: 'Name of fixed data disk. Defaults to the first data disk in the repair VM',
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
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--repair-vm-id',
              description: 'Repair VM resource id',
              args: [
                Arg(
                name: 'repair-vm-i'
              )
              ]
            ),
            Option(
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
              name: '--yes',
              description: 'Deletes the repair resources without confirmation'
            )
          ]
        ),
        Subcommand(
          name: 'run',
          description: 'Run verified scripts from GitHub on a VM. \'az vm repair list-scripts\' to view available scripts',
          options: [

            Option(
              name: '--custom-script-file',
              description: 'Custom script file to run on VM. Script should be PowerShell for windows, Bash for Linux',
              args: [
                Arg(
                name: 'custom-script-fil'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'Space-separated parameters in the format of \'[name=]value\'. Positional for bash scripts',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--preview',
              description: 'URL of forked repair script library\'s map.json https://github.com/{user}/repair-script-library/blob/master/map.json',
              args: [
                Arg(
                name: 'previe'
              )
              ]
            ),
            Option(
              name: '--repair-vm-id',
              description: 'Repair VM resource id',
              args: [
                Arg(
                name: 'repair-vm-i'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-id',
              description: 'Unique run id for run scripts',
              args: [
                Arg(
                name: 'run-i'
              )
              ]
            ),
            Option(
              name: '--run-on-repair',
              description: 'Script will be run on the linked repair VM'
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
      name: 'run-command',
      description: 'Manage run commands on a Virtual Machine.\n\n\t\tFor more information, see https://docs.microsoft.com/azure/virtual-machines/windows/run-command or https://docs.microsoft.com/azure/virtual-machines/linux/run-command',
      subcommands: [

        Subcommand(
          name: 'create',
          description: 'The operation to create the run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--async-execution',
              description: 'Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete',
              args: [
                Arg(
                name: 'async-execution',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--command-id',
              description: 'Specify a commandId of predefined built-in script',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            ),
            Option(
              name: '--error-blob-uri',
              description: 'Specify the Azure storage blob where script error stream will be uploaded',
              args: [
                Arg(
                name: 'error-blob-ur'
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
              name: '--output-blob-uri',
              description: 'Specify the Azure storage blob (SAS URI) where script output stream will be uploaded',
              args: [
                Arg(
                name: 'output-blob-ur'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--protected-parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'protected-parameter'
              )
              ]
            ),
            Option(
              name: '--run-as-password',
              description: 'Password if needed for using run-as-user parameter. It will be encrypted and not logged',
              args: [
                Arg(
                name: 'run-as-passwor'
              )
              ]
            ),
            Option(
              name: '--run-as-user',
              description: 'By default script process runs under system/root user. Specify custom user to host the process',
              args: [
                Arg(
                name: 'run-as-use'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Specify the script content to be executed on the VM',
              args: [
                Arg(
                name: 'scrip'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'Specify the script download location',
              args: [
                Arg(
                name: 'script-ur'
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
              name: '--timeout-in-seconds',
              description: 'The timeout in seconds to execute the run command',
              args: [
                Arg(
                name: 'timeout-in-second'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'delete',
          description: 'The operation to delete the run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
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
          name: 'invoke',
          description: 'Execute a specific run command on a vm',
          options: [

            Option(
              name: '--command-id',
              description: 'The command id. value from: az vm run-command list',
              args: [
                Arg(
                name: 'command-i'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: '--parameters',
              description: 'Space-separated parameters in the format of \'[name=]value\'',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--scripts',
              description: 'Space-separated script lines. Use @{file} to load script from a file',
              args: [
                Arg(
                name: 'script'
              )
              ]
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
          description: 'List run commands from a VM or a location',
          options: [

            Option(
              name: '--expand',
              description: 'The expand expression to apply on the operation',
              args: [
                Arg(
                name: 'expan'
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'show',
          description: 'Get specific run command',
          options: [

            Option(
              name: '--command-id',
              description: 'The command id',
              args: [
                Arg(
                name: 'command-i'
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
              name: '--instance-view',
              description: 'The instance view of a run command'
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
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'update',
          description: 'The operation to update the run command',
          options: [

            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
              name: '--async-execution',
              description: 'Optional. If set to true, provisioning will complete as soon as the script starts and will not wait for script to complete',
              args: [
                Arg(
                name: 'async-execution',
                suggestions: [

                  FigSuggestion(name: 'false'),
                  FigSuggestion(name: 'true')
                ]
              )
              ]
            ),
            Option(
              name: '--command-id',
              description: 'Specify a commandId of predefined built-in script',
              args: [
                Arg(
                name: 'command-i'
              )
              ]
            ),
            Option(
              name: '--error-blob-uri',
              description: 'Specify the Azure storage blob where script error stream will be uploaded',
              args: [
                Arg(
                name: 'error-blob-ur'
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
              name: '--output-blob-uri',
              description: 'Specify the Azure storage blob (SAS URI) where script output stream will be uploaded',
              args: [
                Arg(
                name: 'output-blob-ur'
              )
              ]
            ),
            Option(
              name: '--parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'parameter'
              )
              ]
            ),
            Option(
              name: '--protected-parameters',
              description: 'The parameters used by the script',
              args: [
                Arg(
                name: 'protected-parameter'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--run-as-password',
              description: 'Password if needed for using run-as-user parameter. It will be encrypted and not logged',
              args: [
                Arg(
                name: 'run-as-passwor'
              )
              ]
            ),
            Option(
              name: '--run-as-user',
              description: 'By default script process runs under system/root user. Specify custom user to host the process',
              args: [
                Arg(
                name: 'run-as-use'
              )
              ]
            ),
            Option(
              name: '--script',
              description: 'Specify the script content to be executed on the VM',
              args: [
                Arg(
                name: 'scrip'
              )
              ]
            ),
            Option(
              name: '--script-uri',
              description: 'Specify the script download location',
              args: [
                Arg(
                name: 'script-ur'
              )
              ]
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
              name: '--timeout-in-seconds',
              description: 'The timeout in seconds to execute the run command',
              args: [
                Arg(
                name: 'timeout-in-second'
              )
              ]
            ),
            Option(
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'wait',
          description: 'Place the CLI in a waiting state until a condition of the res virtual-machine-run-command is met',
          options: [

            Option(
              name: '--command-id',
              description: 'The command id',
              args: [
                Arg(
                name: 'command-i'
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
              name: '--instance-view',
              description: 'The instance view of a run command'
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
              name: ['--location', '-l'],
              description: 'Location. Values from: az account list-locations. You can configure the default location using az configure --defaults location=<location>',
              args: [
                Arg(
                name: 'locatio'
              )
              ]
            ),
            Option(
              name: ['--run-command-name', '--name'],
              description: 'The name of the virtual machine run command',
              args: [
                Arg(
                name: 'run-command-nam'
              )
              ]
            ),
            Option(
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
              name: '--vm-name',
              description: 'The name of the virtual machine',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        )
      ]
    ),
    Subcommand(
      name: 'secret',
      description: 'Manage VM secrets',
      subcommands: [

        Subcommand(
          name: 'add',
          description: 'Add a secret to a VM',
          options: [

            Option(
              name: '--certificate',
              description: 'Key vault certificate name or its full secret URL',
              args: [
                Arg(
                name: 'certificat'
              )
              ]
            ),
            Option(
              name: '--keyvault',
              description: 'Name or ID of the key vault',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
            ),
            Option(
              name: '--certificate-store',
              description: 'Windows certificate store names. Default: My',
              args: [
                Arg(
                name: 'certificate-stor'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'format',
          description: 'Transform secrets into a form that can be used by VMs and VMSSes',
          options: [

            Option(
              name: ['--secrets', '-s'],
              description: 'Space-separated list of key vault secret URIs. Perhaps, produced by \'az keyvault secret list-versions --vault-name vaultname -n cert1 --query "[?attributes.enabled].id" -o tsv\'',
              args: [
                Arg(
                name: 'secret'
              )
              ]
            ),
            Option(
              name: '--certificate-store',
              description: 'Windows certificate store names. Default: My',
              args: [
                Arg(
                name: 'certificate-stor'
              )
              ]
            ),
            Option(
              name: '--keyvault',
              description: 'Name or ID of the key vault',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
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
          description: 'List secrets on a VM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'remove',
          description: 'Remove a secret from a VM',
          options: [

            Option(
              name: '--keyvault',
              description: 'Name or ID of the key vault',
              args: [
                Arg(
                name: 'keyvaul'
              )
              ]
            ),
            Option(
              name: '--certificate',
              description: 'Key vault certificate name or its full secret URL',
              args: [
                Arg(
                name: 'certificat'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
      name: 'unmanaged-disk',
      description: 'Manage the unmanaged data disks attached to a VM.\n\n\t\tAzure Virtual Machines use disks as a place to store an operating system, applications, and data. All Azure virtual machines have at least two disks: An operating system disk, and a temporary disk. The operating system disk is created from an image, and both the operating system disk and the image are actually virtual hard disks (VHDs) stored in an Azure storage account. Virtual machines also can have one or more data disks, that are also stored as VHDs.\nAzure Managed and Unmanaged Data Disks have a maximum size of 4095 GB (with the exception of larger disks in preview). Azure Unmanaged Disks also have a maximum capacity of 4095 GB.\nFor more information, see:\n\nAzure Disks - https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview.\nLarger Managed Disks in Public Preview - https://azure.microsoft.com/blog/introducing-the-public-preview-of-larger-managed-disks-sizes/\nUltra SSD Managed Disks in Public Preview - https://docs.microsoft.com/azure/virtual-machines/disks-types',
      subcommands: [

        Subcommand(
          name: 'attach',
          description: 'Attach an unmanaged persistent disk to a VM',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            ),
            Option(
              name: '--caching',
              description: 'Disk caching policy',
              args: [
                Arg(
                name: 'caching',
                suggestions: [

                  FigSuggestion(name: 'None'),
                  FigSuggestion(name: 'ReadOnly'),
                  FigSuggestion(name: 'ReadWrite')
                ]
              )
              ]
            ),
            Option(
              name: '--lun',
              description: '0-based logical unit number (LUN). Max value depends on the Virtual Machine size',
              args: [
                Arg(
                name: 'lu'
              )
              ]
            ),
            Option(
              name: ['--name', '-n'],
              description: 'The data disk name',
              args: [
                Arg(
                name: 'nam'
              )
              ]
            ),
            Option(
              name: '--new',
              description: 'Create a new disk'
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
              name: '--vhd-uri',
              description: 'Virtual hard disk URI. For example: https://mystorage.blob.core.windows.net/vhds/d1.vhd',
              args: [
                Arg(
                name: 'vhd-ur'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'detach',
          description: 'Detach an unmanaged disk from a VM',
          options: [

            Option(
              name: ['--name', '-n'],
              description: 'The data disk name',
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
              name: '--vm-name',
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
            )
          ]
        ),
        Subcommand(
          name: 'list',
          description: 'List unmanaged disks of a VM',
          options: [

            Option(
              name: ['--vm-name', '--name', '-n'],
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
              args: [
                Arg(
                name: 'vm-nam'
              )
              ]
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
      name: 'user',
      description: 'Manage user accounts for a VM',
      subcommands: [

        Subcommand(
          name: 'delete',
          description: 'Delete a user account from a VM',
          options: [

            Option(
              name: ['--username', '-u'],
              description: 'The user name',
              args: [
                Arg(
                name: 'usernam'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'reset-ssh',
          description: 'Reset the SSH configuration on a VM',
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
          name: 'update',
          description: 'Update a user account',
          options: [

            Option(
              name: ['--username', '-u'],
              description: 'The user name',
              args: [
                Arg(
                name: 'usernam'
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
              description: 'The name of the Virtual Machine. You can configure the default using az configure --defaults vm=<name>',
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
              name: ['--password', '-p'],
              description: 'The user password',
              args: [
                Arg(
                name: 'passwor'
              )
              ]
            ),
            Option(
              name: ['--resource-group', '-g'],
              description: 'Name of resource group. You can configure the default group using az configure --defaults group=<name>',
              args: [
                Arg(
                name: 'resource-grou'
              )
              ]
            ),
            Option(
              name: '--ssh-key-value',
              description: 'SSH public key file value or public key file path. This command appends the new public key text to the ~/.ssh/authorized_keys file for the admin user on the VM. This does not replace or remove any existing SSH keys',
              args: [
                Arg(
                name: 'ssh-key-valu'
              )
              ]
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
